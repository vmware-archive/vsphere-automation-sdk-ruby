# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates?vmw-task&#x3D;true | Add a new TPM CA certificate on a cluster.
[**delete_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates/{name}?vmw-task&#x3D;true | Remove a TPM CA certificate on a cluster.
[**get_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates/{name}?vmw-task&#x3D;true | Get the TPM CA certificate details on a cluster.
[**list_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates?vmw-task&#x3D;true | Return a list of configured TPM CA certificates on a cluster.


# **create_task**
> String create_task(cluster, opts)

Add a new TPM CA certificate on a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateSpec | 
}

begin
  #Add a new TPM CA certificate on a cluster.
  result = api_instance.create_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_task**
> String delete_task(cluster, name)

Remove a TPM CA certificate on a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
name = 'name_example' # String | The CA certificate name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate.

begin
  #Remove a TPM CA certificate on a cluster.
  result = api_instance.delete_task(cluster, name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **name** | **String**| The CA certificate name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_task**
> String get_task(cluster, name)

Get the TPM CA certificate details on a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
name = 'name_example' # String | The CA certificate name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate.

begin
  #Get the TPM CA certificate details on a cluster.
  result = api_instance.get_task(cluster, name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **name** | **String**| The CA certificate name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_task**
> String list_task(cluster)

Return a list of configured TPM CA certificates on a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Return a list of configured TPM CA certificates on a cluster.
  result = api_instance.list_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi->list_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



