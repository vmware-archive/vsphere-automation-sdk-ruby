# VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**baseline**](SystemSecurityFileIntegrityApi.md#baseline) | **POST** /rest/appliance/system/file-integrity/baseline | Create file integrity baseline for the appliance.
[**get**](SystemSecurityFileIntegrityApi.md#get) | **GET** /rest/appliance/system/file-integrity/check | Get state for scheduled file integrity check.
[**set**](SystemSecurityFileIntegrityApi.md#set) | **PUT** /rest/appliance/system/file-integrity/check | Set enabled state for scheduled file integrity check.


# **baseline**
> baseline

Create file integrity baseline for the appliance.

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

api_instance = VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi.new

begin
  #Create file integrity baseline for the appliance.
  api_instance.baseline
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemSecurityFileIntegrityApi->baseline: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceSystemSecurityFileIntegrityResp get

Get state for scheduled file integrity check.

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

api_instance = VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi.new

begin
  #Get state for scheduled file integrity check.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemSecurityFileIntegrityApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceSystemSecurityFileIntegrityResp**](ApplianceSystemSecurityFileIntegrityResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set enabled state for scheduled file integrity check.

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

api_instance = VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi.new
request_body = Appliance::ApplianceSystemSecurityFileIntegritySet.new # ApplianceSystemSecurityFileIntegritySet | 

begin
  #Set enabled state for scheduled file integrity check.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemSecurityFileIntegrityApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceSystemSecurityFileIntegritySet**](ApplianceSystemSecurityFileIntegritySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



