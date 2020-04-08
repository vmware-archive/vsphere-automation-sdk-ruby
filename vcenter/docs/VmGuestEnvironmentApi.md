# VSphereAutomation::VCenter::VmGuestEnvironmentApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestEnvironmentApi.md#get) | **POST** /rest/vcenter/vm/{vm}/guest/environment/{name}?action&#x3D;get | Reads a single environment variable from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it&#39;s the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](VmGuestEnvironmentApi.md#list) | **POST** /rest/vcenter/vm/{vm}/guest/environment?action&#x3D;list | Reads a list of environment variables from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it&#39;s the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterVmGuestEnvironmentResp get(vm, name, request_body)

Reads a single environment variable from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestEnvironmentApi.new
vm = 'vm_example' # String | Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
name = 'name_example' # String | The name of the environment variable to be read.
request_body = VCenter::VcenterVmGuestEnvironmentGet.new # VcenterVmGuestEnvironmentGet | 

begin
  #Reads a single environment variable from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(vm, name, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestEnvironmentApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **name** | **String**| The name of the environment variable to be read. | 
 **request_body** | [**VcenterVmGuestEnvironmentGet**](VcenterVmGuestEnvironmentGet.md)|  | 

### Return type

[**VcenterVmGuestEnvironmentResp**](VcenterVmGuestEnvironmentResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VcenterVmGuestEnvironmentListResp list(vm, request_body)

Reads a list of environment variables from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestEnvironmentApi.new
vm = 'vm_example' # String | Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmGuestEnvironmentList.new # VcenterVmGuestEnvironmentList | 

begin
  #Reads a list of environment variables from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestEnvironmentApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmGuestEnvironmentList**](VcenterVmGuestEnvironmentList.md)|  | 

### Return type

[**VcenterVmGuestEnvironmentListResp**](VcenterVmGuestEnvironmentListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



