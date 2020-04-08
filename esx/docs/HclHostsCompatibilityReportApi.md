# VSphereAutomation::ESX::HclHostsCompatibilityReportApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](HclHostsCompatibilityReportApi.md#create_task) | **POST** /api/esx/hcl/hosts/{host}/compatibility-report?vmw-task&#x3D;true | Generates hardware compatibility report for a specified ESXi host against specific ESXi release.&lt;p&gt; The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**get**](HclHostsCompatibilityReportApi.md#get) | **GET** /api/esx/hcl/hosts/{host}/compatibility-report | Returns the last generated hardware compatibility report for the given host.


# **create_task**
> String create_task(host, opts)

Generates hardware compatibility report for a specified ESXi host against specific ESXi release.<p> The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::HclHostsCompatibilityReportApi.new
host = 'host_example' # String | Contains the MoID identifying the ESXi host.
opts = {
  request_body: ESX::EsxHclHostsCompatibilityReportSpec.new # EsxHclHostsCompatibilityReportSpec | 
}

begin
  #Generates hardware compatibility report for a specified ESXi host against specific ESXi release.<p> The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.create_task(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HclHostsCompatibilityReportApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Contains the MoID identifying the ESXi host. | 
 **request_body** | **EsxHclHostsCompatibilityReportSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> EsxHclHostsCompatibilityReportResult get(host)

Returns the last generated hardware compatibility report for the given host.

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

api_instance = VSphereAutomation::ESX::HclHostsCompatibilityReportApi.new
host = 'host_example' # String | 

begin
  #Returns the last generated hardware compatibility report for the given host.
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HclHostsCompatibilityReportApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**|  | 

### Return type

[**EsxHclHostsCompatibilityReportResult**](EsxHclHostsCompatibilityReportResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



