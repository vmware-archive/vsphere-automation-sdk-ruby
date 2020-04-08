# VSphereAutomation::Appliance::RecoveryBackupPartsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RecoveryBackupPartsApi.md#get) | **GET** /rest/appliance/recovery/backup/parts/{id} | Gets the size (in MB) of the part.
[**list**](RecoveryBackupPartsApi.md#list) | **GET** /rest/appliance/recovery/backup/parts | Gets a list of the backup parts.


# **get**
> ApplianceRecoveryBackupPartsResp get(id)

Gets the size (in MB) of the part.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::RecoveryBackupPartsApi.new
id = 'id_example' # String | Identifier of the part.

begin
  #Gets the size (in MB) of the part.
  result = api_instance.get(id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupPartsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identifier of the part. | 

### Return type

[**ApplianceRecoveryBackupPartsResp**](ApplianceRecoveryBackupPartsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ApplianceRecoveryBackupPartsListResp list

Gets a list of the backup parts.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::RecoveryBackupPartsApi.new

begin
  #Gets a list of the backup parts.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupPartsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryBackupPartsListResp**](ApplianceRecoveryBackupPartsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



