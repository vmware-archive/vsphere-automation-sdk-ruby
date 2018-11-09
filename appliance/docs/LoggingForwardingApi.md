# VSphereAutomation::Appliance::LoggingForwardingApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LoggingForwardingApi.md#get) | **GET** /appliance/logging/forwarding | Returns the configuration for forwarding log messages to remote logging servers.
[**set**](LoggingForwardingApi.md#set) | **PUT** /appliance/logging/forwarding | Sets the configuration for forwarding log messages to remote log servers.
[**test**](LoggingForwardingApi.md#test) | **POST** /appliance/logging/forwarding?action&#x3D;test | Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \&quot;This is a diagnostic log test message from vCenter Server.\&quot;


# **get**
> ApplianceLoggingForwardingResult get

Returns the configuration for forwarding log messages to remote logging servers.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::LoggingForwardingApi.new

begin
  #Returns the configuration for forwarding log messages to remote logging servers.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LoggingForwardingApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceLoggingForwardingResult**](ApplianceLoggingForwardingResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_logging_forwarding_set)

Sets the configuration for forwarding log messages to remote log servers.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::LoggingForwardingApi.new
appliance_logging_forwarding_set = VSphereAutomation::ApplianceLoggingForwardingSet.new # ApplianceLoggingForwardingSet | 

begin
  #Sets the configuration for forwarding log messages to remote log servers.
  api_instance.set(appliance_logging_forwarding_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LoggingForwardingApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_logging_forwarding_set** | [**ApplianceLoggingForwardingSet**](ApplianceLoggingForwardingSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **test**
> ApplianceLoggingForwardingTestResult test(opts)

Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \"This is a diagnostic log test message from vCenter Server.\"

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::LoggingForwardingApi.new
opts = {
  appliance_logging_forwarding_test: VSphereAutomation::ApplianceLoggingForwardingTest.new # ApplianceLoggingForwardingTest | 
}

begin
  #Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \"This is a diagnostic log test message from vCenter Server.\"
  result = api_instance.test(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LoggingForwardingApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_logging_forwarding_test** | [**ApplianceLoggingForwardingTest**](ApplianceLoggingForwardingTest.md)|  | [optional] 

### Return type

[**ApplianceLoggingForwardingTestResult**](ApplianceLoggingForwardingTestResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



