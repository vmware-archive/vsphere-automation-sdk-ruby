# VSphereAutomation::Appliance::NetworkingDnsDomainsApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](NetworkingDnsDomainsApi.md#add) | **POST** /appliance/networking/dns/domains | Add domain to DNS search domains.
[**list**](NetworkingDnsDomainsApi.md#list) | **GET** /appliance/networking/dns/domains | Get list of DNS search domains.
[**set**](NetworkingDnsDomainsApi.md#set) | **PUT** /appliance/networking/dns/domains | Set DNS search domains.


# **add**
> add(opts)

Add domain to DNS search domains.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsDomainsApi.new
opts = {
  appliance_networking_dns_domains_add: VSphereAutomation::ApplianceNetworkingDnsDomainsAdd.new # ApplianceNetworkingDnsDomainsAdd | 
}

begin
  #Add domain to DNS search domains.
  api_instance.add(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsDomainsApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_dns_domains_add** | [**ApplianceNetworkingDnsDomainsAdd**](ApplianceNetworkingDnsDomainsAdd.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> ApplianceNetworkingDnsDomainsListResult list

Get list of DNS search domains.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

[**ApplianceNetworkingDnsDomainsListResult**](ApplianceNetworkingDnsDomainsListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(opts)

Set DNS search domains.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsDomainsApi.new
opts = {
  appliance_networking_dns_domains_set: VSphereAutomation::ApplianceNetworkingDnsDomainsSet.new # ApplianceNetworkingDnsDomainsSet | 
}

begin
  #Set DNS search domains.
  api_instance.set(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsDomainsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_dns_domains_set** | [**ApplianceNetworkingDnsDomainsSet**](ApplianceNetworkingDnsDomainsSet.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



