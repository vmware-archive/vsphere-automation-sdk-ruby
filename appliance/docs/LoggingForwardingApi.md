# VSphereAutomation::Appliance::LoggingForwardingApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LoggingForwardingApi.md#get) | **GET** /rest/appliance/logging/forwarding | Returns the configuration for forwarding log messages to remote logging servers.
[**set**](LoggingForwardingApi.md#set) | **PUT** /rest/appliance/logging/forwarding | Sets the configuration for forwarding log messages to remote log servers.
[**test**](LoggingForwardingApi.md#test) | **POST** /rest/appliance/logging/forwarding?action&#x3D;test | Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \&quot;This is a diagnostic log test message from vCenter Server.\&quot;


# **get**
> ApplianceLoggingForwardingResp get

Returns the configuration for forwarding log messages to remote logging servers.

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

[**ApplianceLoggingForwardingResp**](ApplianceLoggingForwardingResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Sets the configuration for forwarding log messages to remote log servers.

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

api_instance = VSphereAutomation::Appliance::LoggingForwardingApi.new
request_body = Appliance::ApplianceLoggingForwardingSet.new # ApplianceLoggingForwardingSet | 

begin
  #Sets the configuration for forwarding log messages to remote log servers.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LoggingForwardingApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceLoggingForwardingSet**](ApplianceLoggingForwardingSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **test**
> ApplianceLoggingForwardingTestResp test(opts)

Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \"This is a diagnostic log test message from vCenter Server.\"

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

api_instance = VSphereAutomation::Appliance::LoggingForwardingApi.new
opts = {
  request_body: Appliance::ApplianceLoggingForwardingTest.new # ApplianceLoggingForwardingTest | 
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
 **request_body** | [**ApplianceLoggingForwardingTest**](ApplianceLoggingForwardingTest.md)|  | [optional] 

### Return type

[**ApplianceLoggingForwardingTestResp**](ApplianceLoggingForwardingTestResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



