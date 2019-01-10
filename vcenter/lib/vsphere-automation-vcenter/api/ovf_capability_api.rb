=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class OvfCapabilityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about the capability of the given vCenter server.
    # @param server_guid Target vCenter server GUID
    # @param [Hash] opts the optional parameters
    # @return [VcenterOvfCapabilityResult|VapiStdErrorsInvalidArgumentError|]
    def get(server_guid, opts = {})
      data, _status_code, _headers = get_with_http_info(server_guid, opts)
      data
    end

    # Returns information about the capability of the given vCenter server.
    # @api private
    # @param server_guid Target vCenter server GUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterOvfCapabilityResult|VapiStdErrorsInvalidArgumentError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(server_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OvfCapabilityApi.get ...'
      end
      # verify the required parameter 'server_guid' is set
      if @api_client.config.client_side_validation && server_guid.nil?
        fail ArgumentError, "Missing the required parameter 'server_guid' when calling OvfCapabilityApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/ovf/capability/id:{server_guid}'.sub('{' + 'server_guid' + '}', server_guid.to_s)

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
	  '200' => 'VCenter::VcenterOvfCapabilityResult',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OvfCapabilityApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
