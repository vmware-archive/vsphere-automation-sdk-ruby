# VSphereAutomation::VCenter::HvcLinksSyncProvidersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HvcLinksSyncProvidersApi.md#get) | **GET** /rest/hvc/links/{link}/sync/providers/{provider} | Gets Sync information for a sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**list**](HvcLinksSyncProvidersApi.md#list) | **GET** /rest/hvc/links/{link}/sync/providers | Enumerates the sync providers. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**start**](HvcLinksSyncProvidersApi.md#start) | **POST** /rest/hvc/links/{link}/sync/providers/{provider}?action&#x3D;start | Initiates synchronization between the local and remote replicas for the sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **get**
> VcenterHvcLinksSyncProvidersResp get(link, provider)

Gets Sync information for a sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VCenter::HvcLinksSyncProvidersApi.new
link = 'link_example' # String | Unique identifier of the link
provider = 'provider_example' # String | Unique identifier of the sync provider.

begin
  #Gets Sync information for a sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.get(link, provider)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksSyncProvidersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Unique identifier of the link | 
 **provider** | **String**| Unique identifier of the sync provider. | 

### Return type

[**VcenterHvcLinksSyncProvidersResp**](VcenterHvcLinksSyncProvidersResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterHvcLinksSyncProvidersListResp list(link)

Enumerates the sync providers. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VCenter::HvcLinksSyncProvidersApi.new
link = 'link_example' # String | Unique identifier of the link

begin
  #Enumerates the sync providers. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.list(link)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksSyncProvidersApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Unique identifier of the link | 

### Return type

[**VcenterHvcLinksSyncProvidersListResp**](VcenterHvcLinksSyncProvidersListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **start**
> start(link, provider, opts)

Initiates synchronization between the local and remote replicas for the sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VCenter::HvcLinksSyncProvidersApi.new
link = 'link_example' # String | Unique identifier of the link
provider = 'provider_example' # String | Unique identifier representing the sync provider
opts = {
  request_body: VCenter::VcenterHvcLinksSyncProvidersStart.new # VcenterHvcLinksSyncProvidersStart | 
}

begin
  #Initiates synchronization between the local and remote replicas for the sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  api_instance.start(link, provider, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksSyncProvidersApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Unique identifier of the link | 
 **provider** | **String**| Unique identifier representing the sync provider | 
 **request_body** | [**VcenterHvcLinksSyncProvidersStart**](VcenterHvcLinksSyncProvidersStart.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



