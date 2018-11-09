# VSphereAutomation::VCenter::VcenterVchaConnectionSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | IP Address or DNS of the vCenter. | 
**port** | **Integer** | Port number. If unset, port 443 will be used. | [optional] 
**ssl_thumbprint** | **String** | SHA1 hash of the server SSL certificate. If unset, empty ssl thumbprint is assumed. | [optional] 
**username** | **String** | Username to access the server. This field is currently required. If unset, an error is returned. In the future, if this field is unset, the system will attempt to identify the user. If a user cannot be identified, then the requested operation will fail. | [optional] 
**password** | **String** | Password for the specified user. This field is currently required. If unset, an empty password is assumed. In the future, if this field is unset, the system will attempt to authenticate the user. If a user cannot be identified, then the requested operation will fail. | [optional] 


