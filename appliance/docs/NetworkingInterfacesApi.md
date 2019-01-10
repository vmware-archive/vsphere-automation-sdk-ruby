# VSphereAutomation::Appliance::NetworkingInterfacesApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingInterfacesApi.md#get) | **GET** /appliance/networking/interfaces/{interface_name} | Get information about a particular network interface.
[**list**](NetworkingInterfacesApi.md#list) | **GET** /appliance/networking/interfaces | Get list of available network interfaces, including those that are not yet configured.


# **get**
> ApplianceNetworkingInterfacesResult get(interface_name)

Get information about a particular network interface.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingInterfacesApi.new
interface_name = 'interface_name_example' # String | Network interface, for example, \"nic0\".

begin
  #Get information about a particular network interface.
  result = api_instance.get(interface_name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingInterfacesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **interface_name** | **String**| Network interface, for example, \&quot;nic0\&quot;. | 

### Return type

[**ApplianceNetworkingInterfacesResult**](ApplianceNetworkingInterfacesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceNetworkingInterfacesListResult list

Get list of available network interfaces, including those that are not yet configured.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingInterfacesApi.new

begin
  #Get list of available network interfaces, including those that are not yet configured.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingInterfacesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingInterfacesListResult**](ApplianceNetworkingInterfacesListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



