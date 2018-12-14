=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class StoragePoliciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns datastore compatibility summary about a specific storage policy.
    # @param policy The storage policy identifier The parameter must be an identifier for the resource type: vcenter.StoragePolicy.
    # @param vcenter_storage_policies_check_compatibility 
    # @param [Hash] opts the optional parameters
    # @return [VcenterStoragePoliciesCheckCompatibilityResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def check_compatibility(policy, vcenter_storage_policies_check_compatibility, opts = {})
      data, _status_code, _headers = check_compatibility_with_http_info(policy, vcenter_storage_policies_check_compatibility, opts)
      data
    end

    # Returns datastore compatibility summary about a specific storage policy.
    # @api private
    # @param policy The storage policy identifier The parameter must be an identifier for the resource type: vcenter.StoragePolicy.
    # @param vcenter_storage_policies_check_compatibility 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterStoragePoliciesCheckCompatibilityResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_compatibility_with_http_info(policy, vcenter_storage_policies_check_compatibility, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoragePoliciesApi.check_compatibility ...'
      end
      # verify the required parameter 'policy' is set
      if @api_client.config.client_side_validation && policy.nil?
        fail ArgumentError, "Missing the required parameter 'policy' when calling StoragePoliciesApi.check_compatibility"
      end
      # verify the required parameter 'vcenter_storage_policies_check_compatibility' is set
      if @api_client.config.client_side_validation && vcenter_storage_policies_check_compatibility.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_storage_policies_check_compatibility' when calling StoragePoliciesApi.check_compatibility"
      end
      # resource path
      local_var_path = '/vcenter/storage/policies/{policy}?action=check-compatibility'.sub('{' + 'policy' + '}', policy.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_storage_policies_check_compatibility)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterStoragePoliciesCheckCompatibilityResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoragePoliciesApi#check_compatibility\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about at most 1024 visible (subject to permission checks) storage solicies availabe in vCenter. These storage policies can be used for provisioning virtual machines or disks.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_policies Identifiers of storage policies that can match the filter. If unset or empty, storage policies with any identifiers match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.StoragePolicy.
    # @return [VcenterStoragePoliciesListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1024 visible (subject to permission checks) storage solicies availabe in vCenter. These storage policies can be used for provisioning virtual machines or disks.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_policies Identifiers of storage policies that can match the filter. If unset or empty, storage policies with any identifiers match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.StoragePolicy.
    # @return [Array<(VcenterStoragePoliciesListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoragePoliciesApi.list ...'
      end
      # resource path
      local_var_path = '/vcenter/storage/policies'

      # query parameters
      query_params = {}
      query_params[:'filter.policies'] = @api_client.build_collection_param(opts[:'filter_policies'], :multi) if !opts[:'filter_policies'].nil?

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
	  '200' => 'VCenter::VcenterStoragePoliciesListResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoragePoliciesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
