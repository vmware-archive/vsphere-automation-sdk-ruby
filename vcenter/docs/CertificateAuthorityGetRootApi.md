# VSphereAutomation::VCenter::CertificateAuthorityGetRootApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_root**](CertificateAuthorityGetRootApi.md#get_root) | **GET** /rest/vcenter/certificate-authority/get-root | Returns the rhttpproxy TLS certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  


# **get_root**
> VcenterCertificateAuthorityGetRootGetRootResp get_root

Returns the rhttpproxy TLS certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  

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

api_instance = VSphereAutomation::VCenter::CertificateAuthorityGetRootApi.new

begin
  #Returns the rhttpproxy TLS certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
  result = api_instance.get_root
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateAuthorityGetRootApi->get_root: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterCertificateAuthorityGetRootGetRootResp**](VcenterCertificateAuthorityGetRootGetRootResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



