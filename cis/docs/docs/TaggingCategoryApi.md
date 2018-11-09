# VSphereAutomation::CIS::TaggingCategoryApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_used_by**](TaggingCategoryApi.md#add_to_used_by) | **POST** /com/vmware/cis/tagging/category/id:{category_id}?~action&#x3D;add-to-used-by | Adds the {@param.name usedByEntity} to the {@link CategoryModel#usedBy} subscribers {@term set} for the specified category. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes an idempotent no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
[**create**](TaggingCategoryApi.md#create) | **POST** /com/vmware/cis/tagging/category | Creates a category. To invoke this {@term operation}, you need the create category privilege.
[**delete**](TaggingCategoryApi.md#delete) | **DELETE** /com/vmware/cis/tagging/category/id:{category_id} | Deletes an existing category. To invoke this {@term operation}, you need the delete privilege on the category.
[**get**](TaggingCategoryApi.md#get) | **GET** /com/vmware/cis/tagging/category/id:{category_id} | Fetches the category information for the given category identifier. In order to view the category information, you need the read privilege on the category.
[**list**](TaggingCategoryApi.md#list) | **GET** /com/vmware/cis/tagging/category | Enumerates the categories in the system. To invoke this {@term operation}, you need the read privilege on the individual categories. The {@term list} will only contain those categories for which you have read privileges.
[**list_used_categories**](TaggingCategoryApi.md#list_used_categories) | **POST** /com/vmware/cis/tagging/category?~action&#x3D;list-used-categories | Enumerates all categories for which the {@param.name usedByEntity} is part of the {@link CategoryModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual categories.
[**remove_from_used_by**](TaggingCategoryApi.md#remove_from_used_by) | **POST** /com/vmware/cis/tagging/category/id:{category_id}?~action&#x3D;remove-from-used-by | Removes the {@param.name usedByEntity} from the {@link CategoryModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is not using this category, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
[**revoke_propagating_permissions**](TaggingCategoryApi.md#revoke_propagating_permissions) | **POST** /com/vmware/cis/tagging/category/id:{category_id}?~action&#x3D;revoke-propagating-permissions | Revokes all propagating permissions on the given category. You should then attach a direct permission with tagging privileges on the given category. To invoke this {@term operation}, you need category related privileges (direct or propagating) on the concerned category.
[**update**](TaggingCategoryApi.md#update) | **PATCH** /com/vmware/cis/tagging/category/id:{category_id} | Updates an existing category. To invoke this {@term operation}, you need the edit privilege on the category.


# **add_to_used_by**
> add_to_used_by(category_id, cis_tagging_category_add_to_used_by)

Adds the {@param.name usedByEntity} to the {@link CategoryModel#usedBy} subscribers {@term set} for the specified category. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes an idempotent no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
category_id = 'category_id_example' # String | The identifier of the input category.
cis_tagging_category_add_to_used_by = VSphereAutomation::CisTaggingCategoryAddToUsedBy.new # CisTaggingCategoryAddToUsedBy | 

begin
  #Adds the {@param.name usedByEntity} to the {@link CategoryModel#usedBy} subscribers {@term set} for the specified category. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes an idempotent no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
  api_instance.add_to_used_by(category_id, cis_tagging_category_add_to_used_by)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->add_to_used_by: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| The identifier of the input category. | 
 **cis_tagging_category_add_to_used_by** | [**CisTaggingCategoryAddToUsedBy**](CisTaggingCategoryAddToUsedBy.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create**
> CisTaggingCategoryCreateResult create(cis_tagging_category_create)

Creates a category. To invoke this {@term operation}, you need the create category privilege.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
cis_tagging_category_create = VSphereAutomation::CisTaggingCategoryCreate.new # CisTaggingCategoryCreate | 

begin
  #Creates a category. To invoke this {@term operation}, you need the create category privilege.
  result = api_instance.create(cis_tagging_category_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cis_tagging_category_create** | [**CisTaggingCategoryCreate**](CisTaggingCategoryCreate.md)|  | 

### Return type

[**CisTaggingCategoryCreateResult**](CisTaggingCategoryCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(category_id)

Deletes an existing category. To invoke this {@term operation}, you need the delete privilege on the category.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
category_id = 'category_id_example' # String | The identifier of category to be deleted.

begin
  #Deletes an existing category. To invoke this {@term operation}, you need the delete privilege on the category.
  api_instance.delete(category_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| The identifier of category to be deleted. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> CisTaggingCategoryResult get(category_id)

Fetches the category information for the given category identifier. In order to view the category information, you need the read privilege on the category.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
category_id = 'category_id_example' # String | The identifier of the input category.

begin
  #Fetches the category information for the given category identifier. In order to view the category information, you need the read privilege on the category.
  result = api_instance.get(category_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| The identifier of the input category. | 

### Return type

[**CisTaggingCategoryResult**](CisTaggingCategoryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> CisTaggingCategoryListResult list

Enumerates the categories in the system. To invoke this {@term operation}, you need the read privilege on the individual categories. The {@term list} will only contain those categories for which you have read privileges.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new

begin
  #Enumerates the categories in the system. To invoke this {@term operation}, you need the read privilege on the individual categories. The {@term list} will only contain those categories for which you have read privileges.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CisTaggingCategoryListResult**](CisTaggingCategoryListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list_used_categories**
> CisTaggingCategoryListUsedCategoriesResult list_used_categories(cis_tagging_category_list_used_categories)

Enumerates all categories for which the {@param.name usedByEntity} is part of the {@link CategoryModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual categories.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
cis_tagging_category_list_used_categories = VSphereAutomation::CisTaggingCategoryListUsedCategories.new # CisTaggingCategoryListUsedCategories | 

begin
  #Enumerates all categories for which the {@param.name usedByEntity} is part of the {@link CategoryModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual categories.
  result = api_instance.list_used_categories(cis_tagging_category_list_used_categories)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->list_used_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cis_tagging_category_list_used_categories** | [**CisTaggingCategoryListUsedCategories**](CisTaggingCategoryListUsedCategories.md)|  | 

### Return type

[**CisTaggingCategoryListUsedCategoriesResult**](CisTaggingCategoryListUsedCategoriesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **remove_from_used_by**
> remove_from_used_by(category_id, cis_tagging_category_remove_from_used_by)

Removes the {@param.name usedByEntity} from the {@link CategoryModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is not using this category, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
category_id = 'category_id_example' # String | The identifier of the input category.
cis_tagging_category_remove_from_used_by = VSphereAutomation::CisTaggingCategoryRemoveFromUsedBy.new # CisTaggingCategoryRemoveFromUsedBy | 

begin
  #Removes the {@param.name usedByEntity} from the {@link CategoryModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is not using this category, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
  api_instance.remove_from_used_by(category_id, cis_tagging_category_remove_from_used_by)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->remove_from_used_by: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| The identifier of the input category. | 
 **cis_tagging_category_remove_from_used_by** | [**CisTaggingCategoryRemoveFromUsedBy**](CisTaggingCategoryRemoveFromUsedBy.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **revoke_propagating_permissions**
> revoke_propagating_permissions(category_id)

Revokes all propagating permissions on the given category. You should then attach a direct permission with tagging privileges on the given category. To invoke this {@term operation}, you need category related privileges (direct or propagating) on the concerned category.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
category_id = 'category_id_example' # String | The identifier of the input category.

begin
  #Revokes all propagating permissions on the given category. You should then attach a direct permission with tagging privileges on the given category. To invoke this {@term operation}, you need category related privileges (direct or propagating) on the concerned category.
  api_instance.revoke_propagating_permissions(category_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->revoke_propagating_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| The identifier of the input category. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(category_id, cis_tagging_category_update)

Updates an existing category. To invoke this {@term operation}, you need the edit privilege on the category.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new
category_id = 'category_id_example' # String | The identifier of the category to be updated.
cis_tagging_category_update = VSphereAutomation::CisTaggingCategoryUpdate.new # CisTaggingCategoryUpdate | 

begin
  #Updates an existing category. To invoke this {@term operation}, you need the edit privilege on the category.
  api_instance.update(category_id, cis_tagging_category_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| The identifier of the category to be updated. | 
 **cis_tagging_category_update** | [**CisTaggingCategoryUpdate**](CisTaggingCategoryUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



