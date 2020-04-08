# VSphereAutomation::Appliance::UpdatePendingApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](UpdatePendingApi.md#get) | **GET** /rest/appliance/update/pending/{version} | Gets update information
[**install**](UpdatePendingApi.md#install) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;install | Starts operation of installing the appliance update. Will fail is the update is not staged
[**list**](UpdatePendingApi.md#list) | **GET** /rest/appliance/update/pending | Checks if new updates are available.
[**precheck**](UpdatePendingApi.md#precheck) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;precheck | Runs update precheck
[**stage**](UpdatePendingApi.md#stage) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;stage | Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
[**stage_and_install**](UpdatePendingApi.md#stage_and_install) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;stage-and-install | Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
[**validate**](UpdatePendingApi.md#validate) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;validate | Validates the user provided data before the update installation.


# **get**
> ApplianceUpdatePendingResp get(version)

Gets update information

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

[**ApplianceUpdatePendingResp**](ApplianceUpdatePendingResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **install**
> install(version, request_body)

Starts operation of installing the appliance update. Will fail is the update is not staged

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

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version
request_body = Appliance::ApplianceUpdatePendingInstall.new # ApplianceUpdatePendingInstall | 

begin
  #Starts operation of installing the appliance update. Will fail is the update is not staged
  api_instance.install(version, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->install: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 
 **request_body** | [**ApplianceUpdatePendingInstall**](ApplianceUpdatePendingInstall.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ApplianceUpdatePendingListResp list(source_type, opts)

Checks if new updates are available.

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

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
source_type = 'source_type_example' # String | The {@name SourceType} {@term enumerated type} defines the supported types of sources of updates.
opts = {
  url: 'url_example' # String | specific URL to check at
}

begin
  #Checks if new updates are available.
  result = api_instance.list(source_type, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_type** | **String**| The {@name SourceType} {@term enumerated type} defines the supported types of sources of updates. | 
 **url** | **String**| specific URL to check at | [optional] 

### Return type

[**ApplianceUpdatePendingListResp**](ApplianceUpdatePendingListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **precheck**
> ApplianceUpdatePendingPrecheckResp precheck(version)

Runs update precheck

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

[**ApplianceUpdatePendingPrecheckResp**](ApplianceUpdatePendingPrecheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stage**
> stage(version)

Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stage_and_install**
> stage_and_install(version, request_body)

Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL

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

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version
request_body = Appliance::ApplianceUpdatePendingStageAndInstall.new # ApplianceUpdatePendingStageAndInstall | 

begin
  #Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
  api_instance.stage_and_install(version, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->stage_and_install: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 
 **request_body** | [**ApplianceUpdatePendingStageAndInstall**](ApplianceUpdatePendingStageAndInstall.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **validate**
> ApplianceUpdatePendingValidateResp validate(version, request_body)

Validates the user provided data before the update installation.

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

api_instance = VSphereAutomation::Appliance::UpdatePendingApi.new
version = 'version_example' # String | Update version
request_body = Appliance::ApplianceUpdatePendingValidate.new # ApplianceUpdatePendingValidate | 

begin
  #Validates the user provided data before the update installation.
  result = api_instance.validate(version, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePendingApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Update version | 
 **request_body** | [**ApplianceUpdatePendingValidate**](ApplianceUpdatePendingValidate.md)|  | 

### Return type

[**ApplianceUpdatePendingValidateResp**](ApplianceUpdatePendingValidateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



