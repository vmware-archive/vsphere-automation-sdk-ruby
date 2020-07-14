# VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsCsrSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key_size** | **Integer** | keySize will take 2048 bits if not modified. | [optional] 
**common_name** | **String** | commonName will take PNID if not modified. | [optional] 
**organization** | **String** | Organization field in certificate subject | 
**organization_unit** | **String** | Organization unit field in certificate subject | 
**locality** | **String** | Locality field in certificate subject | 
**state_or_province** | **String** | State field in certificate subject | 
**country** | **String** | Country field in certificate subject | 
**email_address** | **String** | Email field in Certificate extensions | 
**subject_alt_name** | **Array&lt;String&gt;** | subjectAltName is list of Dns Names and Ip addresses | [optional] 


