# VSphereAutomation::Appliance::TechpreviewSystemUpdateApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TechpreviewSystemUpdateApi.md#get) | **GET** /rest/appliance/techpreview/system/update | Get update repository configuration.
[**set**](TechpreviewSystemUpdateApi.md#set) | **PUT** /rest/appliance/techpreview/system/update | Set update repository configuration.


# **get**
> ApplianceTechpreviewSystemUpdateResp get

Get update repository configuration.

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

api_instance = VSphereAutomation::Appliance::TechpreviewSystemUpdateApi.new

begin
  #Get update repository configuration.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewSystemUpdateApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewSystemUpdateResp**](ApplianceTechpreviewSystemUpdateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set update repository configuration.

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

api_instance = VSphereAutomation::Appliance::TechpreviewSystemUpdateApi.new
request_body = Appliance::ApplianceTechpreviewSystemUpdateSet.new # ApplianceTechpreviewSystemUpdateSet | 

begin
  #Set update repository configuration.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewSystemUpdateApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewSystemUpdateSet**](ApplianceTechpreviewSystemUpdateSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



