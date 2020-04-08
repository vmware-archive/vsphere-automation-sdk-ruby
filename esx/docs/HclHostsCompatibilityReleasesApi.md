# VSphereAutomation::ESX::HclHostsCompatibilityReleasesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](HclHostsCompatibilityReleasesApi.md#list) | **GET** /api/esx/hcl/hosts/{host}/compatibility-releases | Lists the locally available ESXi releases for a given host that can be used to generate a compatiblity report. Each host has its own list of supported releases depending on its current release.


# **list**
> EsxHclHostsCompatibilityReleasesEsxiCompatibilityReleases list(host)

Lists the locally available ESXi releases for a given host that can be used to generate a compatiblity report. Each host has its own list of supported releases depending on its current release.

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

api_instance = VSphereAutomation::ESX::HclHostsCompatibilityReleasesApi.new
host = 'host_example' # String | Contains the MoID identifying the ESXi host.

begin
  #Lists the locally available ESXi releases for a given host that can be used to generate a compatiblity report. Each host has its own list of supported releases depending on its current release.
  result = api_instance.list(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HclHostsCompatibilityReleasesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Contains the MoID identifying the ESXi host. | 

### Return type

[**EsxHclHostsCompatibilityReleasesEsxiCompatibilityReleases**](EsxHclHostsCompatibilityReleasesEsxiCompatibilityReleases.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



