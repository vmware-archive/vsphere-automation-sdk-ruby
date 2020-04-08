# VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TrustedInfrastructureTrustedClustersKmsServicesApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services?vmw-task&#x3D;true | Configures the cluster to use a the given registered Key Provider Service.
[**delete_task**](TrustedInfrastructureTrustedClustersKmsServicesApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services/{service}?vmw-task&#x3D;true | Removes the Key Provider Service instance from the configuration of the given cluster.
[**get**](TrustedInfrastructureTrustedClustersKmsServicesApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services/{service} | Returns detailed information about the given Key Provider Service instance used by the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
[**list**](TrustedInfrastructureTrustedClustersKmsServicesApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services?action&#x3D;query | Returns basic information about all configured Key Provider Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  


# **create_task**
> String create_task(cluster, opts)

Configures the cluster to use a the given registered Key Provider Service.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi.new
cluster = 'cluster_example' # String | The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateSpec.new # VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateSpec | 
}

begin
  #Configures the cluster to use a the given registered Key Provider Service.
  result = api_instance.create_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersKmsServicesApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_task**
> String delete_task(cluster, service)

Removes the Key Provider Service instance from the configuration of the given cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi.new
cluster = 'cluster_example' # String | the unique ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
service = 'service_example' # String | the registered Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.

begin
  #Removes the Key Provider Service instance from the configuration of the given cluster.
  result = api_instance.delete_task(cluster, service)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersKmsServicesApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| the unique ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **service** | **String**| the registered Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterTrustedInfrastructureTrustedClustersKmsServicesInfo get(cluster, service)

Returns detailed information about the given Key Provider Service instance used by the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi.new
cluster = 'cluster_example' # String | The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
service = 'service_example' # String | The ID of the service. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.

begin
  #Returns detailed information about the given Key Provider Service instance used by the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
  result = api_instance.get(cluster, service)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersKmsServicesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **service** | **String**| The ID of the service. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service. | 

### Return type

[**VcenterTrustedInfrastructureTrustedClustersKmsServicesInfo**](VcenterTrustedInfrastructureTrustedClustersKmsServicesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterTrustedInfrastructureTrustedClustersKmsServicesSummary&gt; list(cluster, opts)

Returns basic information about all configured Key Provider Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi.new
cluster = 'cluster_example' # String | The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesFilterSpec.new # VcenterTrustedInfrastructureTrustedClustersKmsServicesFilterSpec | 
}

begin
  #Returns basic information about all configured Key Provider Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
  result = api_instance.list(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustedClustersKmsServicesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustedClustersKmsServicesFilterSpec**|  | [optional] 

### Return type

[**Array&lt;VcenterTrustedInfrastructureTrustedClustersKmsServicesSummary&gt;**](VcenterTrustedInfrastructureTrustedClustersKmsServicesSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



