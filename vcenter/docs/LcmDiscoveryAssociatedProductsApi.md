# VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](LcmDiscoveryAssociatedProductsApi.md#create) | **POST** /api/vcenter/lcm/discovery/associated-products | Associates a VMware product with vCenter Server manually. The product must be taken from the product catalog API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
[**delete**](LcmDiscoveryAssociatedProductsApi.md#delete) | **DELETE** /api/vcenter/lcm/discovery/associated-products/{product} | Deletes or dissociates a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be deleted or dissociated. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
[**get**](LcmDiscoveryAssociatedProductsApi.md#get) | **GET** /api/vcenter/lcm/discovery/associated-products/{product} | Returns the detailed information of a product associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
[**list**](LcmDiscoveryAssociatedProductsApi.md#list) | **GET** /api/vcenter/lcm/discovery/associated-products | Retrieves a list of all associated VMware product deployments with vCenter Server in the environment. The list contains both product deployments discovered automatically and deployments registered manually through the API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
[**update**](LcmDiscoveryAssociatedProductsApi.md#update) | **PATCH** /api/vcenter/lcm/discovery/associated-products/{product} | Modifies a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be modified. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  


# **create**
> String create(opts)

Associates a VMware product with vCenter Server manually. The product must be taken from the product catalog API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi.new
opts = {
  request_body: VCenter::VcenterLcmDiscoveryAssociatedProductsCreateSpec.new # VcenterLcmDiscoveryAssociatedProductsCreateSpec | 
}

begin
  #Associates a VMware product with vCenter Server manually. The product must be taken from the product catalog API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmDiscoveryAssociatedProductsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterLcmDiscoveryAssociatedProductsCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(product)

Deletes or dissociates a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be deleted or dissociated. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi.new
product = 'product_example' # String | An id of the product to be removed. The parameter must be an identifier for the resource type: vcenter.lcm.product.

begin
  #Deletes or dissociates a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be deleted or dissociated. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  api_instance.delete(product)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmDiscoveryAssociatedProductsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| An id of the product to be removed. The parameter must be an identifier for the resource type: vcenter.lcm.product. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterLcmDiscoveryProduct get(product)

Returns the detailed information of a product associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi.new
product = 'product_example' # String | An identifier of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product.

begin
  #Returns the detailed information of a product associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.get(product)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmDiscoveryAssociatedProductsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| An identifier of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product. | 

### Return type

[**VcenterLcmDiscoveryProduct**](VcenterLcmDiscoveryProduct.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterLcmDiscoveryProduct&gt; list

Retrieves a list of all associated VMware product deployments with vCenter Server in the environment. The list contains both product deployments discovered automatically and deployments registered manually through the API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi.new

begin
  #Retrieves a list of all associated VMware product deployments with vCenter Server in the environment. The list contains both product deployments discovered automatically and deployments registered manually through the API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmDiscoveryAssociatedProductsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterLcmDiscoveryProduct&gt;**](VcenterLcmDiscoveryProduct.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(product, opts)

Modifies a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be modified. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi.new
product = 'product_example' # String | An id of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product.
opts = {
  request_body: VCenter::VcenterLcmDiscoveryAssociatedProductsUpdateSpec.new # VcenterLcmDiscoveryAssociatedProductsUpdateSpec | 
}

begin
  #Modifies a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be modified. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  api_instance.update(product, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmDiscoveryAssociatedProductsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **String**| An id of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product. | 
 **request_body** | **VcenterLcmDiscoveryAssociatedProductsUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



