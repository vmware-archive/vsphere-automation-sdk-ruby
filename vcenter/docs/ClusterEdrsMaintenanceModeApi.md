# VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enter**](ClusterEdrsMaintenanceModeApi.md#enter) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;enter | Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
[**enter_task**](ClusterEdrsMaintenanceModeApi.md#enter_task) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;enter&amp;vmw-task&#x3D;true | Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
[**exit**](ClusterEdrsMaintenanceModeApi.md#exit) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;exit | Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
[**exit_task**](ClusterEdrsMaintenanceModeApi.md#exit_task) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;exit&amp;vmw-task&#x3D;true | Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
[**get**](ClusterEdrsMaintenanceModeApi.md#get) | **GET** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode | Get the status of the cluster maintenance mode. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  


# **enter**
> enter(cluster, request_body)

Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi.new
cluster = 'cluster_example' # String | Identifier of cluster that entering maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
request_body = VCenter::VcenterClusterEdrsMaintenanceModeEnter.new # VcenterClusterEdrsMaintenanceModeEnter | 

begin
  #Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  api_instance.enter(cluster, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsMaintenanceModeApi->enter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster that entering maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | [**VcenterClusterEdrsMaintenanceModeEnter**](VcenterClusterEdrsMaintenanceModeEnter.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **enter_task**
> VcenterClusterEdrsMaintenanceModeEnterTaskResp enter_task(cluster, request_body)

Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi.new
cluster = 'cluster_example' # String | Identifier of cluster that entering maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
request_body = VCenter::VcenterClusterEdrsMaintenanceModeEnterTask.new # VcenterClusterEdrsMaintenanceModeEnterTask | 

begin
  #Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  result = api_instance.enter_task(cluster, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsMaintenanceModeApi->enter_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster that entering maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | [**VcenterClusterEdrsMaintenanceModeEnterTask**](VcenterClusterEdrsMaintenanceModeEnterTask.md)|  | 

### Return type

[**VcenterClusterEdrsMaintenanceModeEnterTaskResp**](VcenterClusterEdrsMaintenanceModeEnterTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **exit**
> exit(cluster, request_body)

Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi.new
cluster = 'cluster_example' # String | Identifier of cluster that exiting maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
request_body = VCenter::VcenterClusterEdrsMaintenanceModeExit.new # VcenterClusterEdrsMaintenanceModeExit | 

begin
  #Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  api_instance.exit(cluster, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsMaintenanceModeApi->exit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster that exiting maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | [**VcenterClusterEdrsMaintenanceModeExit**](VcenterClusterEdrsMaintenanceModeExit.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **exit_task**
> VcenterClusterEdrsMaintenanceModeExitTaskResp exit_task(cluster, request_body)

Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi.new
cluster = 'cluster_example' # String | Identifier of cluster that exiting maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource.
request_body = VCenter::VcenterClusterEdrsMaintenanceModeExitTask.new # VcenterClusterEdrsMaintenanceModeExitTask | 

begin
  #Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
  result = api_instance.exit_task(cluster, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsMaintenanceModeApi->exit_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster that exiting maintenance mode. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | [**VcenterClusterEdrsMaintenanceModeExitTask**](VcenterClusterEdrsMaintenanceModeExitTask.md)|  | 

### Return type

[**VcenterClusterEdrsMaintenanceModeExitTaskResp**](VcenterClusterEdrsMaintenanceModeExitTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterClusterEdrsMaintenanceModeResp get(cluster)

Get the status of the cluster maintenance mode. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi.new
cluster = 'cluster_example' # String | Identifier of queried cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Get the status of the cluster maintenance mode. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsMaintenanceModeApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of queried cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterClusterEdrsMaintenanceModeResp**](VcenterClusterEdrsMaintenanceModeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



