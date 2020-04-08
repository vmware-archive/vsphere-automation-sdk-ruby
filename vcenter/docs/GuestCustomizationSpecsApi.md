# VSphereAutomation::VCenter::GuestCustomizationSpecsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](GuestCustomizationSpecsApi.md#create) | **POST** /rest/vcenter/guest/customization-specs | Creates a customization specification.
[**delete**](GuestCustomizationSpecsApi.md#delete) | **DELETE** /rest/vcenter/guest/customization-specs/{name} | Deletes a customization specification with the specified identifier.
[**export**](GuestCustomizationSpecsApi.md#export) | **POST** /rest/vcenter/guest/customization-specs/{name}?action&#x3D;export | Returns the content of the customization specification in the specified format. Note that any passwords in the customization specification will be set to blank values during the export operation.
[**get**](GuestCustomizationSpecsApi.md#get) | **GET** /rest/vcenter/guest/customization-specs/{name} | Returns the guest customization specification from vCenter with the specified identifier.
[**import_specification**](GuestCustomizationSpecsApi.md#import_specification) | **POST** /rest/vcenter/guest/customization-specs?action&#x3D;import | Converts a well formatted string to a CustomizationSpecs.CreateSpec. The resulting object can be passed to CustomizationSpecs.create operation.
[**list**](GuestCustomizationSpecsApi.md#list) | **GET** /rest/vcenter/guest/customization-specs | Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
[**set**](GuestCustomizationSpecsApi.md#set) | **POST** /rest/vcenter/guest/customization-specs/{name} | Sets an existing specification, possibly after retrieving (by using CustomizationSpecs.get) and editing it.


# **create**
> VcenterGuestCustomizationSpecsCreateResp create(request_body)

Creates a customization specification.

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

api_instance = VSphereAutomation::VCenter::GuestCustomizationSpecsApi.new
request_body = VCenter::VcenterGuestCustomizationSpecsCreate.new # VcenterGuestCustomizationSpecsCreate | 

begin
  #Creates a customization specification.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling GuestCustomizationSpecsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterGuestCustomizationSpecsCreate**](VcenterGuestCustomizationSpecsCreate.md)|  | 

### Return type

[**VcenterGuestCustomizationSpecsCreateResp**](VcenterGuestCustomizationSpecsCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(name)

Deletes a customization specification with the specified identifier.

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

api_instance = VSphereAutomation::VCenter::GuestCustomizationSpecsApi.new
name = 'name_example' # String | The name of the customization specification that needs to be deleted. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.

begin
  #Deletes a customization specification with the specified identifier.
  api_instance.delete(name)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling GuestCustomizationSpecsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the customization specification that needs to be deleted. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **export**
> VcenterGuestCustomizationSpecsExportResp export(name, request_body)

Returns the content of the customization specification in the specified format. Note that any passwords in the customization specification will be set to blank values during the export operation.

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

api_instance = VSphereAutomation::VCenter::GuestCustomizationSpecsApi.new
name = 'name_example' # String | The name of the customization specification that has to be returned. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
request_body = VCenter::VcenterGuestCustomizationSpecsExport.new # VcenterGuestCustomizationSpecsExport | 

begin
  #Returns the content of the customization specification in the specified format. Note that any passwords in the customization specification will be set to blank values during the export operation.
  result = api_instance.export(name, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling GuestCustomizationSpecsApi->export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the customization specification that has to be returned. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec. | 
 **request_body** | [**VcenterGuestCustomizationSpecsExport**](VcenterGuestCustomizationSpecsExport.md)|  | 

### Return type

[**VcenterGuestCustomizationSpecsExportResp**](VcenterGuestCustomizationSpecsExportResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterGuestCustomizationSpecsResp get(name)

Returns the guest customization specification from vCenter with the specified identifier.

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

api_instance = VSphereAutomation::VCenter::GuestCustomizationSpecsApi.new
name = 'name_example' # String | The name of the customization specification. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.

begin
  #Returns the guest customization specification from vCenter with the specified identifier.
  result = api_instance.get(name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling GuestCustomizationSpecsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the customization specification. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec. | 

### Return type

[**VcenterGuestCustomizationSpecsResp**](VcenterGuestCustomizationSpecsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_specification**
> VcenterGuestCustomizationSpecsImportSpecificationResp import_specification(request_body)

Converts a well formatted string to a CustomizationSpecs.CreateSpec. The resulting object can be passed to CustomizationSpecs.create operation.

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

api_instance = VSphereAutomation::VCenter::GuestCustomizationSpecsApi.new
request_body = VCenter::VcenterGuestCustomizationSpecsImportSpecification.new # VcenterGuestCustomizationSpecsImportSpecification | 

begin
  #Converts a well formatted string to a CustomizationSpecs.CreateSpec. The resulting object can be passed to CustomizationSpecs.create operation.
  result = api_instance.import_specification(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling GuestCustomizationSpecsApi->import_specification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterGuestCustomizationSpecsImportSpecification**](VcenterGuestCustomizationSpecsImportSpecification.md)|  | 

### Return type

[**VcenterGuestCustomizationSpecsImportSpecificationResp**](VcenterGuestCustomizationSpecsImportSpecificationResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VcenterGuestCustomizationSpecsListResp list(opts)

Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.

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

api_instance = VSphereAutomation::VCenter::GuestCustomizationSpecsApi.new
opts = {
  filter_names: ['filter_names_example'], # Array<String> | Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec.
  filter_os_type: 'filter_os_type_example' # String | The CustomizationSpecs.OsType enumerated type defines the types of guest operating systems for which guest customization is supported.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling GuestCustomizationSpecsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec. | [optional] 
 **filter_os_type** | **String**| The CustomizationSpecs.OsType enumerated type defines the types of guest operating systems for which guest customization is supported. | [optional] 

### Return type

[**VcenterGuestCustomizationSpecsListResp**](VcenterGuestCustomizationSpecsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(name, request_body)

Sets an existing specification, possibly after retrieving (by using CustomizationSpecs.get) and editing it.

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

api_instance = VSphereAutomation::VCenter::GuestCustomizationSpecsApi.new
name = 'name_example' # String | The name of the customization specification that needs to be set. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
request_body = VCenter::VcenterGuestCustomizationSpecsSet.new # VcenterGuestCustomizationSpecsSet | 

begin
  #Sets an existing specification, possibly after retrieving (by using CustomizationSpecs.get) and editing it.
  api_instance.set(name, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling GuestCustomizationSpecsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the customization specification that needs to be set. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec. | 
 **request_body** | [**VcenterGuestCustomizationSpecsSet**](VcenterGuestCustomizationSpecsSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



