# VSphereAutomation::Appliance::AccessShellApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessShellApi.md#get) | **GET** /rest/appliance/access/shell | Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
[**set**](AccessShellApi.md#set) | **PUT** /rest/appliance/access/shell | Set enabled state of BASH, that is, access to BASH from within the controlled CLI.


# **get**
> ApplianceAccessShellResp get

Get enabled state of BASH, that is, access to BASH from within the controlled CLI.

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

api_instance = VSphereAutomation::Appliance::AccessShellApi.new

begin
  #Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessShellApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessShellResp**](ApplianceAccessShellResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set enabled state of BASH, that is, access to BASH from within the controlled CLI.

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

api_instance = VSphereAutomation::Appliance::AccessShellApi.new
request_body = Appliance::ApplianceAccessShellSet.new # ApplianceAccessShellSet | 

begin
  #Set enabled state of BASH, that is, access to BASH from within the controlled CLI.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessShellApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceAccessShellSet**](ApplianceAccessShellSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



