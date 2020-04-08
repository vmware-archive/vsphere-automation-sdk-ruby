# VSphereAutomation::VCenter::NsxDeploymentCompatibilityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](NsxDeploymentCompatibilityApi.md#check) | **GET** /api/vcenter/nsx/deployment/compatibility/latest-version | Gets the latest update or patch version of the latest supported NSX binary available in my.vmware.com portal. This will be utilized by customers having the access to my.vmware.com portal from vCenter server. This operation requires that vCenter has internet access. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](NsxDeploymentCompatibilityApi.md#get) | **GET** /api/vcenter/nsx/deployment/compatibility | Gets the compatibility information between the currently installed NSX version and the current vCenter Server version. This operation is executed against data bundled in vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **check**
> VcenterNsxDeploymentCompatibilityVersion check

Gets the latest update or patch version of the latest supported NSX binary available in my.vmware.com portal. This will be utilized by customers having the access to my.vmware.com portal from vCenter server. This operation requires that vCenter has internet access. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentCompatibilityApi.new

begin
  #Gets the latest update or patch version of the latest supported NSX binary available in my.vmware.com portal. This will be utilized by customers having the access to my.vmware.com portal from vCenter server. This operation requires that vCenter has internet access. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.check
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentCompatibilityApi->check: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxDeploymentCompatibilityVersion**](VcenterNsxDeploymentCompatibilityVersion.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterNsxDeploymentCompatibilityInfo get

Gets the compatibility information between the currently installed NSX version and the current vCenter Server version. This operation is executed against data bundled in vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentCompatibilityApi.new

begin
  #Gets the compatibility information between the currently installed NSX version and the current vCenter Server version. This operation is executed against data bundled in vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentCompatibilityApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxDeploymentCompatibilityInfo**](VcenterNsxDeploymentCompatibilityInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



