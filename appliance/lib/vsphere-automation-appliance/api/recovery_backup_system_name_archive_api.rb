=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryBackupSystemNameArchiveApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the information for backup corresponding to given backup location and system name.
    # @param system_name System name identifier.
    # @param spec_location Backup location URL.
    # @param archive Archive identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :spec_location_user Username for the given location.
    # @option opts [String] :spec_location_password Password for the given location.
    # @return [ApplianceRecoveryBackupSystemNameArchiveResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(system_name, spec_location, archive, opts = {})
      data, _status_code, _headers = get_with_http_info(system_name, spec_location, archive, opts)
      data
    end

    # Returns the information for backup corresponding to given backup location and system name.
    # @api private
    # @param system_name System name identifier.
    # @param spec_location Backup location URL.
    # @param archive Archive identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :spec_location_user Username for the given location.
    # @option opts [String] :spec_location_password Password for the given location.
    # @return [Array<(ApplianceRecoveryBackupSystemNameArchiveResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(system_name, spec_location, archive, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSystemNameArchiveApi.get ...'
      end
      # verify the required parameter 'system_name' is set
      if @api_client.config.client_side_validation && system_name.nil?
        fail ArgumentError, "Missing the required parameter 'system_name' when calling RecoveryBackupSystemNameArchiveApi.get"
      end
      # verify the required parameter 'spec_location' is set
      if @api_client.config.client_side_validation && spec_location.nil?
        fail ArgumentError, "Missing the required parameter 'spec_location' when calling RecoveryBackupSystemNameArchiveApi.get"
      end
      # verify the required parameter 'archive' is set
      if @api_client.config.client_side_validation && archive.nil?
        fail ArgumentError, "Missing the required parameter 'archive' when calling RecoveryBackupSystemNameArchiveApi.get"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/system-name/{system_name}/archives/{archive}'.sub('{' + 'system_name' + '}', system_name.to_s).sub('{' + 'archive' + '}', archive.to_s)

      # query parameters
      query_params = {}
      query_params[:'spec.location'] = spec_location
      query_params[:'spec.location_user'] = opts[:'spec_location_user'] if !opts[:'spec_location_user'].nil?
      query_params[:'spec.location_password'] = opts[:'spec_location_password'] if !opts[:'spec_location_password'].nil?

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
	  '200' => 'Appliance::ApplianceRecoveryBackupSystemNameArchiveResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSystemNameArchiveApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
    # @param system_name System name identifier.
    # @param loc_spec_location Backup location URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_spec_start_timestamp Backup must have been taken on or after this time to match the filter.
    # @option opts [String] :filter_spec_end_timestamp Backup must have been taken on or before this time to match the filter.
    # @option opts [String] :filter_spec_comment_substring Backup comment must contain this {@term string} to match the filter.
    # @option opts [Integer] :filter_spec_max_results Limit result to a max count of most recent backups.
    # @option opts [String] :loc_spec_location_user Username for the given location.
    # @option opts [String] :loc_spec_location_password Password for the given location.
    # @return [ApplianceRecoveryBackupSystemNameArchiveListResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def list(system_name, loc_spec_location, opts = {})
      data, _status_code, _headers = list_with_http_info(system_name, loc_spec_location, opts)
      data
    end

    # Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
    # @api private
    # @param system_name System name identifier.
    # @param loc_spec_location Backup location URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_spec_start_timestamp Backup must have been taken on or after this time to match the filter.
    # @option opts [String] :filter_spec_end_timestamp Backup must have been taken on or before this time to match the filter.
    # @option opts [String] :filter_spec_comment_substring Backup comment must contain this {@term string} to match the filter.
    # @option opts [Integer] :filter_spec_max_results Limit result to a max count of most recent backups.
    # @option opts [String] :loc_spec_location_user Username for the given location.
    # @option opts [String] :loc_spec_location_password Password for the given location.
    # @return [Array<(ApplianceRecoveryBackupSystemNameArchiveListResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(system_name, loc_spec_location, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSystemNameArchiveApi.list ...'
      end
      # verify the required parameter 'system_name' is set
      if @api_client.config.client_side_validation && system_name.nil?
        fail ArgumentError, "Missing the required parameter 'system_name' when calling RecoveryBackupSystemNameArchiveApi.list"
      end
      # verify the required parameter 'loc_spec_location' is set
      if @api_client.config.client_side_validation && loc_spec_location.nil?
        fail ArgumentError, "Missing the required parameter 'loc_spec_location' when calling RecoveryBackupSystemNameArchiveApi.list"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/system-name/{system_name}/archives'.sub('{' + 'system_name' + '}', system_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'loc_spec.location'] = loc_spec_location
      query_params[:'filter_spec.start_timestamp'] = opts[:'filter_spec_start_timestamp'] if !opts[:'filter_spec_start_timestamp'].nil?
      query_params[:'filter_spec.end_timestamp'] = opts[:'filter_spec_end_timestamp'] if !opts[:'filter_spec_end_timestamp'].nil?
      query_params[:'filter_spec.comment_substring'] = opts[:'filter_spec_comment_substring'] if !opts[:'filter_spec_comment_substring'].nil?
      query_params[:'filter_spec.max_results'] = opts[:'filter_spec_max_results'] if !opts[:'filter_spec_max_results'].nil?
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
	  '200' => 'Appliance::ApplianceRecoveryBackupSystemNameArchiveListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSystemNameArchiveApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
