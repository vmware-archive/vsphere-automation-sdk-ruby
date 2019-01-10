# VSphereAutomation::Appliance::HealthSoftwarepackagesApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthSoftwarepackagesApi.md#get) | **GET** /appliance/health/software-packages | Get information on available software updates available in the remote vSphere Update Manager repository. Red indicates that security updates are available. Orange indicates that non-security updates are available. Green indicates that there are no updates available. Gray indicates that there was an error retreiving information on software updates.


# **get**
> ApplianceHealthSoftwarepackagesResult get

Get information on available software updates available in the remote vSphere Update Manager repository. Red indicates that security updates are available. Orange indicates that non-security updates are available. Green indicates that there are no updates available. Gray indicates that there was an error retreiving information on software updates.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthSoftwarepackagesApi.new

begin
  #Get information on available software updates available in the remote vSphere Update Manager repository. Red indicates that security updates are available. Orange indicates that non-security updates are available. Green indicates that there are no updates available. Gray indicates that there was an error retreiving information on software updates.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthSoftwarepackagesApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthSoftwarepackagesResult**](ApplianceHealthSoftwarepackagesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



