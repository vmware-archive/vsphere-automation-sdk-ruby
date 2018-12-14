=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryBackupJobApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel the backup job.
    # @param id ID (ID of job)
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupJobCancelResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def cancel(id, opts = {})
      data, _status_code, _headers = cancel_with_http_info(id, opts)
      data
    end

    # Cancel the backup job.
    # @api private
    # @param id ID (ID of job)
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupJobCancelResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def cancel_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupJobApi.cancel ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RecoveryBackupJobApi.cancel"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/job/{id}/cancel'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceRecoveryBackupJobCancelResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupJobApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Initiate backup.
    # @param appliance_recovery_backup_job_create 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupJobCreateResult|VapiStdErrorsErrorError|]
    def create(appliance_recovery_backup_job_create, opts = {})
      data, _status_code, _headers = create_with_http_info(appliance_recovery_backup_job_create, opts)
      data
    end

    # Initiate backup.
    # @api private
    # @param appliance_recovery_backup_job_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupJobCreateResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(appliance_recovery_backup_job_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupJobApi.create ...'
      end
      # verify the required parameter 'appliance_recovery_backup_job_create' is set
      if @api_client.config.client_side_validation && appliance_recovery_backup_job_create.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_recovery_backup_job_create' when calling RecoveryBackupJobApi.create"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/job'

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
      post_body = @api_client.object_to_http_body(appliance_recovery_backup_job_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceRecoveryBackupJobCreateResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupJobApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # See backup job progress/result.
    # @param id ID (ID of job)
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupJobResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # See backup job progress/result.
    # @api private
    # @param id ID (ID of job)
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupJobResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupJobApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RecoveryBackupJobApi.get"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/job/{id}'.sub('{' + 'id' + '}', id.to_s)

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
	  '200' => 'Appliance::ApplianceRecoveryBackupJobResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupJobApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get list of backup jobs
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupJobListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get list of backup jobs
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupJobListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupJobApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/job'

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
	  '200' => 'Appliance::ApplianceRecoveryBackupJobListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupJobApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
