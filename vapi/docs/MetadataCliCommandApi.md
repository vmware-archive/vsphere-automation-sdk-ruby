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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VapiMetadataCliCommandResult get(vapi_metadata_cli_command_get)

Retrieves information about a command including information about how to execute that command.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataCliCommandApi.new
vapi_metadata_cli_command_get = VSphereAutomation::VapiMetadataCliCommandGet.new # VapiMetadataCliCommandGet | 

begin
  #Retrieves information about a command including information about how to execute that command.
  result = api_instance.get(vapi_metadata_cli_command_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataCliCommandApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vapi_metadata_cli_command_get** | [**VapiMetadataCliCommandGet**](VapiMetadataCliCommandGet.md)|  | 

### Return type

[**VapiMetadataCliCommandResult**](VapiMetadataCliCommandResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> VapiMetadataCliCommandListResult list(opts)

Returns the identifiers of all commands, or commands in a specific namespace.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



