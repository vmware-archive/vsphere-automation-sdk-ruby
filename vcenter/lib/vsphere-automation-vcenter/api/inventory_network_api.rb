=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class InventoryNetworkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
    # @param vcenter_inventory_network_find 
    # @param [Hash] opts the optional parameters
    # @return [VcenterInventoryNetworkFindResult|VapiStdErrorsNotFoundError|]
    def find(vcenter_inventory_network_find, opts = {})
      data, _status_code, _headers = find_with_http_info(vcenter_inventory_network_find, opts)
      data
    end

    # Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
    # @api private
    # @param vcenter_inventory_network_find 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterInventoryNetworkFindResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def find_with_http_info(vcenter_inventory_network_find, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InventoryNetworkApi.find ...'
      end
      # verify the required parameter 'vcenter_inventory_network_find' is set
      if @api_client.config.client_side_validation && vcenter_inventory_network_find.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_inventory_network_find' when calling InventoryNetworkApi.find"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/inventory/network?~action=find'

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
      post_body = @api_client.object_to_http_body(vcenter_inventory_network_find)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterInventoryNetworkFindResult',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryNetworkApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
