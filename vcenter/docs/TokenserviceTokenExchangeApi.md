# VSphereAutomation::VCenter::TokenserviceTokenExchangeApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchange**](TokenserviceTokenExchangeApi.md#exchange) | **POST** /rest/vcenter/tokenservice/token-exchange | Exchanges incoming token based on the spec and current client authorization data.


# **exchange**
> VcenterTokenserviceTokenExchangeExchangeResp exchange(request_body)

Exchanges incoming token based on the spec and current client authorization data.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::TokenserviceTokenExchangeApi.new
request_body = VCenter::VcenterTokenserviceTokenExchangeExchange.new # VcenterTokenserviceTokenExchangeExchange | 

begin
  #Exchanges incoming token based on the spec and current client authorization data.
  result = api_instance.exchange(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TokenserviceTokenExchangeApi->exchange: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterTokenserviceTokenExchangeExchange**](VcenterTokenserviceTokenExchangeExchange.md)|  | 

### Return type

[**VcenterTokenserviceTokenExchangeExchangeResp**](VcenterTokenserviceTokenExchangeExchangeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



