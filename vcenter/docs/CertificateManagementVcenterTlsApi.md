# VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](CertificateManagementVcenterTlsApi.md#get) | **GET** /rest/vcenter/certificate-management/vcenter/tls | Returns the rhttpproxy TLS certificate. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
[**renew**](CertificateManagementVcenterTlsApi.md#renew) | **POST** /rest/vcenter/certificate-management/vcenter/tls?action&#x3D;renew | Renews the TLS certificate for the given duration period.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
[**replace_vmca_signed**](CertificateManagementVcenterTlsApi.md#replace_vmca_signed) | **POST** /rest/vcenter/certificate-management/vcenter/tls?action&#x3D;replace-vmca-signed | Replace MACHINE SSL with VMCA signed one with the given Spec.The system will go for restart.   After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
[**set**](CertificateManagementVcenterTlsApi.md#set) | **PUT** /rest/vcenter/certificate-management/vcenter/tls | Replaces the rhttpproxy TLS certificate with the specified certificate. This operation can be used in three scenarios :     1.  When the CSR is created and the private key is already stored, this operation can replace the certificate. The Tls.Spec.cert (but not Tls.Spec.key and Tls.Spec.root-cert) must be provided as input.     2.  When the certificate is signed by a third party certificate authority/VMCA and the root certificate of the third party certificate authority/VMCA is already one of the trusted roots in the trust store, this operation can replace the certificate and private key. The Tls.Spec.cert and Tls.Spec.key (but not Tls.Spec.root-cert) must be provided as input.     3.  When the certificate is signed by a third party certificate authority and the root certificate of the third party certificate authority is not one of the trusted roots in the trust store, this operation can replace the certificate, private key and root CA certificate. The Tls.Spec.cert,Tls.Spec.key and Tls.Spec.root-cert must be provided as input.    After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  The above three scenarios are only supported from vsphere 7.0 onwards.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  


# **get**
> VcenterCertificateManagementVcenterTlsResp get

Returns the rhttpproxy TLS certificate. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi.new

begin
  #Returns the rhttpproxy TLS certificate. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTlsApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterCertificateManagementVcenterTlsResp**](VcenterCertificateManagementVcenterTlsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **renew**
> renew(opts)

Renews the TLS certificate for the given duration period.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi.new
opts = {
  request_body: VCenter::VcenterCertificateManagementVcenterTlsRenew.new # VcenterCertificateManagementVcenterTlsRenew | 
}

begin
  #Renews the TLS certificate for the given duration period.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
  api_instance.renew(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTlsApi->renew: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateManagementVcenterTlsRenew**](VcenterCertificateManagementVcenterTlsRenew.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **replace_vmca_signed**
> replace_vmca_signed(request_body)

Replace MACHINE SSL with VMCA signed one with the given Spec.The system will go for restart.   After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi.new
request_body = VCenter::VcenterCertificateManagementVcenterTlsReplaceVmcaSigned.new # VcenterCertificateManagementVcenterTlsReplaceVmcaSigned | 

begin
  #Replace MACHINE SSL with VMCA signed one with the given Spec.The system will go for restart.   After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
  api_instance.replace_vmca_signed(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTlsApi->replace_vmca_signed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateManagementVcenterTlsReplaceVmcaSigned**](VcenterCertificateManagementVcenterTlsReplaceVmcaSigned.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set**
> set(request_body)

Replaces the rhttpproxy TLS certificate with the specified certificate. This operation can be used in three scenarios :     1.  When the CSR is created and the private key is already stored, this operation can replace the certificate. The Tls.Spec.cert (but not Tls.Spec.key and Tls.Spec.root-cert) must be provided as input.     2.  When the certificate is signed by a third party certificate authority/VMCA and the root certificate of the third party certificate authority/VMCA is already one of the trusted roots in the trust store, this operation can replace the certificate and private key. The Tls.Spec.cert and Tls.Spec.key (but not Tls.Spec.root-cert) must be provided as input.     3.  When the certificate is signed by a third party certificate authority and the root certificate of the third party certificate authority is not one of the trusted roots in the trust store, this operation can replace the certificate, private key and root CA certificate. The Tls.Spec.cert,Tls.Spec.key and Tls.Spec.root-cert must be provided as input.    After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  The above three scenarios are only supported from vsphere 7.0 onwards.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi.new
request_body = VCenter::VcenterCertificateManagementVcenterTlsSet.new # VcenterCertificateManagementVcenterTlsSet | 

begin
  #Replaces the rhttpproxy TLS certificate with the specified certificate. This operation can be used in three scenarios :     1.  When the CSR is created and the private key is already stored, this operation can replace the certificate. The Tls.Spec.cert (but not Tls.Spec.key and Tls.Spec.root-cert) must be provided as input.     2.  When the certificate is signed by a third party certificate authority/VMCA and the root certificate of the third party certificate authority/VMCA is already one of the trusted roots in the trust store, this operation can replace the certificate and private key. The Tls.Spec.cert and Tls.Spec.key (but not Tls.Spec.root-cert) must be provided as input.     3.  When the certificate is signed by a third party certificate authority and the root certificate of the third party certificate authority is not one of the trusted roots in the trust store, this operation can replace the certificate, private key and root CA certificate. The Tls.Spec.cert,Tls.Spec.key and Tls.Spec.root-cert must be provided as input.    After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  The above three scenarios are only supported from vsphere 7.0 onwards.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTlsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateManagementVcenterTlsSet**](VcenterCertificateManagementVcenterTlsSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



