# VSphereAutomation::Appliance::InfraprofileConfigsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export**](InfraprofileConfigsApi.md#export) | **POST** /api/appliance/infraprofile/configs?action&#x3D;export | Exports the desired profile specification. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
[**import_profile_task**](InfraprofileConfigsApi.md#import_profile_task) | **POST** /api/appliance/infraprofile/configs?action&#x3D;import&amp;vmw-task&#x3D;true | Imports the desired profile specification.
[**list**](InfraprofileConfigsApi.md#list) | **GET** /api/appliance/infraprofile/configs | List all the profiles which are registered. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
[**validate_task**](InfraprofileConfigsApi.md#validate_task) | **POST** /api/appliance/infraprofile/configs?action&#x3D;validate&amp;vmw-task&#x3D;true | Validates the desired profile specification.


# **export**
> String export(opts)

Exports the desired profile specification. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  

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

api_instance = VSphereAutomation::Appliance::InfraprofileConfigsApi.new
opts = {
  request_body: Appliance::ApplianceInfraprofileConfigsProfilesSpec.new # ApplianceInfraprofileConfigsProfilesSpec | 
}

begin
  #Exports the desired profile specification. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
  result = api_instance.export(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InfraprofileConfigsApi->export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **ApplianceInfraprofileConfigsProfilesSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **import_profile_task**
> String import_profile_task(opts)

Imports the desired profile specification.

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

api_instance = VSphereAutomation::Appliance::InfraprofileConfigsApi.new
opts = {
  request_body: Appliance::ApplianceInfraprofileConfigsImportProfileSpec.new # ApplianceInfraprofileConfigsImportProfileSpec | 
}

begin
  #Imports the desired profile specification.
  result = api_instance.import_profile_task(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InfraprofileConfigsApi->import_profile_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **ApplianceInfraprofileConfigsImportProfileSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> Array&lt;ApplianceInfraprofileConfigsProfileInfo&gt; list

List all the profiles which are registered. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  

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

api_instance = VSphereAutomation::Appliance::InfraprofileConfigsApi.new

begin
  #List all the profiles which are registered. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InfraprofileConfigsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApplianceInfraprofileConfigsProfileInfo&gt;**](ApplianceInfraprofileConfigsProfileInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **validate_task**
> String validate_task(opts)

Validates the desired profile specification.

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

api_instance = VSphereAutomation::Appliance::InfraprofileConfigsApi.new
opts = {
  request_body: Appliance::ApplianceInfraprofileConfigsImportProfileSpec.new # ApplianceInfraprofileConfigsImportProfileSpec | 
}

begin
  #Validates the desired profile specification.
  result = api_instance.validate_task(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InfraprofileConfigsApi->validate_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **ApplianceInfraprofileConfigsImportProfileSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



