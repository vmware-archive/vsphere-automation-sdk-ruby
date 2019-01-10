=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class NetworkingDnsHostnameApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the Fully Qualified Doman Name.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingDnsHostnameResult|VapiStdErrorsErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the Fully Qualified Doman Name.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingDnsHostnameResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingDnsHostnameApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/networking/dns/hostname'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceNetworkingDnsHostnameResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingDnsHostnameApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set the Fully Qualified Domain Name.
    # @param appliance_networking_dns_hostname_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def set(appliance_networking_dns_hostname_set, opts = {})
      set_with_http_info(appliance_networking_dns_hostname_set, opts)
      nil
    end

    # Set the Fully Qualified Domain Name.
    # @api private
    # @param appliance_networking_dns_hostname_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(appliance_networking_dns_hostname_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingDnsHostnameApi.set ...'
      end
      # verify the required parameter 'appliance_networking_dns_hostname_set' is set
      if @api_client.config.client_side_validation && appliance_networking_dns_hostname_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_networking_dns_hostname_set' when calling NetworkingDnsHostnameApi.set"
      end
      # resource path
      local_var_path = '/appliance/networking/dns/hostname'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(appliance_networking_dns_hostname_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingDnsHostnameApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Test the Fully Qualified Domain Name.
    # @param appliance_networking_dns_hostname_test 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingDnsHostnameTestResult|VapiStdErrorsErrorError|]
    def test(appliance_networking_dns_hostname_test, opts = {})
      data, _status_code, _headers = test_with_http_info(appliance_networking_dns_hostname_test, opts)
      data
    end

    # Test the Fully Qualified Domain Name.
    # @api private
    # @param appliance_networking_dns_hostname_test 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingDnsHostnameTestResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def test_with_http_info(appliance_networking_dns_hostname_test, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingDnsHostnameApi.test ...'
      end
      # verify the required parameter 'appliance_networking_dns_hostname_test' is set
      if @api_client.config.client_side_validation && appliance_networking_dns_hostname_test.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_networking_dns_hostname_test' when calling NetworkingDnsHostnameApi.test"
      end
      # resource path
      local_var_path = '/appliance/networking/dns/hostname/test'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(appliance_networking_dns_hostname_test)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceNetworkingDnsHostnameTestResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingDnsHostnameApi#test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
