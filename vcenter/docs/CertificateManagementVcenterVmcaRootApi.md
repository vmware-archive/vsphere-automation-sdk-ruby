# VSphereAutomation::VCenter::CertificateManagementVcenterVmcaRootApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CertificateManagementVcenterVmcaRootApi.md#create) | **POST** /rest/vcenter/certificate-management/vcenter/vmca-root | Replace Root Certificate with VMCA signed one using the given Spec.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  


# **create**
> create(opts)

Replace Root Certificate with VMCA signed one using the given Spec.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterVmcaRootApi.new
opts = {
  request_body: VCenter::VcenterCertificateManagementVcenterVmcaRootCreate.new # VcenterCertificateManagementVcenterVmcaRootCreate | 
}

begin
  #Replace Root Certificate with VMCA signed one using the given Spec.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterVmcaRootApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateManagementVcenterVmcaRootCreate**](VcenterCertificateManagementVcenterVmcaRootCreate.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



