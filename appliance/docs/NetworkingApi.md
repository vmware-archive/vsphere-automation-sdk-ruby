# VSphereAutomation::Appliance::NetworkingApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_task**](NetworkingApi.md#change_task) | **POST** /rest/appliance/networking?action&#x3D;change&amp;vmw-task&#x3D;true | Changes the Hostname/IP of the management network of vCenter appliance. The Hostname/IP change invokes the PNID change process which involves LDAP entry modification, updating registry entries, configuration files modification and network configuration changes. vCenter server is expected to be down for few minutes during these changes
[**get**](NetworkingApi.md#get) | **GET** /rest/appliance/networking | Get Networking information for all configured interfaces.
[**reset**](NetworkingApi.md#reset) | **POST** /rest/appliance/networking?action&#x3D;reset | Reset and restarts network configuration on all interfaces, also this will renew the DHCP lease for DHCP IP address.
[**update**](NetworkingApi.md#update) | **PATCH** /rest/appliance/networking | Enable or Disable ipv6 on all interfaces


# **change_task**
> ApplianceNetworkingChangeTaskResp change_task(request_body)

Changes the Hostname/IP of the management network of vCenter appliance. The Hostname/IP change invokes the PNID change process which involves LDAP entry modification, updating registry entries, configuration files modification and network configuration changes. vCenter server is expected to be down for few minutes during these changes

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
request_body = Appliance::ApplianceNetworkingChangeTask.new # ApplianceNetworkingChangeTask | 

begin
  #Changes the Hostname/IP of the management network of vCenter appliance. The Hostname/IP change invokes the PNID change process which involves LDAP entry modification, updating registry entries, configuration files modification and network configuration changes. vCenter server is expected to be down for few minutes during these changes
  result = api_instance.change_task(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingApi->change_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingChangeTask**](ApplianceNetworkingChangeTask.md)|  | 

### Return type

[**ApplianceNetworkingChangeTaskResp**](ApplianceNetworkingChangeTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ApplianceNetworkingResp get

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

[**ApplianceNetworkingResp**](ApplianceNetworkingResp.md)

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



