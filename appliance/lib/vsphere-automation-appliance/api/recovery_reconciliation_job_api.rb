=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryReconciliationJobApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Initiate reconciliation.
    # @param appliance_recovery_reconciliation_job_create 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryReconciliationJobCreateResult|VapiStdErrorsErrorError|]
    def create(appliance_recovery_reconciliation_job_create, opts = {})
      data, _status_code, _headers = create_with_http_info(appliance_recovery_reconciliation_job_create, opts)
      data
    end

    # Initiate reconciliation.
    # @api private
    # @param appliance_recovery_reconciliation_job_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryReconciliationJobCreateResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(appliance_recovery_reconciliation_job_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryReconciliationJobApi.create ...'
      end
      # verify the required parameter 'appliance_recovery_reconciliation_job_create' is set
      if @api_client.config.client_side_validation && appliance_recovery_reconciliation_job_create.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_recovery_reconciliation_job_create' when calling RecoveryReconciliationJobApi.create"
      end
      # resource path
      local_var_path = '/appliance/recovery/reconciliation/job'

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
      post_body = @api_client.object_to_http_body(appliance_recovery_reconciliation_job_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceRecoveryReconciliationJobCreateResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryReconciliationJobApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get reconciliation job progress/result.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryReconciliationJobResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get reconciliation job progress/result.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryReconciliationJobResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryReconciliationJobApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/recovery/reconciliation/job'

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
	  '200' => 'Appliance::ApplianceRecoveryReconciliationJobResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryReconciliationJobApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
