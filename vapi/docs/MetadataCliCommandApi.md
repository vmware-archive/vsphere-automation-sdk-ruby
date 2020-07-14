# VSphereAutomation::VAPI::MetadataCliCommandApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fingerprint**](MetadataCliCommandApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/cli/command?~action&#x3D;fingerprint | Returns the aggregate fingerprint of all the command metadata from all the metadata sources. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
[**get**](MetadataCliCommandApi.md#get) | **POST** /com/vmware/vapi/metadata/cli/command?~action&#x3D;get | Retrieves information about a command including information about how to execute that command.
[**list**](MetadataCliCommandApi.md#list) | **GET** /com/vmware/vapi/metadata/cli/command | Returns the identifiers of all commands, or commands in a specific namespace.


# **fingerprint**
> VapiMetadataCliCommandFingerprintResult fingerprint

Returns the aggregate fingerprint of all the command metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::MetadataCliCommandApi.new

begin
  #Returns the aggregate fingerprint of all the command metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
  result = api_instance.fingerprint
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataCliCommandApi->fingerprint: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataCliCommandFingerprintResult**](VapiMetadataCliCommandFingerprintResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VapiMetadataCliCommandResult get(request_body)

Retrieves information about a command including information about how to execute that command.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::MetadataCliCommandApi.new
request_body = VAPI::VapiMetadataCliCommandGet.new # VapiMetadataCliCommandGet | 

begin
  #Retrieves information about a command including information about how to execute that command.
  result = api_instance.get(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataCliCommandApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VapiMetadataCliCommandGet**](VapiMetadataCliCommandGet.md)|  | 

### Return type

[**VapiMetadataCliCommandResult**](VapiMetadataCliCommandResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VapiMetadataCliCommandListResult list(opts)

Returns the identifiers of all commands, or commands in a specific namespace.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::MetadataCliCommandApi.new
opts = {
  path: 'path_example' # String | The dot-separated path of the namespace for which command identifiers should be returned.
}

begin
  #Returns the identifiers of all commands, or commands in a specific namespace.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataCliCommandApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| The dot-separated path of the namespace for which command identifiers should be returned. | [optional] 

### Return type

[**VapiMetadataCliCommandListResult**](VapiMetadataCliCommandListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



