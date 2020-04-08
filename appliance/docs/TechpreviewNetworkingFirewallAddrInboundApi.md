# VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TechpreviewNetworkingFirewallAddrInboundApi.md#add) | **POST** /rest/appliance/techpreview/networking/firewall/addr/inbound | Add a firewall rule to allow or deny traffic from incoming IP address.
[**delete**](TechpreviewNetworkingFirewallAddrInboundApi.md#delete) | **POST** /rest/appliance/techpreview/networking/firewall/addr/inbound/delete | Delete specific rule at a given position or delete all rules.
[**list**](TechpreviewNetworkingFirewallAddrInboundApi.md#list) | **GET** /rest/appliance/techpreview/networking/firewall/addr/inbound | Get ordered list of inbound IP addresses that are allowed or denied by firewall.
[**set**](TechpreviewNetworkingFirewallAddrInboundApi.md#set) | **PUT** /rest/appliance/techpreview/networking/firewall/addr/inbound | Set list of inbound IP addresses to allow or deny by firewall. This replaces all existing rules. Firewall rules have no impact on closed ports because these ports are closed for all traffic.


# **add**
> add(request_body)

Add a firewall rule to allow or deny traffic from incoming IP address.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi.new
request_body = Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundAdd.new # ApplianceTechpreviewNetworkingFirewallAddrInboundAdd | 

begin
  #Add a firewall rule to allow or deny traffic from incoming IP address.
  api_instance.add(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingFirewallAddrInboundApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingFirewallAddrInboundAdd**](ApplianceTechpreviewNetworkingFirewallAddrInboundAdd.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(request_body)

Delete specific rule at a given position or delete all rules.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi.new
request_body = Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundDelete.new # ApplianceTechpreviewNetworkingFirewallAddrInboundDelete | 

begin
  #Delete specific rule at a given position or delete all rules.
  api_instance.delete(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingFirewallAddrInboundApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingFirewallAddrInboundDelete**](ApplianceTechpreviewNetworkingFirewallAddrInboundDelete.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ApplianceTechpreviewNetworkingFirewallAddrInboundListResp list

Get ordered list of inbound IP addresses that are allowed or denied by firewall.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi.new

begin
  #Get ordered list of inbound IP addresses that are allowed or denied by firewall.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingFirewallAddrInboundApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewNetworkingFirewallAddrInboundListResp**](ApplianceTechpreviewNetworkingFirewallAddrInboundListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set list of inbound IP addresses to allow or deny by firewall. This replaces all existing rules. Firewall rules have no impact on closed ports because these ports are closed for all traffic.

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

api_instance = VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi.new
request_body = Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundSet.new # ApplianceTechpreviewNetworkingFirewallAddrInboundSet | 

begin
  #Set list of inbound IP addresses to allow or deny by firewall. This replaces all existing rules. Firewall rules have no impact on closed ports because these ports are closed for all traffic.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewNetworkingFirewallAddrInboundApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewNetworkingFirewallAddrInboundSet**](ApplianceTechpreviewNetworkingFirewallAddrInboundSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



