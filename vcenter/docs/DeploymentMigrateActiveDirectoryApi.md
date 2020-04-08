# VSphereAutomation::VCenter::DeploymentMigrateActiveDirectoryApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](DeploymentMigrateActiveDirectoryApi.md#check) | **POST** /rest/vcenter/deployment/migrate/active-directory?action&#x3D;check | Checks whether the provided Active Directory user has permission to join the migrated vCenter Server appliance to the domain.


# **check**
> VcenterDeploymentMigrateActiveDirectoryCheckResp check(request_body)

Checks whether the provided Active Directory user has permission to join the migrated vCenter Server appliance to the domain.

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

api_instance = VSphereAutomation::VCenter::DeploymentMigrateActiveDirectoryApi.new
request_body = VCenter::VcenterDeploymentMigrateActiveDirectoryCheck.new # VcenterDeploymentMigrateActiveDirectoryCheck | 

begin
  #Checks whether the provided Active Directory user has permission to join the migrated vCenter Server appliance to the domain.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentMigrateActiveDirectoryApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentMigrateActiveDirectoryCheck**](VcenterDeploymentMigrateActiveDirectoryCheck.md)|  | 

### Return type

[**VcenterDeploymentMigrateActiveDirectoryCheckResp**](VcenterDeploymentMigrateActiveDirectoryCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



