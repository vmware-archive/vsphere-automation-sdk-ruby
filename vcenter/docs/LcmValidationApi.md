# VSphereAutomation::VCenter::LcmValidationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_appliance_name_task**](LcmValidationApi.md#check_appliance_name_task) | **POST** /rest/vcenter/lcm/validation?action&#x3D;check-appliance-name&amp;vmw-task&#x3D;true | Validate the name of the appliance to be deployed.     1. 1. Return False if the there is already an appliance that has the same name as given in the spec exist in the path.  . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **check_appliance_name_task**
> VcenterLcmValidationCheckApplianceNameTaskResp check_appliance_name_task(request_body)

Validate the name of the appliance to be deployed.     1. 1. Return False if the there is already an appliance that has the same name as given in the spec exist in the path.  . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::LcmValidationApi.new
request_body = VCenter::VcenterLcmValidationCheckApplianceNameTask.new # VcenterLcmValidationCheckApplianceNameTask | 

begin
  #Validate the name of the appliance to be deployed.     1. 1. Return False if the there is already an appliance that has the same name as given in the spec exist in the path.  . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.check_appliance_name_task(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmValidationApi->check_appliance_name_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterLcmValidationCheckApplianceNameTask**](VcenterLcmValidationCheckApplianceNameTask.md)|  | 

### Return type

[**VcenterLcmValidationCheckApplianceNameTaskResp**](VcenterLcmValidationCheckApplianceNameTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



