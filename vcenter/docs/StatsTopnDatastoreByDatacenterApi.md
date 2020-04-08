# VSphereAutomation::VCenter::StatsTopnDatastoreByDatacenterApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](StatsTopnDatastoreByDatacenterApi.md#get) | **GET** /rest/vcenter/stats/topn/datastore/by-datacenter | Retrieve Top N datastores in a datacenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterStatsTopnDatastoreByDatacenterResp get(counter, top, datacenter, interval, start, opts)

Retrieve Top N datastores in a datacenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::StatsTopnDatastoreByDatacenterApi.new
counter = 'counter_example' # String | name of the performance counter which could be disk Usage (GB), disk capacity (GB), disk provisioned (GB) etc.
top = 56 # Integer | indicates how many top values to return.
datacenter = 'datacenter_example' # String | datacenter that datastores should belong to.
interval = 56 # Integer | desired roll-up duration in seconds.
start = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | StartTime of the time window for topN query.
opts = {
  _end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  verbosity: 'verbosity_example' # String | 
}

begin
  #Retrieve Top N datastores in a datacenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(counter, top, datacenter, interval, start, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling StatsTopnDatastoreByDatacenterApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **counter** | **String**| name of the performance counter which could be disk Usage (GB), disk capacity (GB), disk provisioned (GB) etc. | 
 **top** | **Integer**| indicates how many top values to return. | 
 **datacenter** | **String**| datacenter that datastores should belong to. | 
 **interval** | **Integer**| desired roll-up duration in seconds. | 
 **start** | **DateTime**| StartTime of the time window for topN query. | 
 **_end** | **DateTime**|  | [optional] 
 **verbosity** | **String**|  | [optional] 

### Return type

[**VcenterStatsTopnDatastoreByDatacenterResp**](VcenterStatsTopnDatastoreByDatacenterResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



