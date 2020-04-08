# VSphereAutomation::Appliance::EnvironmentApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](EnvironmentApi.md#get) | **GET** /rest/appliance/environment | Gets the properties of the appliance environment.
[**set**](EnvironmentApi.md#set) | **PUT** /rest/appliance/environment | Sets the properties of the appliance environment.


# **get**
> ApplianceEnvironmentResp get

Gets the properties of the appliance environment.

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

api_instance = VSphereAutomation::Appliance::EnvironmentApi.new

begin
  #Gets the properties of the appliance environment.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling EnvironmentApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceEnvironmentResp**](ApplianceEnvironmentResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Sets the properties of the appliance environment.

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

api_instance = VSphereAutomation::Appliance::EnvironmentApi.new
request_body = Appliance::ApplianceEnvironmentSet.new # ApplianceEnvironmentSet | 

begin
  #Sets the properties of the appliance environment.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling EnvironmentApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceEnvironmentSet**](ApplianceEnvironmentSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



