# VSphereAutomation::CIS::TaggingTagAssociationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attach**](TaggingTagAssociationApi.md#attach) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;attach | Attaches the given tag to the input object. The tag needs to meet the cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
[**attach_multiple_tags_to_object**](TaggingTagAssociationApi.md#attach_multiple_tags_to_object) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;attach-multiple-tags-to-object | Attaches the given tags to the input object. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege on each tag.
[**attach_tag_to_multiple_objects**](TaggingTagAssociationApi.md#attach_tag_to_multiple_objects) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id} | Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
[**detach**](TaggingTagAssociationApi.md#detach) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;detach | Detaches the tag from the given object. If the tag is already removed from the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
[**detach_multiple_tags_from_object**](TaggingTagAssociationApi.md#detach_multiple_tags_from_object) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;detach-multiple-tags-from-object | Detaches the given tags from the input object. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege each tag.
[**detach_tag_from_multiple_objects**](TaggingTagAssociationApi.md#detach_tag_from_multiple_objects) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;detach-tag-from-multiple-objects | Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
[**list_attachable_tags**](TaggingTagAssociationApi.md#list_attachable_tags) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;list-attachable-tags | Fetches the {@term list} of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) constructs. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have read privileges.
[**list_attached_objects**](TaggingTagAssociationApi.md#list_attached_objects) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;list-attached-objects | Fetches the {@term list} of attached objects for the given tag. To invoke this {@term operation}, you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.
[**list_attached_objects_on_tags**](TaggingTagAssociationApi.md#list_attached_objects_on_tags) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;list-attached-objects-on-tags | Fetches the {@term list} of {@link TagToObjects} describing the input tag identifiers and the objects they are attached to. To invoke this {@term operation}, you need the read privilege on each input tag. The {@link TagToObjects#objectIds} will only contain those objects for which you have the read privilege.
[**list_attached_tags**](TaggingTagAssociationApi.md#list_attached_tags) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;list-attached-tags | Fetches the {@term list} of tags attached to the given object. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have the read privileges.
[**list_attached_tags_on_objects**](TaggingTagAssociationApi.md#list_attached_tags_on_objects) | **POST** /com/vmware/cis/tagging/tag-association | Fetches the {@term list} of {@link ObjectToTags} describing the input object identifiers and the tags attached to each object. To invoke this {@term operation}, you need the read privilege on each input object. The {@link ObjectToTags#tagIds} will only contain those tags for which you have the read privilege.


# **attach**
> attach(tag_id, request_body)

Attaches the given tag to the input object. The tag needs to meet the cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.
request_body = CIS::CisTaggingTagAssociationAttach.new # CisTaggingTagAssociationAttach | 

begin
  #Attaches the given tag to the input object. The tag needs to meet the cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
  api_instance.attach(tag_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->attach: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 
 **request_body** | [**CisTaggingTagAssociationAttach**](CisTaggingTagAssociationAttach.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **attach_multiple_tags_to_object**
> CisTaggingTagAssociationAttachMultipleTagsToObjectResult attach_multiple_tags_to_object(request_body)

Attaches the given tags to the input object. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege on each tag.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
request_body = CIS::CisTaggingTagAssociationAttachMultipleTagsToObject.new # CisTaggingTagAssociationAttachMultipleTagsToObject | 

begin
  #Attaches the given tags to the input object. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege on each tag.
  result = api_instance.attach_multiple_tags_to_object(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->attach_multiple_tags_to_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**CisTaggingTagAssociationAttachMultipleTagsToObject**](CisTaggingTagAssociationAttachMultipleTagsToObject.md)|  | 

### Return type

[**CisTaggingTagAssociationAttachMultipleTagsToObjectResult**](CisTaggingTagAssociationAttachMultipleTagsToObjectResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **attach_tag_to_multiple_objects**
> CisTaggingTagAssociationAttachTagToMultipleObjectsResult attach_tag_to_multiple_objects(tag_id, action, request_body)

Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.
action = 'action_example' # String | ~action=attach-tag-to-multiple-objects
request_body = CIS::CisTaggingTagAssociationAttachTagToMultipleObjects.new # CisTaggingTagAssociationAttachTagToMultipleObjects | 

begin
  #Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
  result = api_instance.attach_tag_to_multiple_objects(tag_id, action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->attach_tag_to_multiple_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 
 **action** | **String**| ~action&#x3D;attach-tag-to-multiple-objects | 
 **request_body** | [**CisTaggingTagAssociationAttachTagToMultipleObjects**](CisTaggingTagAssociationAttachTagToMultipleObjects.md)|  | 

### Return type

[**CisTaggingTagAssociationAttachTagToMultipleObjectsResult**](CisTaggingTagAssociationAttachTagToMultipleObjectsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **detach**
> detach(tag_id, request_body)

Detaches the tag from the given object. If the tag is already removed from the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.
request_body = CIS::CisTaggingTagAssociationDetach.new # CisTaggingTagAssociationDetach | 

begin
  #Detaches the tag from the given object. If the tag is already removed from the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
  api_instance.detach(tag_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->detach: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 
 **request_body** | [**CisTaggingTagAssociationDetach**](CisTaggingTagAssociationDetach.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **detach_multiple_tags_from_object**
> CisTaggingTagAssociationDetachMultipleTagsFromObjectResult detach_multiple_tags_from_object(request_body)

Detaches the given tags from the input object. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege each tag.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
request_body = CIS::CisTaggingTagAssociationDetachMultipleTagsFromObject.new # CisTaggingTagAssociationDetachMultipleTagsFromObject | 

begin
  #Detaches the given tags from the input object. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege each tag.
  result = api_instance.detach_multiple_tags_from_object(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->detach_multiple_tags_from_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**CisTaggingTagAssociationDetachMultipleTagsFromObject**](CisTaggingTagAssociationDetachMultipleTagsFromObject.md)|  | 

### Return type

[**CisTaggingTagAssociationDetachMultipleTagsFromObjectResult**](CisTaggingTagAssociationDetachMultipleTagsFromObjectResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **detach_tag_from_multiple_objects**
> CisTaggingTagAssociationDetachTagFromMultipleObjectsResult detach_tag_from_multiple_objects(tag_id, request_body)

Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.
request_body = CIS::CisTaggingTagAssociationDetachTagFromMultipleObjects.new # CisTaggingTagAssociationDetachTagFromMultipleObjects | 

begin
  #Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
  result = api_instance.detach_tag_from_multiple_objects(tag_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->detach_tag_from_multiple_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 
 **request_body** | [**CisTaggingTagAssociationDetachTagFromMultipleObjects**](CisTaggingTagAssociationDetachTagFromMultipleObjects.md)|  | 

### Return type

[**CisTaggingTagAssociationDetachTagFromMultipleObjectsResult**](CisTaggingTagAssociationDetachTagFromMultipleObjectsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_attachable_tags**
> CisTaggingTagAssociationListAttachableTagsResult list_attachable_tags(request_body)

Fetches the {@term list} of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) constructs. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have read privileges.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
request_body = CIS::CisTaggingTagAssociationListAttachableTags.new # CisTaggingTagAssociationListAttachableTags | 

begin
  #Fetches the {@term list} of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) constructs. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have read privileges.
  result = api_instance.list_attachable_tags(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->list_attachable_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**CisTaggingTagAssociationListAttachableTags**](CisTaggingTagAssociationListAttachableTags.md)|  | 

### Return type

[**CisTaggingTagAssociationListAttachableTagsResult**](CisTaggingTagAssociationListAttachableTagsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_attached_objects**
> CisTaggingTagAssociationListAttachedObjectsResult list_attached_objects(tag_id)

Fetches the {@term list} of attached objects for the given tag. To invoke this {@term operation}, you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.

begin
  #Fetches the {@term list} of attached objects for the given tag. To invoke this {@term operation}, you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.
  result = api_instance.list_attached_objects(tag_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->list_attached_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 

### Return type

[**CisTaggingTagAssociationListAttachedObjectsResult**](CisTaggingTagAssociationListAttachedObjectsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_attached_objects_on_tags**
> CisTaggingTagAssociationListAttachedObjectsOnTagsResult list_attached_objects_on_tags(request_body)

Fetches the {@term list} of {@link TagToObjects} describing the input tag identifiers and the objects they are attached to. To invoke this {@term operation}, you need the read privilege on each input tag. The {@link TagToObjects#objectIds} will only contain those objects for which you have the read privilege.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
request_body = CIS::CisTaggingTagAssociationListAttachedObjectsOnTags.new # CisTaggingTagAssociationListAttachedObjectsOnTags | 

begin
  #Fetches the {@term list} of {@link TagToObjects} describing the input tag identifiers and the objects they are attached to. To invoke this {@term operation}, you need the read privilege on each input tag. The {@link TagToObjects#objectIds} will only contain those objects for which you have the read privilege.
  result = api_instance.list_attached_objects_on_tags(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->list_attached_objects_on_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**CisTaggingTagAssociationListAttachedObjectsOnTags**](CisTaggingTagAssociationListAttachedObjectsOnTags.md)|  | 

### Return type

[**CisTaggingTagAssociationListAttachedObjectsOnTagsResult**](CisTaggingTagAssociationListAttachedObjectsOnTagsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_attached_tags**
> CisTaggingTagAssociationListAttachedTagsResult list_attached_tags(request_body)

Fetches the {@term list} of tags attached to the given object. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have the read privileges.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
request_body = CIS::CisTaggingTagAssociationListAttachedTags.new # CisTaggingTagAssociationListAttachedTags | 

begin
  #Fetches the {@term list} of tags attached to the given object. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have the read privileges.
  result = api_instance.list_attached_tags(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->list_attached_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**CisTaggingTagAssociationListAttachedTags**](CisTaggingTagAssociationListAttachedTags.md)|  | 

### Return type

[**CisTaggingTagAssociationListAttachedTagsResult**](CisTaggingTagAssociationListAttachedTagsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_attached_tags_on_objects**
> CisTaggingTagAssociationListAttachedTagsOnObjectsResult list_attached_tags_on_objects(action, request_body)

Fetches the {@term list} of {@link ObjectToTags} describing the input object identifiers and the tags attached to each object. To invoke this {@term operation}, you need the read privilege on each input object. The {@link ObjectToTags#tagIds} will only contain those tags for which you have the read privilege.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingTagAssociationApi.new
action = 'action_example' # String | ~action=list-attached-tags-on-objects
request_body = CIS::CisTaggingTagAssociationListAttachedTagsOnObjects.new # CisTaggingTagAssociationListAttachedTagsOnObjects | 

begin
  #Fetches the {@term list} of {@link ObjectToTags} describing the input object identifiers and the tags attached to each object. To invoke this {@term operation}, you need the read privilege on each input object. The {@link ObjectToTags#tagIds} will only contain those tags for which you have the read privilege.
  result = api_instance.list_attached_tags_on_objects(action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagAssociationApi->list_attached_tags_on_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| ~action&#x3D;list-attached-tags-on-objects | 
 **request_body** | [**CisTaggingTagAssociationListAttachedTagsOnObjects**](CisTaggingTagAssociationListAttachedTagsOnObjects.md)|  | 

### Return type

[**CisTaggingTagAssociationListAttachedTagsOnObjectsResult**](CisTaggingTagAssociationListAttachedTagsOnObjectsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



