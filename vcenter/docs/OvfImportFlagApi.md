# VSphereAutomation::VCenter::OvfImportFlagApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](OvfImportFlagApi.md#list) | **GET** /com/vmware/vcenter/ovf/import-flag | Returns information about the import flags supported by the deployment platform. &lt;p&gt; The supported flags are: &lt;dl&gt; &lt;dt&gt;LAX&lt;/dt&gt; &lt;dd&gt;Lax mode parsing of the OVF descriptor.&lt;/dd&gt; &lt;/dl&gt; &lt;p&gt; Future server versions might support additional flags.


# **list**
> VcenterOvfImportFlagListResult list

Returns information about the import flags supported by the deployment platform. <p> The supported flags are: <dl> <dt>LAX</dt> <dd>Lax mode parsing of the OVF descriptor.</dd> </dl> <p> Future server versions might support additional flags.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::OvfImportFlagApi.new

begin
  #Returns information about the import flags supported by the deployment platform. <p> The supported flags are: <dl> <dt>LAX</dt> <dd>Lax mode parsing of the OVF descriptor.</dd> </dl> <p> Future server versions might support additional flags.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling OvfImportFlagApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterOvfImportFlagListResult**](VcenterOvfImportFlagListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



