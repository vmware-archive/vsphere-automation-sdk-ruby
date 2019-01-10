# VSphereAutomation::VCenter::DatastoreApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](DatastoreApi.md#get) | **GET** /vcenter/datastore/{datastore} | Retrieves information about the datastore indicated by datastore.
[**list**](DatastoreApi.md#list) | **GET** /vcenter/datastore | Returns information about at most 1000 visible (subject to permission checks) datastores in vCenter matching the Datastore.FilterSpec.


# **get**
> VcenterDatastoreResult get(datastore)

Retrieves information about the datastore indicated by datastore.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DatastoreApi.new
datastore = 'datastore_example' # String | Identifier of the datastore for which information should be retrieved. The parameter must be an identifier for the resource type: Datastore.

begin
  #Retrieves information about the datastore indicated by datastore.
  result = api_instance.get(datastore)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DatastoreApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datastore** | **String**| Identifier of the datastore for which information should be retrieved. The parameter must be an identifier for the resource type: Datastore. | 

### Return type

[**VcenterDatastoreResult**](VcenterDatastoreResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterDatastoreListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) datastores in vCenter matching the Datastore.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DatastoreApi.new
opts = {
  filter_datastores: ['filter_datastores_example'], # Array<String> | Identifiers of datastores that can match the filter. If unset or empty, datastores with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datastore. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datastore.
  filter_names: ['filter_names_example'], # Array<String> | Names that datastores must have to match the filter (see Datastore.Info.name). If unset or empty, datastores with any name match the filter.
  filter_types: ['filter_types_example'], # Array<String> | Types that datastores must have to match the filter (see Datastore.Summary.type). If unset or empty, datastores with any type match the filter.
  filter_folders: ['filter_folders_example'], # Array<String> | Folders that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  filter_datacenters: ['filter_datacenters_example'] # Array<String> | Datacenters that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) datastores in vCenter matching the Datastore.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DatastoreApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_datastores** | [**Array&lt;String&gt;**](String.md)| Identifiers of datastores that can match the filter. If unset or empty, datastores with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datastore. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datastore. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that datastores must have to match the filter (see Datastore.Info.name). If unset or empty, datastores with any name match the filter. | [optional] 
 **filter_types** | [**Array&lt;String&gt;**](String.md)| Types that datastores must have to match the filter (see Datastore.Summary.type). If unset or empty, datastores with any type match the filter. | [optional] 
 **filter_folders** | [**Array&lt;String&gt;**](String.md)| Folders that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Datacenters that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 

### Return type

[**VcenterDatastoreListResult**](VcenterDatastoreListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



