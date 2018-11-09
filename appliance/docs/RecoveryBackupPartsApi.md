# VSphereAutomation::Appliance::RecoveryBackupPartsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RecoveryBackupPartsApi.md#get) | **GET** /appliance/recovery/backup/parts/{id} | Gets the size (in MB) of the part.
[**list**](RecoveryBackupPartsApi.md#list) | **GET** /appliance/recovery/backup/parts | Gets a list of the backup parts.


# **get**
> ApplianceRecoveryBackupPartsResult get(id)

Gets the size (in MB) of the part.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

[**ApplianceRecoveryBackupPartsResult**](ApplianceRecoveryBackupPartsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceRecoveryBackupPartsListResult list

Gets a list of the backup parts.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

[**ApplianceRecoveryBackupPartsListResult**](ApplianceRecoveryBackupPartsListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



