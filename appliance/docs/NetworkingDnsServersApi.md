# VSphereAutomation::Appliance::NetworkingDnsServersApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](NetworkingDnsServersApi.md#add) | **POST** /appliance/networking/dns/servers | Add a DNS server. This method fails if mode argument is \&quot;dhcp\&quot;
[**get**](NetworkingDnsServersApi.md#get) | **GET** /appliance/networking/dns/servers | Get DNS server configuration.
[**set**](NetworkingDnsServersApi.md#set) | **PUT** /appliance/networking/dns/servers | Set the DNS server configuration. If you set the mode argument to \&quot;DHCP\&quot;, a DHCP refresh is forced.
[**test**](NetworkingDnsServersApi.md#test) | **POST** /appliance/networking/dns/servers/test | Test if dns servers are reachable.


# **add**
> add(appliance_networking_dns_servers_add)

Add a DNS server. This method fails if mode argument is \"dhcp\"

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsServersApi.new
appliance_networking_dns_servers_add = VSphereAutomation::ApplianceNetworkingDnsServersAdd.new # ApplianceNetworkingDnsServersAdd | 

begin
  #Add a DNS server. This method fails if mode argument is \"dhcp\"
  api_instance.add(appliance_networking_dns_servers_add)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsServersApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_dns_servers_add** | [**ApplianceNetworkingDnsServersAdd**](ApplianceNetworkingDnsServersAdd.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> ApplianceNetworkingDnsServersResult get

Get DNS server configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsServersApi.new

begin
  #Get DNS server configuration.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsServersApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingDnsServersResult**](ApplianceNetworkingDnsServersResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_networking_dns_servers_set)

Set the DNS server configuration. If you set the mode argument to \"DHCP\", a DHCP refresh is forced.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsServersApi.new
appliance_networking_dns_servers_set = VSphereAutomation::ApplianceNetworkingDnsServersSet.new # ApplianceNetworkingDnsServersSet | 

begin
  #Set the DNS server configuration. If you set the mode argument to \"DHCP\", a DHCP refresh is forced.
  api_instance.set(appliance_networking_dns_servers_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsServersApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_dns_servers_set** | [**ApplianceNetworkingDnsServersSet**](ApplianceNetworkingDnsServersSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **test**
> ApplianceNetworkingDnsServersTestResult test(appliance_networking_dns_servers_test)

Test if dns servers are reachable.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsServersApi.new
appliance_networking_dns_servers_test = VSphereAutomation::ApplianceNetworkingDnsServersTest.new # ApplianceNetworkingDnsServersTest | 

begin
  #Test if dns servers are reachable.
  result = api_instance.test(appliance_networking_dns_servers_test)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsServersApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_dns_servers_test** | [**ApplianceNetworkingDnsServersTest**](ApplianceNetworkingDnsServersTest.md)|  | 

### Return type

[**ApplianceNetworkingDnsServersTestResult**](ApplianceNetworkingDnsServersTestResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



