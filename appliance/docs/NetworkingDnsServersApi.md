# VSphereAutomation::Appliance::NetworkingDnsServersApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](NetworkingDnsServersApi.md#add) | **POST** /appliance/networking/dns/servers | Add a DNS server. This method fails if mode argument is \&quot;dhcp\&quot;
[**get**](NetworkingDnsServersApi.md#get) | **GET** /appliance/networking/dns/servers | Get DNS server configuration.
[**set**](NetworkingDnsServersApi.md#set) | **PUT** /appliance/networking/dns/servers | Set the DNS server configuration. If you set the mode argument to \&quot;DHCP\&quot;, a DHCP refresh is forced.
[**test**](NetworkingDnsServersApi.md#test) | **POST** /appliance/networking/dns/servers/test | Test if dns servers are reachable.


# **add**
> add(request_body)

Add a DNS server. This method fails if mode argument is \"dhcp\"

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsServersApi.new
request_body = Appliance::ApplianceNetworkingDnsServersAdd.new # ApplianceNetworkingDnsServersAdd | 

begin
  #Add a DNS server. This method fails if mode argument is \"dhcp\"
  api_instance.add(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsServersApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingDnsServersAdd**](ApplianceNetworkingDnsServersAdd.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ApplianceNetworkingDnsServersResult get

Get DNS server configuration.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set the DNS server configuration. If you set the mode argument to \"DHCP\", a DHCP refresh is forced.

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsServersApi.new
request_body = Appliance::ApplianceNetworkingDnsServersSet.new # ApplianceNetworkingDnsServersSet | 

begin
  #Set the DNS server configuration. If you set the mode argument to \"DHCP\", a DHCP refresh is forced.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsServersApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingDnsServersSet**](ApplianceNetworkingDnsServersSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **test**
> ApplianceNetworkingDnsServersTestResult test(request_body)

Test if dns servers are reachable.

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsServersApi.new
request_body = Appliance::ApplianceNetworkingDnsServersTest.new # ApplianceNetworkingDnsServersTest | 

begin
  #Test if dns servers are reachable.
  result = api_instance.test(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsServersApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingDnsServersTest**](ApplianceNetworkingDnsServersTest.md)|  | 

### Return type

[**ApplianceNetworkingDnsServersTestResult**](ApplianceNetworkingDnsServersTestResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



