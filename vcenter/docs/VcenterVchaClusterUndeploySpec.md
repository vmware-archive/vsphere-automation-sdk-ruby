# VSphereAutomation::VCenter::VcenterVchaClusterUndeploySpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vc_spec** | [**VcenterVchaCredentialsSpec**](VcenterVchaCredentialsSpec.md) |  | [optional] 
**force_delete** | **BOOLEAN** | Flag controlling in what circumstances the virtual machines will be deleted. For this flag to take effect, the VCHA cluster should have been successfully configured using automatic deployment.     -  If true, the Cluster.UndeploySpec.vms field will be ignored, the VCHA cluster specific information is removed, and the passive and witness virtual machines will be deleted.    -  If false, the Cluster.UndeploySpec.vms field contains the information identifying the passive and witness virtual machines.        &#x3D;  If the Cluster.UndeploySpec.vms field is set, then it will be validated prior to deleting the passive and witness virtual machines and VCHA cluster specific information is removed.      &#x3D;  If the Cluster.UndeploySpec.vms field is unset, then the passive and witness virtual machines will not be deleted. The customer should delete them in order to cleanup completely. VCHA cluster specific information is removed.    If unset, the Cluster.UndeploySpec.vms field contains the information identifying the passive and witness virtual machines.     -  If the Cluster.UndeploySpec.vms field is set, then it will be validated prior to deleting the passive and witness virtual machines. VCHA cluster specific information is removed.    -  If the Cluster.UndeploySpec.vms field is unset, then the passive and witness virtual machines will not be deleted. The customer should delete them in order to cleanup completely. VCHA cluster specific information is removed.  | [optional] 
**vms** | [**VcenterVchaClusterVmInfo**](VcenterVchaClusterVmInfo.md) |  | [optional] 


