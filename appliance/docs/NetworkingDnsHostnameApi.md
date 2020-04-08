# VSphereAutomation::Appliance::NetworkingDnsHostnameApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingDnsHostnameApi.md#get) | **GET** /rest/appliance/networking/dns/hostname | Get the Fully Qualified Doman Name.
[**set**](NetworkingDnsHostnameApi.md#set) | **PUT** /rest/appliance/networking/dns/hostname | Set the Fully Qualified Domain Name.
[**test**](NetworkingDnsHostnameApi.md#test) | **POST** /rest/appliance/networking/dns/hostname/test | Test the Fully Qualified Domain Name.


# **get**
> ApplianceNetworkingDnsHostnameResp get

Get the Fully Qualified Doman Name.

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

[**ApplianceNetworkingDnsHostnameResp**](ApplianceNetworkingDnsHostnameResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set the Fully Qualified Domain Name.

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsHostnameApi.new
request_body = Appliance::ApplianceNetworkingDnsHostnameSet.new # ApplianceNetworkingDnsHostnameSet | 

begin
  #Set the Fully Qualified Domain Name.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsHostnameApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingDnsHostnameSet**](ApplianceNetworkingDnsHostnameSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **test**
> ApplianceNetworkingDnsHostnameTestResp test(request_body)

Test the Fully Qualified Domain Name.

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

api_instance = VSphereAutomation::Appliance::NetworkingDnsHostnameApi.new
request_body = Appliance::ApplianceNetworkingDnsHostnameTest.new # ApplianceNetworkingDnsHostnameTest | 

begin
  #Test the Fully Qualified Domain Name.
  result = api_instance.test(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingDnsHostnameApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingDnsHostnameTest**](ApplianceNetworkingDnsHostnameTest.md)|  | 

### Return type

[**ApplianceNetworkingDnsHostnameTestResp**](ApplianceNetworkingDnsHostnameTestResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



