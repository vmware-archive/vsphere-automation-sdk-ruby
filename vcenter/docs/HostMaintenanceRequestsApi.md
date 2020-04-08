# VSphereAutomation::VCenter::HostMaintenanceRequestsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](HostMaintenanceRequestsApi.md#create) | **POST** /api/vcenter/host/{host}/maintenance/requests | Create a new maintenance request for a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Host.Config.Maintenance.  
[**delete**](HostMaintenanceRequestsApi.md#delete) | **POST** /api/vcenter/host/maintenance/requests?action&#x3D;delete | Deletes the given set of maintenance requests. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](HostMaintenanceRequestsApi.md#list) | **GET** /api/vcenter/host/maintenance/requests | Returns information about maintenance requests matching the Requests.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  


# **create**
> String create(host, opts)

Create a new maintenance request for a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Host.Config.Maintenance.  

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

api_instance = VSphereAutomation::VCenter::HostMaintenanceRequestsApi.new
host = 'host_example' # String | Identifier of the host. The parameter must be an identifier for the resource type: HostSystem.
opts = {
  request_body: VCenter::VcenterHostMaintenanceRequestsCreateSpec.new # VcenterHostMaintenanceRequestsCreateSpec | 
}

begin
  #Create a new maintenance request for a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Host.Config.Maintenance.  
  result = api_instance.create(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostMaintenanceRequestsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. The parameter must be an identifier for the resource type: HostSystem. | 
 **request_body** | **VcenterHostMaintenanceRequestsCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(opts)

Deletes the given set of maintenance requests. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HostMaintenanceRequestsApi.new
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Deletes the given set of maintenance requests. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostMaintenanceRequestsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VcenterHostMaintenanceRequestsListResult list(opts)

Returns information about maintenance requests matching the Requests.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::HostMaintenanceRequestsApi.new
opts = {
  hosts: ['hosts_example'] # Array<String> | Identifiers of hosts that can match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
}

begin
  #Returns information about maintenance requests matching the Requests.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostMaintenanceRequestsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hosts** | [**Array&lt;String&gt;**](String.md)| Identifiers of hosts that can match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | [optional] 

### Return type

[**VcenterHostMaintenanceRequestsListResult**](VcenterHostMaintenanceRequestsListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



