# VSphereAutomation::VCenter::VchaClusterWitnessApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VchaClusterWitnessApi.md#check) | **POST** /vcenter/vcha/cluster/witness?action&#x3D;check | Validates the specified witness node&#39;s placement configuration.
[**redeploytask**](VchaClusterWitnessApi.md#redeploytask) | **POST** /vcenter/vcha/cluster/witness?action&#x3D;redeploy | Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.


# **check**
> VcenterVchaClusterWitnessCheckResult check(vcenter_vcha_cluster_witness_check)

Validates the specified witness node's placement configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterWitnessApi.new
vcenter_vcha_cluster_witness_check = VSphereAutomation::VcenterVchaClusterWitnessCheck.new # VcenterVchaClusterWitnessCheck | 

begin
  #Validates the specified witness node's placement configuration.
  result = api_instance.check(vcenter_vcha_cluster_witness_check)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterWitnessApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_witness_check** | [**VcenterVchaClusterWitnessCheck**](VcenterVchaClusterWitnessCheck.md)|  | 

### Return type

[**VcenterVchaClusterWitnessCheckResult**](VcenterVchaClusterWitnessCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **redeploytask**
> VcenterVchaClusterWitnessRedeployTaskResult redeploytask(vcenter_vcha_cluster_witness_redeploy_task)

Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterWitnessApi.new
vcenter_vcha_cluster_witness_redeploy_task = VSphereAutomation::VcenterVchaClusterWitnessRedeployTask.new # VcenterVchaClusterWitnessRedeployTask | 

begin
  #Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
  result = api_instance.redeploytask(vcenter_vcha_cluster_witness_redeploy_task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterWitnessApi->redeploytask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_witness_redeploy_task** | [**VcenterVchaClusterWitnessRedeployTask**](VcenterVchaClusterWitnessRedeployTask.md)|  | 

### Return type

[**VcenterVchaClusterWitnessRedeployTaskResult**](VcenterVchaClusterWitnessRedeployTaskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



