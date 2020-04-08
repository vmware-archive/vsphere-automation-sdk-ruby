# VSphereAutomation::VCenter::CertificateAuthoritySignCertApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sign_cert_from_csr**](CertificateAuthoritySignCertApi.md#sign_cert_from_csr) | **POST** /rest/vcenter/certificate-authority/sign-cert?action&#x3D;sign-cert-from-csr | Sign the provided CSR and generate a certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  


# **sign_cert_from_csr**
> VcenterCertificateAuthoritySignCertSignCertFromCSRResp sign_cert_from_csr(request_body)

Sign the provided CSR and generate a certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::CertificateAuthoritySignCertApi.new
request_body = VCenter::VcenterCertificateAuthoritySignCertSignCertFromCSR.new # VcenterCertificateAuthoritySignCertSignCertFromCSR | 

begin
  #Sign the provided CSR and generate a certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  result = api_instance.sign_cert_from_csr(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateAuthoritySignCertApi->sign_cert_from_csr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateAuthoritySignCertSignCertFromCSR**](VcenterCertificateAuthoritySignCertSignCertFromCSR.md)|  | 

### Return type

[**VcenterCertificateAuthoritySignCertSignCertFromCSRResp**](VcenterCertificateAuthoritySignCertSignCertFromCSRResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



