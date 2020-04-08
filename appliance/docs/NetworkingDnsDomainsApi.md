# VSphereAutomation::Appliance::NetworkingDnsDomainsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](NetworkingDnsDomainsApi.md#add) | **POST** /rest/appliance/networking/dns/domains | Add domain to DNS search domains.
[**list**](NetworkingDnsDomainsApi.md#list) | **GET** /rest/appliance/networking/dns/domains | Get list of DNS search domains.
[**set**](NetworkingDnsDomainsApi.md#set) | **PUT** /rest/appliance/networking/dns/domains | Set DNS search domains.


# **add**
> add(request_body)

Add domain to DNS search domains.

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsDomainsApi.new
request_body = Appliance::ApplianceNetworkingDnsDomainsAdd.new # ApplianceNetworkingDnsDomainsAdd | 

begin
  #Add domain to DNS search domains.
  api_instance.add(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsDomainsApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingDnsDomainsAdd**](ApplianceNetworkingDnsDomainsAdd.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ApplianceNetworkingDnsDomainsListResp list

Get list of DNS search domains.

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsDomainsApi.new

begin
  #Get list of DNS search domains.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsDomainsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingDnsDomainsListResp**](ApplianceNetworkingDnsDomainsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set DNS search domains.

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsDomainsApi.new
request_body = Appliance::ApplianceNetworkingDnsDomainsSet.new # ApplianceNetworkingDnsDomainsSet | 

begin
  #Set DNS search domains.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsDomainsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingDnsDomainsSet**](ApplianceNetworkingDnsDomainsSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



