# VSphereAutomation::VCenter::VchaClusterWitnessApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VchaClusterWitnessApi.md#check) | **POST** /vcenter/vcha/cluster/witness?action&#x3D;check | Validates the specified witness node&#39;s placement configuration.
[**redeploytask**](VchaClusterWitnessApi.md#redeploytask) | **POST** /vcenter/vcha/cluster/witness?action&#x3D;redeploy | Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.


# **check**
> VcenterVchaClusterWitnessCheckResult check(opts)

Validates the specified witness node's placement configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterWitnessApi.new
opts = {
  vcenter_vcha_cluster_witness_check: VSphereAutomation::VcenterVchaClusterWitnessCheck.new # VcenterVchaClusterWitnessCheck | 
}

begin
  #Validates the specified witness node's placement configuration.
  result = api_instance.check(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterWitnessApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_witness_check** | [**VcenterVchaClusterWitnessCheck**](VcenterVchaClusterWitnessCheck.md)|  | [optional] 

### Return type

[**VcenterVchaClusterWitnessCheckResult**](VcenterVchaClusterWitnessCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **redeploytask**
> VcenterVchaClusterWitnessRedeploytaskResult redeploytask(opts)

Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterWitnessApi.new
opts = {
  vcenter_vcha_cluster_witness_redeploytask: VSphereAutomation::VcenterVchaClusterWitnessRedeploytask.new # VcenterVchaClusterWitnessRedeploytask | 
}

begin
  #Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
  result = api_instance.redeploytask(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterWitnessApi->redeploytask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_witness_redeploytask** | [**VcenterVchaClusterWitnessRedeploytask**](VcenterVchaClusterWitnessRedeploytask.md)|  | [optional] 

### Return type

[**VcenterVchaClusterWitnessRedeploytaskResult**](VcenterVchaClusterWitnessRedeploytaskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



