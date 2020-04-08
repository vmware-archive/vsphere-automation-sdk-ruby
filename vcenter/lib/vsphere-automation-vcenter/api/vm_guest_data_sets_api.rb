# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestDataSetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmGuestDataSetsCreateSpec] :request_body 
    # @return [String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|]
    def create(vm, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, opts)
      data
    end

    # Creates a new data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmGuestDataSetsCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsApi.create"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '400' => 'VCenter::VapiStdErrorsAlreadyExists',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsUnableToAllocateResource',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set to be deleted. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil]
    def delete(vm, data_set, opts = {})
      delete_with_http_info(vm, data_set, opts)
      nil
    end

    # Delete a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set to be deleted. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, data_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsApi.delete"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s)

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
        @api_client.config.logger.debug "API called: VmGuestDataSetsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information describing a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set to be queried. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestDataSetsInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def get(vm, data_set, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, data_set, opts)
      data
    end

    # Returns information describing a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set to be queried. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestDataSetsInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, data_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsApi.get"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s)

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
	  '200' => 'VCenter::VcenterVmGuestDataSetsInfo',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists the data sets of a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterVmGuestDataSetsSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def list(vm, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, opts)
      data
    end

    # Lists the data sets of a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterVmGuestDataSetsSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsApi.list"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::Array<VcenterVmGuestDataSetsSummary>',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modifies the attributes of a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set to be queried. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmGuestDataSetsUpdateSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|nil]
    def update(vm, data_set, opts = {})
      update_with_http_info(vm, data_set, opts)
      nil
    end

    # Modifies the attributes of a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set to be queried. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmGuestDataSetsUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(vm, data_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsApi.update ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsApi.update"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsApi.update"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
