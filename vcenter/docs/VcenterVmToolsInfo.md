# VSphereAutomation::VCenter::VcenterVmToolsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_update_supported** | **Boolean** | Set if the virtual machine supports auto-upgrading Tools via Tools.UpgradePolicy. | 
**error** | **String** | Error that happened, if any, during last attempt to upgrade or install Tools. Only set if a the last Tools install or upgrade attempt failed. | [optional] 
**install_attempt_count** | **Integer** | Number of attempts that have been made to install or upgrade the version of Tools installed on this virtual machine. Only set if there was a recent Tools install or upgrade attempt. | [optional] 
**install_type** | [**VcenterVmToolsToolsInstallType**](VcenterVmToolsToolsInstallType.md) |  | [optional] 
**run_state** | [**VcenterVmToolsRunState**](VcenterVmToolsRunState.md) |  | 
**upgrade_policy** | [**VcenterVmToolsUpgradePolicy**](VcenterVmToolsUpgradePolicy.md) |  | 
**version** | **String** | Version of VMware Tools installed on the guest operating system. This is a human-readable value that should not be parsed. Only set if Tools is installed. | [optional] 
**version_number** | **Integer** | Version of VMware Tools installed on the guest operating system. Only set if Tools is installed. This is an integer constructed as follows: (((MJR) &lt;&lt; 10) + ((MNR) &lt;&lt; 5) + (REV)) Where MJR is tha major verson, MNR is the minor version and REV is the revision. Tools version &#x3D; T Tools Version Major &#x3D; MJR &#x3D; (T / 1024) Tools Version Minor &#x3D; MNR &#x3D; ((T % 1024) / 32) Tools Version Revision &#x3D; BASE &#x3D; ((T % 1024) % 32) Tools actual version &#x3D; MJR.MNR.REV | [optional] 
**version_status** | [**VcenterVmToolsVersionStatus**](VcenterVmToolsVersionStatus.md) |  | [optional] 


