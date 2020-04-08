# VSphereAutomation::VCenter::NsxClustersValidationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_edge_cluster_update_spec**](NsxClustersValidationApi.md#check_edge_cluster_update_spec) | **POST** /api/vcenter/nsx/clusters/{cluster}/validation?action&#x3D;checkEdgeClusterUpdateSpec | Performs validation checks on the specification that can be used to update NSX Edge capabilities in an existing NSX Edge Cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**check_enable_specs**](NsxClustersValidationApi.md#check_enable_specs) | **POST** /api/vcenter/nsx/clusters/{cluster}/validation?action&#x3D;checkEnableSpecs | Performs validation checks on the specification that can be used for enabling NSX networking with transport node configuration on all the hosts in a vSphere cluster and enabling NSX Edge cluster in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **check_edge_cluster_update_spec**
> VcenterNsxClustersValidationCheckResult check_edge_cluster_update_spec(cluster, opts)

Performs validation checks on the specification that can be used to update NSX Edge capabilities in an existing NSX Edge Cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxClustersValidationApi.new
cluster = 'cluster_example' # String | Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNsxEdgeClusterUpdateSpec.new # VcenterNsxEdgeClusterUpdateSpec | 
}

begin
  #Performs validation checks on the specification that can be used to update NSX Edge capabilities in an existing NSX Edge Cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.check_edge_cluster_update_spec(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxClustersValidationApi->check_edge_cluster_update_spec: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNsxEdgeClusterUpdateSpec**|  | [optional] 

### Return type

[**VcenterNsxClustersValidationCheckResult**](VcenterNsxClustersValidationCheckResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_enable_specs**
> VcenterNsxClustersValidationCheckResult check_enable_specs(cluster, opts)

Performs validation checks on the specification that can be used for enabling NSX networking with transport node configuration on all the hosts in a vSphere cluster and enabling NSX Edge cluster in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxClustersValidationApi.new
cluster = 'cluster_example' # String | Identifier for the vSphere cluster on which NSX networking will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNsxNSXEnableSpec.new # VcenterNsxNSXEnableSpec | 
}

begin
  #Performs validation checks on the specification that can be used for enabling NSX networking with transport node configuration on all the hosts in a vSphere cluster and enabling NSX Edge cluster in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.check_enable_specs(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxClustersValidationApi->check_enable_specs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the vSphere cluster on which NSX networking will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNsxNSXEnableSpec**|  | [optional] 

### Return type

[**VcenterNsxClustersValidationCheckResult**](VcenterNsxClustersValidationCheckResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



