# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class UpdatePendingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets update information
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdatePendingResult|VapiStdErrorsAlreadyInDesiredStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(version, opts = {})
      data, _status_code, _headers = get_with_http_info(version, opts)
      data
    end

    # Gets update information
    # @api private
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdatePendingResult|VapiStdErrorsAlreadyInDesiredStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.get ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.get"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}'.sub('{' + 'version' + '}', version.to_s)

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
	  '200' => 'Appliance::ApplianceUpdatePendingResult',
	  '400' => 'Appliance::VapiStdErrorsAlreadyInDesiredStateError',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Appliance::VapiStdErrorsUnauthorizedError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts operation of installing the appliance update. Will fail is the update is not staged
    # @param version Update version
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def install(version, request_body, opts = {})
      install_with_http_info(version, request_body, opts)
      nil
    end

    # Starts operation of installing the appliance update. Will fail is the update is not staged
    # @api private
    # @param version Update version
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def install_with_http_info(version, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.install ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.install"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling UpdatePendingApi.install"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=install'.sub('{' + 'version' + '}', version.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#install\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Checks if new updates are available.
    # @param source_type The {@name SourceType} {@term enumerated type} defines the supported types of sources of updates.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url specific URL to check at
    # @return [ApplianceUpdatePendingListResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(source_type, opts = {})
      data, _status_code, _headers = list_with_http_info(source_type, opts)
      data
    end

    # Checks if new updates are available.
    # @api private
    # @param source_type The {@name SourceType} {@term enumerated type} defines the supported types of sources of updates.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url specific URL to check at
    # @return [Array<(ApplianceUpdatePendingListResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(source_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.list ...'
      end
      # verify the required parameter 'source_type' is set
      if @api_client.config.client_side_validation && source_type.nil?
        fail ArgumentError, "Missing the required parameter 'source_type' when calling UpdatePendingApi.list"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['LAST_CHECK', 'LOCAL', 'LOCAL_AND_ONLINE'].include?(source_type)
        fail ArgumentError, "invalid value for 'source_type', must be one of LAST_CHECK, LOCAL, LOCAL_AND_ONLINE"
      end
      # resource path
      local_var_path = '/appliance/update/pending'

      # query parameters
      query_params = {}
      query_params[:'source_type'] = source_type
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?

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
	  '200' => 'Appliance::ApplianceUpdatePendingListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Appliance::VapiStdErrorsUnauthorizedError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Runs update precheck
    # @param version Update version
    # @param action action&#x3D;precheck
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdatePendingPrecheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def precheck(version, action, opts = {})
      data, _status_code, _headers = precheck_with_http_info(version, action, opts)
      data
    end

    # Runs update precheck
    # @api private
    # @param version Update version
    # @param action action&#x3D;precheck
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdatePendingPrecheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def precheck_with_http_info(version, action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.precheck ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.precheck"
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling UpdatePendingApi.precheck"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['precheck'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of precheck"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'action'] = action

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
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceUpdatePendingPrecheckResult',
	  '400' => 'Appliance::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Appliance::VapiStdErrorsUnauthorizedError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#precheck\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def stage(version, opts = {})
      stage_with_http_info(version, opts)
      nil
    end

    # Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
    # @api private
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def stage_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.stage ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.stage"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=stage'.sub('{' + 'version' + '}', version.to_s)

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
        @api_client.config.logger.debug "API called: UpdatePendingApi#stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
    # @param version Update version
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def stage_and_install(version, request_body, opts = {})
      stage_and_install_with_http_info(version, request_body, opts)
      nil
    end

    # Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
    # @api private
    # @param version Update version
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def stage_and_install_with_http_info(version, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.stage_and_install ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.stage_and_install"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling UpdatePendingApi.stage_and_install"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=stage-and-install'.sub('{' + 'version' + '}', version.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#stage_and_install\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validates the user provided data before the update installation.
    # @param version Update version
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdatePendingValidateResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def validate(version, request_body, opts = {})
      data, _status_code, _headers = validate_with_http_info(version, request_body, opts)
      data
    end

    # Validates the user provided data before the update installation.
    # @api private
    # @param version Update version
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdatePendingValidateResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def validate_with_http_info(version, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.validate ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.validate"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling UpdatePendingApi.validate"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=validate'.sub('{' + 'version' + '}', version.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceUpdatePendingValidateResult',
	  '400' => 'Appliance::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Appliance::VapiStdErrorsUnauthorizedError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
