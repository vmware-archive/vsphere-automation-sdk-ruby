# VSphereAutomation::Appliance::UpdatePendingApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](UpdatePendingApi.md#get) | **GET** /appliance/update/pending/{version} | Gets update information
[**install**](UpdatePendingApi.md#install) | **POST** /appliance/update/pending/{version}?action&#x3D;install | Starts operation of installing the appliance update. Will fail is the update is not staged
[**list**](UpdatePendingApi.md#list) | **GET** /appliance/update/pending | Checks if new updates are available.
[**precheck**](UpdatePendingApi.md#precheck) | **POST** /appliance/update/pending/{version}?action&#x3D;precheck | Runs update precheck
[**stage**](UpdatePendingApi.md#stage) | **POST** /appliance/update/pending/{version}?action&#x3D;stage | Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
[**stage_and_install**](UpdatePendingApi.md#stage_and_install) | **POST** /appliance/update/pending/{version}?action&#x3D;stage-and-install | Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
[**validate**](UpdatePendingApi.md#validate) | **POST** /appliance/update/pending/{version}?action&#x3D;validate | Validates the user provided data before the update installation.


# **get**
> ApplianceUpdatePendingResult get(version)

Gets update information

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version

begin
  #Gets update information
  result = api_instance.get(version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 

### Return type

[**ApplianceUpdatePendingResult**](ApplianceUpdatePendingResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **install**
> install(version, opts)

Starts operation of installing the appliance update. Will fail is the update is not staged

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version
opts = {
  appliance_update_pending_install: VSphereAutomation::ApplianceUpdatePendingInstall.new # ApplianceUpdatePendingInstall | 
}

begin
  #Starts operation of installing the appliance update. Will fail is the update is not staged
  api_instance.install(version, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->install: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 
 **appliance_update_pending_install** | [**ApplianceUpdatePendingInstall**](ApplianceUpdatePendingInstall.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> ApplianceUpdatePendingListResult list

Checks if new updates are available.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new

begin
  #Checks if new updates are available.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceUpdatePendingListResult**](ApplianceUpdatePendingListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **precheck**
> ApplianceUpdatePendingPrecheckResult precheck(version)

Runs update precheck

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version

begin
  #Runs update precheck
  result = api_instance.precheck(version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->precheck: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 

### Return type

[**ApplianceUpdatePendingPrecheckResult**](ApplianceUpdatePendingPrecheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **stage**
> stage(version)

Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version

begin
  #Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
  api_instance.stage(version)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **stage_and_install**
> stage_and_install(version, opts)

Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version
opts = {
  appliance_update_pending_stage_and_install: VSphereAutomation::ApplianceUpdatePendingStageAndInstall.new # ApplianceUpdatePendingStageAndInstall | 
}

begin
  #Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
  api_instance.stage_and_install(version, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->stage_and_install: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 
 **appliance_update_pending_stage_and_install** | [**ApplianceUpdatePendingStageAndInstall**](ApplianceUpdatePendingStageAndInstall.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **validate**
> ApplianceUpdatePendingValidateResult validate(version, opts)

Validates the user provided data before the update installation.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version
opts = {
  appliance_update_pending_validate: VSphereAutomation::ApplianceUpdatePendingValidate.new # ApplianceUpdatePendingValidate | 
}

begin
  #Validates the user provided data before the update installation.
  result = api_instance.validate(version, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 
 **appliance_update_pending_validate** | [**ApplianceUpdatePendingValidate**](ApplianceUpdatePendingValidate.md)|  | [optional] 

### Return type

[**ApplianceUpdatePendingValidateResult**](ApplianceUpdatePendingValidateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



