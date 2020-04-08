# VSphereAutomation::VCenter::DeploymentInstallRemotePscApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](DeploymentInstallRemotePscApi.md#check) | **POST** /rest/vcenter/deployment/install/remote-psc?action&#x3D;check | Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.


# **check**
> VcenterDeploymentInstallRemotePscCheckResp check(request_body)

Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.

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

api_instance = VSphereAutomation::VCenter::DeploymentInstallRemotePscApi.new
request_body = VCenter::VcenterDeploymentInstallRemotePscCheck.new # VcenterDeploymentInstallRemotePscCheck | 

begin
  #Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallRemotePscApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentInstallRemotePscCheck**](VcenterDeploymentInstallRemotePscCheck.md)|  | 

### Return type

[**VcenterDeploymentInstallRemotePscCheckResp**](VcenterDeploymentInstallRemotePscCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



