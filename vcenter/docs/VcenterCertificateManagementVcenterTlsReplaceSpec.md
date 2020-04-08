# VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsReplaceSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**common_name** | **String** | The common name of the host for which certificate is generated If unset will default to PNID of host. | [optional] 
**country** | **String** | Country field in certificate subject | 
**email_address** | **String** | Email field in Certificate extensions | 
**key_size** | **Integer** | The size of the key to be used for public and private key generation. If unset the key size will be &#39;2048&#39;. | [optional] 
**locality** | **String** | Locality field in certificate subject | 
**organization** | **String** | Organization field in certificate subject | 
**organization_unit** | **String** | Organization unit field in certificate subject | 
**state_or_province** | **String** | State field in certificate subject | 
**subject_alt_name** | **Array&lt;String&gt;** | SubjectAltName is list of Dns Names and Ip addresses If unset PNID of host will be used as IPAddress or Hostname for certificate generation . | [optional] 


