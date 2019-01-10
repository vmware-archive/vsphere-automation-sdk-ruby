# VSphereAutomation::VCenter::DatacenterApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DatacenterApi.md#create) | **POST** /vcenter/datacenter | Create a new datacenter in the vCenter inventory
[**delete**](DatacenterApi.md#delete) | **DELETE** /vcenter/datacenter/{datacenter} | Delete an empty datacenter from the vCenter Server
[**get**](DatacenterApi.md#get) | **GET** /vcenter/datacenter/{datacenter} | Retrieves information about the datacenter corresponding to datacenter.
[**list**](DatacenterApi.md#list) | **GET** /vcenter/datacenter | Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the Datacenter.FilterSpec.


# **create**
> VcenterDatacenterCreateResult create(vcenter_datacenter_create)

Create a new datacenter in the vCenter inventory

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DatacenterApi.new
vcenter_datacenter_create = VSphereAutomation::VcenterDatacenterCreate.new # VcenterDatacenterCreate | 

begin
  #Create a new datacenter in the vCenter inventory
  result = api_instance.create(vcenter_datacenter_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DatacenterApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_datacenter_create** | [**VcenterDatacenterCreate**](VcenterDatacenterCreate.md)|  | 

### Return type

[**VcenterDatacenterCreateResult**](VcenterDatacenterCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(datacenter, opts)

Delete an empty datacenter from the vCenter Server

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DatacenterApi.new
datacenter = 'datacenter_example' # String | Identifier of the datacenter to be deleted. The parameter must be an identifier for the resource type: Datacenter.
opts = {
  force: true # BOOLEAN | If true, delete the datacenter even if it is not empty. If unset a ResourceInUse error will be reported if the datacenter is not empty. This is the equivalent of passing the value false.
}

begin
  #Delete an empty datacenter from the vCenter Server
  api_instance.delete(datacenter, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DatacenterApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datacenter** | **String**| Identifier of the datacenter to be deleted. The parameter must be an identifier for the resource type: Datacenter. | 
 **force** | **BOOLEAN**| If true, delete the datacenter even if it is not empty. If unset a ResourceInUse error will be reported if the datacenter is not empty. This is the equivalent of passing the value false. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VcenterDatacenterResult get(datacenter)

Retrieves information about the datacenter corresponding to datacenter.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DatacenterApi.new
datacenter = 'datacenter_example' # String | Identifier of the datacenter. The parameter must be an identifier for the resource type: Datacenter.

begin
  #Retrieves information about the datacenter corresponding to datacenter.
  result = api_instance.get(datacenter)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DatacenterApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datacenter** | **String**| Identifier of the datacenter. The parameter must be an identifier for the resource type: Datacenter. | 

### Return type

[**VcenterDatacenterResult**](VcenterDatacenterResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterDatacenterListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the Datacenter.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DatacenterApi.new
opts = {
  filter_datacenters: ['filter_datacenters_example'], # Array<String> | Identifiers of datacenters that can match the filter. If unset or empty, datacenters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
  filter_names: ['filter_names_example'], # Array<String> | Names that datacenters must have to match the filter (see Datacenter.Info.name). If unset or empty, datacenters with any name match the filter.
  filter_folders: ['filter_folders_example'] # Array<String> | Folders that must contain the datacenters for the datacenter to match the filter. If unset or empty, datacenters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the Datacenter.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DatacenterApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Identifiers of datacenters that can match the filter. If unset or empty, datacenters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that datacenters must have to match the filter (see Datacenter.Info.name). If unset or empty, datacenters with any name match the filter. | [optional] 
 **filter_folders** | [**Array&lt;String&gt;**](String.md)| Folders that must contain the datacenters for the datacenter to match the filter. If unset or empty, datacenters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 

### Return type

[**VcenterDatacenterListResult**](VcenterDatacenterListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



