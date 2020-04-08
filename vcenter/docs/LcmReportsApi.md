# VSphereAutomation::VCenter::LcmReportsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LcmReportsApi.md#get) | **GET** /api/vcenter/lcm/reports/{report} | Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  


# **get**
> VcenterLcmReportsLocation get(report)

Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::LcmReportsApi.new
report = 'report_example' # String | The parameter must be an identifier for the resource type: vcenter.lcm.report.

begin
  #Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.get(report)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmReportsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **String**| The parameter must be an identifier for the resource type: vcenter.lcm.report. | 

### Return type

[**VcenterLcmReportsLocation**](VcenterLcmReportsLocation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



