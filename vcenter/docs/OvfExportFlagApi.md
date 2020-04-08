# VSphereAutomation::VCenter::OvfExportFlagApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](OvfExportFlagApi.md#list) | **GET** /rest/com/vmware/vcenter/ovf/export-flag | Returns information about the supported export flags by the server. &lt;p&gt; The supported flags are: &lt;dl&gt; &lt;dt&gt;PRESERVE_MAC&lt;/dt&gt; &lt;dd&gt;Include MAC addresses for network adapters.&lt;/dd&gt; &lt;dt&gt;EXTRA_CONFIG&lt;/dt&gt; &lt;dd&gt;Include extra configuration in OVF export.&lt;/dd&gt; &lt;/dl&gt; &lt;p&gt; Future server versions might support additional flags.


# **list**
> VcenterOvfExportFlagListResp list

Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.

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

api_instance = VSphereAutomation::VCenter::OvfExportFlagApi.new

begin
  #Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling OvfExportFlagApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterOvfExportFlagListResp**](VcenterOvfExportFlagListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



