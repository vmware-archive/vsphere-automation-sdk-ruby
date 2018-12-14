# vsphere-automation-cis

The Ruby gem for the vSphere CIS API

- API version: 2.0.0
- Package version: 0.1.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vsphere-automation-cis'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vsphere-automation-cis

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::SessionApi.new
vmware_use_header_authn = 'vmware_use_header_authn_example' # String | Custom header to protect against CSRF attacks in browser based clients

begin
  #Creates a session with the API. This is the equivalent of login. This operation exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.
  result = api_instance.create(vmware_use_header_authn)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SessionApi->create: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::CIS::SessionApi` | [**create**](docs/SessionApi.md#create) | **POST** /com/vmware/cis/session | Creates a session with the API. This is the equivalent of login. This operation exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.
`VSphereAutomation::CIS::SessionApi` | [**delete**](docs/SessionApi.md#delete) | **DELETE** /com/vmware/cis/session | Terminates the validity of a session token. This is the equivalent of log out.   A session identifier is expected as part of the request.    
`VSphereAutomation::CIS::SessionApi` | [**get**](docs/SessionApi.md#get) | **POST** /com/vmware/cis/session?~action&#x3D;get | Returns information about the current session. This operation expects a valid session identifier to be supplied.   A side effect of invoking this operation may be a change to the session's last accessed time to the current time if this is supported by the session implementation. Invoking any other operation in the API will also update the session's last accessed time.    This API is meant to serve the needs of various front end projects that may want to display the name of the user. Examples of this include various web based user interfaces and logging facilities. 
`VSphereAutomation::CIS::TaggingCategoryApi` | [**add_to_used_by**](docs/TaggingCategoryApi.md#add_to_used_by) | **POST** /com/vmware/cis/tagging/category/id:{category_id}?~action&#x3D;add-to-used-by | Adds the {@param.name usedByEntity} to the {@link CategoryModel#usedBy} subscribers {@term set} for the specified category. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes an idempotent no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**create**](docs/TaggingCategoryApi.md#create) | **POST** /com/vmware/cis/tagging/category | Creates a category. To invoke this {@term operation}, you need the create category privilege.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**delete**](docs/TaggingCategoryApi.md#delete) | **DELETE** /com/vmware/cis/tagging/category/id:{category_id} | Deletes an existing category. To invoke this {@term operation}, you need the delete privilege on the category.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**get**](docs/TaggingCategoryApi.md#get) | **GET** /com/vmware/cis/tagging/category/id:{category_id} | Fetches the category information for the given category identifier. In order to view the category information, you need the read privilege on the category.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**list**](docs/TaggingCategoryApi.md#list) | **GET** /com/vmware/cis/tagging/category | Enumerates the categories in the system. To invoke this {@term operation}, you need the read privilege on the individual categories. The {@term list} will only contain those categories for which you have read privileges.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**list_used_categories**](docs/TaggingCategoryApi.md#list_used_categories) | **POST** /com/vmware/cis/tagging/category?~action&#x3D;list-used-categories | Enumerates all categories for which the {@param.name usedByEntity} is part of the {@link CategoryModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual categories.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**remove_from_used_by**](docs/TaggingCategoryApi.md#remove_from_used_by) | **POST** /com/vmware/cis/tagging/category/id:{category_id}?~action&#x3D;remove-from-used-by | Removes the {@param.name usedByEntity} from the {@link CategoryModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is not using this category, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**revoke_propagating_permissions**](docs/TaggingCategoryApi.md#revoke_propagating_permissions) | **POST** /com/vmware/cis/tagging/category/id:{category_id}?~action&#x3D;revoke-propagating-permissions | Revokes all propagating permissions on the given category. You should then attach a direct permission with tagging privileges on the given category. To invoke this {@term operation}, you need category related privileges (direct or propagating) on the concerned category.
`VSphereAutomation::CIS::TaggingCategoryApi` | [**update**](docs/TaggingCategoryApi.md#update) | **PATCH** /com/vmware/cis/tagging/category/id:{category_id} | Updates an existing category. To invoke this {@term operation}, you need the edit privilege on the category.
`VSphereAutomation::CIS::TaggingTagApi` | [**add_to_used_by**](docs/TaggingTagApi.md#add_to_used_by) | **POST** /com/vmware/cis/tagging/tag/id:{tag_id}?~action&#x3D;add-to-used-by | Adds the {@param.name usedByEntity} to the {@link TagModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link TagModel#usedBy} privilege on the tag.
`VSphereAutomation::CIS::TaggingTagApi` | [**create**](docs/TaggingTagApi.md#create) | **POST** /com/vmware/cis/tagging/tag | Creates a tag. To invoke this {@term operation}, you need the create tag privilege on the input category.
`VSphereAutomation::CIS::TaggingTagApi` | [**delete**](docs/TaggingTagApi.md#delete) | **DELETE** /com/vmware/cis/tagging/tag/id:{tag_id} | Deletes an existing tag. To invoke this {@term operation}, you need the delete privilege on the tag.
`VSphereAutomation::CIS::TaggingTagApi` | [**get**](docs/TaggingTagApi.md#get) | **GET** /com/vmware/cis/tagging/tag/id:{tag_id} | Fetches the tag information for the given tag identifier. To invoke this {@term operation}, you need the read privilege on the tag in order to view the tag info.
`VSphereAutomation::CIS::TaggingTagApi` | [**list**](docs/TaggingTagApi.md#list) | **GET** /com/vmware/cis/tagging/tag | Enumerates the tags in the system. To invoke this {@term operation}, you need read privilege on the individual tags. The {@term list} will only contain tags for which you have read privileges.
`VSphereAutomation::CIS::TaggingTagApi` | [**list_tags_for_category**](docs/TaggingTagApi.md#list_tags_for_category) | **POST** /com/vmware/cis/tagging/tag/id:{category_id}?~action&#x3D;list-tags-for-category | Enumerates all tags for the given category. To invoke this {@term operation}, you need the read privilege on the given category and the individual tags in that category.
`VSphereAutomation::CIS::TaggingTagApi` | [**list_used_tags**](docs/TaggingTagApi.md#list_used_tags) | **POST** /com/vmware/cis/tagging/tag?~action&#x3D;list-used-tags | Enumerates all tags for which the {@param.name usedByEntity} is part of the {@link TagModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual tags.
`VSphereAutomation::CIS::TaggingTagApi` | [**remove_from_used_by**](docs/TaggingTagApi.md#remove_from_used_by) | **POST** /com/vmware/cis/tagging/tag/id:{tag_id}?~action&#x3D;remove-from-used-by | Removes the {@param.name usedByEntity} from the {@link TagModel#usedBy} subscribers set. If the {@param.name usedByEntity} is not using this tag, then this becomes a no-op. To invoke this {@term operation}, you need modify {@link TagModel#usedBy} privilege on the tag.
`VSphereAutomation::CIS::TaggingTagApi` | [**revoke_propagating_permissions**](docs/TaggingTagApi.md#revoke_propagating_permissions) | **POST** /com/vmware/cis/tagging/tag/id:{tag_id}?~action&#x3D;revoke-propagating-permissions | Revokes all propagating permissions on the given tag. You should then attach a direct permission with tagging privileges on the given tag. To invoke this {@term operation}, you need tag related privileges (direct or propagating) on the concerned tag.
`VSphereAutomation::CIS::TaggingTagApi` | [**update**](docs/TaggingTagApi.md#update) | **PATCH** /com/vmware/cis/tagging/tag/id:{tag_id} | Updates an existing tag. To invoke this {@term operation}, you need the edit privilege on the tag.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**attach**](docs/TaggingTagAssociationApi.md#attach) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;attach | Attaches the given tag to the input object. The tag needs to meet the cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**attach_multiple_tags_to_object**](docs/TaggingTagAssociationApi.md#attach_multiple_tags_to_object) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;attach-multiple-tags-to-object | Attaches the given tags to the input object. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege on each tag.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**attach_tag_to_multiple_objects**](docs/TaggingTagAssociationApi.md#attach_tag_to_multiple_objects) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;attach-tag-to-multiple-objects | Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**detach**](docs/TaggingTagAssociationApi.md#detach) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;detach | Detaches the tag from the given object. If the tag is already removed from the object, then this {@term operation} is a no-op and an error will not be thrown. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on the object.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**detach_multiple_tags_from_object**](docs/TaggingTagAssociationApi.md#detach_multiple_tags_from_object) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;detach-multiple-tags-from-object | Detaches the given tags from the input object. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the read privilege on the object and the attach tag privilege each tag.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**detach_tag_from_multiple_objects**](docs/TaggingTagAssociationApi.md#detach_tag_from_multiple_objects) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;detach-tag-from-multiple-objects | Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual {@term operation} is a no-op and an error will not be added to {@link BatchResult#errorMessages}. To invoke this {@term operation}, you need the attach tag privilege on the tag and the read privilege on each object.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**list_attachable_tags**](docs/TaggingTagAssociationApi.md#list_attachable_tags) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;list-attachable-tags | Fetches the {@term list} of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality ({@link CategoryModel#cardinality}) and associability ({@link CategoryModel#associableTypes}) constructs. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have read privileges.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**list_attached_objects**](docs/TaggingTagAssociationApi.md#list_attached_objects) | **POST** /com/vmware/cis/tagging/tag-association/id:{tag_id}?~action&#x3D;list-attached-objects | Fetches the {@term list} of attached objects for the given tag. To invoke this {@term operation}, you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**list_attached_objects_on_tags**](docs/TaggingTagAssociationApi.md#list_attached_objects_on_tags) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;list-attached-objects-on-tags | Fetches the {@term list} of {@link TagToObjects} describing the input tag identifiers and the objects they are attached to. To invoke this {@term operation}, you need the read privilege on each input tag. The {@link TagToObjects#objectIds} will only contain those objects for which you have the read privilege.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**list_attached_tags**](docs/TaggingTagAssociationApi.md#list_attached_tags) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;list-attached-tags | Fetches the {@term list} of tags attached to the given object. To invoke this {@term operation}, you need the read privilege on the input object. The {@term list} will only contain those tags for which you have the read privileges.
`VSphereAutomation::CIS::TaggingTagAssociationApi` | [**list_attached_tags_on_objects**](docs/TaggingTagAssociationApi.md#list_attached_tags_on_objects) | **POST** /com/vmware/cis/tagging/tag-association?~action&#x3D;list-attached-tags-on-objects | Fetches the {@term list} of {@link ObjectToTags} describing the input object identifiers and the tags attached to each object. To invoke this {@term operation}, you need the read privilege on each input object. The {@link ObjectToTags#tagIds} will only contain those tags for which you have the read privilege.
`VSphereAutomation::CIS::TasksApi` | [**cancel**](docs/TasksApi.md#cancel) | **POST** /cis/tasks/{task}?action&#x3D;cancel | Cancel a running operation associated with the task. This is the best effort attempt. Operation may not be cancelled anymore once it reaches certain stage.
`VSphereAutomation::CIS::TasksApi` | [**get**](docs/TasksApi.md#get) | **GET** /cis/tasks/{task} | Returns information about a task.
`VSphereAutomation::CIS::TasksApi` | [**list**](docs/TasksApi.md#list) | **GET** /cis/tasks | Returns information about at most 1000 visible (subject to permission checks) tasks matching the Tasks.FilterSpec. All tasks must be in the same provider.


## Documentation for Models

 - [VSphereAutomation::CIS::CisSessionCreateResult](docs/CisSessionCreateResult.md)
 - [VSphereAutomation::CIS::CisSessionInfo](docs/CisSessionInfo.md)
 - [VSphereAutomation::CIS::CisSessionResult](docs/CisSessionResult.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryAddToUsedBy](docs/CisTaggingCategoryAddToUsedBy.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryCreate](docs/CisTaggingCategoryCreate.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryCreateResult](docs/CisTaggingCategoryCreateResult.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryCreateSpec](docs/CisTaggingCategoryCreateSpec.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryListResult](docs/CisTaggingCategoryListResult.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryListUsedCategories](docs/CisTaggingCategoryListUsedCategories.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryListUsedCategoriesResult](docs/CisTaggingCategoryListUsedCategoriesResult.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryModel](docs/CisTaggingCategoryModel.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryModelCardinality](docs/CisTaggingCategoryModelCardinality.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryRemoveFromUsedBy](docs/CisTaggingCategoryRemoveFromUsedBy.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryResult](docs/CisTaggingCategoryResult.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryUpdate](docs/CisTaggingCategoryUpdate.md)
 - [VSphereAutomation::CIS::CisTaggingCategoryUpdateSpec](docs/CisTaggingCategoryUpdateSpec.md)
 - [VSphereAutomation::CIS::CisTaggingTagAddToUsedBy](docs/CisTaggingTagAddToUsedBy.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationAttach](docs/CisTaggingTagAssociationAttach.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationAttachMultipleTagsToObject](docs/CisTaggingTagAssociationAttachMultipleTagsToObject.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationAttachMultipleTagsToObjectResult](docs/CisTaggingTagAssociationAttachMultipleTagsToObjectResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationAttachTagToMultipleObjects](docs/CisTaggingTagAssociationAttachTagToMultipleObjects.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationAttachTagToMultipleObjectsResult](docs/CisTaggingTagAssociationAttachTagToMultipleObjectsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationBatchResult](docs/CisTaggingTagAssociationBatchResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationDetach](docs/CisTaggingTagAssociationDetach.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationDetachMultipleTagsFromObject](docs/CisTaggingTagAssociationDetachMultipleTagsFromObject.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationDetachMultipleTagsFromObjectResult](docs/CisTaggingTagAssociationDetachMultipleTagsFromObjectResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationDetachTagFromMultipleObjects](docs/CisTaggingTagAssociationDetachTagFromMultipleObjects.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationDetachTagFromMultipleObjectsResult](docs/CisTaggingTagAssociationDetachTagFromMultipleObjectsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachableTags](docs/CisTaggingTagAssociationListAttachableTags.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachableTagsResult](docs/CisTaggingTagAssociationListAttachableTagsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachedObjectsOnTags](docs/CisTaggingTagAssociationListAttachedObjectsOnTags.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachedObjectsOnTagsResult](docs/CisTaggingTagAssociationListAttachedObjectsOnTagsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachedObjectsResult](docs/CisTaggingTagAssociationListAttachedObjectsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachedTags](docs/CisTaggingTagAssociationListAttachedTags.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachedTagsOnObjects](docs/CisTaggingTagAssociationListAttachedTagsOnObjects.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachedTagsOnObjectsResult](docs/CisTaggingTagAssociationListAttachedTagsOnObjectsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationListAttachedTagsResult](docs/CisTaggingTagAssociationListAttachedTagsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationObjectToTags](docs/CisTaggingTagAssociationObjectToTags.md)
 - [VSphereAutomation::CIS::CisTaggingTagAssociationTagToObjects](docs/CisTaggingTagAssociationTagToObjects.md)
 - [VSphereAutomation::CIS::CisTaggingTagCreate](docs/CisTaggingTagCreate.md)
 - [VSphereAutomation::CIS::CisTaggingTagCreateResult](docs/CisTaggingTagCreateResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagCreateSpec](docs/CisTaggingTagCreateSpec.md)
 - [VSphereAutomation::CIS::CisTaggingTagListResult](docs/CisTaggingTagListResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagListTagsForCategoryResult](docs/CisTaggingTagListTagsForCategoryResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagListUsedTags](docs/CisTaggingTagListUsedTags.md)
 - [VSphereAutomation::CIS::CisTaggingTagListUsedTagsResult](docs/CisTaggingTagListUsedTagsResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagModel](docs/CisTaggingTagModel.md)
 - [VSphereAutomation::CIS::CisTaggingTagRemoveFromUsedBy](docs/CisTaggingTagRemoveFromUsedBy.md)
 - [VSphereAutomation::CIS::CisTaggingTagResult](docs/CisTaggingTagResult.md)
 - [VSphereAutomation::CIS::CisTaggingTagUpdate](docs/CisTaggingTagUpdate.md)
 - [VSphereAutomation::CIS::CisTaggingTagUpdateSpec](docs/CisTaggingTagUpdateSpec.md)
 - [VSphereAutomation::CIS::CisTaskInfo](docs/CisTaskInfo.md)
 - [VSphereAutomation::CIS::CisTaskProgress](docs/CisTaskProgress.md)
 - [VSphereAutomation::CIS::CisTaskStatus](docs/CisTaskStatus.md)
 - [VSphereAutomation::CIS::CisTasksFilterSpec](docs/CisTasksFilterSpec.md)
 - [VSphereAutomation::CIS::CisTasksGetSpec](docs/CisTasksGetSpec.md)
 - [VSphereAutomation::CIS::CisTasksListResult](docs/CisTasksListResult.md)
 - [VSphereAutomation::CIS::CisTasksListResultValue](docs/CisTasksListResultValue.md)
 - [VSphereAutomation::CIS::CisTasksResult](docs/CisTasksResult.md)
 - [VSphereAutomation::CIS::FilterSpecTargets](docs/FilterSpecTargets.md)
 - [VSphereAutomation::CIS::VapiStdDynamicID](docs/VapiStdDynamicID.md)
 - [VSphereAutomation::CIS::VapiStdErrorsAlreadyExists](docs/VapiStdErrorsAlreadyExists.md)
 - [VSphereAutomation::CIS::VapiStdErrorsAlreadyExistsError](docs/VapiStdErrorsAlreadyExistsError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsError](docs/VapiStdErrorsError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsErrorError](docs/VapiStdErrorsErrorError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::CIS::VapiStdErrorsInvalidArgumentError](docs/VapiStdErrorsInvalidArgumentError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsNotAllowedInCurrentState](docs/VapiStdErrorsNotAllowedInCurrentState.md)
 - [VSphereAutomation::CIS::VapiStdErrorsNotAllowedInCurrentStateError](docs/VapiStdErrorsNotAllowedInCurrentStateError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::CIS::VapiStdErrorsNotFoundError](docs/VapiStdErrorsNotFoundError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsResourceInaccessible](docs/VapiStdErrorsResourceInaccessible.md)
 - [VSphereAutomation::CIS::VapiStdErrorsResourceInaccessibleError](docs/VapiStdErrorsResourceInaccessibleError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsServiceUnavailable](docs/VapiStdErrorsServiceUnavailable.md)
 - [VSphereAutomation::CIS::VapiStdErrorsServiceUnavailableError](docs/VapiStdErrorsServiceUnavailableError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsUnauthenticated](docs/VapiStdErrorsUnauthenticated.md)
 - [VSphereAutomation::CIS::VapiStdErrorsUnauthenticatedError](docs/VapiStdErrorsUnauthenticatedError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::CIS::VapiStdErrorsUnauthorizedError](docs/VapiStdErrorsUnauthorizedError.md)
 - [VSphereAutomation::CIS::VapiStdErrorsUnsupported](docs/VapiStdErrorsUnsupported.md)
 - [VSphereAutomation::CIS::VapiStdErrorsUnsupportedError](docs/VapiStdErrorsUnsupportedError.md)
 - [VSphereAutomation::CIS::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)

