# VSphereAutomation::Appliance::AccessConsolecliApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessConsolecliApi.md#get) | **GET** /rest/appliance/access/consolecli | Get enabled state of the console-based controlled CLI (TTY1).
[**set**](AccessConsolecliApi.md#set) | **PUT** /rest/appliance/access/consolecli | Set enabled state of the console-based controlled CLI (TTY1).


# **get**
> ApplianceAccessConsolecliResp get

Get enabled state of the console-based controlled CLI (TTY1).

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

api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new

begin
  #Get enabled state of the console-based controlled CLI (TTY1).
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessConsolecliApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessConsolecliResp**](ApplianceAccessConsolecliResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set enabled state of the console-based controlled CLI (TTY1).

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

api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new
request_body = Appliance::ApplianceAccessConsolecliSet.new # ApplianceAccessConsolecliSet | 

begin
  #Set enabled state of the console-based controlled CLI (TTY1).
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessConsolecliApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceAccessConsolecliSet**](ApplianceAccessConsolecliSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



