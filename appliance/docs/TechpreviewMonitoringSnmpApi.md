# VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable**](TechpreviewMonitoringSnmpApi.md#disable) | **POST** /rest/appliance/techpreview/monitoring/snmp/disable | Stop an enabled SNMP agent.
[**enable**](TechpreviewMonitoringSnmpApi.md#enable) | **POST** /rest/appliance/techpreview/monitoring/snmp/enable | Start a disabled SNMP agent.
[**get**](TechpreviewMonitoringSnmpApi.md#get) | **GET** /rest/appliance/techpreview/monitoring/snmp | Return an SNMP agent configuration.
[**hash**](TechpreviewMonitoringSnmpApi.md#hash) | **POST** /rest/appliance/techpreview/monitoring/snmp/hash | Generate localized keys for secure SNMPv3 communications.
[**limits**](TechpreviewMonitoringSnmpApi.md#limits) | **GET** /rest/appliance/techpreview/monitoring/snmp/limits | Get SNMP limits information.
[**reset**](TechpreviewMonitoringSnmpApi.md#reset) | **POST** /rest/appliance/techpreview/monitoring/snmp/reset | Restore settings to factory defaults.
[**set**](TechpreviewMonitoringSnmpApi.md#set) | **PUT** /rest/appliance/techpreview/monitoring/snmp | Set SNMP configuration.
[**stats**](TechpreviewMonitoringSnmpApi.md#stats) | **GET** /rest/appliance/techpreview/monitoring/snmp/stats | Generate diagnostics report for snmp agent.
[**test**](TechpreviewMonitoringSnmpApi.md#test) | **POST** /rest/appliance/techpreview/monitoring/snmp/test | Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).


# **disable**
> disable

Stop an enabled SNMP agent.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable**
> enable

Start a disabled SNMP agent.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceTechpreviewMonitoringSnmpResp get

Return an SNMP agent configuration.

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

[**ApplianceTechpreviewMonitoringSnmpResp**](ApplianceTechpreviewMonitoringSnmpResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **hash**
> ApplianceTechpreviewMonitoringSnmpHashResp hash(request_body)

Generate localized keys for secure SNMPv3 communications.

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

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new
request_body = Appliance::ApplianceTechpreviewMonitoringSnmpHash.new # ApplianceTechpreviewMonitoringSnmpHash | 

begin
  #Generate localized keys for secure SNMPv3 communications.
  result = api_instance.hash(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewMonitoringSnmpHash**](ApplianceTechpreviewMonitoringSnmpHash.md)|  | 

### Return type

[**ApplianceTechpreviewMonitoringSnmpHashResp**](ApplianceTechpreviewMonitoringSnmpHashResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **limits**
> ApplianceTechpreviewMonitoringSnmpLimitsResp limits

Get SNMP limits information.

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

[**ApplianceTechpreviewMonitoringSnmpLimitsResp**](ApplianceTechpreviewMonitoringSnmpLimitsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reset**
> reset

Restore settings to factory defaults.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set SNMP configuration.

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

api_instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new
request_body = Appliance::ApplianceTechpreviewMonitoringSnmpSet.new # ApplianceTechpreviewMonitoringSnmpSet | 

begin
  #Set SNMP configuration.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewMonitoringSnmpApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewMonitoringSnmpSet**](ApplianceTechpreviewMonitoringSnmpSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **stats**
> ApplianceTechpreviewMonitoringSnmpStatsResp stats

Generate diagnostics report for snmp agent.

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

[**ApplianceTechpreviewMonitoringSnmpStatsResp**](ApplianceTechpreviewMonitoringSnmpStatsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **test**
> ApplianceTechpreviewMonitoringSnmpTestResp test

Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).

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

[**ApplianceTechpreviewMonitoringSnmpTestResp**](ApplianceTechpreviewMonitoringSnmpTestResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



