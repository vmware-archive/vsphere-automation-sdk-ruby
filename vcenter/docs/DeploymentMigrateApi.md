# VSphereAutomation::VCenter::DeploymentMigrateApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](DeploymentMigrateApi.md#cancel) | **POST** /rest/vcenter/deployment/migrate?action&#x3D;cancel | Cancel the appliance migration that is in progress.
[**check**](DeploymentMigrateApi.md#check) | **POST** /rest/vcenter/deployment/migrate?action&#x3D;check | Run sanity checks using the MigrateSpec parameters passed.
[**get**](DeploymentMigrateApi.md#get) | **GET** /rest/vcenter/deployment/migrate | Get the MigrateSpec parameters used to configure the ongoing appliance migration.
[**start**](DeploymentMigrateApi.md#start) | **POST** /rest/vcenter/deployment/migrate?action&#x3D;start | Start the appliance migration.


# **cancel**
> cancel

Cancel the appliance migration that is in progress.

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

api_instance = VSphereAutomation::VCenter::DeploymentMigrateApi.new

begin
  #Cancel the appliance migration that is in progress.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentMigrateApi->cancel: #{e}"
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



# **check**
> VcenterDeploymentMigrateCheckResp check(request_body)

Run sanity checks using the MigrateSpec parameters passed.

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

api_instance = VSphereAutomation::VCenter::DeploymentMigrateApi.new
request_body = VCenter::VcenterDeploymentMigrateCheck.new # VcenterDeploymentMigrateCheck | 

begin
  #Run sanity checks using the MigrateSpec parameters passed.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentMigrateApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentMigrateCheck**](VcenterDeploymentMigrateCheck.md)|  | 

### Return type

[**VcenterDeploymentMigrateCheckResp**](VcenterDeploymentMigrateCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterDeploymentMigrateResp get

Get the MigrateSpec parameters used to configure the ongoing appliance migration.

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

api_instance = VSphereAutomation::VCenter::DeploymentMigrateApi.new

begin
  #Get the MigrateSpec parameters used to configure the ongoing appliance migration.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentMigrateApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterDeploymentMigrateResp**](VcenterDeploymentMigrateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **start**
> start(request_body)

Start the appliance migration.

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

api_instance = VSphereAutomation::VCenter::DeploymentMigrateApi.new
request_body = VCenter::VcenterDeploymentMigrateStart.new # VcenterDeploymentMigrateStart | 

begin
  #Start the appliance migration.
  api_instance.start(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentMigrateApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentMigrateStart**](VcenterDeploymentMigrateStart.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



