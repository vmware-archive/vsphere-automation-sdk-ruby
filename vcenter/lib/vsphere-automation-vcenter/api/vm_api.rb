# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVMCloneResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def clone(request_body, opts = {})
      data, _status_code, _headers = clone_with_http_info(request_body, opts)
      data
    end

    # Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVMCloneResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def clone_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.clone ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VMApi.clone"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm?action=clone'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVMCloneResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#clone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVMCloneTaskResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def clone_task(request_body, opts = {})
      data, _status_code, _headers = clone_task_with_http_info(request_body, opts)
      data
    end

    # Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVMCloneTaskResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def clone_task_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.clone_task ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VMApi.clone_task"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm?action=clone&vmw-task=true'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVMCloneTaskResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#clone_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a virtual machine. if you do not have all of the privileges described as follows:     -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Create.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.StoragePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVMCreateResp|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Creates a virtual machine. if you do not have all of the privileges described as follows:     -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Create.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.StoragePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVMCreateResp|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VMApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVMCreateResp',
	  '400' => 'VCenter::VapiStdErrorsUnsupportedError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Delete.  
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(vm, opts = {})
      delete_with_http_info(vm, opts)
      nil
    end

    # Deletes a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Delete.  
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VMApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}'.sub('{' + 'vm' + '}', vm.to_s)

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
        @api_client.config.logger.debug "API called: VMApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVMResp|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, opts)
      data
    end

    # Returns information about a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVMResp|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VMApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVMResp',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create an instant clone of an existing virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the attribute VM.InstantCloneSpec.source requires VirtualMachine.Provisioning.Clone and VirtualMachine.Inventory.CreateFromExisting.    -  The resource Folder referenced by the attribute VM.InstantClonePlacementSpec.folder requires VirtualMachine.Interact.PowerOn.    -  The resource ResourcePool referenced by the attribute VM.InstantClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.InstantClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVMInstantCloneResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def instant_clone(request_body, opts = {})
      data, _status_code, _headers = instant_clone_with_http_info(request_body, opts)
      data
    end

    # Create an instant clone of an existing virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the attribute VM.InstantCloneSpec.source requires VirtualMachine.Provisioning.Clone and VirtualMachine.Inventory.CreateFromExisting.    -  The resource Folder referenced by the attribute VM.InstantClonePlacementSpec.folder requires VirtualMachine.Interact.PowerOn.    -  The resource ResourcePool referenced by the attribute VM.InstantClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.InstantClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVMInstantCloneResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def instant_clone_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.instant_clone ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VMApi.instant_clone"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm?action=instant-clone'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVMInstantCloneResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#instant_clone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about at most 4000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_vms Identifiers of virtual machines that can match the filter. If unset or empty, virtual machines with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
    # @option opts [Array<String>] :filter_names Names that virtual machines must have to match the filter (see VM.Info.name). If unset or empty, virtual machines with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [Array<String>] :filter_hosts Hosts that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines on any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :filter_resource_pools Resource pools that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    # @option opts [Array<String>] :filter_power_states Power states that a virtual machine must be in to match the filter (see Power.Info.state. If unset or empty, virtual machines in any power state match the filter.
    # @return [VcenterVMListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 4000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_vms Identifiers of virtual machines that can match the filter. If unset or empty, virtual machines with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
    # @option opts [Array<String>] :filter_names Names that virtual machines must have to match the filter (see VM.Info.name). If unset or empty, virtual machines with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [Array<String>] :filter_hosts Hosts that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines on any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :filter_resource_pools Resource pools that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    # @option opts [Array<String>] :filter_power_states Power states that a virtual machine must be in to match the filter (see Power.Info.state. If unset or empty, virtual machines in any power state match the filter.
    # @return [Array<(VcenterVMListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_power_states'] && !opts[:'filter_power_states'].all? { |item| ['POWERED_OFF', 'POWERED_ON', 'SUSPENDED'].include?(item) }
        fail ArgumentError, 'invalid value for "filter_power_states", must include one of POWERED_OFF, POWERED_ON, SUSPENDED'
      end
      # resource path
      local_var_path = '/rest/vcenter/vm'

      # query parameters
      query_params = {}
      query_params[:'filter.vms'] = @api_client.build_collection_param(opts[:'filter_vms'], :multi) if !opts[:'filter_vms'].nil?
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
      query_params[:'filter.folders'] = @api_client.build_collection_param(opts[:'filter_folders'], :multi) if !opts[:'filter_folders'].nil?
      query_params[:'filter.datacenters'] = @api_client.build_collection_param(opts[:'filter_datacenters'], :multi) if !opts[:'filter_datacenters'].nil?
      query_params[:'filter.hosts'] = @api_client.build_collection_param(opts[:'filter_hosts'], :multi) if !opts[:'filter_hosts'].nil?
      query_params[:'filter.clusters'] = @api_client.build_collection_param(opts[:'filter_clusters'], :multi) if !opts[:'filter_clusters'].nil?
      query_params[:'filter.resource_pools'] = @api_client.build_collection_param(opts[:'filter_resource_pools'], :multi) if !opts[:'filter_resource_pools'].nil?
      query_params[:'filter.power_states'] = @api_client.build_collection_param(opts[:'filter_power_states'], :multi) if !opts[:'filter_power_states'].nil?

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
	  '200' => 'VCenter::VcenterVMListResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a virtual machine from existing virtual machine files on storage. if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.RegisterSpec.datastore requires System.Read.    -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Register.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVMRegisterResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def register(request_body, opts = {})
      data, _status_code, _headers = register_with_http_info(request_body, opts)
      data
    end

    # Creates a virtual machine from existing virtual machine files on storage. if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.RegisterSpec.datastore requires System.Read.    -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Register.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVMRegisterResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def register_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.register ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VMApi.register"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm?action=register'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVMRegisterResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#register\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
    # @param vm Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def relocate(vm, request_body, opts = {})
      relocate_with_http_info(vm, request_body, opts)
      nil
    end

    # Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
    # @api private
    # @param vm Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def relocate_with_http_info(vm, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.relocate ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VMApi.relocate"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VMApi.relocate"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}?action=relocate'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#relocate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
    # @param vm Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVMRelocateTaskResp|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def relocate_task(vm, request_body, opts = {})
      data, _status_code, _headers = relocate_task_with_http_info(vm, request_body, opts)
      data
    end

    # Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
    # @api private
    # @param vm Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVMRelocateTaskResp|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def relocate_task_with_http_info(vm, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.relocate_task ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VMApi.relocate_task"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VMApi.relocate_task"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}?action=relocate&vmw-task=true'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVMRelocateTaskResp',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#relocate_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes the virtual machine corresponding to vm from the vCenter inventory without removing any of the virtual machine's files from storage. All high-level information stored with the management server (ESXi or vCenter) is removed, including information such as statistics, resource pool association, permissions, and alarms. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Unregister.  
    # @param vm Identifier of the virtual machine to be unregistered. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def unregister(vm, opts = {})
      unregister_with_http_info(vm, opts)
      nil
    end

    # Removes the virtual machine corresponding to vm from the vCenter inventory without removing any of the virtual machine&#39;s files from storage. All high-level information stored with the management server (ESXi or vCenter) is removed, including information such as statistics, resource pool association, permissions, and alarms. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Unregister.  
    # @api private
    # @param vm Identifier of the virtual machine to be unregistered. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def unregister_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMApi.unregister ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VMApi.unregister"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}?action=unregister'.sub('{' + 'vm' + '}', vm.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMApi#unregister\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
