# VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_task**](TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task&#x3D;true | Delete the Attestation Service configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Attestation Service configuration from any Trusted Hosts within the given cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get_task**](TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task&#x3D;true | Returns detailed information about the health of the specified Attestation Service configuration applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list_task**](TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#list_task) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?action&#x3D;query&amp;vmw-task&#x3D;true | Returns basic information about the health of all Attestation Service configurations applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update_task**](TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task&#x3D;true | Update the applied Attestation Service configuration on the given Trusted Cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will throw an InvalidArgument. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **delete_task**
> String delete_task(cluster)

Delete the Attestation Service configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Attestation Service configuration from any Trusted Hosts within the given cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.new
cluster = 'cluster_example' # String | The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Delete the Attestation Service configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Attestation Service configuration from any Trusted Hosts within the given cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.delete_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_task**
> String get_task(cluster, hostname, opts)

Returns detailed information about the health of the specified Attestation Service configuration applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.new
cluster = 'cluster_example' # String | The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
hostname = 'hostname_example' # String | The IP address or DNS resolvable name of the service.
opts = {
  port: 56 # Integer | The port of the service. If unset, port 443 will be used.
}

begin
  #Returns detailed information about the health of the specified Attestation Service configuration applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get_task(cluster, hostname, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **hostname** | **String**| The IP address or DNS resolvable name of the service. | 
 **port** | **Integer**| The port of the service. If unset, port 443 will be used. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_task**
> String list_task(cluster, opts)

Returns basic information about the health of all Attestation Service configurations applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.new
cluster = 'cluster_example' # String | The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigFilterSpec.new # VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigFilterSpec | 
}

begin
  #Returns basic information about the health of all Attestation Service configurations applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi->list_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigFilterSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_task**
> String update_task(cluster)

Update the applied Attestation Service configuration on the given Trusted Cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will throw an InvalidArgument. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.new
cluster = 'cluster_example' # String | The ID of the Trusted Cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Update the applied Attestation Service configuration on the given Trusted Cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will throw an InvalidArgument. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.update_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi->update_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the Trusted Cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



