# VSphereAutomation::VCenter::NsxDeploymentConfigurationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NsxDeploymentConfigurationApi.md#get) | **GET** /api/vcenter/nsx/deployment/configuration | Gets the configuration details of currently installed NSX on the vCenter Server Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterNsxDeploymentConfigurationInfo get

Gets the configuration details of currently installed NSX on the vCenter Server Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentConfigurationApi.new

begin
  #Gets the configuration details of currently installed NSX on the vCenter Server Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentConfigurationApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxDeploymentConfigurationInfo**](VcenterNsxDeploymentConfigurationInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



