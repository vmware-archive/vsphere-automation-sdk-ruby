# VSphereAutomation::ESX::HealthClustersPerspectivesPlannedMaintenanceStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](HealthClustersPerspectivesPlannedMaintenanceStatusApi.md#check) | **POST** /api/esx/health/clusters/{cluster}/perspectives/planned-maintenance/status?action&#x3D;check | Get the current health status of a cluster for planned maintenance.


# **check**
> EsxHealthStatusInfo check(cluster, opts)

Get the current health status of a cluster for planned maintenance.

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

api_instance = VSphereAutomation::ESX::HealthClustersPerspectivesPlannedMaintenanceStatusApi.new
cluster = 'cluster_example' # String | Contains the MoID.
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Get the current health status of a cluster for planned maintenance.
  result = api_instance.check(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthClustersPerspectivesPlannedMaintenanceStatusApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Contains the MoID. | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**EsxHealthStatusInfo**](EsxHealthStatusInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



