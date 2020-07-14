# VSphereAutomation::VCenter::DeploymentImportHistoryApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](DeploymentImportHistoryApi.md#cancel) | **POST** /vcenter/deployment/history?action&#x3D;cancel | Cancels the task for importing vCenter historical data.
[**get**](DeploymentImportHistoryApi.md#get) | **GET** /vcenter/deployment/history | Get the current status of the vCenter historical data import.
[**pause**](DeploymentImportHistoryApi.md#pause) | **POST** /vcenter/deployment/history?action&#x3D;pause | Pauses the task for importing vCenter historical data.
[**resume**](DeploymentImportHistoryApi.md#resume) | **POST** /vcenter/deployment/history?action&#x3D;resume | Resumes the task for importing vCenter historical data.
[**start**](DeploymentImportHistoryApi.md#start) | **POST** /vcenter/deployment/history?action&#x3D;start | Creates and starts task for importing vCenter historical data.


# **cancel**
> cancel

Cancels the task for importing vCenter historical data.

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

api_instance = VSphereAutomation::VCenter::DeploymentImportHistoryApi.new

begin
  #Cancels the task for importing vCenter historical data.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentImportHistoryApi->cancel: #{e}"
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
> VcenterDeploymentImportHistoryResult get

Get the current status of the vCenter historical data import.

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

api_instance = VSphereAutomation::VCenter::DeploymentImportHistoryApi.new

begin
  #Get the current status of the vCenter historical data import.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentImportHistoryApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterDeploymentImportHistoryResult**](VcenterDeploymentImportHistoryResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **pause**
> pause

Pauses the task for importing vCenter historical data.

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

api_instance = VSphereAutomation::VCenter::DeploymentImportHistoryApi.new

begin
  #Pauses the task for importing vCenter historical data.
  api_instance.pause
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentImportHistoryApi->pause: #{e}"
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

Resumes the task for importing vCenter historical data.

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

api_instance = VSphereAutomation::VCenter::DeploymentImportHistoryApi.new

begin
  #Resumes the task for importing vCenter historical data.
  api_instance.resume
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentImportHistoryApi->resume: #{e}"
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

Creates and starts task for importing vCenter historical data.

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

api_instance = VSphereAutomation::VCenter::DeploymentImportHistoryApi.new
opts = {
  request_body: VCenter::VcenterDeploymentImportHistoryStart.new # VcenterDeploymentImportHistoryStart | 
}

begin
  #Creates and starts task for importing vCenter historical data.
  api_instance.start(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentImportHistoryApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentImportHistoryStart**](VcenterDeploymentImportHistoryStart.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



