# VSphereAutomation::VCenter::HostTagsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](HostTagsApi.md#add) | **POST** /rest/vcenter/host/{host}/tags?action&#x3D;add | Attaches tags to a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](HostTagsApi.md#get) | **GET** /rest/vcenter/host/{host}/tags | Lists all tags attached to the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**remove**](HostTagsApi.md#remove) | **POST** /rest/vcenter/host/{host}/tags?action&#x3D;remove | Detaches tags from a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **add**
> VcenterHostTagsAddResp add(host, request_body)

Attaches tags to a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HostTagsApi.new
host = 'host_example' # String | Identifier of the host to which the tags will be assigned. The parameter must be an identifier for the resource type: HostSystem.
request_body = VCenter::VcenterHostTagsAdd.new # VcenterHostTagsAdd | 

begin
  #Attaches tags to a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.add(host, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostTagsApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host to which the tags will be assigned. The parameter must be an identifier for the resource type: HostSystem. | 
 **request_body** | [**VcenterHostTagsAdd**](VcenterHostTagsAdd.md)|  | 

### Return type

[**VcenterHostTagsAddResp**](VcenterHostTagsAddResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterHostTagsResp get(host)

Lists all tags attached to the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HostTagsApi.new
host = 'host_example' # String | Identifier of the host to be queried for its assigned tags. The parameter must be an identifier for the resource type: HostSystem.

begin
  #Lists all tags attached to the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostTagsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host to be queried for its assigned tags. The parameter must be an identifier for the resource type: HostSystem. | 

### Return type

[**VcenterHostTagsResp**](VcenterHostTagsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove**
> VcenterHostTagsRemoveResp remove(host, request_body)

Detaches tags from a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HostTagsApi.new
host = 'host_example' # String | Identifier of the host from which the tags will be removed. The parameter must be an identifier for the resource type: HostSystem.
request_body = VCenter::VcenterHostTagsRemove.new # VcenterHostTagsRemove | 

begin
  #Detaches tags from a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remove(host, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostTagsApi->remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host from which the tags will be removed. The parameter must be an identifier for the resource type: HostSystem. | 
 **request_body** | [**VcenterHostTagsRemove**](VcenterHostTagsRemove.md)|  | 

### Return type

[**VcenterHostTagsRemoveResp**](VcenterHostTagsRemoveResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



