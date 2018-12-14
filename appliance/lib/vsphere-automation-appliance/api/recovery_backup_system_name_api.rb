=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryBackupSystemNameApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of system names for which backup archives exist under {@param.name locSpec}.
    # @param loc_spec_location Backup location URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :loc_spec_location_user Username for the given location.
    # @option opts [String] :loc_spec_location_password Password for the given location.
    # @return [ApplianceRecoveryBackupSystemNameListResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def list(loc_spec_location, opts = {})
      data, _status_code, _headers = list_with_http_info(loc_spec_location, opts)
      data
    end

    # Returns a list of system names for which backup archives exist under {@param.name locSpec}.
    # @api private
    # @param loc_spec_location Backup location URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :loc_spec_location_user Username for the given location.
    # @option opts [String] :loc_spec_location_password Password for the given location.
    # @return [Array<(ApplianceRecoveryBackupSystemNameListResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(loc_spec_location, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSystemNameApi.list ...'
      end
      # verify the required parameter 'loc_spec_location' is set
      if @api_client.config.client_side_validation && loc_spec_location.nil?
        fail ArgumentError, "Missing the required parameter 'loc_spec_location' when calling RecoveryBackupSystemNameApi.list"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/system-name'

      # query parameters
      query_params = {}
      query_params[:'loc_spec.location'] = loc_spec_location
      query_params[:'loc_spec.location_user'] = opts[:'loc_spec_location_user'] if !opts[:'loc_spec_location_user'].nil?
      query_params[:'loc_spec.location_password'] = opts[:'loc_spec_location_password'] if !opts[:'loc_spec_location_password'].nil?

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
	  '200' => 'Appliance::ApplianceRecoveryBackupSystemNameListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSystemNameApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
