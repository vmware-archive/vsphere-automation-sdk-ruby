# VSphereAutomation::ESX::HealthClustersPerspectivesReadyForApplyStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](HealthClustersPerspectivesReadyForApplyStatusApi.md#check) | **POST** /api/esx/health/clusters/{cluster}/perspectives/ready-for-apply/status?action&#x3D;check | Check if the cluster is ready to be applied a new desired configuration.


# **check**
> EsxHealthStatusInfo check(cluster, opts)

Check if the cluster is ready to be applied a new desired configuration.

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

api_instance = VSphereAutomation::ESX::HealthClustersPerspectivesReadyForApplyStatusApi.new
cluster = 'cluster_example' # String | Contains the cluster MoID.
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Check if the cluster is ready to be applied a new desired configuration.
  result = api_instance.check(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthClustersPerspectivesReadyForApplyStatusApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Contains the cluster MoID. | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**EsxHealthStatusInfo**](EsxHealthStatusInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



