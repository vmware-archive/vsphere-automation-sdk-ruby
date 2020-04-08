# VSphereAutomation::VCenter::TagsHostApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](TagsHostApi.md#delete) | **DELETE** /rest/vcenter/tags/host/{tag} | Deletes any existing associations of this tag with hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](TagsHostApi.md#list) | **GET** /rest/vcenter/tags/host | Returns information about the tags that are associated with hosts on this vCenter Server, where the tags need to match Host.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **delete**
> delete(tag)

Deletes any existing associations of this tag with hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsHostApi.new
tag = 'tag_example' # String | Identifier of the tag of which the associations with hosts will be deleted. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.

begin
  #Deletes any existing associations of this tag with hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(tag)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsHostApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| Identifier of the tag of which the associations with hosts will be deleted. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterTagsHostListResp list(opts)

Returns information about the tags that are associated with hosts on this vCenter Server, where the tags need to match Host.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagsHostApi.new
opts = {
  filter_tags: ['filter_tags_example'] # Array<String> | Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, returns all tag associations. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:HostSystem.
}

begin
  #Returns information about the tags that are associated with hosts on this vCenter Server, where the tags need to match Host.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagsHostApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_tags** | [**Array&lt;String&gt;**](String.md)| Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, returns all tag associations. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:HostSystem. | [optional] 

### Return type

[**VcenterTagsHostListResp**](VcenterTagsHostListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



