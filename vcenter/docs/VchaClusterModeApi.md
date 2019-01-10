# VSphereAutomation::VCenter::VchaClusterModeApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VchaClusterModeApi.md#get) | **GET** /vcenter/vcha/cluster/mode | Retrieves the current mode of a VCHA cluster.
[**settask**](VchaClusterModeApi.md#settask) | **PUT** /vcenter/vcha/cluster/mode | Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -&gt; disabled - Allowed only in healthy and degraded states.  enabled -&gt; maintenance - Allowed only in healthy state.  disabled -&gt; enabled - Allowed only in healthy state.  maintenance -&gt; enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -&gt; disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 


# **get**
> VcenterVchaClusterModeResult get

Retrieves the current mode of a VCHA cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterModeApi.new

begin
  #Retrieves the current mode of a VCHA cluster.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterModeApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterVchaClusterModeResult**](VcenterVchaClusterModeResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **settask**
> VcenterVchaClusterModeSetTaskResult settask(vcenter_vcha_cluster_mode_set_task)

Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterModeApi.new
vcenter_vcha_cluster_mode_set_task = VSphereAutomation::VcenterVchaClusterModeSetTask.new # VcenterVchaClusterModeSetTask | 

begin
  #Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
  result = api_instance.settask(vcenter_vcha_cluster_mode_set_task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterModeApi->settask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_mode_set_task** | [**VcenterVchaClusterModeSetTask**](VcenterVchaClusterModeSetTask.md)|  | 

### Return type

[**VcenterVchaClusterModeSetTaskResult**](VcenterVchaClusterModeSetTaskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



