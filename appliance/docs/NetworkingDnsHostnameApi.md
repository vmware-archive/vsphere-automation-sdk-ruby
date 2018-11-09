# VSphereAutomation::Appliance::NetworkingDnsHostnameApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingDnsHostnameApi.md#get) | **GET** /appliance/networking/dns/hostname | Get the Fully Qualified Doman Name.
[**set**](NetworkingDnsHostnameApi.md#set) | **PUT** /appliance/networking/dns/hostname | Set the Fully Qualified Domain Name.
[**test**](NetworkingDnsHostnameApi.md#test) | **POST** /appliance/networking/dns/hostname/test | Test the Fully Qualified Domain Name.


# **get**
> ApplianceNetworkingDnsHostnameResult get

Get the Fully Qualified Doman Name.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsHostnameApi.new

begin
  #Get the Fully Qualified Doman Name.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsHostnameApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingDnsHostnameResult**](ApplianceNetworkingDnsHostnameResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_networking_dns_hostname_set)

Set the Fully Qualified Domain Name.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsHostnameApi.new
appliance_networking_dns_hostname_set = VSphereAutomation::ApplianceNetworkingDnsHostnameSet.new # ApplianceNetworkingDnsHostnameSet | 

begin
  #Set the Fully Qualified Domain Name.
  api_instance.set(appliance_networking_dns_hostname_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsHostnameApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_dns_hostname_set** | [**ApplianceNetworkingDnsHostnameSet**](ApplianceNetworkingDnsHostnameSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **test**
> ApplianceNetworkingDnsHostnameTestResult test(appliance_networking_dns_hostname_test)

Test the Fully Qualified Domain Name.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingDnsHostnameApi.new
appliance_networking_dns_hostname_test = VSphereAutomation::ApplianceNetworkingDnsHostnameTest.new # ApplianceNetworkingDnsHostnameTest | 

begin
  #Test the Fully Qualified Domain Name.
  result = api_instance.test(appliance_networking_dns_hostname_test)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsHostnameApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_dns_hostname_test** | [**ApplianceNetworkingDnsHostnameTest**](ApplianceNetworkingDnsHostnameTest.md)|  | 

### Return type

[**ApplianceNetworkingDnsHostnameTestResult**](ApplianceNetworkingDnsHostnameTestResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



