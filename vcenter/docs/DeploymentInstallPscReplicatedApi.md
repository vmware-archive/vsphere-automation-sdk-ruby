# VSphereAutomation::VCenter::DeploymentInstallPscReplicatedApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](DeploymentInstallPscReplicatedApi.md#check) | **POST** /vcenter/deployment/install/psc/replicated | Checks whether the provided remote PSC is reachable and can be replicated.


# **check**
> VcenterDeploymentInstallPscReplicatedCheckResult check(action, request_body)

Checks whether the provided remote PSC is reachable and can be replicated.

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

api_instance = VSphereAutomation::VCenter::DeploymentInstallPscReplicatedApi.new
action = 'action_example' # String | action=check
request_body = VCenter::VcenterDeploymentInstallPscReplicatedCheck.new # VcenterDeploymentInstallPscReplicatedCheck | 

begin
  #Checks whether the provided remote PSC is reachable and can be replicated.
  result = api_instance.check(action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallPscReplicatedApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| action&#x3D;check | 
 **request_body** | [**VcenterDeploymentInstallPscReplicatedCheck**](VcenterDeploymentInstallPscReplicatedCheck.md)|  | 

### Return type

[**VcenterDeploymentInstallPscReplicatedCheckResult**](VcenterDeploymentInstallPscReplicatedCheckResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



