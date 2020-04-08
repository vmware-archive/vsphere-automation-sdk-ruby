# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class ContentRegistriesHealthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the health information of a container registry in the vCenter.
    # @param registry Identifier of the registry.
    # @param [Hash] opts the optional parameters
    # @return [VcenterContentRegistriesHealthResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(registry, opts = {})
      data, _status_code, _headers = get_with_http_info(registry, opts)
      data
    end

    # Returns the health information of a container registry in the vCenter.
    # @api private
    # @param registry Identifier of the registry.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterContentRegistriesHealthResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(registry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHealthApi.get ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHealthApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/{registry}/health'.sub('{' + 'registry' + '}', registry.to_s)

      # query parameters
      query_params = {}

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
	  '200' => 'VCenter::VcenterContentRegistriesHealthResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRegistriesHealthApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
