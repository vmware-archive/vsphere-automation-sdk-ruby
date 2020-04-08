# VSphereAutomation::VCenter::LcmDiscoveryProductCatalogApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](LcmDiscoveryProductCatalogApi.md#list) | **GET** /api/vcenter/lcm/discovery/product-catalog | Retrieves a list of all VMware products that can be associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  


# **list**
> Array&lt;VcenterLcmDiscoveryProductCatalogSummary&gt; list

Retrieves a list of all VMware products that can be associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmDiscoveryProductCatalogApi.new

begin
  #Retrieves a list of all VMware products that can be associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmDiscoveryProductCatalogApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterLcmDiscoveryProductCatalogSummary&gt;**](VcenterLcmDiscoveryProductCatalogSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



