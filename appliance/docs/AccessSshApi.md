# VSphereAutomation::Appliance::AccessSshApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessSshApi.md#get) | **GET** /appliance/access/ssh | Get enabled state of the SSH-based controlled CLI.
[**set**](AccessSshApi.md#set) | **PUT** /appliance/access/ssh | Set enabled state of the SSH-based controlled CLI.


# **get**
> ApplianceAccessSshResult get

Get enabled state of the SSH-based controlled CLI.

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

api_instance = VSphereAutomation::Appliance::AccessSshApi.new

begin
  #Get enabled state of the SSH-based controlled CLI.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessSshApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessSshResult**](ApplianceAccessSshResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set enabled state of the SSH-based controlled CLI.

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

api_instance = VSphereAutomation::Appliance::AccessSshApi.new
request_body = Appliance::ApplianceAccessSshSet.new # ApplianceAccessSshSet | 

begin
  #Set enabled state of the SSH-based controlled CLI.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessSshApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceAccessSshSet**](ApplianceAccessSshSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



