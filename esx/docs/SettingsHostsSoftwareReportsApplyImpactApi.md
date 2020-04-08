# VSphereAutomation::ESX::SettingsHostsSoftwareReportsApplyImpactApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsHostsSoftwareReportsApplyImpactApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/reports/apply-impact | Returns a summary of how a standalone ESXi host will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.hosts.software.Compliance#get} Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> EsxSettingsHostsSoftwareReportsApplyImpactHostImpact get(host)

Returns a summary of how a standalone ESXi host will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.hosts.software.Compliance#get} Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareReportsApplyImpactApi.new
host = 'host_example' # String | The host identifier.

begin
  #Returns a summary of how a standalone ESXi host will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.hosts.software.Compliance#get} Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareReportsApplyImpactApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| The host identifier. | 

### Return type

[**EsxSettingsHostsSoftwareReportsApplyImpactHostImpact**](EsxSettingsHostsSoftwareReportsApplyImpactHostImpact.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



