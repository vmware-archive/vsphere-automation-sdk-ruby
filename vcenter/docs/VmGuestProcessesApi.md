# VSphereAutomation::VCenter::VmGuestProcessesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmGuestProcessesApi.md#create) | **POST** /rest/vcenter/vm/{vm}/guest/processes?action&#x3D;create | Starts a program in the guest operating system.   A process started this way can have its status queried with Processes.list or Processes.get. When the process completes, its exit code and end time will be available for 5 minutes after completion.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
[**delete**](VmGuestProcessesApi.md#delete) | **POST** /rest/vcenter/vm/{vm}/guest/processes/{pid}?action&#x3D;delete | Terminates a process in the guest OS.   On Posix guests, the process is sent a TERM signal. If that doesn&#39;t terminate the process, a KILL signal is sent. A process may still be running if it&#39;s stuck.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
[**get**](VmGuestProcessesApi.md#get) | **POST** /rest/vcenter/vm/{vm}/guest/processes/{pid}?action&#x3D;get | Gets the status of a process running in the guest operating system, including those started by Processes.create that may have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
[**list**](VmGuestProcessesApi.md#list) | **POST** /rest/vcenter/vm/{vm}/guest/processes?action&#x3D;list | List the processes running in the guest operating system, plus those started by Processes.create that have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  


# **create**
> VcenterVmGuestProcessesCreateResp create(vm, request_body)

Starts a program in the guest operating system.   A process started this way can have its status queried with Processes.list or Processes.get. When the process completes, its exit code and end time will be available for 5 minutes after completion.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  

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

api_instance = VSphereAutomation::VCenter::VmGuestProcessesApi.new
vm = 'vm_example' # String | Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmGuestProcessesCreate.new # VcenterVmGuestProcessesCreate | 

begin
  #Starts a program in the guest operating system.   A process started this way can have its status queried with Processes.list or Processes.get. When the process completes, its exit code and end time will be available for 5 minutes after completion.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestProcessesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmGuestProcessesCreate**](VcenterVmGuestProcessesCreate.md)|  | 

### Return type

[**VcenterVmGuestProcessesCreateResp**](VcenterVmGuestProcessesCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, pid, request_body)

Terminates a process in the guest OS.   On Posix guests, the process is sent a TERM signal. If that doesn't terminate the process, a KILL signal is sent. A process may still be running if it's stuck.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  

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

api_instance = VSphereAutomation::VCenter::VmGuestProcessesApi.new
vm = 'vm_example' # String | Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
pid = 56 # Integer | Process ID of the process to be terminated
request_body = VCenter::VcenterVmGuestProcessesDelete.new # VcenterVmGuestProcessesDelete | 

begin
  #Terminates a process in the guest OS.   On Posix guests, the process is sent a TERM signal. If that doesn't terminate the process, a KILL signal is sent. A process may still be running if it's stuck.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
  api_instance.delete(vm, pid, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestProcessesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **pid** | **Integer**| Process ID of the process to be terminated | 
 **request_body** | [**VcenterVmGuestProcessesDelete**](VcenterVmGuestProcessesDelete.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterVmGuestProcessesResp get(vm, pid, request_body)

Gets the status of a process running in the guest operating system, including those started by Processes.create that may have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  

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

api_instance = VSphereAutomation::VCenter::VmGuestProcessesApi.new
vm = 'vm_example' # String | Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
pid = 56 # Integer | Specifies the process to query.
request_body = VCenter::VcenterVmGuestProcessesGet.new # VcenterVmGuestProcessesGet | 

begin
  #Gets the status of a process running in the guest operating system, including those started by Processes.create that may have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
  result = api_instance.get(vm, pid, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestProcessesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **pid** | **Integer**| Specifies the process to query. | 
 **request_body** | [**VcenterVmGuestProcessesGet**](VcenterVmGuestProcessesGet.md)|  | 

### Return type

[**VcenterVmGuestProcessesResp**](VcenterVmGuestProcessesResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VcenterVmGuestProcessesListResp list(vm, request_body)

List the processes running in the guest operating system, plus those started by Processes.create that have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  

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

api_instance = VSphereAutomation::VCenter::VmGuestProcessesApi.new
vm = 'vm_example' # String | Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmGuestProcessesList.new # VcenterVmGuestProcessesList | 

begin
  #List the processes running in the guest operating system, plus those started by Processes.create that have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
  result = api_instance.list(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestProcessesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmGuestProcessesList**](VcenterVmGuestProcessesList.md)|  | 

### Return type

[**VcenterVmGuestProcessesListResp**](VcenterVmGuestProcessesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



