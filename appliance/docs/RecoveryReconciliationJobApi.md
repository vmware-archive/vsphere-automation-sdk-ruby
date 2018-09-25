# VSphereAutomation::Appliance::RecoveryReconciliationJobApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RecoveryReconciliationJobApi.md#create) | **POST** /appliance/recovery/reconciliation/job | Initiate reconciliation.
[**get**](RecoveryReconciliationJobApi.md#get) | **GET** /appliance/recovery/reconciliation/job | Get reconciliation job progress/result.


# **create**
> ApplianceRecoveryReconciliationJobCreateResult create(opts)

Initiate reconciliation.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryReconciliationJobApi.new
opts = {
  appliance_recovery_reconciliation_job_create: VSphereAutomation::ApplianceRecoveryReconciliationJobCreate.new # ApplianceRecoveryReconciliationJobCreate | 
}

begin
  #Initiate reconciliation.
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryReconciliationJobApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_recovery_reconciliation_job_create** | [**ApplianceRecoveryReconciliationJobCreate**](ApplianceRecoveryReconciliationJobCreate.md)|  | [optional] 

### Return type

[**ApplianceRecoveryReconciliationJobCreateResult**](ApplianceRecoveryReconciliationJobCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> ApplianceRecoveryReconciliationJobResult get

Get reconciliation job progress/result.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



