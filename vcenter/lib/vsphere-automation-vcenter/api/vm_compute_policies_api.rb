# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmComputePoliciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about the compliance of a virtual machine with a compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param vm Identifier of the virtual machine to query the status for.
    # @param policy Identifier of the policy to query the status for.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmComputePoliciesInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def get(vm, policy, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, policy, opts)
      data
    end

    # Returns information about the compliance of a virtual machine with a compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param vm Identifier of the virtual machine to query the status for.
    # @param policy Identifier of the policy to query the status for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmComputePoliciesInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, policy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmComputePoliciesApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmComputePoliciesApi.get"
      end
      # verify the required parameter 'policy' is set
      if @api_client.config.client_side_validation && policy.nil?
        fail ArgumentError, "Missing the required parameter 'policy' when calling VmComputePoliciesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/compute/policies/{policy}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'policy' + '}', policy.to_s)

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
	  '200' => 'VCenter::VcenterVmComputePoliciesInfo',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmComputePoliciesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
