# VSphereAutomation::Appliance::NetworkingProxyApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](NetworkingProxyApi.md#delete) | **DELETE** /appliance/networking/proxy/{protocol} | Deletes a proxy configuration for a specific protocol.
[**get**](NetworkingProxyApi.md#get) | **GET** /appliance/networking/proxy/{protocol} | Gets the proxy configuration for a specific protocol.
[**list**](NetworkingProxyApi.md#list) | **GET** /appliance/networking/proxy | Gets proxy configuration for all configured protocols.
[**set**](NetworkingProxyApi.md#set) | **PUT** /appliance/networking/proxy/{protocol} | Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
[**test**](NetworkingProxyApi.md#test) | **POST** /appliance/networking/proxy/{protocol}?action&#x3D;test | Tests a proxy configuration by testing the connection to the proxy server and test host.


# **delete**
> delete(protocol)

Deletes a proxy configuration for a specific protocol.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> ApplianceNetworkingProxyResult get(protocol)

Gets the proxy configuration for a specific protocol.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

[**ApplianceNetworkingProxyResult**](ApplianceNetworkingProxyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceNetworkingProxyListResult list

Gets proxy configuration for all configured protocols.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

[**ApplianceNetworkingProxyListResult**](ApplianceNetworkingProxyListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(protocol, appliance_networking_proxy_set)

Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingProxyApi.new
protocol = 'protocol_example' # String | The protocol for which proxy should be set.
appliance_networking_proxy_set = VSphereAutomation::ApplianceNetworkingProxySet.new # ApplianceNetworkingProxySet | 

begin
  #Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
  api_instance.set(protocol, appliance_networking_proxy_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingProxyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**| The protocol for which proxy should be set. | 
 **appliance_networking_proxy_set** | [**ApplianceNetworkingProxySet**](ApplianceNetworkingProxySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **test**
> ApplianceNetworkingProxyTestResult test(protocol, appliance_networking_proxy_test)

Tests a proxy configuration by testing the connection to the proxy server and test host.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingProxyApi.new
protocol = 'protocol_example' # String | Protocol whose proxy is to be tested.
appliance_networking_proxy_test = VSphereAutomation::ApplianceNetworkingProxyTest.new # ApplianceNetworkingProxyTest | 

begin
  #Tests a proxy configuration by testing the connection to the proxy server and test host.
  result = api_instance.test(protocol, appliance_networking_proxy_test)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingProxyApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**| Protocol whose proxy is to be tested. | 
 **appliance_networking_proxy_test** | [**ApplianceNetworkingProxyTest**](ApplianceNetworkingProxyTest.md)|  | 

### Return type

[**ApplianceNetworkingProxyTestResult**](ApplianceNetworkingProxyTestResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



