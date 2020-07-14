# VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **Integer** | Version (version number) value from the certificate. | 
**serial_number** | **String** | SerialNumber value from the certificate. | 
**signature_algorithm** | **String** | Signature algorithm name from the certificate. | 
**issuer_dn** | **String** | Issuer (issuer distinguished name) value from the certificate. | 
**valid_from** | **DateTime** | validFrom specify the start date of the certificate. | 
**valid_to** | **DateTime** | validTo specify the end date of the certificate. | 
**subject_dn** | **String** | Subject (subject distinguished name) value from the certificate. | 
**thumbprint** | **String** | Thumbprint value from the certificate. | 
**basic_constraints** | **Integer** | Certificate constraints path length from the critical BasicConstraints extension, (OID &#x3D; 2.5.29.19). | 
**key_usage** | **Array&lt;String&gt;** | Collection of keyusage contained in the certificate. | 
**extended_key_usage** | **Array&lt;String&gt;** | Collection of extended keyusage that contains details for which the certificate can be used for. | 
**subject_alternative_name** | **Array&lt;String&gt;** | Collection of subject alternative names. | 
**authority_information_access_uri** | **Array&lt;String&gt;** | Collection of authority information access URI. | 
**cert** | **String** | TLS certificate in PEM format. | 


