# VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingInterfacesIpv6Api.md#get) | **GET** /rest/appliance/networking/interfaces/{interface_name}/ipv6 | Get IPv6 network configuration for specific interface.
[**set**](NetworkingInterfacesIpv6Api.md#set) | **PUT** /rest/appliance/networking/interfaces/{interface_name}/ipv6 | Set IPv6 network configuration for specific interface.


# **get**
> ApplianceNetworkingInterfacesIpv6Resp get(interface_name)

Get IPv6 network configuration for specific interface.

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

api_instance = VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api.new
interface_name = 'interface_name_example' # String | Network interface to query, for example, \"nic0\".

begin
  #Get IPv6 network configuration for specific interface.
  result = api_instance.get(interface_name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingInterfacesIpv6Api->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interface_name** | **String**| Network interface to query, for example, \&quot;nic0\&quot;. | 

### Return type

[**ApplianceNetworkingInterfacesIpv6Resp**](ApplianceNetworkingInterfacesIpv6Resp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(interface_name, request_body)

Set IPv6 network configuration for specific interface.

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

api_instance = VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api.new
interface_name = 'interface_name_example' # String | Network interface to update, for example, \"nic0\".
request_body = Appliance::ApplianceNetworkingInterfacesIpv6Set.new # ApplianceNetworkingInterfacesIpv6Set | 

begin
  #Set IPv6 network configuration for specific interface.
  api_instance.set(interface_name, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingInterfacesIpv6Api->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interface_name** | **String**| Network interface to update, for example, \&quot;nic0\&quot;. | 
 **request_body** | [**ApplianceNetworkingInterfacesIpv6Set**](ApplianceNetworkingInterfacesIpv6Set.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



