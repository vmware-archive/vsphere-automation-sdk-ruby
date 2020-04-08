# VSphereAutomation::VCenter::TaggingAssociationsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TaggingAssociationsApi.md#list) | **GET** /api/vcenter/tagging/associations | Returns tag associations that match the specified iteration spec.


# **list**
> VcenterTaggingAssociationsListResult list(opts)

Returns tag associations that match the specified iteration spec.

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

api_instance = VSphereAutomation::VCenter::TaggingAssociationsApi.new
opts = {
  marker: 'marker_example' # String | Marker is an opaque token that allows the caller to request the next page of tag associations. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tagging.associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tagging.associations.Marker.
}

begin
  #Returns tag associations that match the specified iteration spec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingAssociationsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marker** | **String**| Marker is an opaque token that allows the caller to request the next page of tag associations. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tagging.associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tagging.associations.Marker. | [optional] 

### Return type

[**VcenterTaggingAssociationsListResult**](VcenterTaggingAssociationsListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



