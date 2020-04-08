# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class ComputePoliciesCapabilitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about a specific compute policy capability in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param capability Identifier of the capability for which information should be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [VcenterComputePoliciesCapabilitiesInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def get(capability, opts = {})
      data, _status_code, _headers = get_with_http_info(capability, opts)
      data
    end

    # Returns information about a specific compute policy capability in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param capability Identifier of the capability for which information should be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterComputePoliciesCapabilitiesInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(capability, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputePoliciesCapabilitiesApi.get ...'
      end
      # verify the required parameter 'capability' is set
      if @api_client.config.client_side_validation && capability.nil?
        fail ArgumentError, "Missing the required parameter 'capability' when calling ComputePoliciesCapabilitiesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/compute/policies/capabilities/{capability}'.sub('{' + 'capability' + '}', capability.to_s)

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
	  '200' => 'VCenter::VcenterComputePoliciesCapabilitiesInfo',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputePoliciesCapabilitiesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about the compute policy capabilities available in this vCenter server in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterComputePoliciesCapabilitiesSummary>|VapiStdErrorsUnauthorized|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about the compute policy capabilities available in this vCenter server in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterComputePoliciesCapabilitiesSummary>|VapiStdErrorsUnauthorized|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputePoliciesCapabilitiesApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/compute/policies/capabilities'

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
	  '200' => 'VCenter::Array<VcenterComputePoliciesCapabilitiesSummary>',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputePoliciesCapabilitiesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
