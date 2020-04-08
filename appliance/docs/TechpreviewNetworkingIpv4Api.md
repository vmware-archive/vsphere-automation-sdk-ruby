# VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TechpreviewNetworkingIpv4Api.md#get) | **POST** /rest/appliance/techpreview/networking/ipv4/get | Get IPv4 network configuration for interfaces.
[**list**](TechpreviewNetworkingIpv4Api.md#list) | **GET** /rest/appliance/techpreview/networking/ipv4 | Get IPv4 network configuration for all configured interfaces.
[**renew**](TechpreviewNetworkingIpv4Api.md#renew) | **POST** /rest/appliance/techpreview/networking/ipv4/renew | Renew IPv4 network configuration on interfaces.  If the interface is configured to use DHCP for IP address assignment, the lease of the interface is renewed.
[**set**](TechpreviewNetworkingIpv4Api.md#set) | **PUT** /rest/appliance/techpreview/networking/ipv4 | Set IPv4 network configuration.


# **get**
> ApplianceTechpreviewNetworkingIpv4Resp get(request_body)

Get IPv4 network configuration for interfaces.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api.new
request_body = Appliance::ApplianceTechpreviewNetworkingIpv4Get.new # ApplianceTechpreviewNetworkingIpv4Get | 

begin
  #Get IPv4 network configuration for interfaces.
  result = api_instance.get(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingIpv4Api->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingIpv4Get**](ApplianceTechpreviewNetworkingIpv4Get.md)|  | 

### Return type

[**ApplianceTechpreviewNetworkingIpv4Resp**](ApplianceTechpreviewNetworkingIpv4Resp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ApplianceTechpreviewNetworkingIpv4ListResp list

Get IPv4 network configuration for all configured interfaces.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api.new

begin
  #Get IPv4 network configuration for all configured interfaces.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingIpv4Api->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewNetworkingIpv4ListResp**](ApplianceTechpreviewNetworkingIpv4ListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **renew**
> renew(request_body)

Renew IPv4 network configuration on interfaces.  If the interface is configured to use DHCP for IP address assignment, the lease of the interface is renewed.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api.new
request_body = Appliance::ApplianceTechpreviewNetworkingIpv4Renew.new # ApplianceTechpreviewNetworkingIpv4Renew | 

begin
  #Renew IPv4 network configuration on interfaces.  If the interface is configured to use DHCP for IP address assignment, the lease of the interface is renewed.
  api_instance.renew(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingIpv4Api->renew: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingIpv4Renew**](ApplianceTechpreviewNetworkingIpv4Renew.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set**
> set(request_body)

Set IPv4 network configuration.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api.new
request_body = Appliance::ApplianceTechpreviewNetworkingIpv4Set.new # ApplianceTechpreviewNetworkingIpv4Set | 

begin
  #Set IPv4 network configuration.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingIpv4Api->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingIpv4Set**](ApplianceTechpreviewNetworkingIpv4Set.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



