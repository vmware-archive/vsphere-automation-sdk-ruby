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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VcenterDeploymentImportHistoryResult get

Get the current status of the vCenter historical data import.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **pause**
> pause

Pauses the task for importing vCenter historical data.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **resume**
> resume

Resumes the task for importing vCenter historical data.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **start**
> start(opts)

Creates and starts task for importing vCenter historical data.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentImportHistoryApi.new
opts = {
  vcenter_deployment_import_history_start: VSphereAutomation::VcenterDeploymentImportHistoryStart.new # VcenterDeploymentImportHistoryStart | 
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
 **vcenter_deployment_import_history_start** | [**VcenterDeploymentImportHistoryStart**](VcenterDeploymentImportHistoryStart.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



