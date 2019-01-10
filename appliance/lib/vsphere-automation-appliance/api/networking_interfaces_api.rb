=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class NetworkingInterfacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get information about a particular network interface.
    # @param interface_name Network interface, for example, \&quot;nic0\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingInterfacesResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(interface_name, opts = {})
      data, _status_code, _headers = get_with_http_info(interface_name, opts)
      data
    end

    # Get information about a particular network interface.
    # @api private
    # @param interface_name Network interface, for example, \&quot;nic0\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingInterfacesResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(interface_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingInterfacesApi.get ...'
      end
      # verify the required parameter 'interface_name' is set
      if @api_client.config.client_side_validation && interface_name.nil?
        fail ArgumentError, "Missing the required parameter 'interface_name' when calling NetworkingInterfacesApi.get"
      end
      # resource path
      local_var_path = '/appliance/networking/interfaces/{interface_name}'.sub('{' + 'interface_name' + '}', interface_name.to_s)

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
	  '200' => 'Appliance::ApplianceNetworkingInterfacesResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingInterfacesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list of available network interfaces, including those that are not yet configured.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingInterfacesListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get list of available network interfaces, including those that are not yet configured.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingInterfacesListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingInterfacesApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/networking/interfaces'

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
	  '200' => 'Appliance::ApplianceNetworkingInterfacesListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingInterfacesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
