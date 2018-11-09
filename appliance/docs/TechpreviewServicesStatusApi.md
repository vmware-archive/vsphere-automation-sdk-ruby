# VSphereAutomation::Appliance::TechpreviewServicesStatusApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TechpreviewServicesStatusApi.md#get) | **POST** /appliance/techpreview/services/status/get | Get status of a service.


# **get**
> ApplianceTechpreviewServicesStatusResult get(appliance_techpreview_services_status_get)

Get status of a service.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewServicesStatusApi.new
appliance_techpreview_services_status_get = VSphereAutomation::ApplianceTechpreviewServicesStatusGet.new # ApplianceTechpreviewServicesStatusGet | 

begin
  #Get status of a service.
  result = api_instance.get(appliance_techpreview_services_status_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewServicesStatusApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_techpreview_services_status_get** | [**ApplianceTechpreviewServicesStatusGet**](ApplianceTechpreviewServicesStatusGet.md)|  | 

### Return type

[**ApplianceTechpreviewServicesStatusResult**](ApplianceTechpreviewServicesStatusResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



