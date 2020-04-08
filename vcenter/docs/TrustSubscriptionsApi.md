# VSphereAutomation::VCenter::TrustSubscriptionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TrustSubscriptionsApi.md#add) | **POST** /rest/vcenter/trust/subscriptions?action&#x3D;add | Add a new subscription record into database. There are two possible situations for add. A. In the first case, the client is only interested in one VCTrust object and the VCTrust object has to exist in database. To make such a subscription, the client need to tell database which VCTrust object he is interested in. The GUID (VCTrust Id) field stands for that specific VCTrust and need to be specified. In this way, the client will only receive notification from that specified object changes. There is no limit on how many subscription an endpoint can add. B. In the second case, the client makes a subscription without a specified VCTrust object, which means the client is interested in every VCTrust object. Whenever the database changes (e.g add a new VCTrust, delete VCTrust, update...), the client gets notified. All the records in the database will not be deleted automatically. The only way to delete a record is to invoke delete API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](TrustSubscriptionsApi.md#delete) | **DELETE** /rest/vcenter/trust/subscriptions/{subscription}?action&#x3D;delete | If the client is no longer interested in the subscription, it can delete it by invoking this API and specify the subscription id. The subscription id is returned to the endpoint when it was created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**info**](TrustSubscriptionsApi.md#info) | **GET** /rest/vcenter/trust/subscriptions/{subscription}?action&#x3D;info | This API is used by client to request for detailed information of a specific susbcription. It is queried using subscription id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](TrustSubscriptionsApi.md#list) | **GET** /rest/vcenter/trust/subscriptions?action&#x3D;list | List all the subscriptions that a client have. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](TrustSubscriptionsApi.md#update) | **PATCH** /rest/vcenter/trust/subscriptions/{subscription_id}?action&#x3D;update | This API is used by client to renew a subscription by extend the expiration time of its existing subscriptions. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **add**
> VcenterTrustSubscriptionsAddResp add(request_body)

Add a new subscription record into database. There are two possible situations for add. A. In the first case, the client is only interested in one VCTrust object and the VCTrust object has to exist in database. To make such a subscription, the client need to tell database which VCTrust object he is interested in. The GUID (VCTrust Id) field stands for that specific VCTrust and need to be specified. In this way, the client will only receive notification from that specified object changes. There is no limit on how many subscription an endpoint can add. B. In the second case, the client makes a subscription without a specified VCTrust object, which means the client is interested in every VCTrust object. Whenever the database changes (e.g add a new VCTrust, delete VCTrust, update...), the client gets notified. All the records in the database will not be deleted automatically. The only way to delete a record is to invoke delete API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustSubscriptionsApi.new
request_body = VCenter::VcenterTrustSubscriptionsAdd.new # VcenterTrustSubscriptionsAdd | 

begin
  #Add a new subscription record into database. There are two possible situations for add. A. In the first case, the client is only interested in one VCTrust object and the VCTrust object has to exist in database. To make such a subscription, the client need to tell database which VCTrust object he is interested in. The GUID (VCTrust Id) field stands for that specific VCTrust and need to be specified. In this way, the client will only receive notification from that specified object changes. There is no limit on how many subscription an endpoint can add. B. In the second case, the client makes a subscription without a specified VCTrust object, which means the client is interested in every VCTrust object. Whenever the database changes (e.g add a new VCTrust, delete VCTrust, update...), the client gets notified. All the records in the database will not be deleted automatically. The only way to delete a record is to invoke delete API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.add(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustSubscriptionsApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterTrustSubscriptionsAdd**](VcenterTrustSubscriptionsAdd.md)|  | 

### Return type

[**VcenterTrustSubscriptionsAddResp**](VcenterTrustSubscriptionsAddResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(subscription)

If the client is no longer interested in the subscription, it can delete it by invoking this API and specify the subscription id. The subscription id is returned to the endpoint when it was created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustSubscriptionsApi.new
subscription = 'subscription_example' # String | The subscription id indicates which subscription to delete.

begin
  #If the client is no longer interested in the subscription, it can delete it by invoking this API and specify the subscription id. The subscription id is returned to the endpoint when it was created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(subscription)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustSubscriptionsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription** | **String**| The subscription id indicates which subscription to delete. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **info**
> VcenterTrustSubscriptionsInfoResp info(subscription)

This API is used by client to request for detailed information of a specific susbcription. It is queried using subscription id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustSubscriptionsApi.new
subscription = 'subscription_example' # String | 

begin
  #This API is used by client to request for detailed information of a specific susbcription. It is queried using subscription id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.info(subscription)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustSubscriptionsApi->info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription** | **String**|  | 

### Return type

[**VcenterTrustSubscriptionsInfoResp**](VcenterTrustSubscriptionsInfoResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterTrustSubscriptionsListResp list

List all the subscriptions that a client have. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustSubscriptionsApi.new

begin
  #List all the subscriptions that a client have. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustSubscriptionsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterTrustSubscriptionsListResp**](VcenterTrustSubscriptionsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> VcenterTrustSubscriptionsUpdateResp update(subscription_id)

This API is used by client to renew a subscription by extend the expiration time of its existing subscriptions. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustSubscriptionsApi.new
subscription_id = 'subscription_id_example' # String | To indicate which subscription to renew

begin
  #This API is used by client to renew a subscription by extend the expiration time of its existing subscriptions. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.update(subscription_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustSubscriptionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| To indicate which subscription to renew | 

### Return type

[**VcenterTrustSubscriptionsUpdateResp**](VcenterTrustSubscriptionsUpdateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



