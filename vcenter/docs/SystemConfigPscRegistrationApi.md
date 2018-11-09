# VSphereAutomation::VCenter::SystemConfigPscRegistrationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemConfigPscRegistrationApi.md#get) | **GET** /vcenter/system-config/psc-registration | Get information of the PSC that this appliance is registered with.
[**repoint**](SystemConfigPscRegistrationApi.md#repoint) | **POST** /vcenter/system-config/psc-registration | Repoint this vCenter Server appliance to a different external PSC.


# **get**
> VcenterSystemConfigPscRegistrationResult get

Get information of the PSC that this appliance is registered with.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::SystemConfigPscRegistrationApi.new

begin
  #Get information of the PSC that this appliance is registered with.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigPscRegistrationApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterSystemConfigPscRegistrationResult**](VcenterSystemConfigPscRegistrationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **repoint**
> repoint(vcenter_system_config_psc_registration_repoint)

Repoint this vCenter Server appliance to a different external PSC.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::SystemConfigPscRegistrationApi.new
vcenter_system_config_psc_registration_repoint = VSphereAutomation::VcenterSystemConfigPscRegistrationRepoint.new # VcenterSystemConfigPscRegistrationRepoint | 

begin
  #Repoint this vCenter Server appliance to a different external PSC.
  api_instance.repoint(vcenter_system_config_psc_registration_repoint)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigPscRegistrationApi->repoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_system_config_psc_registration_repoint** | [**VcenterSystemConfigPscRegistrationRepoint**](VcenterSystemConfigPscRegistrationRepoint.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



