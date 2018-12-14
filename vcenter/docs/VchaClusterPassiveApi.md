# VSphereAutomation::VCenter::VchaClusterPassiveApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VchaClusterPassiveApi.md#check) | **POST** /vcenter/vcha/cluster/passive?action&#x3D;check | Validates the specified passive node&#39;s placement configuration.
[**redeploytask**](VchaClusterPassiveApi.md#redeploytask) | **POST** /vcenter/vcha/cluster/passive?action&#x3D;redeploy | Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.


# **check**
> VcenterVchaClusterPassiveCheckResult check(vcenter_vcha_cluster_passive_check)

Validates the specified passive node's placement configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterPassiveApi.new
vcenter_vcha_cluster_passive_check = VSphereAutomation::VcenterVchaClusterPassiveCheck.new # VcenterVchaClusterPassiveCheck | 

begin
  #Validates the specified passive node's placement configuration.
  result = api_instance.check(vcenter_vcha_cluster_passive_check)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterPassiveApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_passive_check** | [**VcenterVchaClusterPassiveCheck**](VcenterVchaClusterPassiveCheck.md)|  | 

### Return type

[**VcenterVchaClusterPassiveCheckResult**](VcenterVchaClusterPassiveCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **redeploytask**
> VcenterVchaClusterPassiveRedeployTaskResult redeploytask(vcenter_vcha_cluster_passive_redeploy_task)

Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterPassiveApi.new
vcenter_vcha_cluster_passive_redeploy_task = VSphereAutomation::VcenterVchaClusterPassiveRedeployTask.new # VcenterVchaClusterPassiveRedeployTask | 

begin
  #Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
  result = api_instance.redeploytask(vcenter_vcha_cluster_passive_redeploy_task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterPassiveApi->redeploytask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_passive_redeploy_task** | [**VcenterVchaClusterPassiveRedeployTask**](VcenterVchaClusterPassiveRedeployTask.md)|  | 

### Return type

[**VcenterVchaClusterPassiveRedeployTaskResult**](VcenterVchaClusterPassiveRedeployTaskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



