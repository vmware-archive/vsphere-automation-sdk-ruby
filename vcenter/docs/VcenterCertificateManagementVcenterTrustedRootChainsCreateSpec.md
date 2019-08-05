# VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cert_chain** | [**VcenterCertificateManagementX509CertChain**](VcenterCertificateManagementX509CertChain.md) |  | 
**chain** | **String** | Unique identifier for this trusted root. Client can specify at creation as long as it is unique, otherwise one will be generated. An example of a client providing the identifier would be if this trusted root is associated with a VC trust. In this case the identifier would be the domain id. A unique id will be generated if not given. | [optional] 


