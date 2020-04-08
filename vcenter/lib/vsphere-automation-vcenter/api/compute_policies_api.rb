# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class ComputePoliciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsUnableToAllocateResource|]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Creates a new compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsUnableToAllocateResource|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputePoliciesApi.create ...'
      end
      # resource path
      local_var_path = '/api/vcenter/compute/policies'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '201' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '500' => 'VCenter::VapiStdErrorsUnableToAllocateResource',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputePoliciesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a specific compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param policy Identifier of the policy to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil]
    def delete(policy, opts = {})
      delete_with_http_info(policy, opts)
      nil
    end

    # Deletes a specific compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param policy Identifier of the policy to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(policy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputePoliciesApi.delete ...'
      end
      # verify the required parameter 'policy' is set
      if @api_client.config.client_side_validation && policy.nil?
        fail ArgumentError, "Missing the required parameter 'policy' when calling ComputePoliciesApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/compute/policies/{policy}'.sub('{' + 'policy' + '}', policy.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputePoliciesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a specific compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param policy Identifier of the policy for which information should be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Object|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def get(policy, opts = {})
      data, _status_code, _headers = get_with_http_info(policy, opts)
      data
    end

    # Returns information about a specific compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param policy Identifier of the policy for which information should be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(policy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputePoliciesApi.get ...'
      end
      # verify the required parameter 'policy' is set
      if @api_client.config.client_side_validation && policy.nil?
        fail ArgumentError, "Missing the required parameter 'policy' when calling ComputePoliciesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/compute/policies/{policy}'.sub('{' + 'policy' + '}', policy.to_s)

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
	  '200' => 'VCenter::Object',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputePoliciesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about the compute policies available in this vCenter server in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterComputePoliciesSummary>|VapiStdErrorsUnauthorized|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about the compute policies available in this vCenter server in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterComputePoliciesSummary>|VapiStdErrorsUnauthorized|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ComputePoliciesApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/compute/policies'

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
	  '200' => 'VCenter::Array<VcenterComputePoliciesSummary>',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComputePoliciesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
