# VSphereAutomation::VCenter::GuestCustomizationSpecsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](GuestCustomizationSpecsApi.md#list) | **GET** /vcenter/guest/customization-specs | Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.


# **list**
> VcenterGuestCustomizationSpecsListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterGuestCustomizationSpecsListResult**](VcenterGuestCustomizationSpecsListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



