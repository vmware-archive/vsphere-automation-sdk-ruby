# VSphereAutomation::VCenter::TopologyPscsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**decommissiontask**](TopologyPscsApi.md#decommissiontask) | **POST** /vcenter/topology/pscs/{hostname} | Decommission the external Platform Services Controller node.


# **decommissiontask**
> VcenterTopologyPscsDecommissionTaskResult decommissiontask(hostname, action, request_body)

Decommission the external Platform Services Controller node.

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

api_instance = VSphereAutomation::VCenter::TopologyPscsApi.new
hostname = 'hostname_example' # String | FQDN or IP address of external Platform Services Controller node to be decommissioned.
action = 'action_example' # String | action=decommission&vmw-task
request_body = VCenter::VcenterTopologyPscsDecommissionTask.new # VcenterTopologyPscsDecommissionTask | 

begin
  #Decommission the external Platform Services Controller node.
  result = api_instance.decommissiontask(hostname, action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TopologyPscsApi->decommissiontask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hostname** | **String**| FQDN or IP address of external Platform Services Controller node to be decommissioned. | 
 **action** | **String**| action&#x3D;decommission&amp;vmw-task | 
 **request_body** | [**VcenterTopologyPscsDecommissionTask**](VcenterTopologyPscsDecommissionTask.md)|  | 

### Return type

[**VcenterTopologyPscsDecommissionTaskResult**](VcenterTopologyPscsDecommissionTaskResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



