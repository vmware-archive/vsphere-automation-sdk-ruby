# VSphereAutomation::VCenter::NamespacesSupervisorServicesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**set**](NamespacesSupervisorServicesApi.md#set) | **PUT** /api/vcenter/namespace-management/clusters/{cluster}/supervisorservices/{service_ID} | Update the desired state for a Supervisor Service. The desired state is stored and updated in the vCenter Namespaces Supervisor Kubernetes layer. It may also be updated directly within Kubernetes, where the state is authoratively kept. Desired state is a combination of the enabled and version fields. The desired state is set and will be asynchronously remediated.


# **set**
> set(cluster, service_id, opts)

Update the desired state for a Supervisor Service. The desired state is stored and updated in the vCenter Namespaces Supervisor Kubernetes layer. It may also be updated directly within Kubernetes, where the state is authoratively kept. Desired state is a combination of the enabled and version fields. The desired state is set and will be asynchronously remediated.

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

api_instance = VSphereAutomation::VCenter::NamespacesSupervisorServicesApi.new
cluster = 'cluster_example' # String | Identifier for the cluster on which to enable the service. The parameter must be an identifier for the resource type: ClusterComputeResource.
service_id = 'service_id_example' # String | ID of the Service that is being changed. The parameter must be an identifier for the resource type: vcenter.namespaces.SupervisorService.
opts = {
  request_body: VCenter::VcenterNamespacesSupervisorServicesSetSpec.new # VcenterNamespacesSupervisorServicesSetSpec | 
}

begin
  #Update the desired state for a Supervisor Service. The desired state is stored and updated in the vCenter Namespaces Supervisor Kubernetes layer. It may also be updated directly within Kubernetes, where the state is authoratively kept. Desired state is a combination of the enabled and version fields. The desired state is set and will be asynchronously remediated.
  api_instance.set(cluster, service_id, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesSupervisorServicesApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster on which to enable the service. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **service_id** | **String**| ID of the Service that is being changed. The parameter must be an identifier for the resource type: vcenter.namespaces.SupervisorService. | 
 **request_body** | **VcenterNamespacesSupervisorServicesSetSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



