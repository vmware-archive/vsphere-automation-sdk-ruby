# VSphereAutomation::VCenter::TagsVmAssociationsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TagsVmAssociationsApi.md#add) | **POST** /rest/vcenter/tags/vm/{tag}/associations?action&#x3D;add | Attaches a tag to multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](TagsVmAssociationsApi.md#get) | **GET** /rest/vcenter/tags/vm/{tag}/associations | Lists all virtual machine that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**remove**](TagsVmAssociationsApi.md#remove) | **POST** /rest/vcenter/tags/vm/{tag}/associations?action&#x3D;remove | Detaches a tag from multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **add**
> VcenterTagsVmAssociationsAddResp add(tag, request_body)

Attaches a tag to multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsVmAssociationsApi.new
tag = 'tag_example' # String | Identifier of the tag to be assigned to the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
request_body = VCenter::VcenterTagsVmAssociationsAdd.new # VcenterTagsVmAssociationsAdd | 

begin
  #Attaches a tag to multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.add(tag, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsVmAssociationsApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Identifier of the tag to be assigned to the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine. | 
 **request_body** | [**VcenterTagsVmAssociationsAdd**](VcenterTagsVmAssociationsAdd.md)|  | 

### Return type

[**VcenterTagsVmAssociationsAddResp**](VcenterTagsVmAssociationsAddResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterTagsVmAssociationsResp get(tag)

Lists all virtual machine that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsVmAssociationsApi.new
tag = 'tag_example' # String | Identifier of the tag to be queried for its associated virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.

begin
  #Lists all virtual machine that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(tag)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsVmAssociationsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Identifier of the tag to be queried for its associated virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine. | 

### Return type

[**VcenterTagsVmAssociationsResp**](VcenterTagsVmAssociationsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove**
> VcenterTagsVmAssociationsRemoveResp remove(tag, request_body)

Detaches a tag from multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsVmAssociationsApi.new
tag = 'tag_example' # String | Identifier of the tag to be removed from the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
request_body = VCenter::VcenterTagsVmAssociationsRemove.new # VcenterTagsVmAssociationsRemove | 

begin
  #Detaches a tag from multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remove(tag, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsVmAssociationsApi->remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Identifier of the tag to be removed from the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine. | 
 **request_body** | [**VcenterTagsVmAssociationsRemove**](VcenterTagsVmAssociationsRemove.md)|  | 

### Return type

[**VcenterTagsVmAssociationsRemoveResp**](VcenterTagsVmAssociationsRemoveResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



