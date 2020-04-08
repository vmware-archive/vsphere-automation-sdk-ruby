# VSphereAutomation::ESX::SettingsClustersSoftwareReportsApplyImpactApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareReportsApplyImpactApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/apply-impact | Returns a summary of how hosts within the cluster will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.clusters.software.Compliance#get}


# **get**
> EsxSettingsClustersSoftwareReportsApplyImpactClusterImpact get(cluster, opts)

Returns a summary of how hosts within the cluster will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.clusters.software.Compliance#get}

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareReportsApplyImpactApi.new
cluster = 'cluster_example' # String | The cluster identifier.
opts = {
  hosts: ['hosts_example'] # Array<String> | The specific hosts for which an impact is to be generated.
}

begin
  #Returns a summary of how hosts within the cluster will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.clusters.software.Compliance#get}
  result = api_instance.get(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareReportsApplyImpactApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The cluster identifier. | 
 **hosts** | [**Array&lt;String&gt;**](String.md)| The specific hosts for which an impact is to be generated. | [optional] 

### Return type

[**EsxSettingsClustersSoftwareReportsApplyImpactClusterImpact**](EsxSettingsClustersSoftwareReportsApplyImpactClusterImpact.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



