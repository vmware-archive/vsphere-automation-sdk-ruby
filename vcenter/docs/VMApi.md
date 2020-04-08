# VSphereAutomation::VCenter::VMApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clone**](VMApi.md#clone) | **POST** /rest/vcenter/vm?action&#x3D;clone | Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
[**clone_task**](VMApi.md#clone_task) | **POST** /rest/vcenter/vm?action&#x3D;clone&amp;vmw-task&#x3D;true | Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
[**create**](VMApi.md#create) | **POST** /rest/vcenter/vm | Creates a virtual machine. if you do not have all of the privileges described as follows:     -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Create.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.StoragePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
[**delete**](VMApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm} | Deletes a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Delete.  
[**get**](VMApi.md#get) | **GET** /rest/vcenter/vm/{vm} | Returns information about a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
[**instant_clone**](VMApi.md#instant_clone) | **POST** /rest/vcenter/vm?action&#x3D;instant-clone | Create an instant clone of an existing virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the attribute VM.InstantCloneSpec.source requires VirtualMachine.Provisioning.Clone and VirtualMachine.Inventory.CreateFromExisting.    -  The resource Folder referenced by the attribute VM.InstantClonePlacementSpec.folder requires VirtualMachine.Interact.PowerOn.    -  The resource ResourcePool referenced by the attribute VM.InstantClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.InstantClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
[**list**](VMApi.md#list) | **GET** /rest/vcenter/vm | Returns information about at most 4000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.
[**register**](VMApi.md#register) | **POST** /rest/vcenter/vm?action&#x3D;register | Creates a virtual machine from existing virtual machine files on storage. if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.RegisterSpec.datastore requires System.Read.    -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Register.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
[**relocate**](VMApi.md#relocate) | **POST** /rest/vcenter/vm/{vm}?action&#x3D;relocate | Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
[**relocate_task**](VMApi.md#relocate_task) | **POST** /rest/vcenter/vm/{vm}?action&#x3D;relocate&amp;vmw-task&#x3D;true | Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
[**unregister**](VMApi.md#unregister) | **POST** /rest/vcenter/vm/{vm}?action&#x3D;unregister | Removes the virtual machine corresponding to vm from the vCenter inventory without removing any of the virtual machine&#39;s files from storage. All high-level information stored with the management server (ESXi or vCenter) is removed, including information such as statistics, resource pool association, permissions, and alarms. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Unregister.  


# **clone**
> VcenterVMCloneResp clone(request_body)

Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
request_body = VCenter::VcenterVMClone.new # VcenterVMClone | 

begin
  #Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
  result = api_instance.clone(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->clone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVMClone**](VcenterVMClone.md)|  | 

### Return type

[**VcenterVMCloneResp**](VcenterVMCloneResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **clone_task**
> VcenterVMCloneTaskResp clone_task(request_body)

Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
request_body = VCenter::VcenterVMCloneTask.new # VcenterVMCloneTask | 

begin
  #Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
  result = api_instance.clone_task(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->clone_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVMCloneTask**](VcenterVMCloneTask.md)|  | 

### Return type

[**VcenterVMCloneTaskResp**](VcenterVMCloneTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create**
> VcenterVMCreateResp create(request_body)

Creates a virtual machine. if you do not have all of the privileges described as follows:     -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Create.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.StoragePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
request_body = VCenter::VcenterVMCreate.new # VcenterVMCreate | 

begin
  #Creates a virtual machine. if you do not have all of the privileges described as follows:     -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Create.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.StoragePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVMCreate**](VcenterVMCreate.md)|  | 

### Return type

[**VcenterVMCreateResp**](VcenterVMCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm)

Deletes a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Delete.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Deletes a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Delete.  
  api_instance.delete(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVMResp get(vm)

Returns information about a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns information about a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVMResp**](VcenterVMResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **instant_clone**
> VcenterVMInstantCloneResp instant_clone(request_body)

Create an instant clone of an existing virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the attribute VM.InstantCloneSpec.source requires VirtualMachine.Provisioning.Clone and VirtualMachine.Inventory.CreateFromExisting.    -  The resource Folder referenced by the attribute VM.InstantClonePlacementSpec.folder requires VirtualMachine.Interact.PowerOn.    -  The resource ResourcePool referenced by the attribute VM.InstantClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.InstantClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
request_body = VCenter::VcenterVMInstantClone.new # VcenterVMInstantClone | 

begin
  #Create an instant clone of an existing virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the attribute VM.InstantCloneSpec.source requires VirtualMachine.Provisioning.Clone and VirtualMachine.Inventory.CreateFromExisting.    -  The resource Folder referenced by the attribute VM.InstantClonePlacementSpec.folder requires VirtualMachine.Interact.PowerOn.    -  The resource ResourcePool referenced by the attribute VM.InstantClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.InstantClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
  result = api_instance.instant_clone(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->instant_clone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVMInstantClone**](VcenterVMInstantClone.md)|  | 

### Return type

[**VcenterVMInstantCloneResp**](VcenterVMInstantCloneResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VcenterVMListResp list(opts)

Returns information about at most 4000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
opts = {
  filter_vms: ['filter_vms_example'], # Array<String> | Identifiers of virtual machines that can match the filter. If unset or empty, virtual machines with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
  filter_names: ['filter_names_example'], # Array<String> | Names that virtual machines must have to match the filter (see VM.Info.name). If unset or empty, virtual machines with any name match the filter.
  filter_folders: ['filter_folders_example'], # Array<String> | Folders that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  filter_datacenters: ['filter_datacenters_example'], # Array<String> | Datacenters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
  filter_hosts: ['filter_hosts_example'], # Array<String> | Hosts that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines on any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
  filter_clusters: ['filter_clusters_example'], # Array<String> | Clusters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
  filter_resource_pools: ['filter_resource_pools_example'], # Array<String> | Resource pools that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
  filter_power_states: ['filter_power_states_example'] # Array<String> | Power states that a virtual machine must be in to match the filter (see Power.Info.state. If unset or empty, virtual machines in any power state match the filter.
}

begin
  #Returns information about at most 4000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_vms** | [**Array&lt;String&gt;**](String.md)| Identifiers of virtual machines that can match the filter. If unset or empty, virtual machines with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that virtual machines must have to match the filter (see VM.Info.name). If unset or empty, virtual machines with any name match the filter. | [optional] 
 **filter_folders** | [**Array&lt;String&gt;**](String.md)| Folders that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Datacenters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 
 **filter_hosts** | [**Array&lt;String&gt;**](String.md)| Hosts that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines on any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | [optional] 
 **filter_clusters** | [**Array&lt;String&gt;**](String.md)| Clusters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
 **filter_resource_pools** | [**Array&lt;String&gt;**](String.md)| Resource pools that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool. | [optional] 
 **filter_power_states** | [**Array&lt;String&gt;**](String.md)| Power states that a virtual machine must be in to match the filter (see Power.Info.state. If unset or empty, virtual machines in any power state match the filter. | [optional] 

### Return type

[**VcenterVMListResp**](VcenterVMListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **register**
> VcenterVMRegisterResp register(request_body)

Creates a virtual machine from existing virtual machine files on storage. if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.RegisterSpec.datastore requires System.Read.    -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Register.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
request_body = VCenter::VcenterVMRegister.new # VcenterVMRegister | 

begin
  #Creates a virtual machine from existing virtual machine files on storage. if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.RegisterSpec.datastore requires System.Read.    -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Register.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
  result = api_instance.register(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->register: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVMRegister**](VcenterVMRegister.md)|  | 

### Return type

[**VcenterVMRegisterResp**](VcenterVMRegisterResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **relocate**
> relocate(vm, request_body)

Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
vm = 'vm_example' # String | Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVMRelocate.new # VcenterVMRelocate | 

begin
  #Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
  api_instance.relocate(vm, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->relocate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVMRelocate**](VcenterVMRelocate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **relocate_task**
> VcenterVMRelocateTaskResp relocate_task(vm, request_body)

Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
vm = 'vm_example' # String | Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVMRelocateTask.new # VcenterVMRelocateTask | 

begin
  #Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
  result = api_instance.relocate_task(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->relocate_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Existing Virtual machine to relocate. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVMRelocateTask**](VcenterVMRelocateTask.md)|  | 

### Return type

[**VcenterVMRelocateTaskResp**](VcenterVMRelocateTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unregister**
> unregister(vm)

Removes the virtual machine corresponding to vm from the vCenter inventory without removing any of the virtual machine's files from storage. All high-level information stored with the management server (ESXi or vCenter) is removed, including information such as statistics, resource pool association, permissions, and alarms. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Unregister.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VMApi.new
vm = 'vm_example' # String | Identifier of the virtual machine to be unregistered. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Removes the virtual machine corresponding to vm from the vCenter inventory without removing any of the virtual machine's files from storage. All high-level information stored with the management server (ESXi or vCenter) is removed, including information such as statistics, resource pool association, permissions, and alarms. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Unregister.  
  api_instance.unregister(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VMApi->unregister: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine to be unregistered. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



