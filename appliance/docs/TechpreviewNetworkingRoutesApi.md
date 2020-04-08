# VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TechpreviewNetworkingRoutesApi.md#add) | **POST** /rest/appliance/techpreview/networking/routes | Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
[**delete**](TechpreviewNetworkingRoutesApi.md#delete) | **POST** /rest/appliance/techpreview/networking/routes/delete | Delete static routing rules.
[**list**](TechpreviewNetworkingRoutesApi.md#list) | **GET** /rest/appliance/techpreview/networking/routes | Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
[**set**](TechpreviewNetworkingRoutesApi.md#set) | **PUT** /rest/appliance/techpreview/networking/routes | Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
[**test**](TechpreviewNetworkingRoutesApi.md#test) | **POST** /rest/appliance/techpreview/networking/routes/test | Test connection to a list of gateways


# **add**
> add(request_body)

Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi.new
request_body = Appliance::ApplianceTechpreviewNetworkingRoutesAdd.new # ApplianceTechpreviewNetworkingRoutesAdd | 

begin
  #Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
  api_instance.add(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingRoutesApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingRoutesAdd**](ApplianceTechpreviewNetworkingRoutesAdd.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(request_body)

Delete static routing rules.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi.new
request_body = Appliance::ApplianceTechpreviewNetworkingRoutesDelete.new # ApplianceTechpreviewNetworkingRoutesDelete | 

begin
  #Delete static routing rules.
  api_instance.delete(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingRoutesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingRoutesDelete**](ApplianceTechpreviewNetworkingRoutesDelete.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ApplianceTechpreviewNetworkingRoutesListResp list

Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi.new

begin
  #Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingRoutesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewNetworkingRoutesListResp**](ApplianceTechpreviewNetworkingRoutesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi.new
request_body = Appliance::ApplianceTechpreviewNetworkingRoutesSet.new # ApplianceTechpreviewNetworkingRoutesSet | 

begin
  #Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingRoutesApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingRoutesSet**](ApplianceTechpreviewNetworkingRoutesSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **test**
> ApplianceTechpreviewNetworkingRoutesTestResp test(request_body)

Test connection to a list of gateways

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi.new
request_body = Appliance::ApplianceTechpreviewNetworkingRoutesTest.new # ApplianceTechpreviewNetworkingRoutesTest | 

begin
  #Test connection to a list of gateways
  result = api_instance.test(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingRoutesApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingRoutesTest**](ApplianceTechpreviewNetworkingRoutesTest.md)|  | 

### Return type

[**ApplianceTechpreviewNetworkingRoutesTestResp**](ApplianceTechpreviewNetworkingRoutesTestResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



