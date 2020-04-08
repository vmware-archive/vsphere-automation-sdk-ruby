# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate/csr?vmw-task&#x3D;true | Generate a certificate signing request (CSR) for the client certificate. This overwrites any existing CSR.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    Calling the API repeatedly will result in a generating a new CSR each time. 
[**get_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate/csr?vmw-task&#x3D;true | Get existing certificate signing request (CSR) for the client certificate.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    


# **create_task**
> String create_task(cluster, provider)

Generate a certificate signing request (CSR) for the client certificate. This overwrites any existing CSR.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    Calling the API repeatedly will result in a generating a new CSR each time. 

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.

begin
  #Generate a certificate signing request (CSR) for the client certificate. This overwrites any existing CSR.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    Calling the API repeatedly will result in a generating a new CSR each time. 
  result = api_instance.create_task(cluster, provider)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **provider** | **String**| Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_task**
> String get_task(cluster, provider)

Get existing certificate signing request (CSR) for the client certificate.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.

begin
  #Get existing certificate signing request (CSR) for the client certificate.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    
  result = api_instance.get_task(cluster, provider)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **provider** | **String**| Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



