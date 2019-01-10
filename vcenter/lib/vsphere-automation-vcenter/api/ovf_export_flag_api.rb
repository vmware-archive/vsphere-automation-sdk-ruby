=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class OvfExportFlagApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
    # @param [Hash] opts the optional parameters
    # @return [VcenterOvfExportFlagListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about the supported export flags by the server. &lt;p&gt; The supported flags are: &lt;dl&gt; &lt;dt&gt;PRESERVE_MAC&lt;/dt&gt; &lt;dd&gt;Include MAC addresses for network adapters.&lt;/dd&gt; &lt;dt&gt;EXTRA_CONFIG&lt;/dt&gt; &lt;dd&gt;Include extra configuration in OVF export.&lt;/dd&gt; &lt;/dl&gt; &lt;p&gt; Future server versions might support additional flags.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterOvfExportFlagListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OvfExportFlagApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/ovf/export-flag'

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
	  '200' => 'VCenter::VcenterOvfExportFlagListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OvfExportFlagApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
