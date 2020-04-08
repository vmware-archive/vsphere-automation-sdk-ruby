# VSphereAutomation::VCenter::LcmUpdatePendingApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LcmUpdatePendingApi.md#get) | **GET** /api/vcenter/lcm/update/pending/{version} | Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
[**list**](LcmUpdatePendingApi.md#list) | **GET** /api/vcenter/lcm/update/pending | Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  


# **get**
> VcenterLcmUpdatePendingInfo get(version)

Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmUpdatePendingApi.new
version = 'version_example' # String | A version identified the update The parameter must be an identifier for the resource type: vcenter.lcm.update.pending.

begin
  #Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.get(version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmUpdatePendingApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| A version identified the update The parameter must be an identifier for the resource type: vcenter.lcm.update.pending. | 

### Return type

[**VcenterLcmUpdatePendingInfo**](VcenterLcmUpdatePendingInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterLcmUpdatePendingListResult list

Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmUpdatePendingApi.new

begin
  #Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmUpdatePendingApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterLcmUpdatePendingListResult**](VcenterLcmUpdatePendingListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



