# VSphereAutomation::VCenter::VchaClusterActiveApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VchaClusterActiveApi.md#get) | **POST** /vcenter/vcha/cluster/active?action&#x3D;get | Retrieves information about the active node of a VCHA cluster.


# **get**
> VcenterVchaClusterActiveResult get(vcenter_vcha_cluster_active_get)

Retrieves information about the active node of a VCHA cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterActiveApi.new
vcenter_vcha_cluster_active_get = VSphereAutomation::VcenterVchaClusterActiveGet.new # VcenterVchaClusterActiveGet | 

begin
  #Retrieves information about the active node of a VCHA cluster.
  result = api_instance.get(vcenter_vcha_cluster_active_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterActiveApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_cluster_active_get** | [**VcenterVchaClusterActiveGet**](VcenterVchaClusterActiveGet.md)|  | 

### Return type

[**VcenterVchaClusterActiveResult**](VcenterVchaClusterActiveResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



