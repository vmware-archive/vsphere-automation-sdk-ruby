# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_task**](TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images/{version}?vmw-task&#x3D;true | Remove a trusted ESX base image of each ESX in the cluster.
[**get_task**](TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images/{version}?vmw-task&#x3D;true | Get the trusted ESX base version details.
[**import_from_imgdb_task**](TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#import_from_imgdb_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images?action&#x3D;import-from-imgdb&amp;vmw-task&#x3D;true | Import ESX metadata as a new trusted base image to each host in the cluster.   Import a boot_imgdb.tgz file which contains metadata that describes a trusted ESX base image. A boot_imgdb.tgz file can be downloaded from a representative host. 
[**list_task**](TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images?vmw-task&#x3D;true | Return a list of trusted ESX base images.


# **delete_task**
> String delete_task(cluster, version)

Remove a trusted ESX base image of each ESX in the cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
version = 'version_example' # String | The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.

begin
  #Remove a trusted ESX base image of each ESX in the cluster.
  result = api_instance.delete_task(cluster, version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **version** | **String**| The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_task**
> String get_task(cluster, version)

Get the trusted ESX base version details.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
version = 'version_example' # String | The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.

begin
  #Get the trusted ESX base version details.
  result = api_instance.get_task(cluster, version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **version** | **String**| The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_from_imgdb_task**
> String import_from_imgdb_task(cluster, opts)

Import ESX metadata as a new trusted base image to each host in the cluster.   Import a boot_imgdb.tgz file which contains metadata that describes a trusted ESX base image. A boot_imgdb.tgz file can be downloaded from a representative host. 

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: File.new('/path/to/file') # File | 
}

begin
  #Import ESX metadata as a new trusted base image to each host in the cluster.   Import a boot_imgdb.tgz file which contains metadata that describes a trusted ESX base image. A boot_imgdb.tgz file can be downloaded from a representative host. 
  result = api_instance.import_from_imgdb_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi->import_from_imgdb_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **File**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_task**
> String list_task(cluster, opts)

Return a list of trusted ESX base images.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  version: ['version_example'], # Array<String> | Search criteria by ESX base image version numbers. version if {@term.unset} return all ESX version numbers. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.
  display_name: ['display_name_example'], # Array<String> | Search criteria by ESX base image version version numbers. displayName if {@term.unset} return all ESX display version numbers.
  health: ['health_example'] # Array<String> | Search criteria by health indicator. health if {@term.unset} return all health indicators.
}

begin
  #Return a list of trusted ESX base images.
  result = api_instance.list_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi->list_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **version** | [**Array&lt;String&gt;**](String.md)| Search criteria by ESX base image version numbers. version if {@term.unset} return all ESX version numbers. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. | [optional] 
 **display_name** | [**Array&lt;String&gt;**](String.md)| Search criteria by ESX base image version version numbers. displayName if {@term.unset} return all ESX display version numbers. | [optional] 
 **health** | [**Array&lt;String&gt;**](String.md)| Search criteria by health indicator. health if {@term.unset} return all health indicators. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



