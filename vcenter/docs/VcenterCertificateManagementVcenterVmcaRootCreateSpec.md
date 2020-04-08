# VSphereAutomation::VCenter::VcenterCertificateManagementVcenterVmcaRootCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**common_name** | **String** | The common name of the host for which certificate is generated. If unset the common name will be the primary network identifier (PNID) of the vCenter Virtual Server Appliance (VCSA). | [optional] 
**country** | **String** | Country field in certificate subject. If unset the country will be &#39;US&#39;. | [optional] 
**email_address** | **String** | Email field in Certificate extensions. If unset the emailAddress will be &#39;email@acme.com&#39;. | [optional] 
**key_size** | **Integer** | The size of the key to be used for public and private key generation. If unset the key size will be 2048. | [optional] 
**locality** | **String** | Locality field in certificate subject. If unset the locality will be &#39;Palo Alto&#39;. | [optional] 
**organization** | **String** | Organization field in certificate subject. If unset the organization will be &#39;VMware&#39;. | [optional] 
**organization_unit** | **String** | Organization unit field in certificate subject. If unset the organization unit will be &#39;VMware Engineering&#39;. | [optional] 
**state_or_province** | **String** | State field in certificate subject. If unset the state will be &#39;California&#39;. | [optional] 
**subject_alt_name** | **Array&lt;String&gt;** | SubjectAltName is list of Dns Names and Ip addresses. If unset PNID of host will be used as IPAddress or Hostname for certificate generation. | [optional] 


