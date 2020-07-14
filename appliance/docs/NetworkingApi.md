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
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reset**
> reset

Reset and restarts network configuration on all interfaces, also this will renew the DHCP lease for DHCP IP address.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(request_body)

Enable or Disable ipv6 on all interfaces

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

api_instance = VSphereAutomation::Appliance::NetworkingApi.new
request_body = Appliance::ApplianceNetworkingUpdate.new # ApplianceNetworkingUpdate | 

begin
  #Enable or Disable ipv6 on all interfaces
  api_instance.update(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingUpdate**](ApplianceNetworkingUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



