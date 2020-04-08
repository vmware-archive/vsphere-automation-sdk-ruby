# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryBackupSchedulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a schedule
    # @param schedule Identifier of the schedule
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def create(schedule, request_body, opts = {})
      create_with_http_info(schedule, request_body, opts)
      nil
    end

    # Creates a schedule
    # @api private
    # @param schedule Identifier of the schedule
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(schedule, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSchedulesApi.create ...'
      end
      # verify the required parameter 'schedule' is set
      if @api_client.config.client_side_validation && schedule.nil?
        fail ArgumentError, "Missing the required parameter 'schedule' when calling RecoveryBackupSchedulesApi.create"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling RecoveryBackupSchedulesApi.create"
      end
      # resource path
      local_var_path = '/rest/appliance/recovery/backup/schedules/{schedule}'.sub('{' + 'schedule' + '}', schedule.to_s)

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
        @api_client.config.logger.debug "API called: RecoveryBackupSchedulesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes an existing schedule
    # @param schedule Identifier of the schedule
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def delete(schedule, opts = {})
      delete_with_http_info(schedule, opts)
      nil
    end

    # Deletes an existing schedule
    # @api private
    # @param schedule Identifier of the schedule
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSchedulesApi.delete ...'
      end
      # verify the required parameter 'schedule' is set
      if @api_client.config.client_side_validation && schedule.nil?
        fail ArgumentError, "Missing the required parameter 'schedule' when calling RecoveryBackupSchedulesApi.delete"
      end
      # resource path
      local_var_path = '/rest/appliance/recovery/backup/schedules/{schedule}'.sub('{' + 'schedule' + '}', schedule.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSchedulesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns an existing schedule information based on id
    # @param schedule Identifier of the schedule
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupSchedulesResp|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(schedule, opts = {})
      data, _status_code, _headers = get_with_http_info(schedule, opts)
      data
    end

    # Returns an existing schedule information based on id
    # @api private
    # @param schedule Identifier of the schedule
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupSchedulesResp|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSchedulesApi.get ...'
      end
      # verify the required parameter 'schedule' is set
      if @api_client.config.client_side_validation && schedule.nil?
        fail ArgumentError, "Missing the required parameter 'schedule' when calling RecoveryBackupSchedulesApi.get"
      end
      # resource path
      local_var_path = '/rest/appliance/recovery/backup/schedules/{schedule}'.sub('{' + 'schedule' + '}', schedule.to_s)

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
	  '200' => 'Appliance::ApplianceRecoveryBackupSchedulesResp',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSchedulesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of existing schedules with details
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupSchedulesListResp|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns a list of existing schedules with details
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupSchedulesListResp|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSchedulesApi.list ...'
      end
      # resource path
      local_var_path = '/rest/appliance/recovery/backup/schedules'

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
	  '200' => 'Appliance::ApplianceRecoveryBackupSchedulesListResp',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSchedulesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Initiate backup with the specified schedule
    # @param schedule Identifier of the schedule
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceRecoveryBackupSchedulesRun] :request_body 
    # @return [ApplianceRecoveryBackupSchedulesRunResp|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def run(schedule, opts = {})
      data, _status_code, _headers = run_with_http_info(schedule, opts)
      data
    end

    # Initiate backup with the specified schedule
    # @api private
    # @param schedule Identifier of the schedule
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceRecoveryBackupSchedulesRun] :request_body 
    # @return [Array<(ApplianceRecoveryBackupSchedulesRunResp|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def run_with_http_info(schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSchedulesApi.run ...'
      end
      # verify the required parameter 'schedule' is set
      if @api_client.config.client_side_validation && schedule.nil?
        fail ArgumentError, "Missing the required parameter 'schedule' when calling RecoveryBackupSchedulesApi.run"
      end
      # resource path
      local_var_path = '/rest/appliance/recovery/backup/schedules/{schedule}?action=run'.sub('{' + 'schedule' + '}', schedule.to_s)

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
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceRecoveryBackupSchedulesRunResp',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSchedulesApi#run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates a schedule
    # @param schedule Identifier of the schedule
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def update(schedule, request_body, opts = {})
      update_with_http_info(schedule, request_body, opts)
      nil
    end

    # Updates a schedule
    # @api private
    # @param schedule Identifier of the schedule
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(schedule, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSchedulesApi.update ...'
      end
      # verify the required parameter 'schedule' is set
      if @api_client.config.client_side_validation && schedule.nil?
        fail ArgumentError, "Missing the required parameter 'schedule' when calling RecoveryBackupSchedulesApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling RecoveryBackupSchedulesApi.update"
      end
      # resource path
      local_var_path = '/rest/appliance/recovery/backup/schedules/update/{schedule}'.sub('{' + 'schedule' + '}', schedule.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSchedulesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
