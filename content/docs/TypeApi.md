# VSphereAutomation::Content::TypeApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TypeApi.md#list) | **GET** /rest/com/vmware/content/type | Returns a {@term list} of {@link Info} instances which describe the type support plugins in this Content Library.


# **list**
> ContentTypeListResp list

Returns a {@term list} of {@link Info} instances which describe the type support plugins in this Content Library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::TypeApi.new

begin
  #Returns a {@term list} of {@link Info} instances which describe the type support plugins in this Content Library.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TypeApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContentTypeListResp**](ContentTypeListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



