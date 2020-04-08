# VSphereAutomation::VCenter::StatsTopnResourcechildByVappApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](StatsTopnResourcechildByVappApi.md#get) | **GET** /rest/vcenter/stats/topn/resource-child/by-vapp | Retrieve Top N ResourcePools, vApps &amp; VMs in a vApp. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterStatsTopnResourcechildByVappResp get(counter, top, v_app, interval, start, opts)

Retrieve Top N ResourcePools, vApps & VMs in a vApp. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::StatsTopnResourcechildByVappApi.new
counter = 'counter_example' # String | name of the performance counter which could be cpu Usage (MHz), memory Consumed (MB) etc.
top = 56 # Integer | indicates how many top values to return.
v_app = 'v_app_example' # String | Vapp that resourcepools should belong to.
interval = 56 # Integer | desired roll-up duration in seconds.
start = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | StartTime of the time window for topN query.
opts = {
  _end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  verbosity: 'verbosity_example' # String | 
}

begin
  #Retrieve Top N ResourcePools, vApps & VMs in a vApp. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(counter, top, v_app, interval, start, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling StatsTopnResourcechildByVappApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **counter** | **String**| name of the performance counter which could be cpu Usage (MHz), memory Consumed (MB) etc. | 
 **top** | **Integer**| indicates how many top values to return. | 
 **v_app** | **String**| Vapp that resourcepools should belong to. | 
 **interval** | **Integer**| desired roll-up duration in seconds. | 
 **start** | **DateTime**| StartTime of the time window for topN query. | 
 **_end** | **DateTime**|  | [optional] 
 **verbosity** | **String**|  | [optional] 

### Return type

[**VcenterStatsTopnResourcechildByVappResp**](VcenterStatsTopnResourcechildByVappResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



