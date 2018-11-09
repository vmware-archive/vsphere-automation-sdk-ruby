# VSphereAutomation::Appliance::NetworkingNoProxyApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingNoProxyApi.md#get) | **GET** /appliance/networking/noproxy | Returns servers for which no proxy configuration will be applied.
[**set**](NetworkingNoProxyApi.md#set) | **PUT** /appliance/networking/noproxy | Sets servers for which no proxy configuration should be applied. This operation sets environment variables. In order for this operation to take effect, a logout from appliance or a service restart is required. If IPv4 is enabled, \&quot;127.0.0.1\&quot; and \&quot;localhost\&quot; will always bypass the proxy (even if they are not explicitly configured).


# **get**
> ApplianceNetworkingNoProxyResult get

Returns servers for which no proxy configuration will be applied.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingNoProxyApi.new

begin
  #Returns servers for which no proxy configuration will be applied.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingNoProxyApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingNoProxyResult**](ApplianceNetworkingNoProxyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_networking_no_proxy_set)

Sets servers for which no proxy configuration should be applied. This operation sets environment variables. In order for this operation to take effect, a logout from appliance or a service restart is required. If IPv4 is enabled, \"127.0.0.1\" and \"localhost\" will always bypass the proxy (even if they are not explicitly configured).

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingNoProxyApi.new
appliance_networking_no_proxy_set = VSphereAutomation::ApplianceNetworkingNoProxySet.new # ApplianceNetworkingNoProxySet | 

begin
  #Sets servers for which no proxy configuration should be applied. This operation sets environment variables. In order for this operation to take effect, a logout from appliance or a service restart is required. If IPv4 is enabled, \"127.0.0.1\" and \"localhost\" will always bypass the proxy (even if they are not explicitly configured).
  api_instance.set(appliance_networking_no_proxy_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingNoProxyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_no_proxy_set** | [**ApplianceNetworkingNoProxySet**](ApplianceNetworkingNoProxySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



