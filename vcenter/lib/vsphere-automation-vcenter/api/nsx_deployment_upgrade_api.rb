# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NsxDeploymentUpgradeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Runs checks for available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def check(opts = {})
      check_with_http_info(opts)
      nil
    end

    # Runs checks for available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxDeploymentUpgradeApi.check ...'
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/deployment/upgrade?action=check'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxDeploymentUpgradeApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets NSX deployment information, this includes the overall upgrade status, the available release version, the last precheck run time, the current operation details and the list of clusters with their upgrade status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [VcenterNsxDeploymentUpgradeInfo|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Gets NSX deployment information, this includes the overall upgrade status, the available release version, the last precheck run time, the current operation details and the list of clusters with their upgrade status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNsxDeploymentUpgradeInfo|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxDeploymentUpgradeApi.get ...'
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/deployment/upgrade'

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
	  '200' => 'VCenter::VcenterNsxDeploymentUpgradeInfo',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentState',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxDeploymentUpgradeApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Pauses already running NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsAlreadyInDesiredState|VapiStdErrorsUnauthenticated|VapiStdErrorsError|nil]
    def pause(opts = {})
      pause_with_http_info(opts)
      nil
    end

    # Pauses already running NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsAlreadyInDesiredState|VapiStdErrorsUnauthenticated|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def pause_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxDeploymentUpgradeApi.pause ...'
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/deployment/upgrade?action=pause'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxDeploymentUpgradeApi#pause\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resumes already paused NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsError|nil]
    def resume(opts = {})
      resume_with_http_info(opts)
      nil
    end

    # Resumes already paused NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def resume_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxDeploymentUpgradeApi.resume ...'
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/deployment/upgrade?action=resume'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxDeploymentUpgradeApi#resume\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Applies available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxDeploymentUpgradeUpgradeSpec] :request_body 
    # @return [|VapiStdErrorsAlreadyInDesiredState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def start(opts = {})
      start_with_http_info(opts)
      nil
    end

    # Applies available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxDeploymentUpgradeUpgradeSpec] :request_body 
    # @return [Array<(|VapiStdErrorsAlreadyInDesiredState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def start_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxDeploymentUpgradeApi.start ...'
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/deployment/upgrade?action=start'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxDeploymentUpgradeApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
