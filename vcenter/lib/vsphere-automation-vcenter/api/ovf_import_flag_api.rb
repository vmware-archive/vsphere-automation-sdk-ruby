=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class OvfImportFlagApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about the import flags supported by the deployment platform. <p> The supported flags are: <dl> <dt>LAX</dt> <dd>Lax mode parsing of the OVF descriptor.</dd> </dl> <p> Future server versions might support additional flags.
    # @param rp The identifier of resource pool target for retrieving the import flag(s).
    # @param [Hash] opts the optional parameters
    # @return [VcenterOvfImportFlagListResult|VapiStdErrorsNotFoundError|]
    def list(rp, opts = {})
      data, _status_code, _headers = list_with_http_info(rp, opts)
      data
    end

    # Returns information about the import flags supported by the deployment platform. &lt;p&gt; The supported flags are: &lt;dl&gt; &lt;dt&gt;LAX&lt;/dt&gt; &lt;dd&gt;Lax mode parsing of the OVF descriptor.&lt;/dd&gt; &lt;/dl&gt; &lt;p&gt; Future server versions might support additional flags.
    # @api private
    # @param rp The identifier of resource pool target for retrieving the import flag(s).
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterOvfImportFlagListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(rp, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OvfImportFlagApi.list ...'
      end
      # verify the required parameter 'rp' is set
      if @api_client.config.client_side_validation && rp.nil?
        fail ArgumentError, "Missing the required parameter 'rp' when calling OvfImportFlagApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/ovf/import-flag'

      # query parameters
      query_params = {}
      query_params[:'rp'] = rp

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
	  '200' => 'VCenter::VcenterOvfImportFlagListResult',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OvfImportFlagApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
