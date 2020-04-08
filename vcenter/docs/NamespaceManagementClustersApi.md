# VSphereAutomation::VCenter::NamespaceManagementClustersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable**](NamespaceManagementClustersApi.md#disable) | **POST** /api/vcenter/namespace-management/clusters/{cluster}?action&#x3D;disable | Disable vSphere Namespaces on the cluster. This operation tears down the Kubernetes instance and the worker nodes associated with vSphere Namespaces enabled cluster.
[**enable**](NamespaceManagementClustersApi.md#enable) | **POST** /api/vcenter/namespace-management/clusters/{cluster}?action&#x3D;enable | Enable vSphere Namespaces on the cluster. This operation sets up Kubernetes instance for the cluster along with worker nodes.
[**get**](NamespaceManagementClustersApi.md#get) | **GET** /api/vcenter/namespace-management/clusters/{cluster} | Returns information about a specific cluster.
[**list**](NamespaceManagementClustersApi.md#list) | **GET** /api/vcenter/namespace-management/clusters | Returns information about all clusters on which vSphere Namespaces are enabled on this vCenter.
[**rotate_password**](NamespaceManagementClustersApi.md#rotate_password) | **POST** /api/vcenter/namespace-management/clusters/{cluster}?action&#x3D;rotate_password | Request a new root password for all control plane nodes in the cluster. This operation generates a new root password and configures every control plane node in the cluster to accept it for authentication.
[**set**](NamespaceManagementClustersApi.md#set) | **PUT** /api/vcenter/namespace-management/clusters/{cluster} | Set a new configuration on the cluster object. The specified configuration is applied in entirety and will replace the current configuration fully.
[**update**](NamespaceManagementClustersApi.md#update) | **PATCH** /api/vcenter/namespace-management/clusters/{cluster} | Update configuration on the cluster object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.


# **disable**
> disable(cluster)

Disable vSphere Namespaces on the cluster. This operation tears down the Kubernetes instance and the worker nodes associated with vSphere Namespaces enabled cluster.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster for which vSphere Namespaces will be disabled. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Disable vSphere Namespaces on the cluster. This operation tears down the Kubernetes instance and the worker nodes associated with vSphere Namespaces enabled cluster.
  api_instance.disable(cluster)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClustersApi->disable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster for which vSphere Namespaces will be disabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable**
> enable(cluster, opts)

Enable vSphere Namespaces on the cluster. This operation sets up Kubernetes instance for the cluster along with worker nodes.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster on which vSphere Namespaces will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNamespaceManagementClustersEnableSpec.new # VcenterNamespaceManagementClustersEnableSpec | 
}

begin
  #Enable vSphere Namespaces on the cluster. This operation sets up Kubernetes instance for the cluster along with worker nodes.
  api_instance.enable(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClustersApi->enable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster on which vSphere Namespaces will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNamespaceManagementClustersEnableSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterNamespaceManagementClustersInfo get(cluster)

Returns information about a specific cluster.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster on which vSphere Namespaces are enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Returns information about a specific cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClustersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster on which vSphere Namespaces are enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNamespaceManagementClustersInfo**](VcenterNamespaceManagementClustersInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterNamespaceManagementClustersSummary&gt; list

Returns information about all clusters on which vSphere Namespaces are enabled on this vCenter.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClustersApi.new

begin
  #Returns information about all clusters on which vSphere Namespaces are enabled on this vCenter.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClustersApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterNamespaceManagementClustersSummary&gt;**](VcenterNamespaceManagementClustersSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rotate_password**
> rotate_password(cluster)

Request a new root password for all control plane nodes in the cluster. This operation generates a new root password and configures every control plane node in the cluster to accept it for authentication.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster for which the password is being generated. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Request a new root password for all control plane nodes in the cluster. This operation generates a new root password and configures every control plane node in the cluster to accept it for authentication.
  api_instance.rotate_password(cluster)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClustersApi->rotate_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster for which the password is being generated. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(cluster, opts)

Set a new configuration on the cluster object. The specified configuration is applied in entirety and will replace the current configuration fully.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNamespaceManagementClustersSetSpec.new # VcenterNamespaceManagementClustersSetSpec | 
}

begin
  #Set a new configuration on the cluster object. The specified configuration is applied in entirety and will replace the current configuration fully.
  api_instance.set(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClustersApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNamespaceManagementClustersSetSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(cluster, opts)

Update configuration on the cluster object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNamespaceManagementClustersUpdateSpec.new # VcenterNamespaceManagementClustersUpdateSpec | 
}

begin
  #Update configuration on the cluster object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.
  api_instance.update(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClustersApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster on which vSphere Namespaces is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNamespaceManagementClustersUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



