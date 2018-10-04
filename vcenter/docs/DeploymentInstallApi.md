# VSphereAutomation::VCenter::DeploymentInstallApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](DeploymentInstallApi.md#cancel) | **POST** /vcenter/deployment/install?action&#x3D;cancel | Cancel the appliance installation that is in progress.
[**check**](DeploymentInstallApi.md#check) | **POST** /vcenter/deployment/install?action&#x3D;check | Run sanity checks using the InstallSpec parameters passed.
[**get**](DeploymentInstallApi.md#get) | **GET** /vcenter/deployment/install | Get the parameters used to configure the ongoing appliance installation.
[**start**](DeploymentInstallApi.md#start) | **POST** /vcenter/deployment/install?action&#x3D;start | Start the appliance installation.


# **cancel**
> cancel

Cancel the appliance installation that is in progress.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **check**
> VcenterDeploymentInstallCheckResult check(opts)

Run sanity checks using the InstallSpec parameters passed.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallApi.new
opts = {
  vcenter_deployment_install_check: VSphereAutomation::VcenterDeploymentInstallCheck.new # VcenterDeploymentInstallCheck | 
}

begin
  #Run sanity checks using the InstallSpec parameters passed.
  result = api_instance.check(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_install_check** | [**VcenterDeploymentInstallCheck**](VcenterDeploymentInstallCheck.md)|  | [optional] 

### Return type

[**VcenterDeploymentInstallCheckResult**](VcenterDeploymentInstallCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> VcenterDeploymentInstallResult get

Get the parameters used to configure the ongoing appliance installation.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterDeploymentInstallResult**](VcenterDeploymentInstallResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **start**
> start(opts)

Start the appliance installation.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallApi.new
opts = {
  vcenter_deployment_install_start: VSphereAutomation::VcenterDeploymentInstallStart.new # VcenterDeploymentInstallStart | 
}

begin
  #Start the appliance installation.
  api_instance.start(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_install_start** | [**VcenterDeploymentInstallStart**](VcenterDeploymentInstallStart.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



