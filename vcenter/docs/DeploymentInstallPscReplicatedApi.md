# VSphereAutomation::VCenter::DeploymentInstallPscReplicatedApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](DeploymentInstallPscReplicatedApi.md#check) | **POST** /vcenter/deployment/install/psc/replicated?action&#x3D;check | Checks whether the provided remote PSC is reachable and can be replicated.


# **check**
> VcenterDeploymentInstallPscReplicatedCheckResult check(vcenter_deployment_install_psc_replicated_check)

Checks whether the provided remote PSC is reachable and can be replicated.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallPscReplicatedApi.new
vcenter_deployment_install_psc_replicated_check = VSphereAutomation::VcenterDeploymentInstallPscReplicatedCheck.new # VcenterDeploymentInstallPscReplicatedCheck | 

begin
  #Checks whether the provided remote PSC is reachable and can be replicated.
  result = api_instance.check(vcenter_deployment_install_psc_replicated_check)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallPscReplicatedApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_install_psc_replicated_check** | [**VcenterDeploymentInstallPscReplicatedCheck**](VcenterDeploymentInstallPscReplicatedCheck.md)|  | 

### Return type

[**VcenterDeploymentInstallPscReplicatedCheckResult**](VcenterDeploymentInstallPscReplicatedCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



