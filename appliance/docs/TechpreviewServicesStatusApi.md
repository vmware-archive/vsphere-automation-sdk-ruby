# VSphereAutomation::Appliance::TechpreviewServicesStatusApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TechpreviewServicesStatusApi.md#get) | **POST** /appliance/techpreview/services/status/get | Get status of a service.


# **get**
> ApplianceTechpreviewServicesStatusResult get(request_body)

Get status of a service.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewServicesStatusApi.new
request_body = Appliance::ApplianceTechpreviewServicesStatusGet.new # ApplianceTechpreviewServicesStatusGet | 

begin
  #Get status of a service.
  result = api_instance.get(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewServicesStatusApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewServicesStatusGet**](ApplianceTechpreviewServicesStatusGet.md)|  | 

### Return type

[**ApplianceTechpreviewServicesStatusResult**](ApplianceTechpreviewServicesStatusResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



