# VSphereAutomation::VCenter::FolderApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](FolderApi.md#list) | **GET** /rest/vcenter/folder | Returns information about at most 1000 visible (subject to permission checks) folders in vCenter matching the Folder.FilterSpec.


# **list**
> VcenterFolderListResp list(opts)

Returns information about at most 1000 visible (subject to permission checks) folders in vCenter matching the Folder.FilterSpec.

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

api_instance = VSphereAutomation::VCenter::FolderApi.new
opts = {
  filter_folders: ['filter_folders_example'], # Array<String> | Identifiers of folders that can match the filter. If unset or empty, folders with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  filter_names: ['filter_names_example'], # Array<String> | Names that folders must have to match the filter (see Folder.Summary.name). If unset or empty, folders with any name match the filter.
  filter_type: 'filter_type_example', # String | The Folder.Type enumerated type defines the type of a vCenter Server folder. The type of a folder determines what what kinds of children can be contained in the folder.
  filter_parent_folders: ['filter_parent_folders_example'], # Array<String> | Folders that must contain the folder for the folder to match the filter. If unset or empty, folder in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  filter_datacenters: ['filter_datacenters_example'] # Array<String> | Datacenters that must contain the folder for the folder to match the filter. If unset or empty, folder in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) folders in vCenter matching the Folder.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling FolderApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_folders** | [**Array&lt;String&gt;**](String.md)| Identifiers of folders that can match the filter. If unset or empty, folders with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that folders must have to match the filter (see Folder.Summary.name). If unset or empty, folders with any name match the filter. | [optional] 
 **filter_type** | **String**| The Folder.Type enumerated type defines the type of a vCenter Server folder. The type of a folder determines what what kinds of children can be contained in the folder. | [optional] 
 **filter_parent_folders** | [**Array&lt;String&gt;**](String.md)| Folders that must contain the folder for the folder to match the filter. If unset or empty, folder in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Datacenters that must contain the folder for the folder to match the filter. If unset or empty, folder in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 

### Return type

[**VcenterFolderListResp**](VcenterFolderListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



