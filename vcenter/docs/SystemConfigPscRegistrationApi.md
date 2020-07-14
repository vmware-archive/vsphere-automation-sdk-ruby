# VSphereAutomation::VCenter::SystemConfigPscRegistrationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemConfigPscRegistrationApi.md#get) | **GET** /vcenter/system-config/psc-registration | Get information of the PSC that this appliance is registered with.
[**repoint**](SystemConfigPscRegistrationApi.md#repoint) | **POST** /vcenter/system-config/psc-registration | Repoint this vCenter Server appliance to a different external PSC.


# **get**
> VcenterSystemConfigPscRegistrationResult get

Get information of the PSC that this appliance is registered with.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::SystemConfigPscRegistrationApi.new

begin
  #Get information of the PSC that this appliance is registered with.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigPscRegistrationApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterSystemConfigPscRegistrationResult**](VcenterSystemConfigPscRegistrationResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **repoint**
> repoint(request_body)

Repoint this vCenter Server appliance to a different external PSC.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::SystemConfigPscRegistrationApi.new
request_body = VCenter::VcenterSystemConfigPscRegistrationRepoint.new # VcenterSystemConfigPscRegistrationRepoint | 

begin
  #Repoint this vCenter Server appliance to a different external PSC.
  api_instance.repoint(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigPscRegistrationApi->repoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSystemConfigPscRegistrationRepoint**](VcenterSystemConfigPscRegistrationRepoint.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



