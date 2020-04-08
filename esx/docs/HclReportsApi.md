# VSphereAutomation::ESX::HclReportsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HclReportsApi.md#get) | **GET** /api/esx/hcl/reports/{report} | Returns the location {@link Location} information for downloading a compatibility report.


# **get**
> EsxHclReportsLocation get(report)

Returns the location {@link Location} information for downloading a compatibility report.

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

api_instance = VSphereAutomation::ESX::HclReportsApi.new
report = 'report_example' # String | identifier of hardware compatiblity report to be downloaded.

begin
  #Returns the location {@link Location} information for downloading a compatibility report.
  result = api_instance.get(report)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HclReportsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **String**| identifier of hardware compatiblity report to be downloaded. | 

### Return type

[**EsxHclReportsLocation**](EsxHclReportsLocation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



