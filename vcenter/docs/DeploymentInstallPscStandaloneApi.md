# VSphereAutomation::VCenter::DeploymentInstallPscStandaloneApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](DeploymentInstallPscStandaloneApi.md#check) | **POST** /vcenter/deployment/install/psc/standalone?action&#x3D;check | Checks that the information to configure a non-replicated PSC satisfies the requirements.


# **check**
> VcenterDeploymentInstallPscStandaloneCheckResult check(vcenter_deployment_install_psc_standalone_check)

Checks that the information to configure a non-replicated PSC satisfies the requirements.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallPscStandaloneApi.new
vcenter_deployment_install_psc_standalone_check = VSphereAutomation::VcenterDeploymentInstallPscStandaloneCheck.new # VcenterDeploymentInstallPscStandaloneCheck | 

begin
  #Checks that the information to configure a non-replicated PSC satisfies the requirements.
  result = api_instance.check(vcenter_deployment_install_psc_standalone_check)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallPscStandaloneApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_install_psc_standalone_check** | [**VcenterDeploymentInstallPscStandaloneCheck**](VcenterDeploymentInstallPscStandaloneCheck.md)|  | 

### Return type

[**VcenterDeploymentInstallPscStandaloneCheckResult**](VcenterDeploymentInstallPscStandaloneCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



