# VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](CertificateManagementVcenterTlsApi.md#get) | **GET** /vcenter/certificate-management/vcenter/tls | Returns the rhttpproxy TLS certificate.
[**renew**](CertificateManagementVcenterTlsApi.md#renew) | **POST** /vcenter/certificate-management/vcenter/tls | Renews the TLS certificate for the given duration period.
[**set**](CertificateManagementVcenterTlsApi.md#set) | **PUT** /vcenter/certificate-management/vcenter/tls | Replaces the rhttpproxy TLS certificate with the specified certificate.


# **get**
> VcenterCertificateManagementVcenterTlsResult get

Returns the rhttpproxy TLS certificate.

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
  #Returns the rhttpproxy TLS certificate.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTlsApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterCertificateManagementVcenterTlsResult**](VcenterCertificateManagementVcenterTlsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **renew**
> renew(action, opts)

Renews the TLS certificate for the given duration period.

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
action = 'action_example' # String | action=renew
opts = {
  request_body: VCenter::VcenterCertificateManagementVcenterTlsRenew.new # VcenterCertificateManagementVcenterTlsRenew | 
}

begin
  #Renews the TLS certificate for the given duration period.
  api_instance.renew(action, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTlsApi->renew: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| action&#x3D;renew | 
 **request_body** | [**VcenterCertificateManagementVcenterTlsRenew**](VcenterCertificateManagementVcenterTlsRenew.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set**
> set(request_body)

Replaces the rhttpproxy TLS certificate with the specified certificate.

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
  #Replaces the rhttpproxy TLS certificate with the specified certificate.
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



