# VSphereAutomation::VCenter::OvfImportFlagApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](OvfImportFlagApi.md#list) | **GET** /rest/com/vmware/vcenter/ovf/import-flag | Returns information about the import flags supported by the deployment platform. &lt;p&gt; The supported flags are: &lt;dl&gt; &lt;dt&gt;LAX&lt;/dt&gt; &lt;dd&gt;Lax mode parsing of the OVF descriptor.&lt;/dd&gt; &lt;/dl&gt; &lt;p&gt; Future server versions might support additional flags.


# **list**
> VcenterOvfImportFlagListResp list(rp)

Returns information about the import flags supported by the deployment platform. <p> The supported flags are: <dl> <dt>LAX</dt> <dd>Lax mode parsing of the OVF descriptor.</dd> </dl> <p> Future server versions might support additional flags.

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

api_instance = VSphereAutomation::VCenter::OvfImportFlagApi.new
rp = 'rp_example' # String | The identifier of resource pool target for retrieving the import flag(s).

begin
  #Returns information about the import flags supported by the deployment platform. <p> The supported flags are: <dl> <dt>LAX</dt> <dd>Lax mode parsing of the OVF descriptor.</dd> </dl> <p> Future server versions might support additional flags.
  result = api_instance.list(rp)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling OvfImportFlagApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rp** | **String**| The identifier of resource pool target for retrieving the import flag(s). | 

### Return type

[**VcenterOvfImportFlagListResp**](VcenterOvfImportFlagListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



