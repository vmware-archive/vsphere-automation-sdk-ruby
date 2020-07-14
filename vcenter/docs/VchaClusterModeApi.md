# VSphereAutomation::VCenter::VchaClusterModeApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VchaClusterModeApi.md#get) | **GET** /vcenter/vcha/cluster/mode | Retrieves the current mode of a VCHA cluster.
[**settask**](VchaClusterModeApi.md#settask) | **PUT** /vcenter/vcha/cluster/mode?vmw-task&#x3D;true | Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -&gt; disabled - Allowed only in healthy and degraded states.  enabled -&gt; maintenance - Allowed only in healthy state.  disabled -&gt; enabled - Allowed only in healthy state.  maintenance -&gt; enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -&gt; disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 


# **get**
> VcenterVchaClusterModeResult get

Retrieves the current mode of a VCHA cluster.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **settask**
> VcenterVchaClusterModeSetTaskResult settask(request_body)

Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 

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

api_instance = VSphereAutomation::VCenter::VchaClusterModeApi.new
request_body = VCenter::VcenterVchaClusterModeSetTask.new # VcenterVchaClusterModeSetTask | 

begin
  #Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
  result = api_instance.settask(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterModeApi->settask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaClusterModeSetTask**](VcenterVchaClusterModeSetTask.md)|  | 

### Return type

[**VcenterVchaClusterModeSetTaskResult**](VcenterVchaClusterModeSetTaskResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



