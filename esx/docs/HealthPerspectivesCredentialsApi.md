# VSphereAutomation::ESX::HealthPerspectivesCredentialsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](HealthPerspectivesCredentialsApi.md#create) | **POST** /api/esx/health/perspectives/credentials | Creates server credentials that will be used by the EHP service to perform operations. The credentials are bound to the lifetime of the session of the user which called this method.


# **create**
> create(opts)

Creates server credentials that will be used by the EHP service to perform operations. The credentials are bound to the lifetime of the session of the user which called this method.

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

api_instance = VSphereAutomation::ESX::HealthPerspectivesCredentialsApi.new
opts = {
  request_body: ESX::EsxHealthPerspectivesCredentialsNsxConnectionSpec.new # EsxHealthPerspectivesCredentialsNsxConnectionSpec | 
}

begin
  #Creates server credentials that will be used by the EHP service to perform operations. The credentials are bound to the lifetime of the session of the user which called this method.
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthPerspectivesCredentialsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxHealthPerspectivesCredentialsNsxConnectionSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



