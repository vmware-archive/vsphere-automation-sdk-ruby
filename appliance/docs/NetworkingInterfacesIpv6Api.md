# VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingInterfacesIpv6Api.md#get) | **GET** /appliance/networking/interfaces/{interface_name}/ipv6 | Get IPv6 network configuration for specific interface.
[**set**](NetworkingInterfacesIpv6Api.md#set) | **PUT** /appliance/networking/interfaces/{interface_name}/ipv6 | Set IPv6 network configuration for specific interface.


# **get**
> ApplianceNetworkingInterfacesIpv6Result get(interface_name)

Get IPv6 network configuration for specific interface.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

[**ApplianceNetworkingInterfacesIpv6Result**](ApplianceNetworkingInterfacesIpv6Result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(interface_name, appliance_networking_interfaces_ipv6_set)

Set IPv6 network configuration for specific interface.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api.new
interface_name = 'interface_name_example' # String | Network interface to update, for example, \"nic0\".
appliance_networking_interfaces_ipv6_set = VSphereAutomation::ApplianceNetworkingInterfacesIpv6Set.new # ApplianceNetworkingInterfacesIpv6Set | 

begin
  #Set IPv6 network configuration for specific interface.
  api_instance.set(interface_name, appliance_networking_interfaces_ipv6_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingInterfacesIpv6Api->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interface_name** | **String**| Network interface to update, for example, \&quot;nic0\&quot;. | 
 **appliance_networking_interfaces_ipv6_set** | [**ApplianceNetworkingInterfacesIpv6Set**](ApplianceNetworkingInterfacesIpv6Set.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



