# VSphereAutomation::VCenter::HvcLinksSyncApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**remediate**](HvcLinksSyncApi.md#remediate) | **POST** /rest/hvc/links/{link}/sync?action&#x3D;remediate | Remediates the sync state between the linked domains by initiating a fresh sync for certificate providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**reset**](HvcLinksSyncApi.md#reset) | **POST** /rest/hvc/links/{link}/sync?action&#x3D;reset | Resets the sync state between the linked domains by initiating a fresh sync for all providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **remediate**
> VcenterHvcLinksSyncRemediateResp remediate(link, opts)

Remediates the sync state between the linked domains by initiating a fresh sync for certificate providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HvcLinksSyncApi.new
link = 'link_example' # String | Unique identifier of the link.
opts = {
  request_body: VCenter::VcenterHvcLinksSyncRemediate.new # VcenterHvcLinksSyncRemediate | 
}

begin
  #Remediates the sync state between the linked domains by initiating a fresh sync for certificate providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remediate(link, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksSyncApi->remediate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Unique identifier of the link. | 
 **request_body** | [**VcenterHvcLinksSyncRemediate**](VcenterHvcLinksSyncRemediate.md)|  | [optional] 

### Return type

[**VcenterHvcLinksSyncRemediateResp**](VcenterHvcLinksSyncRemediateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset**
> reset(link)

Resets the sync state between the linked domains by initiating a fresh sync for all providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VCenter::HvcLinksSyncApi.new
link = 'link_example' # String | Unique identifier of the link.

begin
  #Resets the sync state between the linked domains by initiating a fresh sync for all providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  api_instance.reset(link)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksSyncApi->reset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Unique identifier of the link. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



