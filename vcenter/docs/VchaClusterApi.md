# VSphereAutomation::VCenter::VchaClusterApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deploytask**](VchaClusterApi.md#deploytask) | **POST** /vcenter/vcha/cluster?action&#x3D;deploy | Prepares, clones, and configures a VCHA cluster.
[**failovertask**](VchaClusterApi.md#failovertask) | **POST** /vcenter/vcha/cluster?action&#x3D;failover | Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster&#39;s mode is enabled and all cluster members are present.    2.  Cluster&#39;s mode is maintenance and all cluster members are present. 
[**get**](VchaClusterApi.md#get) | **POST** /vcenter/vcha/cluster?action&#x3D;get | Retrieves the status of a VCHA cluster.
[**undeploytask**](VchaClusterApi.md#undeploytask) | **POST** /vcenter/vcha/cluster?action&#x3D;undeploy | Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 


# **deploytask**
> VcenterVchaClusterDeployTaskResult deploytask(vcenter_vcha_cluster_deploy_task)

Prepares, clones, and configures a VCHA cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
vcenter_vcha_cluster_deploy_task = VSphereAutomation::VcenterVchaClusterDeployTask.new # VcenterVchaClusterDeployTask | 

begin
  #Prepares, clones, and configures a VCHA cluster.
  result = api_instance.deploytask(vcenter_vcha_cluster_deploy_task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterApi->deploytask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_deploy_task** | [**VcenterVchaClusterDeployTask**](VcenterVchaClusterDeployTask.md)|  | 

### Return type

[**VcenterVchaClusterDeployTaskResult**](VcenterVchaClusterDeployTaskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **failovertask**
> VcenterVchaClusterFailoverTaskResult failovertask(vcenter_vcha_cluster_failover_task)

Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster's mode is enabled and all cluster members are present.    2.  Cluster's mode is maintenance and all cluster members are present. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
vcenter_vcha_cluster_failover_task = VSphereAutomation::VcenterVchaClusterFailoverTask.new # VcenterVchaClusterFailoverTask | 

begin
  #Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster's mode is enabled and all cluster members are present.    2.  Cluster's mode is maintenance and all cluster members are present. 
  result = api_instance.failovertask(vcenter_vcha_cluster_failover_task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterApi->failovertask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_failover_task** | [**VcenterVchaClusterFailoverTask**](VcenterVchaClusterFailoverTask.md)|  | 

### Return type

[**VcenterVchaClusterFailoverTaskResult**](VcenterVchaClusterFailoverTaskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> VcenterVchaClusterResult get(opts)

Retrieves the status of a VCHA cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
opts = {
  vcenter_vcha_cluster_get: VSphereAutomation::VcenterVchaClusterGet.new # VcenterVchaClusterGet | 
}

begin
  #Retrieves the status of a VCHA cluster.
  result = api_instance.get(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_get** | [**VcenterVchaClusterGet**](VcenterVchaClusterGet.md)|  | [optional] 

### Return type

[**VcenterVchaClusterResult**](VcenterVchaClusterResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **undeploytask**
> VcenterVchaClusterUndeployTaskResult undeploytask(vcenter_vcha_cluster_undeploy_task)

Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
vcenter_vcha_cluster_undeploy_task = VSphereAutomation::VcenterVchaClusterUndeployTask.new # VcenterVchaClusterUndeployTask | 

begin
  #Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 
  result = api_instance.undeploytask(vcenter_vcha_cluster_undeploy_task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterApi->undeploytask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_undeploy_task** | [**VcenterVchaClusterUndeployTask**](VcenterVchaClusterUndeployTask.md)|  | 

### Return type

[**VcenterVchaClusterUndeployTaskResult**](VcenterVchaClusterUndeployTaskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



