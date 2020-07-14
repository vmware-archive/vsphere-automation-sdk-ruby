# VSphereAutomation::VCenter::VchaClusterApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deploytask**](VchaClusterApi.md#deploytask) | **POST** /vcenter/vcha/cluster?action&#x3D;deploy&amp;vmw-task&#x3D;true | Prepares, clones, and configures a VCHA cluster.
[**failovertask**](VchaClusterApi.md#failovertask) | **POST** /vcenter/vcha/cluster?action&#x3D;failover&amp;vmw-task&#x3D;true | Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster&#39;s mode is enabled and all cluster members are present.    2.  Cluster&#39;s mode is maintenance and all cluster members are present. 
[**get**](VchaClusterApi.md#get) | **POST** /vcenter/vcha/cluster?action&#x3D;get | Retrieves the status of a VCHA cluster.
[**undeploytask**](VchaClusterApi.md#undeploytask) | **POST** /vcenter/vcha/cluster?action&#x3D;undeploy&amp;vmw-task&#x3D;true | Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 


# **deploytask**
> VcenterVchaClusterDeployTaskResult deploytask(request_body)

Prepares, clones, and configures a VCHA cluster.

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

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
request_body = VCenter::VcenterVchaClusterDeployTask.new # VcenterVchaClusterDeployTask | 

begin
  #Prepares, clones, and configures a VCHA cluster.
  result = api_instance.deploytask(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterApi->deploytask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterDeployTask**](VcenterVchaClusterDeployTask.md)|  | 

### Return type

[**VcenterVchaClusterDeployTaskResult**](VcenterVchaClusterDeployTaskResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **failovertask**
> VcenterVchaClusterFailoverTaskResult failovertask(request_body)

Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster's mode is enabled and all cluster members are present.    2.  Cluster's mode is maintenance and all cluster members are present. 

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

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
request_body = VCenter::VcenterVchaClusterFailoverTask.new # VcenterVchaClusterFailoverTask | 

begin
  #Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster's mode is enabled and all cluster members are present.    2.  Cluster's mode is maintenance and all cluster members are present. 
  result = api_instance.failovertask(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterApi->failovertask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterFailoverTask**](VcenterVchaClusterFailoverTask.md)|  | 

### Return type

[**VcenterVchaClusterFailoverTaskResult**](VcenterVchaClusterFailoverTaskResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterVchaClusterResult get(opts)

Retrieves the status of a VCHA cluster.

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

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
opts = {
  request_body: VCenter::VcenterVchaClusterGet.new # VcenterVchaClusterGet | 
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
 **request_body** | [**VcenterVchaClusterGet**](VcenterVchaClusterGet.md)|  | [optional] 

### Return type

[**VcenterVchaClusterResult**](VcenterVchaClusterResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **undeploytask**
> VcenterVchaClusterUndeployTaskResult undeploytask(request_body)

Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 

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

api_instance = VSphereAutomation::VCenter::VchaClusterApi.new
request_body = VCenter::VcenterVchaClusterUndeployTask.new # VcenterVchaClusterUndeployTask | 

begin
  #Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 
  result = api_instance.undeploytask(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterApi->undeploytask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterUndeployTask**](VcenterVchaClusterUndeployTask.md)|  | 

### Return type

[**VcenterVchaClusterUndeployTaskResult**](VcenterVchaClusterUndeployTaskResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



