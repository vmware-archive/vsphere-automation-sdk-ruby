# VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RecoveryBackupSystemNameArchiveApi.md#get) | **GET** /appliance/recovery/backup/system-name/{system_name}/archives/{archive} | Returns the information for backup corresponding to given backup location and system name.
[**list**](RecoveryBackupSystemNameArchiveApi.md#list) | **GET** /appliance/recovery/backup/system-name/{system_name}/archives | Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.


# **get**
> ApplianceRecoveryBackupSystemNameArchiveResult get(system_name, spec_location, archive, opts)

Returns the information for backup corresponding to given backup location and system name.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi.new
system_name = 'system_name_example' # String | System name identifier.
spec_location = 'spec_location_example' # String | Backup location URL.
archive = 'archive_example' # String | Archive identifier.
opts = {
  spec_location_user: 'spec_location_user_example', # String | Username for the given location.
  spec_location_password: 'spec_location_password_example' # String | Password for the given location.
}

begin
  #Returns the information for backup corresponding to given backup location and system name.
  result = api_instance.get(system_name, spec_location, archive, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSystemNameArchiveApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_name** | **String**| System name identifier. | 
 **spec_location** | **String**| Backup location URL. | 
 **archive** | **String**| Archive identifier. | 
 **spec_location_user** | **String**| Username for the given location. | [optional] 
 **spec_location_password** | **String**| Password for the given location. | [optional] 

### Return type

[**ApplianceRecoveryBackupSystemNameArchiveResult**](ApplianceRecoveryBackupSystemNameArchiveResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceRecoveryBackupSystemNameArchiveListResult list(system_name, loc_spec_location, opts)

Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi.new
system_name = 'system_name_example' # String | System name identifier.
loc_spec_location = 'loc_spec_location_example' # String | Backup location URL.
opts = {
  filter_spec_start_timestamp: 'filter_spec_start_timestamp_example', # String | Backup must have been taken on or after this time to match the filter.
  filter_spec_end_timestamp: 'filter_spec_end_timestamp_example', # String | Backup must have been taken on or before this time to match the filter.
  filter_spec_comment_substring: 'filter_spec_comment_substring_example', # String | Backup comment must contain this {@term string} to match the filter.
  filter_spec_max_results: 56, # Integer | Limit result to a max count of most recent backups.
  loc_spec_location_user: 'loc_spec_location_user_example', # String | Username for the given location.
  loc_spec_location_password: 'loc_spec_location_password_example' # String | Password for the given location.
}

begin
  #Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
  result = api_instance.list(system_name, loc_spec_location, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSystemNameArchiveApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_name** | **String**| System name identifier. | 
 **loc_spec_location** | **String**| Backup location URL. | 
 **filter_spec_start_timestamp** | **String**| Backup must have been taken on or after this time to match the filter. | [optional] 
 **filter_spec_end_timestamp** | **String**| Backup must have been taken on or before this time to match the filter. | [optional] 
 **filter_spec_comment_substring** | **String**| Backup comment must contain this {@term string} to match the filter. | [optional] 
 **filter_spec_max_results** | **Integer**| Limit result to a max count of most recent backups. | [optional] 
 **loc_spec_location_user** | **String**| Username for the given location. | [optional] 
 **loc_spec_location_password** | **String**| Password for the given location. | [optional] 

### Return type

[**ApplianceRecoveryBackupSystemNameArchiveListResult**](ApplianceRecoveryBackupSystemNameArchiveListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



