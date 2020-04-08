# VSphereAutomation::VCenter::TagAssociationsHostApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TagAssociationsHostApi.md#list) | **GET** /rest/vcenter/tag-associations/host | Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> VcenterTagAssociationsHostListResp list(opts)

Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TagAssociationsHostApi.new
opts = {
  iterate_size: 56, # Integer | Size specifies the maximum number of results to return. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset defaults to 5000.
  iterate_marker: 'iterate_marker_example', # String | Marker is an opaque data structure that allows the Host service to find where the previously returned page of tag associations has ended and where the new page should begin. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker.
  filter_hosts: ['filter_hosts_example'], # Array<String> | Tag associations need to have one of the host identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any host identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
  filter_tags: ['filter_tags_example'] # Array<String> | Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any tag identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:HostSystem.
}

begin
  #Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TagAssociationsHostApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iterate_size** | **Integer**| Size specifies the maximum number of results to return. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset defaults to 5000. | [optional] 
 **iterate_marker** | **String**| Marker is an opaque data structure that allows the Host service to find where the previously returned page of tag associations has ended and where the new page should begin. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker. | [optional] 
 **filter_hosts** | [**Array&lt;String&gt;**](String.md)| Tag associations need to have one of the host identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any host identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | [optional] 
 **filter_tags** | [**Array&lt;String&gt;**](String.md)| Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any tag identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:HostSystem. | [optional] 

### Return type

[**VcenterTagAssociationsHostListResp**](VcenterTagAssociationsHostListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



