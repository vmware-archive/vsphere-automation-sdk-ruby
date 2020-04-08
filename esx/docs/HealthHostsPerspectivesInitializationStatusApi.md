# VSphereAutomation::ESX::HealthHostsPerspectivesInitializationStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](HealthHostsPerspectivesInitializationStatusApi.md#check) | **POST** /api/esx/health/hosts/{host}/perspectives/initialization/status?action&#x3D;check | Check if the given host is ready to accept workloads.


# **check**
> EsxHealthStatusInfo check(host, opts)

Check if the given host is ready to accept workloads.

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

api_instance = VSphereAutomation::ESX::HealthHostsPerspectivesInitializationStatusApi.new
host = 'host_example' # String | Contains the MoID identifying the ESXi host.
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Check if the given host is ready to accept workloads.
  result = api_instance.check(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthHostsPerspectivesInitializationStatusApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Contains the MoID identifying the ESXi host. | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**EsxHealthStatusInfo**](EsxHealthStatusInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



