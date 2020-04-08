# VSphereAutomation::VCenter::DeploymentInstallApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](DeploymentInstallApi.md#cancel) | **POST** /rest/vcenter/deployment/install?action&#x3D;cancel | Cancel the appliance installation that is in progress.
[**check**](DeploymentInstallApi.md#check) | **POST** /rest/vcenter/deployment/install?action&#x3D;check | Run sanity checks using the InstallSpec parameters passed.
[**get**](DeploymentInstallApi.md#get) | **GET** /rest/vcenter/deployment/install | Get the parameters used to configure the ongoing appliance installation.
[**start**](DeploymentInstallApi.md#start) | **POST** /rest/vcenter/deployment/install?action&#x3D;start | Start the appliance installation.


# **cancel**
> cancel

Cancel the appliance installation that is in progress.

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

api_instance = VSphereAutomation::VCenter::DeploymentInstallApi.new

begin
  #Cancel the appliance installation that is in progress.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallApi->cancel: #{e}"
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
> VcenterDeploymentInstallCheckResp check(request_body)

Run sanity checks using the InstallSpec parameters passed.

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

api_instance = VSphereAutomation::VCenter::DeploymentInstallApi.new
request_body = VCenter::VcenterDeploymentInstallCheck.new # VcenterDeploymentInstallCheck | 

begin
  #Run sanity checks using the InstallSpec parameters passed.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentInstallCheck**](VcenterDeploymentInstallCheck.md)|  | 

### Return type

[**VcenterDeploymentInstallCheckResp**](VcenterDeploymentInstallCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterDeploymentInstallResp get

Get the parameters used to configure the ongoing appliance installation.

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

api_instance = VSphereAutomation::VCenter::DeploymentInstallApi.new

begin
  #Get the parameters used to configure the ongoing appliance installation.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterDeploymentInstallResp**](VcenterDeploymentInstallResp.md)

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

api_instance = VSphereAutomation::VCenter::DeploymentInstallApi.new
request_body = VCenter::VcenterDeploymentInstallStart.new # VcenterDeploymentInstallStart | 

begin
  #Start the appliance installation.
  api_instance.start(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentInstallStart**](VcenterDeploymentInstallStart.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



