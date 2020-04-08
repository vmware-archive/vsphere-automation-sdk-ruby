# VSphereAutomation::VCenter::NsxRecoveryApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execute**](NsxRecoveryApi.md#execute) | **POST** /api/vcenter/nsx/recovery?action&#x3D;execute | Recovers the system from the loss of WCP service and/or NSX. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**execute_status**](NsxRecoveryApi.md#execute_status) | **GET** /api/vcenter/nsx/recovery/execute/status | Gets the recovery status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](NsxRecoveryApi.md#get) | **POST** /api/vcenter/nsx/recovery?action&#x3D;get | Returns whether recovery is needed. If needed, then returns the type of loss that needs recovery. If recovery is not needed, then clears the recovery state to allow the WCP service to enter steady state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **execute**
> String execute(opts)

Recovers the system from the loss of WCP service and/or NSX. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxRecoveryApi.new
opts = {
  request_body: VCenter::VcenterNsxRecoveryExecuteSpec.new # VcenterNsxRecoveryExecuteSpec | 
}

begin
  #Recovers the system from the loss of WCP service and/or NSX. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.execute(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxRecoveryApi->execute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNsxRecoveryExecuteSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **execute_status**
> VcenterNsxRecoveryExecutionStatus execute_status

Gets the recovery status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxRecoveryApi.new

begin
  #Gets the recovery status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.execute_status
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxRecoveryApi->execute_status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxRecoveryExecutionStatus**](VcenterNsxRecoveryExecutionStatus.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterNsxRecoveryInfo get

Returns whether recovery is needed. If needed, then returns the type of loss that needs recovery. If recovery is not needed, then clears the recovery state to allow the WCP service to enter steady state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxRecoveryApi.new

begin
  #Returns whether recovery is needed. If needed, then returns the type of loss that needs recovery. If recovery is not needed, then clears the recovery state to allow the WCP service to enter steady state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxRecoveryApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxRecoveryInfo**](VcenterNsxRecoveryInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



