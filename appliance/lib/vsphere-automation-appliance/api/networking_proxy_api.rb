=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class NetworkingProxyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes a proxy configuration for a specific protocol.
    # @param protocol ID whose proxy is to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def delete(protocol, opts = {})
      delete_with_http_info(protocol, opts)
      nil
    end

    # Deletes a proxy configuration for a specific protocol.
    # @api private
    # @param protocol ID whose proxy is to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(protocol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingProxyApi.delete ...'
      end
      # verify the required parameter 'protocol' is set
      if @api_client.config.client_side_validation && protocol.nil?
        fail ArgumentError, "Missing the required parameter 'protocol' when calling NetworkingProxyApi.delete"
      end
      # resource path
      local_var_path = '/appliance/networking/proxy/{protocol}'.sub('{' + 'protocol' + '}', protocol.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingProxyApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the proxy configuration for a specific protocol.
    # @param protocol The protocol whose proxy configuration is requested.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingProxyResult|VapiStdErrorsErrorError|]
    def get(protocol, opts = {})
      data, _status_code, _headers = get_with_http_info(protocol, opts)
      data
    end

    # Gets the proxy configuration for a specific protocol.
    # @api private
    # @param protocol The protocol whose proxy configuration is requested.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingProxyResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(protocol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingProxyApi.get ...'
      end
      # verify the required parameter 'protocol' is set
      if @api_client.config.client_side_validation && protocol.nil?
        fail ArgumentError, "Missing the required parameter 'protocol' when calling NetworkingProxyApi.get"
      end
      # resource path
      local_var_path = '/appliance/networking/proxy/{protocol}'.sub('{' + 'protocol' + '}', protocol.to_s)

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
	  '200' => 'Appliance::ApplianceNetworkingProxyResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingProxyApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets proxy configuration for all configured protocols.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingProxyListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Gets proxy configuration for all configured protocols.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingProxyListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingProxyApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/networking/proxy'

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
	  '200' => 'Appliance::ApplianceNetworkingProxyListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingProxyApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
    # @param protocol The protocol for which proxy should be set.
    # @param appliance_networking_proxy_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def set(protocol, appliance_networking_proxy_set, opts = {})
      set_with_http_info(protocol, appliance_networking_proxy_set, opts)
      nil
    end

    # Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
    # @api private
    # @param protocol The protocol for which proxy should be set.
    # @param appliance_networking_proxy_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(protocol, appliance_networking_proxy_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingProxyApi.set ...'
      end
      # verify the required parameter 'protocol' is set
      if @api_client.config.client_side_validation && protocol.nil?
        fail ArgumentError, "Missing the required parameter 'protocol' when calling NetworkingProxyApi.set"
      end
      # verify the required parameter 'appliance_networking_proxy_set' is set
      if @api_client.config.client_side_validation && appliance_networking_proxy_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_networking_proxy_set' when calling NetworkingProxyApi.set"
      end
      # resource path
      local_var_path = '/appliance/networking/proxy/{protocol}'.sub('{' + 'protocol' + '}', protocol.to_s)

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
      post_body = @api_client.object_to_http_body(appliance_networking_proxy_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingProxyApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Tests a proxy configuration by testing the connection to the proxy server and test host.
    # @param protocol Protocol whose proxy is to be tested.
    # @param appliance_networking_proxy_test 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingProxyTestResult|VapiStdErrorsErrorError|]
    def test(protocol, appliance_networking_proxy_test, opts = {})
      data, _status_code, _headers = test_with_http_info(protocol, appliance_networking_proxy_test, opts)
      data
    end

    # Tests a proxy configuration by testing the connection to the proxy server and test host.
    # @api private
    # @param protocol Protocol whose proxy is to be tested.
    # @param appliance_networking_proxy_test 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingProxyTestResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def test_with_http_info(protocol, appliance_networking_proxy_test, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingProxyApi.test ...'
      end
      # verify the required parameter 'protocol' is set
      if @api_client.config.client_side_validation && protocol.nil?
        fail ArgumentError, "Missing the required parameter 'protocol' when calling NetworkingProxyApi.test"
      end
      # verify the required parameter 'appliance_networking_proxy_test' is set
      if @api_client.config.client_side_validation && appliance_networking_proxy_test.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_networking_proxy_test' when calling NetworkingProxyApi.test"
      end
      # resource path
      local_var_path = '/appliance/networking/proxy/{protocol}?action=test'.sub('{' + 'protocol' + '}', protocol.to_s)

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
      post_body = @api_client.object_to_http_body(appliance_networking_proxy_test)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceNetworkingProxyTestResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingProxyApi#test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
