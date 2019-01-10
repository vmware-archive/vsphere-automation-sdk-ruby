# VSphereAutomation::VCenter::HostApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](HostApi.md#connect) | **POST** /vcenter/host/{host}/connect | Connect to the host corresponding to host previously added to the vCenter server.
[**create**](HostApi.md#create) | **POST** /vcenter/host | Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.
[**delete**](HostApi.md#delete) | **DELETE** /vcenter/host/{host} | Remove a standalone host from the vCenter Server.
[**disconnect**](HostApi.md#disconnect) | **POST** /vcenter/host/{host}/disconnect | Disconnect the host corresponding to host from the vCenter server
[**list**](HostApi.md#list) | **GET** /vcenter/host | Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.


# **connect**
> connect(host)

Connect to the host corresponding to host previously added to the vCenter server.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::HostApi.new
host = 'host_example' # String | Identifier of the host to be reconnected. The parameter must be an identifier for the resource type: HostSystem.

begin
  #Connect to the host corresponding to host previously added to the vCenter server.
  api_instance.connect(host)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostApi->connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host to be reconnected. The parameter must be an identifier for the resource type: HostSystem. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **create**
> VcenterHostCreateResult create(vcenter_host_create)

Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::HostApi.new
vcenter_host_create = VSphereAutomation::VcenterHostCreate.new # VcenterHostCreate | 

begin
  #Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.
  result = api_instance.create(vcenter_host_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_host_create** | [**VcenterHostCreate**](VcenterHostCreate.md)|  | 

### Return type

[**VcenterHostCreateResult**](VcenterHostCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(host)

Remove a standalone host from the vCenter Server.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::HostApi.new
host = 'host_example' # String | Identifier of the host to be deleted. The parameter must be an identifier for the resource type: HostSystem.

begin
  #Remove a standalone host from the vCenter Server.
  api_instance.delete(host)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host to be deleted. The parameter must be an identifier for the resource type: HostSystem. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **disconnect**
> disconnect(host)

Disconnect the host corresponding to host from the vCenter server

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::HostApi.new
host = 'host_example' # String | Identifier of the host to be disconnected. The parameter must be an identifier for the resource type: HostSystem.

begin
  #Disconnect the host corresponding to host from the vCenter server
  api_instance.disconnect(host)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostApi->disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host to be disconnected. The parameter must be an identifier for the resource type: HostSystem. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterHostListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::HostApi.new
opts = {
  filter_hosts: ['filter_hosts_example'], # Array<String> | Identifiers of hosts that can match the filter. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
  filter_names: ['filter_names_example'], # Array<String> | Names that hosts must have to match the filter (see Host.Summary.name). If unset or empty, hosts with any name match the filter.
  filter_folders: ['filter_folders_example'], # Array<String> | Folders that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  filter_datacenters: ['filter_datacenters_example'], # Array<String> | Datacenters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
  filter_standalone: true, # BOOLEAN | If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter. If unset Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and Host.FilterSpec.clusters os not empty, no hosts will match the filter.
  filter_clusters: ['filter_clusters_example'], # Array<String> | Clusters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this field is not empty and Host.FilterSpec.standalone is true, no hosts will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
  filter_connection_states: ['filter_connection_states_example'] # Array<String> | Connection states that a host must be in to match the filter (see Host.Summary.connection-state. If unset or empty, hosts in any connection state match the filter.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_hosts** | [**Array&lt;String&gt;**](String.md)| Identifiers of hosts that can match the filter. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that hosts must have to match the filter (see Host.Summary.name). If unset or empty, hosts with any name match the filter. | [optional] 
 **filter_folders** | [**Array&lt;String&gt;**](String.md)| Folders that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Datacenters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 
 **filter_standalone** | **BOOLEAN**| If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter. If unset Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and Host.FilterSpec.clusters os not empty, no hosts will match the filter. | [optional] 
 **filter_clusters** | [**Array&lt;String&gt;**](String.md)| Clusters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this field is not empty and Host.FilterSpec.standalone is true, no hosts will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
 **filter_connection_states** | [**Array&lt;String&gt;**](String.md)| Connection states that a host must be in to match the filter (see Host.Summary.connection-state. If unset or empty, hosts in any connection state match the filter. | [optional] 

### Return type

[**VcenterHostListResult**](VcenterHostListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



