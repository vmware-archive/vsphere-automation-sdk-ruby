=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class NetworkingInterfacesIpv4Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get IPv4 network configuration for specific NIC.
    # @param interface_name The Network interface to query, for example, \&quot;nic0\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingInterfacesIpv4Result|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(interface_name, opts = {})
      data, _status_code, _headers = get_with_http_info(interface_name, opts)
      data
    end

    # Get IPv4 network configuration for specific NIC.
    # @api private
    # @param interface_name The Network interface to query, for example, \&quot;nic0\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingInterfacesIpv4Result|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(interface_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingInterfacesIpv4Api.get ...'
      end
      # verify the required parameter 'interface_name' is set
      if @api_client.config.client_side_validation && interface_name.nil?
        fail ArgumentError, "Missing the required parameter 'interface_name' when calling NetworkingInterfacesIpv4Api.get"
      end
      # resource path
      local_var_path = '/appliance/networking/interfaces/{interface_name}/ipv4'.sub('{' + 'interface_name' + '}', interface_name.to_s)

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
	  '200' => 'Appliance::ApplianceNetworkingInterfacesIpv4Result',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingInterfacesIpv4Api#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set IPv4 network configuration for specific network interface.
    # @param interface_name Network interface to update, for example, \&quot;nic0\&quot;.
    # @param appliance_networking_interfaces_ipv4_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def set(interface_name, appliance_networking_interfaces_ipv4_set, opts = {})
      set_with_http_info(interface_name, appliance_networking_interfaces_ipv4_set, opts)
      nil
    end

    # Set IPv4 network configuration for specific network interface.
    # @api private
    # @param interface_name Network interface to update, for example, \&quot;nic0\&quot;.
    # @param appliance_networking_interfaces_ipv4_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(interface_name, appliance_networking_interfaces_ipv4_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingInterfacesIpv4Api.set ...'
      end
      # verify the required parameter 'interface_name' is set
      if @api_client.config.client_side_validation && interface_name.nil?
        fail ArgumentError, "Missing the required parameter 'interface_name' when calling NetworkingInterfacesIpv4Api.set"
      end
      # verify the required parameter 'appliance_networking_interfaces_ipv4_set' is set
      if @api_client.config.client_side_validation && appliance_networking_interfaces_ipv4_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_networking_interfaces_ipv4_set' when calling NetworkingInterfacesIpv4Api.set"
      end
      # resource path
      local_var_path = '/appliance/networking/interfaces/{interface_name}/ipv4'.sub('{' + 'interface_name' + '}', interface_name.to_s)

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
      post_body = @api_client.object_to_http_body(appliance_networking_interfaces_ipv4_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingInterfacesIpv4Api#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
