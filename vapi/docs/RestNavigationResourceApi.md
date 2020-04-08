# VSphereAutomation::VAPI::RestNavigationResourceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationResourceApi.md#get) | **GET** /rest/com/vmware/vapi/rest/navigation/resource/id:{type_id}/id:{instance_id} | Gets List of all Operations about a vAPI REST Resource. Information is searched for by typeId and instanceId is used only in URLs.
[**list**](RestNavigationResourceApi.md#list) | **GET** /rest/com/vmware/vapi/rest/navigation/resource | Gets list of all vAPI REST Resources.


# **get**
> VapiRestNavigationResourceResp get(type_id, instance_id, opts)

Gets List of all Operations about a vAPI REST Resource. Information is searched for by typeId and instanceId is used only in URLs.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::RestNavigationResourceApi.new
type_id = 'type_id_example' # String | Resource type id. The parameter must be an identifier for the resource type: vapi.resource.
instance_id = 'instance_id_example' # String | Resource instance id. If you provide instanceId parameter then returned URLs will be prepopulated with it. If instanceId parameter is unset then URLs will become URI templates with id place holders as per RFC 6570. The parameter must be an identifier for the resource type: vapi.resource.
opts = {
  base_url: 'base_url_example' # String | Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
}

begin
  #Gets List of all Operations about a vAPI REST Resource. Information is searched for by typeId and instanceId is used only in URLs.
  result = api_instance.get(type_id, instance_id, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationResourceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **String**| Resource type id. The parameter must be an identifier for the resource type: vapi.resource. | 
 **instance_id** | **String**| Resource instance id. If you provide instanceId parameter then returned URLs will be prepopulated with it. If instanceId parameter is unset then URLs will become URI templates with id place holders as per RFC 6570. The parameter must be an identifier for the resource type: vapi.resource. | 
 **base_url** | **String**| Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs. | [optional] 

### Return type

[**VapiRestNavigationResourceResp**](VapiRestNavigationResourceResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiRestNavigationResourceListResp list(opts)

Gets list of all vAPI REST Resources.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::RestNavigationResourceApi.new
opts = {
  base_url: 'base_url_example' # String | Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
}

begin
  #Gets list of all vAPI REST Resources.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationResourceApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **base_url** | **String**| Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs. | [optional] 

### Return type

[**VapiRestNavigationResourceListResp**](VapiRestNavigationResourceListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



