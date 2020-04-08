# VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TechpreviewNetworkingIpv6Api.md#get) | **POST** /rest/appliance/techpreview/networking/ipv6/get | Get IPv6 network configuration for interfaces.
[**list**](TechpreviewNetworkingIpv6Api.md#list) | **GET** /rest/appliance/techpreview/networking/ipv6 | Get IPv6 network configuration for all configured interfaces.
[**set**](TechpreviewNetworkingIpv6Api.md#set) | **PUT** /rest/appliance/techpreview/networking/ipv6 | Set IPv6 network configuration.


# **get**
> ApplianceTechpreviewNetworkingIpv6Resp get(request_body)

Get IPv6 network configuration for interfaces.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api.new
request_body = Appliance::ApplianceTechpreviewNetworkingIpv6Get.new # ApplianceTechpreviewNetworkingIpv6Get | 

begin
  #Get IPv6 network configuration for interfaces.
  result = api_instance.get(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingIpv6Api->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingIpv6Get**](ApplianceTechpreviewNetworkingIpv6Get.md)|  | 

### Return type

[**ApplianceTechpreviewNetworkingIpv6Resp**](ApplianceTechpreviewNetworkingIpv6Resp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ApplianceTechpreviewNetworkingIpv6ListResp list

Get IPv6 network configuration for all configured interfaces.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api.new

begin
  #Get IPv6 network configuration for all configured interfaces.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingIpv6Api->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewNetworkingIpv6ListResp**](ApplianceTechpreviewNetworkingIpv6ListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set IPv6 network configuration.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api.new
request_body = Appliance::ApplianceTechpreviewNetworkingIpv6Set.new # ApplianceTechpreviewNetworkingIpv6Set | 

begin
  #Set IPv6 network configuration.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingIpv6Api->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingIpv6Set**](ApplianceTechpreviewNetworkingIpv6Set.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



