# VSphereAutomation::Appliance::RecoveryBackupSystemNameApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RecoveryBackupSystemNameApi.md#list) | **GET** /appliance/recovery/backup/system-name | Returns a list of system names for which backup archives exist under {@param.name locSpec}.


# **list**
> ApplianceRecoveryBackupSystemNameListResult list(loc_spec_location, opts)

Returns a list of system names for which backup archives exist under {@param.name locSpec}.

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameApi.new
loc_spec_location = 'loc_spec_location_example' # String | Backup location URL.
opts = {
  loc_spec_location_user: 'loc_spec_location_user_example', # String | Username for the given location.
  loc_spec_location_password: 'loc_spec_location_password_example' # String | Password for the given location.
}

begin
  #Returns a list of system names for which backup archives exist under {@param.name locSpec}.
  result = api_instance.list(loc_spec_location, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSystemNameApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loc_spec_location** | **String**| Backup location URL. | 
 **loc_spec_location_user** | **String**| Username for the given location. | [optional] 
 **loc_spec_location_password** | **String**| Password for the given location. | [optional] 

### Return type

[**ApplianceRecoveryBackupSystemNameListResult**](ApplianceRecoveryBackupSystemNameListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



