=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryRestoreJobApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel the restore job
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryRestoreJobCancelResult|VapiStdErrorsErrorError|]
    def cancel(opts = {})
      data, _status_code, _headers = cancel_with_http_info(opts)
      data
    end

    # Cancel the restore job
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryRestoreJobCancelResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryRestoreJobApi.cancel ...'
      end
      # resource path
      local_var_path = '/appliance/recovery/restore/job/cancel'

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
	  '200' => 'Appliance::ApplianceRecoveryRestoreJobCancelResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryRestoreJobApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Initiate restore.
    # @param appliance_recovery_restore_job_create 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryRestoreJobCreateResult|VapiStdErrorsErrorError|]
    def create(appliance_recovery_restore_job_create, opts = {})
      data, _status_code, _headers = create_with_http_info(appliance_recovery_restore_job_create, opts)
      data
    end

    # Initiate restore.
    # @api private
    # @param appliance_recovery_restore_job_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryRestoreJobCreateResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(appliance_recovery_restore_job_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryRestoreJobApi.create ...'
      end
      # verify the required parameter 'appliance_recovery_restore_job_create' is set
      if @api_client.config.client_side_validation && appliance_recovery_restore_job_create.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_recovery_restore_job_create' when calling RecoveryRestoreJobApi.create"
      end
      # resource path
      local_var_path = '/appliance/recovery/restore/job'

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
      post_body = @api_client.object_to_http_body(appliance_recovery_restore_job_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceRecoveryRestoreJobCreateResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryRestoreJobApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # See restore job progress/result.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryRestoreJobResult|VapiStdErrorsErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # See restore job progress/result.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryRestoreJobResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryRestoreJobApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/recovery/restore/job'

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
	  '200' => 'Appliance::ApplianceRecoveryRestoreJobResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryRestoreJobApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
