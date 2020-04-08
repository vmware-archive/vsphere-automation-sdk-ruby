# VSphereAutomation::VCenter::VchaClusterPassiveApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VchaClusterPassiveApi.md#check) | **POST** /rest/vcenter/vcha/cluster/passive?action&#x3D;check | Validates the specified passive node&#39;s placement configuration.
[**redeploy_task**](VchaClusterPassiveApi.md#redeploy_task) | **POST** /rest/vcenter/vcha/cluster/passive?action&#x3D;redeploy&amp;vmw-task&#x3D;true | Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.


# **check**
> VcenterVchaClusterPassiveCheckResp check(request_body)

Validates the specified passive node's placement configuration.

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

api_instance = VSphereAutomation::VCenter::VchaClusterPassiveApi.new
request_body = VCenter::VcenterVchaClusterPassiveCheck.new # VcenterVchaClusterPassiveCheck | 

begin
  #Validates the specified passive node's placement configuration.
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterPassiveApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterPassiveCheck**](VcenterVchaClusterPassiveCheck.md)|  | 

### Return type

[**VcenterVchaClusterPassiveCheckResp**](VcenterVchaClusterPassiveCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **redeploy_task**
> VcenterVchaClusterPassiveRedeployTaskResp redeploy_task(request_body)

Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.

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

api_instance = VSphereAutomation::VCenter::VchaClusterPassiveApi.new
request_body = VCenter::VcenterVchaClusterPassiveRedeployTask.new # VcenterVchaClusterPassiveRedeployTask | 

begin
  #Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
  result = api_instance.redeploy_task(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterPassiveApi->redeploy_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterPassiveRedeployTask**](VcenterVchaClusterPassiveRedeployTask.md)|  | 

### Return type

[**VcenterVchaClusterPassiveRedeployTaskResp**](VcenterVchaClusterPassiveRedeployTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



