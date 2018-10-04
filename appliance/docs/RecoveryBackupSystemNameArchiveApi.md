# VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RecoveryBackupSystemNameArchiveApi.md#get) | **GET** /appliance/recovery/backup/system-name/{system_name}/archives/{archive} | Returns the information for backup corresponding to given backup location and system name.
[**list**](RecoveryBackupSystemNameArchiveApi.md#list) | **GET** /appliance/recovery/backup/system-name/{system_name}/archives | Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.


# **get**
> ApplianceRecoveryBackupSystemNameArchiveResult get(system_name, archive)

Returns the information for backup corresponding to given backup location and system name.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi.new
system_name = 'system_name_example' # String | System name identifier.
archive = 'archive_example' # String | Archive identifier.

begin
  #Returns the information for backup corresponding to given backup location and system name.
  result = api_instance.get(system_name, archive)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSystemNameArchiveApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_name** | **String**| System name identifier. | 
 **archive** | **String**| Archive identifier. | 

### Return type

[**ApplianceRecoveryBackupSystemNameArchiveResult**](ApplianceRecoveryBackupSystemNameArchiveResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceRecoveryBackupSystemNameArchiveListResult list(system_name)

Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi.new
system_name = 'system_name_example' # String | System name identifier.

begin
  #Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
  result = api_instance.list(system_name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSystemNameArchiveApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_name** | **String**| System name identifier. | 

### Return type

[**ApplianceRecoveryBackupSystemNameArchiveListResult**](ApplianceRecoveryBackupSystemNameArchiveListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



