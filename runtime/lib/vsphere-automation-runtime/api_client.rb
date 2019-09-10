# frozen_string_literal: true

require 'json'
require 'logger'
require 'net/http'
require 'openssl'
require 'uri'
require 'vsphere-automation-runtime/configuration'
require 'vsphere-automation-runtime/version'

module VSphereAutomation
  # The client responsible for communicating with the API.
  class ApiClient
    # The Configuration object holding settings to be used in the API client.
    attr_accessor :config

    # Defines the headers to be used in HTTP requests of all API calls by
    # default.
    #
    # @return [Hash]
    attr_reader :default_headers

    # Creates a new instance
    #
    # @param config [Configuration] configuration object with values to use
    def initialize(config = Configuration.default)
      @config = config
      @http = create_http
      @user_agent = default_user_agent
      @default_headers = { 'Content-Type' => 'application/json',
                           'User-Agent' => @user_agent }
    end

    # Retrieves an instance of the object in it's default state
    #
    # @return [ApiClient] an instance of the object in it's default state
    def self.default
      DEFAULT
    end

    # Build the collection of parameters
    def build_collection_param(params, format)
      params
    end

    # Make a request to an API endpoint with the given options
    #
    # @param http_method [Symbol] the HTTP method to be used
    # @param path [String] the path request will be made to
    # @param opts [Hash] any additional options needed
    # @return [Array<(Object, Fixnum, Hash)>] the deserialized body, status
    #   code, and headers.
    def call_api(http_method, path, opts = {})
      query_params = opts.fetch(:query_params, {})
      header_params = opts.fetch(:header_params, {})
      form_params = opts.fetch(:form_params, {})
      add_auth(query_params, header_params, opts.fetch(:auth_names, []))

      uri = build_request_uri(path, query_params)
      request = Net::HTTP.const_get(http_method.capitalize).new(uri)

      add_form_params(request, form_params)
      add_header_params(request, header_params)
      request.body = opts[:body] if opts[:body]
      request.content_type = request['Content-Type'] if request['Content-Type']

      if @config.debugging
        @config.logger.debug("Request Body:\n#{request.body}\n")
      end

      response = @http.request(request)
      @cookie = cookie_from_response(response)
      api_key_from_response(response)

      return_type = opts.fetch(:return_type, {}).fetch(response.code, nil)
      data = deserialize(response, return_type)
      [data, Integer(response.code), response.each_header.to_h]
    end

    # Takes an object and returns the object as an HTTP body
    #
    # @param object [Object] object to transform
    # @return [String] object as JSON string
    def object_to_http_body(object)
      return object.map { |o| object_to_http_body(o) } if object.is_a?(Array)

      return object unless object.respond_to?(:to_hash)

      object.to_hash.to_json
    end

    # Select an Accept header to use
    #
    # @param types [Array] a list of suggested types
    # @return [String] the Accept header value
    def select_header_accept(types)
      return DEFAULT_MIME_TYPE unless types.is_a?(Array)

      types.find { |t| t.include?('json') } || types.join(', ')
    end

    # Select an Content-Type header to use
    #
    # @param types [Array] a list of suggested types
    # @return [String] the Content-Type header value
    def select_header_content_type(types)
      return DEFAULT_MIME_TYPE unless types.is_a?(Array)

      types.find { |t| t.include?('json') } || types.first
    end

    private

    def add_auth(query_params, header_params, auth_names)
      auth_names.map do |name|
        settings = @config.auth_settings.fetch(name, {})
        case settings[:in]
        when 'header'
          header_params[settings[:key]] = settings[:value]
          api_key_from_cookie(header_params, settings) unless settings[:value]
        when 'query'
          query_params[settings[:key]] = settings[:value]
        end
      end
    end

    def add_form_params(request, form_params)
      request.set_form_data(form_params) unless form_params.empty?
    end

    def add_header_params(request, headers)
      header_params = @default_headers.merge(headers, Hash(@cookie))
      header_params.map { |name, value| request[name] = value }
    end

    def add_query_params(uri, query_params)
      uri.query = URI.encode_www_form(query_params)
    end

    def build_request_uri(path = '', query_params = {})
      path = "/#{path}".gsub(%r{/+}, '/')
      uri = URI.parse(@config.base_url + path)
      add_query_params(uri, query_params)
      uri
    end

    def create_http
      uri = build_request_uri
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = @config.scheme == 'https'
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE unless @config.verify_ssl_host
      http
    end

    # The default user agent
    #
    # @return [String] the default user agent
    def default_user_agent
      "SDK/#{VSphereAutomation::Runtime::VERSION} "\
      "Ruby/#{RUBY_VERSION} "\
      "(#{Gem::Platform.local.os}; "\
      "#{Gem::Platform.local.version}; "\
      "#{Gem::Platform.local.cpu})"
    end

    # Deserialize the response to the given return type
    #
    # @param [Response] response the HTTP response
    # @param [String] return_type the type to return
    # @return [Object] the response represented as the return type
    def deserialize(response, return_type)
      body = response.body

      return nil if body.nil? || body.empty? || return_type.nil?

      begin
        data = JSON.parse("[#{body}]", symbolize_names: true).first
      rescue JSON::ParserError => e
        raise e unless %w[String Date DateTime].include?(return_type)

        data = body
      end

      convert_to_type(data, return_type)
    end

    def convert_to_type(data, return_type)
      return nil if data.nil?
      case return_type
      when 'String'
        data.to_s
      when 'Integer'
        data.to_i
      when 'Float'
        data.to_f
      when 'BOOLEAN'
        data == true
      when 'DateTime'
        # parse date time (expecting ISO 8601 format)
        DateTime.parse data
      when 'Date'
        # parse date time (expecting ISO 8601 format)
        Date.parse data
      when 'Object'
        # generic object (usually a Hash), return directly
        data
      when /\AArray<(.+)>\z/
        # e.g. Array<Pet>
        sub_type = $1
        data.map { |item| convert_to_type(item, sub_type) }
      when /\AHash\<String, (.+)\>\z/
        # e.g. Hash<String, Integer>
        sub_type = $1
        {}.tap do |hash|
          data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
        end
      else
        # models, e.g. Pet
        VSphereAutomation.const_get(return_type).new.tap do |model|
          model.build_from_hash data
        end
      end
    end

    # Create the Cookie header from a response
    #
    # @param response [Net::HTTPResponse] the response
    # @return [Hash, nil] the Cookie header
    def cookie_from_response(response)
      { 'Cookie' => response['set-cookie'] } if response['set-cookie']
    end

    def api_key_from_response(response)
      key = @config.auth_settings['api_key'][:key]
      @config.api_key[key] = response[key] if response[key]
    end

    def api_key_from_cookie(headers, auth)
      return if @cookie.nil?

      regex = /(?<key>#{auth[:key]})=(?<value>\w+)/
      matches = Hash(@cookie)['Cookie'].match(regex)
      headers[matches[:key]] = matches[:value] if matches
    end

    # An instance of the object in it's default state
    DEFAULT = new

    # The default MIME type for Content-Type and Accept headers
    DEFAULT_MIME_TYPE = 'application/json'

    private_constant :DEFAULT, :DEFAULT_MIME_TYPE
  end
end
