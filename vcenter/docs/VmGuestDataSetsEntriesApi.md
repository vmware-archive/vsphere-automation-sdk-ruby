# VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](VmGuestDataSetsEntriesApi.md#delete) | **DELETE** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key} | Deletes an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete_multiple**](VmGuestDataSetsEntriesApi.md#delete_multiple) | **POST** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}?actions&#x3D;delete-multiple | Deletes multiple entries from a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](VmGuestDataSetsEntriesApi.md#get) | **GET** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key} | Gets the value of an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get_multiple**](VmGuestDataSetsEntriesApi.md#get_multiple) | **POST** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}?actions&#x3D;get-multiple | Gets the value of multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set**](VmGuestDataSetsEntriesApi.md#set) | **PUT** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key} | Sets an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set_multiple**](VmGuestDataSetsEntriesApi.md#set_multiple) | **POST** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}?action&#x3D;set-multiple | Sets multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **delete**
> delete(vm, data_set, key)

Deletes an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
data_set = 'data_set_example' # String | Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
key = 'key_example' # String | The key of the entry to delete.

begin
  #Deletes an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(vm, data_set, key)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestDataSetsEntriesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **data_set** | **String**| Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet. | 
 **key** | **String**| The key of the entry to delete. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_multiple**
> delete_multiple(vm, data_set, opts)

Deletes multiple entries from a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
data_set = 'data_set_example' # String | Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Deletes multiple entries from a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete_multiple(vm, data_set, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestDataSetsEntriesApi->delete_multiple: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **data_set** | **String**| Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet. | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> String get(vm, data_set, key)

Gets the value of an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
data_set = 'data_set_example' # String | Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
key = 'key_example' # String | The key of the entry to query.

begin
  #Gets the value of an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(vm, data_set, key)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestDataSetsEntriesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **data_set** | **String**| Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet. | 
 **key** | **String**| The key of the entry to query. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_multiple**
> Hash&lt;String, String&gt; get_multiple(vm, data_set, opts)

Gets the value of multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
data_set = 'data_set_example' # String | Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Gets the value of multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get_multiple(vm, data_set, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestDataSetsEntriesApi->get_multiple: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **data_set** | **String**| Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet. | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set**
> set(vm, data_set, key, opts)

Sets an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
data_set = 'data_set_example' # String | Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
key = 'key_example' # String | The key of the entry to set. A key can be at most 4096 bytes.
opts = {
  request_body: 'request_body_example' # String | 
}

begin
  #Sets an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set(vm, data_set, key, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestDataSetsEntriesApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **data_set** | **String**| Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet. | 
 **key** | **String**| The key of the entry to set. A key can be at most 4096 bytes. | 
 **request_body** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_multiple**
> set_multiple(vm, data_set, opts)

Sets multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
data_set = 'data_set_example' # String | Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet.
opts = {
  request_body: {'key' => 'request_body_example'} # Hash<String, String> | 
}

begin
  #Sets multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set_multiple(vm, data_set, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestDataSetsEntriesApi->set_multiple: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **data_set** | **String**| Identifier of the data set. The parameter must be an identifier for the resource type: VirtualMachineDataSet. | 
 **request_body** | [**Hash&lt;String, String&gt;**](String.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



