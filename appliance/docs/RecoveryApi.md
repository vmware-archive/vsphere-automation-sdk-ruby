# VSphereAutomation::Appliance::RecoveryApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RecoveryApi.md#get) | **GET** /appliance/recovery | Gets the properties of the appliance Recovery subsystem.


# **get**
> ApplianceRecoveryResult get

Gets the properties of the appliance Recovery subsystem.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryApi.new

begin
  #Gets the properties of the appliance Recovery subsystem.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryResult**](ApplianceRecoveryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



