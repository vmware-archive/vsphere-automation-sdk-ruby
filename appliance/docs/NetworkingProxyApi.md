# VSphereAutomation::Appliance::NetworkingProxyApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](NetworkingProxyApi.md#delete) | **DELETE** /rest/appliance/networking/proxy/{protocol} | Deletes a proxy configuration for a specific protocol.
[**get**](NetworkingProxyApi.md#get) | **GET** /rest/appliance/networking/proxy/{protocol} | Gets the proxy configuration for a specific protocol.
[**list**](NetworkingProxyApi.md#list) | **GET** /rest/appliance/networking/proxy | Gets proxy configuration for all configured protocols.
[**set**](NetworkingProxyApi.md#set) | **PUT** /rest/appliance/networking/proxy/{protocol} | Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
[**test**](NetworkingProxyApi.md#test) | **POST** /rest/appliance/networking/proxy/{protocol}?action&#x3D;test | Tests a proxy configuration by testing the connection to the proxy server and test host.


# **delete**
> delete(protocol)

Deletes a proxy configuration for a specific protocol.

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

api_instance = VSphereAutomation::Appliance::NetworkingProxyApi.new
protocol = 'protocol_example' # String | ID whose proxy is to be deleted.

begin
  #Deletes a proxy configuration for a specific protocol.
  api_instance.delete(protocol)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingProxyApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**| ID whose proxy is to be deleted. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceNetworkingProxyResp get(protocol)

Gets the proxy configuration for a specific protocol.

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

api_instance = VSphereAutomation::Appliance::NetworkingProxyApi.new
protocol = 'protocol_example' # String | The protocol whose proxy configuration is requested.

begin
  #Gets the proxy configuration for a specific protocol.
  result = api_instance.get(protocol)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingProxyApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**| The protocol whose proxy configuration is requested. | 

### Return type

[**ApplianceNetworkingProxyResp**](ApplianceNetworkingProxyResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ApplianceNetworkingProxyListResp list

Gets proxy configuration for all configured protocols.

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

api_instance = VSphereAutomation::Appliance::NetworkingProxyApi.new

begin
  #Gets proxy configuration for all configured protocols.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingProxyApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingProxyListResp**](ApplianceNetworkingProxyListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(protocol, request_body)

Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.

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

api_instance = VSphereAutomation::Appliance::NetworkingProxyApi.new
protocol = 'protocol_example' # String | The protocol for which proxy should be set.
request_body = Appliance::ApplianceNetworkingProxySet.new # ApplianceNetworkingProxySet | 

begin
  #Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
  api_instance.set(protocol, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingProxyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**| The protocol for which proxy should be set. | 
 **request_body** | [**ApplianceNetworkingProxySet**](ApplianceNetworkingProxySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **test**
> ApplianceNetworkingProxyTestResp test(protocol, request_body)

Tests a proxy configuration by testing the connection to the proxy server and test host.

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

api_instance = VSphereAutomation::Appliance::NetworkingProxyApi.new
protocol = 'protocol_example' # String | Protocol whose proxy is to be tested.
request_body = Appliance::ApplianceNetworkingProxyTest.new # ApplianceNetworkingProxyTest | 

begin
  #Tests a proxy configuration by testing the connection to the proxy server and test host.
  result = api_instance.test(protocol, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingProxyApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**| Protocol whose proxy is to be tested. | 
 **request_body** | [**ApplianceNetworkingProxyTest**](ApplianceNetworkingProxyTest.md)|  | 

### Return type

[**ApplianceNetworkingProxyTestResp**](ApplianceNetworkingProxyTestResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



