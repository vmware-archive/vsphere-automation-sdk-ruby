# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/peer-certs/trusted?vmw-task&#x3D;true | Return the list of trusted server certificates.
[**update_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/peer-certs/trusted?vmw-task&#x3D;true | Update trusted server certificate(s).   The client will use these certificates to validate the server connection. The existing list of trusted certificates will be overwritten.    The client will not trust the server connection until a server certificate has been set. 


# **get_task**
> String get_task(cluster, provider)

Return the list of trusted server certificates.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.

begin
  #Return the list of trusted server certificates.
  result = api_instance.get_task(cluster, provider)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi->get_task: #{e}"
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

Update trusted server certificate(s).   The client will use these certificates to validate the server connection. The existing list of trusted certificates will be overwritten.    The client will not trust the server connection until a server certificate has been set. 

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesUpdateSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesUpdateSpec | 
}

begin
  #Update trusted server certificate(s).   The client will use these certificates to validate the server connection. The existing list of trusted certificates will be overwritten.    The client will not trust the server connection until a server certificate has been set. 
  result = api_instance.update_task(cluster, provider, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi->update_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **provider** | **String**| Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesUpdateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



