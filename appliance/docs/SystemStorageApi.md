# VSphereAutomation::Appliance::SystemStorageApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SystemStorageApi.md#list) | **GET** /rest/appliance/system/storage | Get disk to partition mapping.
[**resize**](SystemStorageApi.md#resize) | **POST** /rest/appliance/system/storage/resize | Resize all partitions to 100 percent of disk size.
[**resize_ex**](SystemStorageApi.md#resize_ex) | **POST** /rest/appliance/system/storage?action&#x3D;resize-ex | Resize all partitions to 100 percent of disk size.


# **list**
> ApplianceSystemStorageListResp list

Get disk to partition mapping.

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

api_instance = VSphereAutomation::Appliance::SystemStorageApi.new

begin
  #Get disk to partition mapping.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemStorageApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceSystemStorageListResp**](ApplianceSystemStorageListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resize**
> resize

Resize all partitions to 100 percent of disk size.

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

api_instance = VSphereAutomation::Appliance::SystemStorageApi.new

begin
  #Resize all partitions to 100 percent of disk size.
  api_instance.resize
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemStorageApi->resize: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resize_ex**
> ApplianceSystemStorageResizeExResp resize_ex

Resize all partitions to 100 percent of disk size.

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

api_instance = VSphereAutomation::Appliance::SystemStorageApi.new

begin
  #Resize all partitions to 100 percent of disk size.
  result = api_instance.resize_ex
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemStorageApi->resize_ex: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceSystemStorageResizeExResp**](ApplianceSystemStorageResizeExResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



