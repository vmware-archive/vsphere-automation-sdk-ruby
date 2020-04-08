# VSphereAutomation::VCenter::NsxDeploymentUpgradeApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](NsxDeploymentUpgradeApi.md#check) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;check | Runs checks for available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](NsxDeploymentUpgradeApi.md#get) | **GET** /api/vcenter/nsx/deployment/upgrade | Gets NSX deployment information, this includes the overall upgrade status, the available release version, the last precheck run time, the current operation details and the list of clusters with their upgrade status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**pause**](NsxDeploymentUpgradeApi.md#pause) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;pause | Pauses already running NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**resume**](NsxDeploymentUpgradeApi.md#resume) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;resume | Resumes already paused NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**start**](NsxDeploymentUpgradeApi.md#start) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;start | Applies available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **check**
> check

Runs checks for available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentUpgradeApi.new

begin
  #Runs checks for available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.check
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentUpgradeApi->check: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterNsxDeploymentUpgradeInfo get

Gets NSX deployment information, this includes the overall upgrade status, the available release version, the last precheck run time, the current operation details and the list of clusters with their upgrade status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentUpgradeApi.new

begin
  #Gets NSX deployment information, this includes the overall upgrade status, the available release version, the last precheck run time, the current operation details and the list of clusters with their upgrade status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentUpgradeApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxDeploymentUpgradeInfo**](VcenterNsxDeploymentUpgradeInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **pause**
> pause

Pauses already running NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentUpgradeApi.new

begin
  #Pauses already running NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.pause
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentUpgradeApi->pause: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resume**
> resume

Resumes already paused NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentUpgradeApi.new

begin
  #Resumes already paused NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.resume
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentUpgradeApi->resume: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **start**
> start(opts)

Applies available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentUpgradeApi.new
opts = {
  request_body: VCenter::VcenterNsxDeploymentUpgradeUpgradeSpec.new # VcenterNsxDeploymentUpgradeUpgradeSpec | 
}

begin
  #Applies available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.start(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentUpgradeApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNsxDeploymentUpgradeUpgradeSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



