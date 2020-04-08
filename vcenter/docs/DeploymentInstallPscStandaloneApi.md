# VSphereAutomation::VCenter::DeploymentInstallPscStandaloneApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](DeploymentInstallPscStandaloneApi.md#check) | **POST** /rest/vcenter/deployment/install/psc/standalone?action&#x3D;check | Checks that the information to configure a non-replicated PSC satisfies the requirements.


# **check**
> VcenterDeploymentInstallPscStandaloneCheckResp check(request_body)

Checks that the information to configure a non-replicated PSC satisfies the requirements.

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

api_instance = VSphereAutomation::VCenter::DeploymentInstallPscStandaloneApi.new
request_body = VCenter::VcenterDeploymentInstallPscStandaloneCheck.new # VcenterDeploymentInstallPscStandaloneCheck | 

begin
  #Checks that the information to configure a non-replicated PSC satisfies the requirements.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallPscStandaloneApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentInstallPscStandaloneCheck**](VcenterDeploymentInstallPscStandaloneCheck.md)|  | 

### Return type

[**VcenterDeploymentInstallPscStandaloneCheckResp**](VcenterDeploymentInstallPscStandaloneCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



