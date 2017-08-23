require 'savon'
require 'nokogiri'
require 'date'
require 'securerandom'

module VSphere

    # The XML date format.
    DATE_FORMAT = "%FT%T.%LZ"

    # The XML namespaces that are required: SOAP, WSDL, et al.
    NAMESPACES = {
        "xmlns:S" => "http://schemas.xmlsoap.org/soap/envelope/",
        "xmlns:wst" => "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
        "xmlns:u" => "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd",
        "xmlns:x" => "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd",
    }

    # Provides the connection details for the SSO service.
    class Connection

        attr_accessor :sso_url, :wsdl_url, :username, :password

        # Creates a new instance.
        def initialize(sso_url, wsdl_url=nil)
            self.sso_url = sso_url
            self.wsdl_url = wsdl_url || "#{sso_url}?wsdl"
        end

        # Login with the given credentials.
        # Note: this does not invoke a login action, but rather stores the
        # credentials for use later.
        def login(username, password)
            self.username = username
            self.password = password
            self # enable builder pattern
        end

        # Gets (or creates) the Savon client instance.
        def client
            # construct and init the client proxy
            @client ||= Savon.client do |globals|
                # see: http://savonrb.com/version2/globals.html
                globals.wsdl wsdl_url
                globals.endpoint sso_url

                globals.strip_namespaces true
                globals.env_namespace :S
                # set like this so https connection does not fail
                # TODO: find an acceptable solution for production
                globals.ssl_verify_mode :none

                # binding.pry

                # dev/debug settings
                globals.pretty_print_xml ENV['DEBUG_SOAP']
                globals.log ENV['DEBUG_SOAP']
            end
        end

        # Invokes the request bearer token operation.
        # @return [SamlToken]
        def request_bearer_token()
            rst = RequestSecurityToken.new(client, username, password)
            rst.invoke()
            rst.saml_token
        end
    end

    # @abstract Base class for invocable service calls.
    class SoapInvocable

        attr_reader :operation, :client, :response

        # Constructs a new instance.
        # @param operation [Symbol] the SOAP operation name (in Symbol form)
        # @param client [Savon::Client] the client
        def initialize(operation, client)
            @operation = operation
            @client = client
        end

        # Invokes the service call represented by this type.
        def invoke
            request = request_xml.to_s


            puts "request = #{request}" if ENV['DEBUG']
            @response = client.call(operation, xml:request)
            puts "response = #{response}" if ENV['DEBUG']
            self # for chaining with new
        end

        # Builds the request XML content.
        def request_xml
            builder = Builder::XmlMarkup.new()
            # builder.instruct!(:xml, encoding: "UTF-8")
            builder.instruct!(:xml, encoding: "gzip")

            builder.tag!("S:Envelope", NAMESPACES) do |envelope|
                if has_header?
                    envelope.tag!("S:Header") do |header|
                        header_xml(header)
                    end
                end
                envelope.tag!("S:Body") do |body|
                    body_xml(body)
                end
            end
            builder.target!
        end

        def has_header?
            true
        end

        # Builds the header portion of the SOAP request.
        # Specific service operations must override this method.
        def header_xml(header)
            raise 'abstract method not implemented!'
        end

        # Builds the body portion of the SOAP request.
        # Specific service operations must override this method.
        def body_xml(body)
            raise 'abstract method not implemented!'
        end

        # Gets the response XML content.
        def response_xml
            raise 'illegal state: response not set yet' if response.nil?
            @response_xml ||= Nokogiri::XML(response.to_xml, 'gzip')
        end

        def response_hash
            @response_hash ||= response.to_hash
        end
    end

    # Encapsulates an issue operation that requests a security token
    # from the SSO service.
    class RequestSecurityToken < SoapInvocable

        attr_accessor :request_type, :delegatable

        # Constructs a new instance.
        def initialize(client, username, password, hours=2)
            super(:issue, client)

            @username = username
            @password = password
            @hours = hours

            #TODO: these things should be configurable, so we can get
            #non-delegatable tokens, HoK tokens, etc.
            @request_type = "http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue"
            @delegatable = true
        end

        def now
            @now ||= Time.now.utc.to_datetime
        end

        def created
            @created ||= now.strftime(DATE_FORMAT)
        end

        def future
            @future ||= now + (2/24.0) #days (for DateTime math)
        end

        def expires
            @expires ||= future.strftime(DATE_FORMAT)
        end

        # Builds the header XML for the SOAP request.
        def header_xml(header)
            id = "uuid-" + SecureRandom.uuid

            # binding.pry


            #header.tag!("x:Security", "x:mustUnderstand" => "1") do |security|
            header.tag!("x:Security") do |security|
                security.tag!("u:Timestamp", "u:Id" => "_0") do |timestamp|
                    timestamp.tag!("u:Created") do |element|
                        element << created
                    end
                    timestamp.tag!("u:Expires") do |element|
                        element << expires
                    end
                end
                security.tag!("x:UsernameToken", "u:Id" => id) do |utoken|
                    utoken.tag!("x:Username") do |element|
                        element << @username
                    end
                    utoken.tag!("x:Password") do |element|
                        element << @password
                    end
                end
            end
        end

        # Builds the body XML for the SOAP request.
        def body_xml(body)
            body.tag!("wst:RequestSecurityToken") do |rst|
                rst.tag!("wst:RequestType") do |element|
                    element << request_type
                end
                rst.tag!("wst:Delegatable") do |element|
                    element << delegatable.to_s
                end

            end
        end

        # Gets the saml_token from the SOAP response body.
        # @return [SamlToken] the requested SAML token
        def saml_token
            assertion = response_xml.at_xpath('//saml2:Assertion',
                    'saml2' => 'urn:oasis:names:tc:SAML:2.0:assertion')
            SamlToken.new(assertion)
        end
    end

    # Holds a SAML token.
    class SamlToken
        attr_reader :xml

        # Creates a new instance.
        def initialize(xml)
            @xml = xml
        end

        def to_s
            esc_token = xml.to_xml(:indent => 0, :encoding => 'UTF-8')
            esc_token = esc_token.gsub(/\n/, '')
            esc_token
        end
    end
    
end
