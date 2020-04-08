# VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authority_information_access_uri** | **Array&lt;String&gt;** | Collection of authority information access URI. | 
**cert** | **String** | TLS certificate in PEM format. | 
**extended_key_usage** | **Array&lt;String&gt;** | Collection of extended keyusage that contains details for which the certificate can be used for. | 
**is_ca** | **Boolean** | Certificate constraints isCA from the critical BasicConstraints extension, (OID &#x3D; 2.5.29.19). | 
**issuer_dn** | **String** | Issuer (issuer distinguished name) value from the certificate. | 
**key_usage** | **Array&lt;String&gt;** | Collection of keyusage contained in the certificate. | 
**path_length_constraint** | **Integer** | Certificate constraints path length from the critical BasicConstraints extension, (OID &#x3D; 2.5.29.19). | 
**serial_number** | **String** | SerialNumber value from the certificate. | 
**signature_algorithm** | **String** | Signature algorithm name from the certificate. | 
**subject_alternative_name** | **Array&lt;String&gt;** | Collection of subject alternative names. | 
**subject_dn** | **String** | Subject (subject distinguished name) value from the certificate. | 
**thumbprint** | **String** | Thumbprint value from the certificate. | 
**valid_from** | **DateTime** | validFrom specify the start date of the certificate. | 
**valid_to** | **DateTime** | validTo specify the end date of the certificate. | 
**version** | **Integer** | Version (version number) value from the certificate. | 


