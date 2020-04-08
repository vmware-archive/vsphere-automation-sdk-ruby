# VSphereAutomation::VCenter::DeploymentUpgradeApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](DeploymentUpgradeApi.md#cancel) | **POST** /rest/vcenter/deployment/upgrade?action&#x3D;cancel | Cancel the appliance upgrade that is in progress.
[**check**](DeploymentUpgradeApi.md#check) | **POST** /rest/vcenter/deployment/upgrade?action&#x3D;check | Run sanity checks using the UpgradeSpec parameters passed.
[**get**](DeploymentUpgradeApi.md#get) | **GET** /rest/vcenter/deployment/upgrade | Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
[**start**](DeploymentUpgradeApi.md#start) | **POST** /rest/vcenter/deployment/upgrade?action&#x3D;start | Start the appliance installation.


# **cancel**
> cancel

Cancel the appliance upgrade that is in progress.

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

api_instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new

begin
  #Cancel the appliance upgrade that is in progress.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentUpgradeApi->cancel: #{e}"
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
> VcenterDeploymentUpgradeCheckResp check(request_body)

Run sanity checks using the UpgradeSpec parameters passed.

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

api_instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new
request_body = VCenter::VcenterDeploymentUpgradeCheck.new # VcenterDeploymentUpgradeCheck | 

begin
  #Run sanity checks using the UpgradeSpec parameters passed.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentUpgradeApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentUpgradeCheck**](VcenterDeploymentUpgradeCheck.md)|  | 

### Return type

[**VcenterDeploymentUpgradeCheckResp**](VcenterDeploymentUpgradeCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterDeploymentUpgradeResp get

Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.

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

api_instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new

begin
  #Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentUpgradeApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterDeploymentUpgradeResp**](VcenterDeploymentUpgradeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **start**
> start(request_body)

Start the appliance installation.

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

api_instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new
request_body = VCenter::VcenterDeploymentUpgradeStart.new # VcenterDeploymentUpgradeStart | 

begin
  #Start the appliance installation.
  api_instance.start(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentUpgradeApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentUpgradeStart**](VcenterDeploymentUpgradeStart.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



