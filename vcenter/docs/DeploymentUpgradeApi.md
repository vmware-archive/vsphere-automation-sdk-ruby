# VSphereAutomation::VCenter::DeploymentUpgradeApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](DeploymentUpgradeApi.md#cancel) | **POST** /vcenter/deployment/upgrade?action&#x3D;cancel | Cancel the appliance upgrade that is in progress.
[**check**](DeploymentUpgradeApi.md#check) | **POST** /vcenter/deployment/upgrade?action&#x3D;check | Run sanity checks using the UpgradeSpec parameters passed.
[**get**](DeploymentUpgradeApi.md#get) | **GET** /vcenter/deployment/upgrade | Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
[**start**](DeploymentUpgradeApi.md#start) | **POST** /vcenter/deployment/upgrade?action&#x3D;start | Start the appliance installation.


# **cancel**
> cancel

Cancel the appliance upgrade that is in progress.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **check**
> VcenterDeploymentUpgradeCheckResult check(opts)

Run sanity checks using the UpgradeSpec parameters passed.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new
opts = {
  vcenter_deployment_upgrade_check: VSphereAutomation::VcenterDeploymentUpgradeCheck.new # VcenterDeploymentUpgradeCheck | 
}

begin
  #Run sanity checks using the UpgradeSpec parameters passed.
  result = api_instance.check(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentUpgradeApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_upgrade_check** | [**VcenterDeploymentUpgradeCheck**](VcenterDeploymentUpgradeCheck.md)|  | [optional] 

### Return type

[**VcenterDeploymentUpgradeCheckResult**](VcenterDeploymentUpgradeCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> VcenterDeploymentUpgradeResult get

Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterDeploymentUpgradeResult**](VcenterDeploymentUpgradeResult.md)

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

api_instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new
opts = {
  vcenter_deployment_upgrade_start: VSphereAutomation::VcenterDeploymentUpgradeStart.new # VcenterDeploymentUpgradeStart | 
}

begin
  #Start the appliance installation.
  api_instance.start(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentUpgradeApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_upgrade_start** | [**VcenterDeploymentUpgradeStart**](VcenterDeploymentUpgradeStart.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



