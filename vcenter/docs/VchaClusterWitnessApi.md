# VSphereAutomation::VCenter::VchaClusterWitnessApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VchaClusterWitnessApi.md#check) | **POST** /rest/vcenter/vcha/cluster/witness?action&#x3D;check | Validates the specified witness node&#39;s placement configuration.
[**redeploy_task**](VchaClusterWitnessApi.md#redeploy_task) | **POST** /rest/vcenter/vcha/cluster/witness?action&#x3D;redeploy&amp;vmw-task&#x3D;true | Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.


# **check**
> VcenterVchaClusterWitnessCheckResp check(request_body)

Validates the specified witness node's placement configuration.

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

api_instance = VSphereAutomation::VCenter::VchaClusterWitnessApi.new
request_body = VCenter::VcenterVchaClusterWitnessCheck.new # VcenterVchaClusterWitnessCheck | 

begin
  #Validates the specified witness node's placement configuration.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterWitnessApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterWitnessCheck**](VcenterVchaClusterWitnessCheck.md)|  | 

### Return type

[**VcenterVchaClusterWitnessCheckResp**](VcenterVchaClusterWitnessCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **redeploy_task**
> VcenterVchaClusterWitnessRedeployTaskResp redeploy_task(request_body)

Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.

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

api_instance = VSphereAutomation::VCenter::VchaClusterWitnessApi.new
request_body = VCenter::VcenterVchaClusterWitnessRedeployTask.new # VcenterVchaClusterWitnessRedeployTask | 

begin
  #Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
  result = api_instance.redeploy_task(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterWitnessApi->redeploy_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterWitnessRedeployTask**](VcenterVchaClusterWitnessRedeployTask.md)|  | 

### Return type

[**VcenterVchaClusterWitnessRedeployTaskResp**](VcenterVchaClusterWitnessRedeployTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



