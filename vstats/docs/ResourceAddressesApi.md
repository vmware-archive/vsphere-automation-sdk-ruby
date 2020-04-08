# VSphereAutomation::VStats::ResourceAddressesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ResourceAddressesApi.md#get) | **GET** /api/stats/rsrc-addrs/{id} | Returns information about a specific Resource Address. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**list**](ResourceAddressesApi.md#list) | **GET** /api/stats/rsrc-addrs | Returns the list of Resource Addresses matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **get**
> VstatsResourceAddressesInfo get(id)

Returns information about a specific Resource Address. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

### Example
```ruby
# load the gem
require 'vsphere-automation-vstats'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VStats::ResourceAddressesApi.new
id = 'id_example' # String | Resource Address ID. The parameter must be an identifier for the resource type: vstats.model.RsrcAddr.

begin
  #Returns information about a specific Resource Address. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.get(id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ResourceAddressesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Resource Address ID. The parameter must be an identifier for the resource type: vstats.model.RsrcAddr. | 

### Return type

[**VstatsResourceAddressesInfo**](VstatsResourceAddressesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VstatsResourceAddressesListResult list(opts)

Returns the list of Resource Addresses matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

### Example
```ruby
# load the gem
require 'vsphere-automation-vstats'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VStats::ResourceAddressesApi.new
opts = {
  types: ['types_example'], # Array<String> | List of Resource types. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by resource types. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType.
  resources: ['resources_example'], # Array<String> | Resources to include in the query. Each resource is specified through a composite string that follows the following format.   type.<resource type>[.<scheme>]=<resource id>    resource type specifies the type of resource for example VM, VCPU etc.    scheme is an optional element to disambiguate the resource as needed for example to differentiate managed object id from uuid.    resource id is the unique resource identifier value for example: vm-41    Example values include: type.VM=vm-41, type.VCPU=1, type.VM.moid=vm-41 . Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When left unset the result will not be filtered for specific resources.
  page: 'page_example' # String | The ResourceAddresses.FilterSpec.page field is used to retrieve paged data for large result sets. It is an opaque paging token obtained from a prior call to the ResourceAddresses.list API. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. when set a follow up page in a paged result set will be delivered.
}

begin
  #Returns the list of Resource Addresses matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ResourceAddressesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **types** | [**Array&lt;String&gt;**](String.md)| List of Resource types. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by resource types. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType. | [optional] 
 **resources** | [**Array&lt;String&gt;**](String.md)| Resources to include in the query. Each resource is specified through a composite string that follows the following format.   type.&lt;resource type&gt;[.&lt;scheme&gt;]&#x3D;&lt;resource id&gt;    resource type specifies the type of resource for example VM, VCPU etc.    scheme is an optional element to disambiguate the resource as needed for example to differentiate managed object id from uuid.    resource id is the unique resource identifier value for example: vm-41    Example values include: type.VM&#x3D;vm-41, type.VCPU&#x3D;1, type.VM.moid&#x3D;vm-41 . Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When left unset the result will not be filtered for specific resources. | [optional] 
 **page** | **String**| The ResourceAddresses.FilterSpec.page field is used to retrieve paged data for large result sets. It is an opaque paging token obtained from a prior call to the ResourceAddresses.list API. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. when set a follow up page in a paged result set will be delivered. | [optional] 

### Return type

[**VstatsResourceAddressesListResult**](VstatsResourceAddressesListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



