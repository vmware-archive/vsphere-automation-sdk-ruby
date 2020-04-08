# VSphereAutomation::VCenter::NsxIpPoolsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NsxIpPoolsApi.md#get) | **GET** /api/vcenter/nsx/ip-pools/{ip_pool} | Read the NSX IP pool. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](NsxIpPoolsApi.md#list) | **GET** /api/vcenter/nsx/ip-pools | Returns the list of the NSX IP pools. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterNsxIpPoolsInfo get(ip_pool)

Read the NSX IP pool. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxIpPoolsApi.new
ip_pool = 'ip_pool_example' # String | Identifier of an NSX IP pool. The parameter must be an identifier for the resource type: nsx.pools.ip_pool.

begin
  #Read the NSX IP pool. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(ip_pool)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxIpPoolsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ip_pool** | **String**| Identifier of an NSX IP pool. The parameter must be an identifier for the resource type: nsx.pools.ip_pool. | 

### Return type

[**VcenterNsxIpPoolsInfo**](VcenterNsxIpPoolsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterNsxIpPoolsSummary&gt; list

Returns the list of the NSX IP pools. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxIpPoolsApi.new

begin
  #Returns the list of the NSX IP pools. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxIpPoolsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterNsxIpPoolsSummary&gt;**](VcenterNsxIpPoolsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



