=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryBackupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check for backup errors without starting backup.
    # @param appliance_recovery_backup_validate 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupValidateResult|VapiStdErrorsErrorError|]
    def validate(appliance_recovery_backup_validate, opts = {})
      data, _status_code, _headers = validate_with_http_info(appliance_recovery_backup_validate, opts)
      data
    end

    # Check for backup errors without starting backup.
    # @api private
    # @param appliance_recovery_backup_validate 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupValidateResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def validate_with_http_info(appliance_recovery_backup_validate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupApi.validate ...'
      end
      # verify the required parameter 'appliance_recovery_backup_validate' is set
      if @api_client.config.client_side_validation && appliance_recovery_backup_validate.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_recovery_backup_validate' when calling RecoveryBackupApi.validate"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/validate'

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
      post_body = @api_client.object_to_http_body(appliance_recovery_backup_validate)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceRecoveryBackupValidateResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupApi#validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
