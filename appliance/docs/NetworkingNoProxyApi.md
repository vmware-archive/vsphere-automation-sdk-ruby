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
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Sets servers for which no proxy configuration should be applied. This operation sets environment variables. In order for this operation to take effect, a logout from appliance or a service restart is required. If IPv4 is enabled, \"127.0.0.1\" and \"localhost\" will always bypass the proxy (even if they are not explicitly configured).

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

api_instance = VSphereAutomation::Appliance::NetworkingNoProxyApi.new
request_body = Appliance::ApplianceNetworkingNoProxySet.new # ApplianceNetworkingNoProxySet | 

begin
  #Sets servers for which no proxy configuration should be applied. This operation sets environment variables. In order for this operation to take effect, a logout from appliance or a service restart is required. If IPv4 is enabled, \"127.0.0.1\" and \"localhost\" will always bypass the proxy (even if they are not explicitly configured).
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingNoProxyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingNoProxySet**](ApplianceNetworkingNoProxySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



