# VSphereAutomation::VCenter::VcenterVchaClusterInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config_state** | [**VcenterVchaClusterConfigState**](VcenterVchaClusterConfigState.md) |  | [optional] 
**node1** | [**VcenterVchaClusterNodeInfo**](VcenterVchaClusterNodeInfo.md) |  | [optional] 
**node2** | [**VcenterVchaClusterNodeInfo**](VcenterVchaClusterNodeInfo.md) |  | [optional] 
**witness** | [**VcenterVchaClusterWitnessInfo**](VcenterVchaClusterWitnessInfo.md) |  | [optional] 
**mode** | [**VcenterVchaClusterClusterMode**](VcenterVchaClusterClusterMode.md) |  | [optional] 
**health_state** | [**VcenterVchaClusterClusterState**](VcenterVchaClusterClusterState.md) |  | [optional] 
**health_exception** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Health warning messages if the health information is unavailable. If unset, then the cluster is in a healthy state. | [optional] 
**health_warnings** | [**Array&lt;VcenterVchaClusterErrorCondition&gt;**](VcenterVchaClusterErrorCondition.md) | A collection of messages describing the reason for a non-healthy Cluster. If unset, then the cluster is in a healthy state. | [optional] 
**manual_failover_allowed** | **BOOLEAN** | Specifies if manual failover is allowed. If unset, then the cluster state healthy and manual failover allowance in accordance with the cluster mode. | [optional] 
**auto_failover_allowed** | **BOOLEAN** | Specifies if automatic failover is allowed. If unset, then the cluster state healthy and automatic failover allowance in accordance with the cluster mode. | [optional] 


