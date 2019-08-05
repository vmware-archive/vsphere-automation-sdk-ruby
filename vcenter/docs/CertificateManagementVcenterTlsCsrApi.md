# VSphereAutomation::VCenter::CertificateManagementVcenterTlsCsrApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CertificateManagementVcenterTlsCsrApi.md#create) | **POST** /vcenter/certificate-management/vcenter/tls-csr | Generates a CSR with the given Spec.


# **create**
> VcenterCertificateManagementVcenterTlsCsrCreateResult create(request_body)

Generates a CSR with the given Spec.

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTlsCsrApi.new
request_body = VCenter::VcenterCertificateManagementVcenterTlsCsrCreate.new # VcenterCertificateManagementVcenterTlsCsrCreate | 

begin
  #Generates a CSR with the given Spec.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTlsCsrApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateManagementVcenterTlsCsrCreate**](VcenterCertificateManagementVcenterTlsCsrCreate.md)|  | 

### Return type

[**VcenterCertificateManagementVcenterTlsCsrCreateResult**](VcenterCertificateManagementVcenterTlsCsrCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



