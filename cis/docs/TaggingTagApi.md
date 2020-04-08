# VSphereAutomation::CIS::TaggingTagApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_used_by**](TaggingTagApi.md#add_to_used_by) | **POST** /rest/com/vmware/cis/tagging/tag/id:{tag_id}?~action&#x3D;add-to-used-by | Adds the {@param.name usedByEntity} to the {@link TagModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link TagModel#usedBy} privilege on the tag.
[**create**](TaggingTagApi.md#create) | **POST** /rest/com/vmware/cis/tagging/tag | Creates a tag. To invoke this {@term operation}, you need the create tag privilege on the input category.
[**delete**](TaggingTagApi.md#delete) | **DELETE** /rest/com/vmware/cis/tagging/tag/id:{tag_id} | Deletes an existing tag. To invoke this {@term operation}, you need the delete privilege on the tag.
[**get**](TaggingTagApi.md#get) | **GET** /rest/com/vmware/cis/tagging/tag/id:{tag_id} | Fetches the tag information for the given tag identifier. To invoke this {@term operation}, you need the read privilege on the tag in order to view the tag info.
[**list**](TaggingTagApi.md#list) | **GET** /rest/com/vmware/cis/tagging/tag | Enumerates the tags in the system. To invoke this {@term operation}, you need read privilege on the individual tags. The {@term list} will only contain tags for which you have read privileges.
[**list_tags_for_category**](TaggingTagApi.md#list_tags_for_category) | **POST** /rest/com/vmware/cis/tagging/tag/id:{category_id}?~action&#x3D;list-tags-for-category | Enumerates all tags for the given category. To invoke this {@term operation}, you need the read privilege on the given category and the individual tags in that category.
[**list_used_tags**](TaggingTagApi.md#list_used_tags) | **POST** /rest/com/vmware/cis/tagging/tag?~action&#x3D;list-used-tags | Enumerates all tags for which the {@param.name usedByEntity} is part of the {@link TagModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual tags.
[**remove_from_used_by**](TaggingTagApi.md#remove_from_used_by) | **POST** /rest/com/vmware/cis/tagging/tag/id:{tag_id}?~action&#x3D;remove-from-used-by | Removes the {@param.name usedByEntity} from the {@link TagModel#usedBy} subscribers set. If the {@param.name usedByEntity} is not using this tag, then this becomes a no-op. To invoke this {@term operation}, you need modify {@link TagModel#usedBy} privilege on the tag.
[**revoke_propagating_permissions**](TaggingTagApi.md#revoke_propagating_permissions) | **POST** /rest/com/vmware/cis/tagging/tag/id:{tag_id}?~action&#x3D;revoke-propagating-permissions | Revokes all propagating permissions on the given tag. You should then attach a direct permission with tagging privileges on the given tag. To invoke this {@term operation}, you need tag related privileges (direct or propagating) on the concerned tag.
[**update**](TaggingTagApi.md#update) | **PATCH** /rest/com/vmware/cis/tagging/tag/id:{tag_id} | Updates an existing tag. To invoke this {@term operation}, you need the edit privilege on the tag.


# **add_to_used_by**
> add_to_used_by(tag_id, request_body)

Adds the {@param.name usedByEntity} to the {@link TagModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link TagModel#usedBy} privilege on the tag.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.
request_body = CIS::CisTaggingTagAddToUsedBy.new # CisTaggingTagAddToUsedBy | 

begin
  #Adds the {@param.name usedByEntity} to the {@link TagModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link TagModel#usedBy} privilege on the tag.
  api_instance.add_to_used_by(tag_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->add_to_used_by: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 
 **request_body** | [**CisTaggingTagAddToUsedBy**](CisTaggingTagAddToUsedBy.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create**
> CisTaggingTagCreateResp create(request_body)

Creates a tag. To invoke this {@term operation}, you need the create tag privilege on the input category.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
request_body = CIS::CisTaggingTagCreate.new # CisTaggingTagCreate | 

begin
  #Creates a tag. To invoke this {@term operation}, you need the create tag privilege on the input category.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**CisTaggingTagCreate**](CisTaggingTagCreate.md)|  | 

### Return type

[**CisTaggingTagCreateResp**](CisTaggingTagCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(tag_id)

Deletes an existing tag. To invoke this {@term operation}, you need the delete privilege on the tag.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.

begin
  #Deletes an existing tag. To invoke this {@term operation}, you need the delete privilege on the tag.
  api_instance.delete(tag_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> CisTaggingTagResp get(tag_id)

Fetches the tag information for the given tag identifier. To invoke this {@term operation}, you need the read privilege on the tag in order to view the tag info.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.

begin
  #Fetches the tag information for the given tag identifier. To invoke this {@term operation}, you need the read privilege on the tag in order to view the tag info.
  result = api_instance.get(tag_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 

### Return type

[**CisTaggingTagResp**](CisTaggingTagResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> CisTaggingTagListResp list

Enumerates the tags in the system. To invoke this {@term operation}, you need read privilege on the individual tags. The {@term list} will only contain tags for which you have read privileges.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new

begin
  #Enumerates the tags in the system. To invoke this {@term operation}, you need read privilege on the individual tags. The {@term list} will only contain tags for which you have read privileges.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CisTaggingTagListResp**](CisTaggingTagListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_tags_for_category**
> CisTaggingTagListTagsForCategoryResp list_tags_for_category(category_id)

Enumerates all tags for the given category. To invoke this {@term operation}, you need the read privilege on the given category and the individual tags in that category.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
category_id = 'category_id_example' # String | The identifier of the input category.

begin
  #Enumerates all tags for the given category. To invoke this {@term operation}, you need the read privilege on the given category and the individual tags in that category.
  result = api_instance.list_tags_for_category(category_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->list_tags_for_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| The identifier of the input category. | 

### Return type

[**CisTaggingTagListTagsForCategoryResp**](CisTaggingTagListTagsForCategoryResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_used_tags**
> CisTaggingTagListUsedTagsResp list_used_tags(request_body)

Enumerates all tags for which the {@param.name usedByEntity} is part of the {@link TagModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual tags.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
request_body = CIS::CisTaggingTagListUsedTags.new # CisTaggingTagListUsedTags | 

begin
  #Enumerates all tags for which the {@param.name usedByEntity} is part of the {@link TagModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual tags.
  result = api_instance.list_used_tags(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->list_used_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**CisTaggingTagListUsedTags**](CisTaggingTagListUsedTags.md)|  | 

### Return type

[**CisTaggingTagListUsedTagsResp**](CisTaggingTagListUsedTagsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_from_used_by**
> remove_from_used_by(tag_id, request_body)

Removes the {@param.name usedByEntity} from the {@link TagModel#usedBy} subscribers set. If the {@param.name usedByEntity} is not using this tag, then this becomes a no-op. To invoke this {@term operation}, you need modify {@link TagModel#usedBy} privilege on the tag.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.
request_body = CIS::CisTaggingTagRemoveFromUsedBy.new # CisTaggingTagRemoveFromUsedBy | 

begin
  #Removes the {@param.name usedByEntity} from the {@link TagModel#usedBy} subscribers set. If the {@param.name usedByEntity} is not using this tag, then this becomes a no-op. To invoke this {@term operation}, you need modify {@link TagModel#usedBy} privilege on the tag.
  api_instance.remove_from_used_by(tag_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->remove_from_used_by: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 
 **request_body** | [**CisTaggingTagRemoveFromUsedBy**](CisTaggingTagRemoveFromUsedBy.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revoke_propagating_permissions**
> revoke_propagating_permissions(tag_id)

Revokes all propagating permissions on the given tag. You should then attach a direct permission with tagging privileges on the given tag. To invoke this {@term operation}, you need tag related privileges (direct or propagating) on the concerned tag.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.

begin
  #Revokes all propagating permissions on the given tag. You should then attach a direct permission with tagging privileges on the given tag. To invoke this {@term operation}, you need tag related privileges (direct or propagating) on the concerned tag.
  api_instance.revoke_propagating_permissions(tag_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->revoke_propagating_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(tag_id, request_body)

Updates an existing tag. To invoke this {@term operation}, you need the edit privilege on the tag.

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

api_instance = VSphereAutomation::CIS::TaggingTagApi.new
tag_id = 'tag_id_example' # String | The identifier of the input tag.
request_body = CIS::CisTaggingTagUpdate.new # CisTaggingTagUpdate | 

begin
  #Updates an existing tag. To invoke this {@term operation}, you need the edit privilege on the tag.
  api_instance.update(tag_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingTagApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_id** | **String**| The identifier of the input tag. | 
 **request_body** | [**CisTaggingTagUpdate**](CisTaggingTagUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



