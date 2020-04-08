# VSphereAutomation::VCenter::CertificateAuthorityCertificateApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cert_status**](CertificateAuthorityCertificateApi.md#cert_status) | **GET** /rest/vcenter/certificate-authority/certificate?action&#x3D;cert-status | Verify the provided certificate on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
[**count_certs**](CertificateAuthorityCertificateApi.md#count_certs) | **GET** /rest/vcenter/certificate-authority/certificate?action&#x3D;count-certs | Get the count of certificates on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
[**enum_certs**](CertificateAuthorityCertificateApi.md#enum_certs) | **GET** /rest/vcenter/certificate-authority/certificate?action&#x3D;enum-certs | List all the certs in the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
[**gen_cert**](CertificateAuthorityCertificateApi.md#gen_cert) | **POST** /rest/vcenter/certificate-authority/certificate?action&#x3D;gen-cert | Get the signed certificate for the given Spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
[**generate_keys**](CertificateAuthorityCertificateApi.md#generate_keys) | **POST** /rest/vcenter/certificate-authority/certificate?action&#x3D;generate-keys | Generate the public and private key pair for given keysize. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  


# **cert_status**
> VcenterCertificateAuthorityCertificateCertStatusResp cert_status(cert)

Verify the provided certificate on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateAuthorityCertificateApi.new
cert = 'cert_example' # String | The certificate to be verified in string format.

begin
  #Verify the provided certificate on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  result = api_instance.cert_status(cert)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateAuthorityCertificateApi->cert_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cert** | **String**| The certificate to be verified in string format. | 

### Return type

[**VcenterCertificateAuthorityCertificateCertStatusResp**](VcenterCertificateAuthorityCertificateCertStatusResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **count_certs**
> VcenterCertificateAuthorityCertificateCountCertsResp count_certs(status)

Get the count of certificates on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateAuthorityCertificateApi.new
status = 'status_example' # String | The information is about status of certificate in query.

begin
  #Get the count of certificates on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  result = api_instance.count_certs(status)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateAuthorityCertificateApi->count_certs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| The information is about status of certificate in query. | 

### Return type

[**VcenterCertificateAuthorityCertificateCountCertsResp**](VcenterCertificateAuthorityCertificateCountCertsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enum_certs**
> VcenterCertificateAuthorityCertificateEnumCertsResp enum_certs(status)

List all the certs in the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateAuthorityCertificateApi.new
status = 'status_example' # String | The information is about status of certificate in query.

begin
  #List all the certs in the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  result = api_instance.enum_certs(status)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateAuthorityCertificateApi->enum_certs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| The information is about status of certificate in query. | 

### Return type

[**VcenterCertificateAuthorityCertificateEnumCertsResp**](VcenterCertificateAuthorityCertificateEnumCertsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gen_cert**
> VcenterCertificateAuthorityCertificateGenCertResp gen_cert(request_body)

Get the signed certificate for the given Spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateAuthorityCertificateApi.new
request_body = VCenter::VcenterCertificateAuthorityCertificateGenCert.new # VcenterCertificateAuthorityCertificateGenCert | 

begin
  #Get the signed certificate for the given Spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  result = api_instance.gen_cert(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateAuthorityCertificateApi->gen_cert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateAuthorityCertificateGenCert**](VcenterCertificateAuthorityCertificateGenCert.md)|  | 

### Return type

[**VcenterCertificateAuthorityCertificateGenCertResp**](VcenterCertificateAuthorityCertificateGenCertResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_keys**
> VcenterCertificateAuthorityCertificateGenerateKeysResp generate_keys(opts)

Generate the public and private key pair for given keysize. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateAuthorityCertificateApi.new
opts = {
  request_body: VCenter::VcenterCertificateAuthorityCertificateGenerateKeys.new # VcenterCertificateAuthorityCertificateGenerateKeys | 
}

begin
  #Generate the public and private key pair for given keysize. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  result = api_instance.generate_keys(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateAuthorityCertificateApi->generate_keys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateAuthorityCertificateGenerateKeys**](VcenterCertificateAuthorityCertificateGenerateKeys.md)|  | [optional] 

### Return type

[**VcenterCertificateAuthorityCertificateGenerateKeysResp**](VcenterCertificateAuthorityCertificateGenerateKeysResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



