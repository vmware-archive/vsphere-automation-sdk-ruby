# VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NamespaceManagementSoftwareClustersApi.md#get) | **GET** /api/vcenter/namespace-management/software/clusters/{cluster} | Returns upgrade related information of a specific cluster.
[**list**](NamespaceManagementSoftwareClustersApi.md#list) | **GET** /api/vcenter/namespace-management/software/clusters | Returns upgrade related information about all WCP enabled clusters.
[**upgrade**](NamespaceManagementSoftwareClustersApi.md#upgrade) | **POST** /api/vcenter/namespace-management/software/clusters/{cluster}?action&#x3D;upgrade | Upgrade the cluster to a specific version. This operation upgrades the components on control plane VMs and worker plane hosts based on the selected version. Before upgrading, this operation performs pre-checks and sets the evaluation response in Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the severity, the upgrade may or may not proceed beyond prechecks. Here is a list of severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck operation - WARNING: Upgrade proceeds beyond precheck operation only if UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck operation uninterrupted
[**upgrade_multiple**](NamespaceManagementSoftwareClustersApi.md#upgrade_multiple) | **POST** /api/vcenter/namespace-management/software/clusters?action&#x3D;upgradeMultiple | Upgrade a set of clusters to its corresponding specific version.


# **get**
> VcenterNamespaceManagementSoftwareClustersInfo get(cluster)

Returns upgrade related information of a specific cluster.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Returns upgrade related information of a specific cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementSoftwareClustersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNamespaceManagementSoftwareClustersInfo**](VcenterNamespaceManagementSoftwareClustersInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterNamespaceManagementSoftwareClustersSummary&gt; list

Returns upgrade related information about all WCP enabled clusters.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi.new

begin
  #Returns upgrade related information about all WCP enabled clusters.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementSoftwareClustersApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterNamespaceManagementSoftwareClustersSummary&gt;**](VcenterNamespaceManagementSoftwareClustersSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upgrade**
> upgrade(cluster, opts)

Upgrade the cluster to a specific version. This operation upgrades the components on control plane VMs and worker plane hosts based on the selected version. Before upgrading, this operation performs pre-checks and sets the evaluation response in Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the severity, the upgrade may or may not proceed beyond prechecks. Here is a list of severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck operation - WARNING: Upgrade proceeds beyond precheck operation only if UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck operation uninterrupted

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi.new
cluster = 'cluster_example' # String | Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNamespaceManagementSoftwareClustersUpgradeSpec.new # VcenterNamespaceManagementSoftwareClustersUpgradeSpec | 
}

begin
  #Upgrade the cluster to a specific version. This operation upgrades the components on control plane VMs and worker plane hosts based on the selected version. Before upgrading, this operation performs pre-checks and sets the evaluation response in Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the severity, the upgrade may or may not proceed beyond prechecks. Here is a list of severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck operation - WARNING: Upgrade proceeds beyond precheck operation only if UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck operation uninterrupted
  api_instance.upgrade(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementSoftwareClustersApi->upgrade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNamespaceManagementSoftwareClustersUpgradeSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upgrade_multiple**
> Hash&lt;String, VcenterNamespaceManagementSoftwareClustersResult&gt; upgrade_multiple(opts)

Upgrade a set of clusters to its corresponding specific version.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi.new
opts = {
  request_body: {'key' => VCenter::VcenterNamespaceManagementSoftwareClustersUpgradeSpec.new} # Hash<String, VcenterNamespaceManagementSoftwareClustersUpgradeSpec> | 
}

begin
  #Upgrade a set of clusters to its corresponding specific version.
  result = api_instance.upgrade_multiple(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementSoftwareClustersApi->upgrade_multiple: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Hash&lt;String, VcenterNamespaceManagementSoftwareClustersUpgradeSpec&gt;**](VcenterNamespaceManagementSoftwareClustersUpgradeSpec.md)|  | [optional] 

### Return type

[**Hash&lt;String, VcenterNamespaceManagementSoftwareClustersResult&gt;**](VcenterNamespaceManagementSoftwareClustersResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



