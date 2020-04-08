# VSphereAutomation::VCenter::TagsHostAssociationsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TagsHostAssociationsApi.md#add) | **POST** /rest/vcenter/tags/host/{tag}/associations?action&#x3D;add | Attaches a tag to multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](TagsHostAssociationsApi.md#get) | **GET** /rest/vcenter/tags/host/{tag}/associations | Lists all hosts that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**remove**](TagsHostAssociationsApi.md#remove) | **POST** /rest/vcenter/tags/host/{tag}/associations?action&#x3D;remove | Detaches a tag from multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **add**
> VcenterTagsHostAssociationsAddResp add(tag, request_body)

Attaches a tag to multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsHostAssociationsApi.new
tag = 'tag_example' # String | Identifier of the tag to be assigned to the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
request_body = VCenter::VcenterTagsHostAssociationsAdd.new # VcenterTagsHostAssociationsAdd | 

begin
  #Attaches a tag to multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.add(tag, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsHostAssociationsApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Identifier of the tag to be assigned to the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem. | 
 **request_body** | [**VcenterTagsHostAssociationsAdd**](VcenterTagsHostAssociationsAdd.md)|  | 

### Return type

[**VcenterTagsHostAssociationsAddResp**](VcenterTagsHostAssociationsAddResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterTagsHostAssociationsResp get(tag)

Lists all hosts that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsHostAssociationsApi.new
tag = 'tag_example' # String | Identifier of the tag to be queried for its associated hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.

begin
  #Lists all hosts that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(tag)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsHostAssociationsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Identifier of the tag to be queried for its associated hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem. | 

### Return type

[**VcenterTagsHostAssociationsResp**](VcenterTagsHostAssociationsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove**
> VcenterTagsHostAssociationsRemoveResp remove(tag, request_body)

Detaches a tag from multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsHostAssociationsApi.new
tag = 'tag_example' # String | Identifier of the tag to be removed from the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
request_body = VCenter::VcenterTagsHostAssociationsRemove.new # VcenterTagsHostAssociationsRemove | 

begin
  #Detaches a tag from multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remove(tag, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsHostAssociationsApi->remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Identifier of the tag to be removed from the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem. | 
 **request_body** | [**VcenterTagsHostAssociationsRemove**](VcenterTagsHostAssociationsRemove.md)|  | 

### Return type

[**VcenterTagsHostAssociationsRemoveResp**](VcenterTagsHostAssociationsRemoveResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



