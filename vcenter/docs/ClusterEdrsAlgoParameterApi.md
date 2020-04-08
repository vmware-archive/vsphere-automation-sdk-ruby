# VSphereAutomation::VCenter::ClusterEdrsAlgoParameterApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ClusterEdrsAlgoParameterApi.md#get) | **GET** /rest/vcenter/cluster/{cluster}/edrs/algo-parameter | Gets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
[**set**](ClusterEdrsAlgoParameterApi.md#set) | **PUT** /rest/vcenter/cluster/{cluster}/edrs/algo-parameter | Sets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  


# **get**
> VcenterClusterEdrsAlgoParameterResp get(cluster)

Gets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsAlgoParameterApi.new
cluster = 'cluster_example' # String | Identifier of cluster whose EDRS algorithm parameters need to be returned. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Gets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsAlgoParameterApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster whose EDRS algorithm parameters need to be returned. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterClusterEdrsAlgoParameterResp**](VcenterClusterEdrsAlgoParameterResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(cluster, request_body)

Sets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsAlgoParameterApi.new
cluster = 'cluster_example' # String | Identifier of cluster whose EDRS need to be configured. The parameter must be an identifier for the resource type: ClusterComputeResource.
request_body = VCenter::VcenterClusterEdrsAlgoParameterSet.new # VcenterClusterEdrsAlgoParameterSet | 

begin
  #Sets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  api_instance.set(cluster, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsAlgoParameterApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster whose EDRS need to be configured. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | [**VcenterClusterEdrsAlgoParameterSet**](VcenterClusterEdrsAlgoParameterSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



