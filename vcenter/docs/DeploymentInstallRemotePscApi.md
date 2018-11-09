# VSphereAutomation::VCenter::DeploymentInstallRemotePscApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](DeploymentInstallRemotePscApi.md#check) | **POST** /vcenter/deployment/install/remote-psc?action&#x3D;check | Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.


# **check**
> VcenterDeploymentInstallRemotePscCheckResult check(vcenter_deployment_install_remote_psc_check)

Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallRemotePscApi.new
vcenter_deployment_install_remote_psc_check = VSphereAutomation::VcenterDeploymentInstallRemotePscCheck.new # VcenterDeploymentInstallRemotePscCheck | 

begin
  #Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.
  result = api_instance.check(vcenter_deployment_install_remote_psc_check)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallRemotePscApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_install_remote_psc_check** | [**VcenterDeploymentInstallRemotePscCheck**](VcenterDeploymentInstallRemotePscCheck.md)|  | 

### Return type

[**VcenterDeploymentInstallRemotePscCheckResult**](VcenterDeploymentInstallRemotePscCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



