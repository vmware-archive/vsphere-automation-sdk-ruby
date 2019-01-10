# VSphereAutomation::Appliance::NetworkingApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingApi.md#get) | **GET** /appliance/networking | Get Networking information for all configured interfaces.
[**reset**](NetworkingApi.md#reset) | **POST** /appliance/networking?action&#x3D;reset | Reset and restarts network configuration on all interfaces, also this will renew the DHCP lease for DHCP IP address.
[**update**](NetworkingApi.md#update) | **PATCH** /appliance/networking | Enable or Disable ipv6 on all interfaces


# **get**
> ApplianceNetworkingResult get

Get Networking information for all configured interfaces.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingApi.new

begin
  #Get Networking information for all configured interfaces.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingResult**](ApplianceNetworkingResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **reset**
> reset

Reset and restarts network configuration on all interfaces, also this will renew the DHCP lease for DHCP IP address.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingApi.new

begin
  #Reset and restarts network configuration on all interfaces, also this will renew the DHCP lease for DHCP IP address.
  api_instance.reset
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingApi->reset: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(appliance_networking_update)

Enable or Disable ipv6 on all interfaces

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingApi.new
appliance_networking_update = VSphereAutomation::ApplianceNetworkingUpdate.new # ApplianceNetworkingUpdate | 

begin
  #Enable or Disable ipv6 on all interfaces
  api_instance.update(appliance_networking_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_update** | [**ApplianceNetworkingUpdate**](ApplianceNetworkingUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



