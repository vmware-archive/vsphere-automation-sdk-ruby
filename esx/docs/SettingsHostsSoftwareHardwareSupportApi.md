# VSphereAutomation::ESX::SettingsHostsSoftwareHardwareSupportApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsHostsSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/hardware-support | Returns a given host&#39;s Hardware Support Package (HSP) configuration.


# **get**
> EsxSettingsHardwareSupportInfo get(host)

Returns a given host's Hardware Support Package (HSP) configuration.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareHardwareSupportApi.new
host = 'host_example' # String | Identifier for the host.

begin
  #Returns a given host's Hardware Support Package (HSP) configuration.
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareHardwareSupportApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier for the host. | 

### Return type

[**EsxSettingsHardwareSupportInfo**](EsxSettingsHardwareSupportInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



