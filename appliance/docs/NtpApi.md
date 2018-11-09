# VSphereAutomation::Appliance::NtpApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NtpApi.md#get) | **GET** /appliance/ntp | Get the NTP configuration status. If you run the &#39;timesync.get&#39; command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The &#39;ntp&#39; command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
[**set**](NtpApi.md#set) | **PUT** /appliance/ntp | Set NTP servers. This method updates old NTP servers from configuration and sets the input NTP servers in the configuration. If NTP based time synchronization is used internally, the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time synchronization is not used, this method only replaces servers in the NTP configuration.
[**test**](NtpApi.md#test) | **POST** /appliance/ntp/test | Test the connection to a list of ntp servers.


# **get**
> ApplianceNtpResult get

Get the NTP configuration status. If you run the 'timesync.get' command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The 'ntp' command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NtpApi.new

begin
  #Get the NTP configuration status. If you run the 'timesync.get' command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The 'ntp' command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NtpApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNtpResult**](ApplianceNtpResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_ntp_set)

Set NTP servers. This method updates old NTP servers from configuration and sets the input NTP servers in the configuration. If NTP based time synchronization is used internally, the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time synchronization is not used, this method only replaces servers in the NTP configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NtpApi.new
appliance_ntp_set = VSphereAutomation::ApplianceNtpSet.new # ApplianceNtpSet | 

begin
  #Set NTP servers. This method updates old NTP servers from configuration and sets the input NTP servers in the configuration. If NTP based time synchronization is used internally, the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time synchronization is not used, this method only replaces servers in the NTP configuration.
  api_instance.set(appliance_ntp_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NtpApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_ntp_set** | [**ApplianceNtpSet**](ApplianceNtpSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **test**
> ApplianceNtpTestResult test(appliance_ntp_test)

Test the connection to a list of ntp servers.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NtpApi.new
appliance_ntp_test = VSphereAutomation::ApplianceNtpTest.new # ApplianceNtpTest | 

begin
  #Test the connection to a list of ntp servers.
  result = api_instance.test(appliance_ntp_test)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NtpApi->test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_ntp_test** | [**ApplianceNtpTest**](ApplianceNtpTest.md)|  | 

### Return type

[**ApplianceNtpTestResult**](ApplianceNtpTestResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



