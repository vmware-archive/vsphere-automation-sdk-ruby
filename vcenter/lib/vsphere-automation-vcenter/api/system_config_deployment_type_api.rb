# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class SystemConfigDeploymentTypeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the type of the vCenter appliance.
    # @param [Hash] opts the optional parameters
    # @return [VcenterSystemConfigDeploymentTypeResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the type of the vCenter appliance.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterSystemConfigDeploymentTypeResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemConfigDeploymentTypeApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/system-config/deployment-type'

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
	  '200' => 'VCenter::VcenterSystemConfigDeploymentTypeResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemConfigDeploymentTypeApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reconfigure the type of the vCenter appliance.
    # @param vcenter_system_config_deployment_type_reconfigure 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil]
    def reconfigure(vcenter_system_config_deployment_type_reconfigure, opts = {})
      reconfigure_with_http_info(vcenter_system_config_deployment_type_reconfigure, opts)
      nil
    end

    # Reconfigure the type of the vCenter appliance.
    # @api private
    # @param vcenter_system_config_deployment_type_reconfigure 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def reconfigure_with_http_info(vcenter_system_config_deployment_type_reconfigure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemConfigDeploymentTypeApi.reconfigure ...'
      end
      # verify the required parameter 'vcenter_system_config_deployment_type_reconfigure' is set
      if @api_client.config.client_side_validation && vcenter_system_config_deployment_type_reconfigure.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_system_config_deployment_type_reconfigure' when calling SystemConfigDeploymentTypeApi.reconfigure"
      end
      # resource path
      local_var_path = '/vcenter/system-config/deployment-type'

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
      post_body = @api_client.object_to_http_body(vcenter_system_config_deployment_type_reconfigure)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemConfigDeploymentTypeApi#reconfigure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
