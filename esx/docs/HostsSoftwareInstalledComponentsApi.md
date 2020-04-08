# VSphereAutomation::ESX::HostsSoftwareInstalledComponentsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](HostsSoftwareInstalledComponentsApi.md#list) | **GET** /api/esx/hosts/{host}/software/installed-components | Returns the installed components on the host.


# **list**
> Hash&lt;String, EsxHostsSoftwareInstalledComponentsInstalledComponentInfo&gt; list(host)

Returns the installed components on the host.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::HostsSoftwareInstalledComponentsApi.new
host = 'host_example' # String | Identifier of the cluster.

begin
  #Returns the installed components on the host.
  result = api_instance.list(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostsSoftwareInstalledComponentsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the cluster. | 

### Return type

[**Hash&lt;String, EsxHostsSoftwareInstalledComponentsInstalledComponentInfo&gt;**](EsxHostsSoftwareInstalledComponentsInstalledComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



