# VSphereAutomation::Appliance::NetworkingInterfacesIpv4Api

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingInterfacesIpv4Api.md#get) | **GET** /appliance/networking/interfaces/{interface_name}/ipv4 | Get IPv4 network configuration for specific NIC.
[**set**](NetworkingInterfacesIpv4Api.md#set) | **PUT** /appliance/networking/interfaces/{interface_name}/ipv4 | Set IPv4 network configuration for specific network interface.


# **get**
> ApplianceNetworkingInterfacesIpv4Result get(interface_name)

Get IPv4 network configuration for specific NIC.

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

api_instance = VSphereAutomation::Appliance::NetworkingInterfacesIpv4Api.new
interface_name = 'interface_name_example' # String | The Network interface to query, for example, \"nic0\".

begin
  #Get IPv4 network configuration for specific NIC.
  result = api_instance.get(interface_name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingInterfacesIpv4Api->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interface_name** | **String**| The Network interface to query, for example, \&quot;nic0\&quot;. | 

### Return type

[**ApplianceNetworkingInterfacesIpv4Result**](ApplianceNetworkingInterfacesIpv4Result.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(interface_name, request_body)

Set IPv4 network configuration for specific network interface.

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

api_instance = VSphereAutomation::Appliance::NetworkingInterfacesIpv4Api.new
interface_name = 'interface_name_example' # String | Network interface to update, for example, \"nic0\".
request_body = Appliance::ApplianceNetworkingInterfacesIpv4Set.new # ApplianceNetworkingInterfacesIpv4Set | 

begin
  #Set IPv4 network configuration for specific network interface.
  api_instance.set(interface_name, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingInterfacesIpv4Api->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interface_name** | **String**| Network interface to update, for example, \&quot;nic0\&quot;. | 
 **request_body** | [**ApplianceNetworkingInterfacesIpv4Set**](ApplianceNetworkingInterfacesIpv4Set.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



