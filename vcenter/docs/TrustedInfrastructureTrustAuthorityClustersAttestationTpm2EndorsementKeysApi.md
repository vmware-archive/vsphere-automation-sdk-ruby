# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys?vmw-task&#x3D;true | Add a new TPM endorsement key on a cluster.
[**delete_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys/{name}?vmw-task&#x3D;true | Remove a TPM endorsement key on a cluster.
[**get_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys/{name}?vmw-task&#x3D;true | Get the TPM endorsement key details on a cluster.
[**list_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys?vmw-task&#x3D;true | Return a list of configured TPM endorsement keys in a cluster.


# **create_task**
> String create_task(cluster, opts)

Add a new TPM endorsement key on a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateSpec | 
}

begin
  #Add a new TPM endorsement key on a cluster.
  result = api_instance.create_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_task**
> String delete_task(cluster, name)

Remove a TPM endorsement key on a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
name = 'name_example' # String | The endorsement key name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey.

begin
  #Remove a TPM endorsement key on a cluster.
  result = api_instance.delete_task(cluster, name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **name** | **String**| The endorsement key name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_task**
> String get_task(cluster, name)

Get the TPM endorsement key details on a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
name = 'name_example' # String | The endorsement key name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey.

begin
  #Get the TPM endorsement key details on a cluster.
  result = api_instance.get_task(cluster, name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **name** | **String**| The endorsement key name. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_task**
> String list_task(cluster)

Return a list of configured TPM endorsement keys in a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Return a list of configured TPM endorsement keys in a cluster.
  result = api_instance.list_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi->list_task: #{e}"
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



