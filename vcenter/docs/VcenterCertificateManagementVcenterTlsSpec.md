# VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cert** | **String** | Certificate string in PEM format. | 
**key** | **String** | Private key string in PEM format. If unset the private key from the certificate store will be used. It is required when replacing the certificate with a third party signed certificate. | [optional] 
**root_cert** | **String** | Third party Root CA certificate in PEM format. If unset the new third party root CA certificate will not be added to the trust store. It is required when replacing the certificate with a third party signed certificate if the root certificate of the third party is not already a trusted root. | [optional] 


