# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestDataSetsEntriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param key The key of the entry to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil]
    def delete(vm, data_set, key, opts = {})
      delete_with_http_info(vm, data_set, key, opts)
      nil
    end

    # Deletes an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param key The key of the entry to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, data_set, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsEntriesApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsEntriesApi.delete"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsEntriesApi.delete"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling VmGuestDataSetsEntriesApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s).sub('{' + 'key' + '}', key.to_s)

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
        @api_client.config.logger.debug "API called: VmGuestDataSetsEntriesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes multiple entries from a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :request_body 
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil]
    def delete_multiple(vm, data_set, opts = {})
      delete_multiple_with_http_info(vm, data_set, opts)
      nil
    end

    # Deletes multiple entries from a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_multiple_with_http_info(vm, data_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsEntriesApi.delete_multiple ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsEntriesApi.delete_multiple"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsEntriesApi.delete_multiple"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}?actions=delete-multiple'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsEntriesApi#delete_multiple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the value of an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param key The key of the entry to query.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def get(vm, data_set, key, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, data_set, key, opts)
      data
    end

    # Gets the value of an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param key The key of the entry to query.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, data_set, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsEntriesApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsEntriesApi.get"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsEntriesApi.get"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling VmGuestDataSetsEntriesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s).sub('{' + 'key' + '}', key.to_s)

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
	  '200' => 'VCenter::String',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsEntriesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the value of multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :request_body 
    # @return [Hash<String, String>|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|]
    def get_multiple(vm, data_set, opts = {})
      data, _status_code, _headers = get_multiple_with_http_info(vm, data_set, opts)
      data
    end

    # Gets the value of multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :request_body 
    # @return [Array<(Hash<String, String>|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|, Fixnum, Hash)>]  data, response status code and response headers
    def get_multiple_with_http_info(vm, data_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsEntriesApi.get_multiple ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsEntriesApi.get_multiple"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsEntriesApi.get_multiple"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}?actions=get-multiple'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s)

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
	  '200' => 'VCenter::Hash<String, String>',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsEntriesApi#get_multiple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param key The key of the entry to set. A key can be at most 4096 bytes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil]
    def set(vm, data_set, key, opts = {})
      set_with_http_info(vm, data_set, key, opts)
      nil
    end

    # Sets an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param key The key of the entry to set. A key can be at most 4096 bytes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(vm, data_set, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsEntriesApi.set ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsEntriesApi.set"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsEntriesApi.set"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling VmGuestDataSetsEntriesApi.set"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s).sub('{' + 'key' + '}', key.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsEntriesApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :request_body 
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil]
    def set_multiple(vm, data_set, opts = {})
      set_multiple_with_http_info(vm, data_set, opts)
      nil
    end

    # Sets multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param data_set Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_multiple_with_http_info(vm, data_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestDataSetsEntriesApi.set_multiple ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestDataSetsEntriesApi.set_multiple"
      end
      # verify the required parameter 'data_set' is set
      if @api_client.config.client_side_validation && data_set.nil?
        fail ArgumentError, "Missing the required parameter 'data_set' when calling VmGuestDataSetsEntriesApi.set_multiple"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/data-sets/{data_set}?action=set-multiple'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'data_set' + '}', data_set.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestDataSetsEntriesApi#set_multiple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
