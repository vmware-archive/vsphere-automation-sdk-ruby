# VSphereAutomation::Appliance::ObservabilityTopicsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ObservabilityTopicsApi.md#list) | **GET** /api/appliance/observability/topics | Lists all the topics currently published by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  


# **list**
> Array&lt;ApplianceObservabilityTopicsSummary&gt; list

Lists all the topics currently published by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityTopicsApi.new

begin
  #Lists all the topics currently published by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityTopicsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApplianceObservabilityTopicsSummary&gt;**](ApplianceObservabilityTopicsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



