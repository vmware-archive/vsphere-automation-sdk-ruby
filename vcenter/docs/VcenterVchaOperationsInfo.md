# VSphereAutomation::VCenter::VcenterVchaOperationsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disabled** | **Array&lt;String&gt;** | Identifiers of the operations that are current disabled. These operation strings are one of CLUSTER_DEPLOY_OP, CLUSTER_FAILOVER_OP, PASSIVE_REDEPLOY_OP, WITNESS_REDEPLOY_OP, MODE_SET_OP, CLUSTER_UNDEPLOY_OP and CLUSTER_GET_OP. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.operation. | 
**active** | **Array&lt;String&gt;** | Identifiers of the operations that are currently running. These operation strings are one of CLUSTER_DEPLOY_OP, CLUSTER_FAILOVER_OP, PASSIVE_REDEPLOY_OP, WITNESS_REDEPLOY_OP, MODE_SET_OP, and CLUSTER_UNDEPLOY_OP. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.operation. | 


