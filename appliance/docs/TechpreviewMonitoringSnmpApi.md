# VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable**](TechpreviewMonitoringSnmpApi.md#disable) | **POST** /appliance/techpreview/monitoring/snmp/disable | Stop an enabled SNMP agent.
[**enable**](TechpreviewMonitoringSnmpApi.md#enable) | **POST** /appliance/techpreview/monitoring/snmp/enable | Start a disabled SNMP agent.
[**get**](TechpreviewMonitoringSnmpApi.md#get) | **GET** /appliance/techpreview/monitoring/snmp | Return an SNMP agent configuration.
[**hash**](TechpreviewMonitoringSnmpApi.md#hash) | **POST** /appliance/techpreview/monitoring/snmp/hash | Generate localized keys for secure SNMPv3 communications.
[**limits**](TechpreviewMonitoringSnmpApi.md#limits) | **GET** /appliance/techpreview/monitoring/snmp/limits | Get SNMP limits information.
[**reset**](TechpreviewMonitoringSnmpApi.md#reset) | **POST** /appliance/techpreview/monitoring/snmp/reset | Restore settings to factory defaults.
[**set**](TechpreviewMonitoringSnmpApi.md#set) | **PUT** /appliance/techpreview/monitoring/snmp | Set SNMP configuration.
[**stats**](TechpreviewMonitoringSnmpApi.md#stats) | **GET** /appliance/techpreview/monitoring/snmp/stats | Generate diagnostics report for snmp agent.
[**test**](TechpreviewMonitoringSnmpApi.md#test) | **POST** /appliance/techpreview/monitoring/snmp/test | Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).


# **disable**
> disable

Stop an enabled SNMP agent.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new

begin
  #Stop an enabled SNMP agent.
  api_instance.disable
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->disable: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **enable**
> enable

Start a disabled SNMP agent.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new

begin
  #Start a disabled SNMP agent.
  api_instance.enable
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->enable: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> ApplianceTechpreviewMonitoringSnmpResult get

Return an SNMP agent configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new

begin
  #Return an SNMP agent configuration.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewMonitoringSnmpResult**](ApplianceTechpreviewMonitoringSnmpResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **hash**
> ApplianceTechpreviewMonitoringSnmpHashResult hash(appliance_techpreview_monitoring_snmp_hash)

Generate localized keys for secure SNMPv3 communications.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new
appliance_techpreview_monitoring_snmp_hash = VSphereAutomation::ApplianceTechpreviewMonitoringSnmpHash.new # ApplianceTechpreviewMonitoringSnmpHash | 

begin
  #Generate localized keys for secure SNMPv3 communications.
  result = api_instance.hash(appliance_techpreview_monitoring_snmp_hash)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_techpreview_monitoring_snmp_hash** | [**ApplianceTechpreviewMonitoringSnmpHash**](ApplianceTechpreviewMonitoringSnmpHash.md)|  | 

### Return type

[**ApplianceTechpreviewMonitoringSnmpHashResult**](ApplianceTechpreviewMonitoringSnmpHashResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **limits**
> ApplianceTechpreviewMonitoringSnmpLimitsResult limits

Get SNMP limits information.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new

begin
  #Get SNMP limits information.
  result = api_instance.limits
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->limits: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewMonitoringSnmpLimitsResult**](ApplianceTechpreviewMonitoringSnmpLimitsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **reset**
> reset

Restore settings to factory defaults.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new

begin
  #Restore settings to factory defaults.
  api_instance.reset
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->reset: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_techpreview_monitoring_snmp_set)

Set SNMP configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new
appliance_techpreview_monitoring_snmp_set = VSphereAutomation::ApplianceTechpreviewMonitoringSnmpSet.new # ApplianceTechpreviewMonitoringSnmpSet | 

begin
  #Set SNMP configuration.
  api_instance.set(appliance_techpreview_monitoring_snmp_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_techpreview_monitoring_snmp_set** | [**ApplianceTechpreviewMonitoringSnmpSet**](ApplianceTechpreviewMonitoringSnmpSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **stats**
> ApplianceTechpreviewMonitoringSnmpStatsResult stats

Generate diagnostics report for snmp agent.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new

begin
  #Generate diagnostics report for snmp agent.
  result = api_instance.stats
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->stats: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewMonitoringSnmpStatsResult**](ApplianceTechpreviewMonitoringSnmpStatsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **test**
> ApplianceTechpreviewMonitoringSnmpTestResult test

Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new

begin
  #Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).
  result = api_instance.test
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->test: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewMonitoringSnmpTestResult**](ApplianceTechpreviewMonitoringSnmpTestResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



