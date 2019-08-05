# VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CertificateManagementVcenterTrustedRootChainsApi.md#create) | **POST** /vcenter/certificate-management/vcenter/trusted-root-chains | Creates a new trusted root certificate chain from the CreateSpec.
[**delete**](CertificateManagementVcenterTrustedRootChainsApi.md#delete) | **DELETE** /vcenter/certificate-management/vcenter/trusted-root-chains/{chain} | Deletes trusted root certificate chain for a given identifier.
[**get**](CertificateManagementVcenterTrustedRootChainsApi.md#get) | **GET** /vcenter/certificate-management/vcenter/trusted-root-chains/{chain} | Retrieve a trusted root certificate chain for a given identifier.
[**list**](CertificateManagementVcenterTrustedRootChainsApi.md#list) | **GET** /vcenter/certificate-management/vcenter/trusted-root-chains | Returns summary information for each trusted root certificate chain.


# **create**
> VcenterCertificateManagementVcenterTrustedRootChainsCreateResult create(request_body)

Creates a new trusted root certificate chain from the CreateSpec.

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi.new
request_body = VCenter::VcenterCertificateManagementVcenterTrustedRootChainsCreate.new # VcenterCertificateManagementVcenterTrustedRootChainsCreate | 

begin
  #Creates a new trusted root certificate chain from the CreateSpec.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTrustedRootChainsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterCertificateManagementVcenterTrustedRootChainsCreate**](VcenterCertificateManagementVcenterTrustedRootChainsCreate.md)|  | 

### Return type

[**VcenterCertificateManagementVcenterTrustedRootChainsCreateResult**](VcenterCertificateManagementVcenterTrustedRootChainsCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(chain)

Deletes trusted root certificate chain for a given identifier.

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi.new
chain = 'chain_example' # String | Unique identifier for a trusted root cert chain.

begin
  #Deletes trusted root certificate chain for a given identifier.
  api_instance.delete(chain)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTrustedRootChainsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Unique identifier for a trusted root cert chain. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterCertificateManagementVcenterTrustedRootChainsResult get(chain)

Retrieve a trusted root certificate chain for a given identifier.

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi.new
chain = 'chain_example' # String | Unique identifier for a trusted root cert chain.

begin
  #Retrieve a trusted root certificate chain for a given identifier.
  result = api_instance.get(chain)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTrustedRootChainsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Unique identifier for a trusted root cert chain. | 

### Return type

[**VcenterCertificateManagementVcenterTrustedRootChainsResult**](VcenterCertificateManagementVcenterTrustedRootChainsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterCertificateManagementVcenterTrustedRootChainsListResult list

Returns summary information for each trusted root certificate chain.

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

api_instance = VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi.new

begin
  #Returns summary information for each trusted root certificate chain.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CertificateManagementVcenterTrustedRootChainsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterCertificateManagementVcenterTrustedRootChainsListResult**](VcenterCertificateManagementVcenterTrustedRootChainsListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



