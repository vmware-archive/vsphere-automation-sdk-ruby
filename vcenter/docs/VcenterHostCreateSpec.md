# VSphereAutomation::VCenter::VcenterHostCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | The IP address or DNS resolvable name of the host. | 
**port** | **Integer** | The port of the host. If unset, port 443 will be used. | [optional] 
**user_name** | **String** | The administrator account on the host. | 
**password** | **String** | The password for the administrator account on the host. | 
**folder** | **String** | Host and cluster folder in which the new standalone host should be created. This field is currently required. In the future, if this field is unset, the system will attempt to choose a suitable folder for the host; if a folder cannot be chosen, the host creation operation will fail. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Folder. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Folder. | [optional] 
**thumbprint_verification** | [**VcenterHostCreateSpecThumbprintVerification**](VcenterHostCreateSpecThumbprintVerification.md) |  | 
**thumbprint** | **String** | The thumbprint of the SSL certificate, which the host is expected to have. The thumbprint is always computed using the SHA1 hash and is the string representation of that hash in the format: xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx where, &#39;x&#39; represents a hexadecimal digit. This field is optional and it is only relevant when the value of Host.CreateSpec.thumbprint-verification is THUMBPRINT. | [optional] 
**force_add** | **BOOLEAN** | Whether host should be added to the vCenter Server even if it is being managed by another vCenter Server. The original vCenterServer loses connection to the host. If unset, forceAdd is default to false. | [optional] 


