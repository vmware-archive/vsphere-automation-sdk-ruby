# VSphereAutomation::Appliance::RecoveryReconciliationJobApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RecoveryReconciliationJobApi.md#create) | **POST** /appliance/recovery/reconciliation/job | Initiate reconciliation.
[**get**](RecoveryReconciliationJobApi.md#get) | **GET** /appliance/recovery/reconciliation/job | Get reconciliation job progress/result.


# **create**
> ApplianceRecoveryReconciliationJobCreateResult create(request_body)

Initiate reconciliation.

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

api_instance = VSphereAutomation::Appliance::RecoveryReconciliationJobApi.new
request_body = Appliance::ApplianceRecoveryReconciliationJobCreate.new # ApplianceRecoveryReconciliationJobCreate | 

begin
  #Initiate reconciliation.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryReconciliationJobApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceRecoveryReconciliationJobCreate**](ApplianceRecoveryReconciliationJobCreate.md)|  | 

### Return type

[**ApplianceRecoveryReconciliationJobCreateResult**](ApplianceRecoveryReconciliationJobCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ApplianceRecoveryReconciliationJobResult get

Get reconciliation job progress/result.

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

api_instance = VSphereAutomation::Appliance::RecoveryReconciliationJobApi.new

begin
  #Get reconciliation job progress/result.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryReconciliationJobApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryReconciliationJobResult**](ApplianceRecoveryReconciliationJobResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



