# VSphereAutomation::ESX::HealthPerspectivesChecksDisabledApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthPerspectivesChecksDisabledApi.md#get) | **GET** /api/esx/health/perspectives/{perspective}/checks/disabled | Get the set of checks that are disabled for the given perspective.
[**set**](HealthPerspectivesChecksDisabledApi.md#set) | **POST** /api/esx/health/perspectives/{perspective}/checks/disabled | Disable the checks with the given IDs for all health status queries. No validation is done on whether the given IDs are valid.


# **get**
> Array&lt;String&gt; get(perspective)

Get the set of checks that are disabled for the given perspective.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::HealthPerspectivesChecksDisabledApi.new
perspective = 'perspective_example' # String | { 1. A Perspective defines a desired state, against which system health status is reported. }, { 2. The perspective for which to disable the checks. }

begin
  #Get the set of checks that are disabled for the given perspective.
  result = api_instance.get(perspective)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthPerspectivesChecksDisabledApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perspective** | **String**| { 1. A Perspective defines a desired state, against which system health status is reported. }, { 2. The perspective for which to disable the checks. } | 

### Return type

**Array&lt;String&gt;**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(perspective, opts)

Disable the checks with the given IDs for all health status queries. No validation is done on whether the given IDs are valid.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::HealthPerspectivesChecksDisabledApi.new
perspective = 'perspective_example' # String | { 1. A Perspective defines a desired state, against which system health status is reported. }, { 2. The perspective for which to disable the checks. }
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Disable the checks with the given IDs for all health status queries. No validation is done on whether the given IDs are valid.
  api_instance.set(perspective, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthPerspectivesChecksDisabledApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perspective** | **String**| { 1. A Perspective defines a desired state, against which system health status is reported. }, { 2. The perspective for which to disable the checks. } | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



