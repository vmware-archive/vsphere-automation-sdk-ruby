# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TrustedInfrastructureTrustAuthorityClustersApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster} | Get the result of the last Update operation which matches the cluster id. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
[**list**](TrustedInfrastructureTrustAuthorityClustersApi.md#list) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters | Returns a list of clusters for this vCenter instance which matches the TrustAuthorityClusters.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the attribute TrustAuthorityClusters.FilterSpec.cluster requires System.View.  
[**update_task**](TrustedInfrastructureTrustAuthorityClustersApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}?vmw-task&#x3D;true | Updates the state of a cluster.


# **get**
> VcenterTrustedInfrastructureTrustAuthorityClustersInfo get(cluster)

Get the result of the last Update operation which matches the cluster id. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersApi.new
cluster = 'cluster_example' # String | Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Get the result of the last Update operation which matches the cluster id. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterTrustedInfrastructureTrustAuthorityClustersInfo**](VcenterTrustedInfrastructureTrustAuthorityClustersInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterTrustedInfrastructureTrustAuthorityClustersSummary&gt; list(opts)

Returns a list of clusters for this vCenter instance which matches the TrustAuthorityClusters.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the attribute TrustAuthorityClusters.FilterSpec.cluster requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersApi.new
opts = {
  cluster: ['cluster_example'], # Array<String> | Identifies the cluster. cluster If {@term.unset} return all Trust Authority Clusters. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
  state: ['state_example'] # Array<String> | The state of the TrustAuthorityClusters. state If {@term.unset} return all Trust Authority Clusters.
}

begin
  #Returns a list of clusters for this vCenter instance which matches the TrustAuthorityClusters.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the attribute TrustAuthorityClusters.FilterSpec.cluster requires System.View.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | [**Array&lt;String&gt;**](String.md)| Identifies the cluster. cluster If {@term.unset} return all Trust Authority Clusters. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
 **state** | [**Array&lt;String&gt;**](String.md)| The state of the TrustAuthorityClusters. state If {@term.unset} return all Trust Authority Clusters. | [optional] 

### Return type

[**Array&lt;VcenterTrustedInfrastructureTrustAuthorityClustersSummary&gt;**](VcenterTrustedInfrastructureTrustAuthorityClustersSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_task**
> String update_task(cluster, opts)

Updates the state of a cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersApi.new
cluster = 'cluster_example' # String | Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersUpdateSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersUpdateSpec | 
}

begin
  #Updates the state of a cluster.
  result = api_instance.update_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersApi->update_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersUpdateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



