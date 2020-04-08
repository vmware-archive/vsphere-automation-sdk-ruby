# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class HlmSddcsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Lists all Sddcs that are under the same organization as the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param filter_only_available_to_add Whether or not to filter results based on if the sddc is available to add to the community. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [VcenterHlmSddcsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|]
    def list(filter_only_available_to_add, opts = {})
      data, _status_code, _headers = list_with_http_info(filter_only_available_to_add, opts)
      data
    end

    # Lists all Sddcs that are under the same organization as the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param filter_only_available_to_add Whether or not to filter results based on if the sddc is available to add to the community. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterHlmSddcsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(filter_only_available_to_add, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HlmSddcsApi.list ...'
      end
      # verify the required parameter 'filter_only_available_to_add' is set
      if @api_client.config.client_side_validation && filter_only_available_to_add.nil?
        fail ArgumentError, "Missing the required parameter 'filter_only_available_to_add' when calling HlmSddcsApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/hlm/sddcs'

      # query parameters
      query_params = {}
      query_params[:'filter.only_available_to_add'] = filter_only_available_to_add

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterHlmSddcsListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HlmSddcsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
