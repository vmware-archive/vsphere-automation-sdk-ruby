=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class StoragePoliciesComplianceVMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_status Compliance Status that a virtual machine must have to match the filter. Atleast one status must be specified.
    # @option opts [Array<String>] :filter_vms Identifiers of virtual machines that can match the filter If unset or empty, virtual machines with any identifier matches the filter When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
    # @return [VcenterStoragePoliciesComplianceVMListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_status Compliance Status that a virtual machine must have to match the filter. Atleast one status must be specified.
    # @option opts [Array<String>] :filter_vms Identifiers of virtual machines that can match the filter If unset or empty, virtual machines with any identifier matches the filter When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
    # @return [Array<(VcenterStoragePoliciesComplianceVMListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoragePoliciesComplianceVMApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_status'] && !opts[:'filter_status'].all? { |item| ['COMPLIANT', 'NON_COMPLIANT', 'UNKNOWN_COMPLIANCE', 'NOT_APPLICABLE', 'OUT_OF_DATE'].include?(item) }
        fail ArgumentError, 'invalid value for "filter_status", must include one of COMPLIANT, NON_COMPLIANT, UNKNOWN_COMPLIANCE, NOT_APPLICABLE, OUT_OF_DATE'
      end
      # resource path
      local_var_path = '/vcenter/storage/policies/compliance/vm'

      # query parameters
      query_params = {}
      query_params[:'filter.status'] = @api_client.build_collection_param(opts[:'filter_status'], :multi) if !opts[:'filter_status'].nil?
      query_params[:'filter.vms'] = @api_client.build_collection_param(opts[:'filter_vms'], :multi) if !opts[:'filter_vms'].nil?

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
	  '200' => 'VCenter::VcenterStoragePoliciesComplianceVMListResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoragePoliciesComplianceVMApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
