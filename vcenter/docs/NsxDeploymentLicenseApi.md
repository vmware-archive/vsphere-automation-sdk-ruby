# VSphereAutomation::VCenter::NsxDeploymentLicenseApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NsxDeploymentLicenseApi.md#get) | **GET** /api/vcenter/nsx/deployment/license | Gets the NSX licensing details applied to the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](NsxDeploymentLicenseApi.md#update) | **PATCH** /api/vcenter/nsx/deployment/license | Updates the license key on the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**validate**](NsxDeploymentLicenseApi.md#validate) | **POST** /api/vcenter/nsx/deployment/license?action&#x3D;validate | Validates the license key. This operation checks if the license key can be successfully applied and is a valid WCP license. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterNsxDeploymentLicenseInfo get

Gets the NSX licensing details applied to the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentLicenseApi.new

begin
  #Gets the NSX licensing details applied to the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentLicenseApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxDeploymentLicenseInfo**](VcenterNsxDeploymentLicenseInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(opts)

Updates the license key on the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentLicenseApi.new
opts = {
  request_body: VCenter::VcenterNsxDeploymentLicenseUpdateSpec.new # VcenterNsxDeploymentLicenseUpdateSpec | 
}

begin
  #Updates the license key on the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentLicenseApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNsxDeploymentLicenseUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **validate**
> VcenterNsxDeploymentLicenseInfo validate(opts)

Validates the license key. This operation checks if the license key can be successfully applied and is a valid WCP license. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentLicenseApi.new
opts = {
  request_body: VCenter::VcenterNsxDeploymentLicenseValidateSpec.new # VcenterNsxDeploymentLicenseValidateSpec | 
}

begin
  #Validates the license key. This operation checks if the license key can be successfully applied and is a valid WCP license. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.validate(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentLicenseApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNsxDeploymentLicenseValidateSpec**|  | [optional] 

### Return type

[**VcenterNsxDeploymentLicenseInfo**](VcenterNsxDeploymentLicenseInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



