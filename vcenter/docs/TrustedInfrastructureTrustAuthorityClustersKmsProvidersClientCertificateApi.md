# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task&#x3D;true | Generate a new self signed client certificate. Existing client certificate is overwritten. The key server will use this certificate to validate the client connection.
[**get_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task&#x3D;true | Return the existing client certificate.
[**update_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task&#x3D;true | Update the client certificate.   The key server will use this certificate to validate the client connection. If a client certificate already exists, it will be replaced.    An optional private key can be specified if the certificate has already been provisioned. 


# **create_task**
> String create_task(cluster, provider)

Generate a new self signed client certificate. Existing client certificate is overwritten. The key server will use this certificate to validate the client connection.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.

begin
  #Generate a new self signed client certificate. Existing client certificate is overwritten. The key server will use this certificate to validate the client connection.
  result = api_instance.create_task(cluster, provider)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi->create_task: #{e}"
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

Return the existing client certificate.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.

begin
  #Return the existing client certificate.
  result = api_instance.get_task(cluster, provider)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi->get_task: #{e}"
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



# **update_task**
> String update_task(cluster, provider, opts)

Update the client certificate.   The key server will use this certificate to validate the client connection. If a client certificate already exists, it will be replaced.    An optional private key can be specified if the certificate has already been provisioned. 

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec | 
}

begin
  #Update the client certificate.   The key server will use this certificate to validate the client connection. If a client certificate already exists, it will be replaced.    An optional private key can be specified if the certificate has already been provisioned. 
  result = api_instance.update_task(cluster, provider, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi->update_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **provider** | **String**| Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



