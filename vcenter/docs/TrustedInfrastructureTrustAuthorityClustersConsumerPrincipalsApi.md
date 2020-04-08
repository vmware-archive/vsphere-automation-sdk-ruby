# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals?vmw-task&#x3D;true | Creates a profile with the specified connection information on all hosts from a Trust Authority Cluster.
[**delete_task**](TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals/{profile}?vmw-task&#x3D;true | Removes the read-only policy configured on ESX for a specific principal.
[**get_task**](TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals/{profile}?vmw-task&#x3D;true | Retrieve information for a specific profile.
[**list_task**](TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#list_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals?action&#x3D;query&amp;vmw-task&#x3D;true | Lists all policies configured on a specific cluster.


# **create_task**
> String create_task(cluster, opts)

Creates a profile with the specified connection information on all hosts from a Trust Authority Cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.new
cluster = 'cluster_example' # String | The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec | 
}

begin
  #Creates a profile with the specified connection information on all hosts from a Trust Authority Cluster.
  result = api_instance.create_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_task**
> String delete_task(cluster, profile)

Removes the read-only policy configured on ESX for a specific principal.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.new
cluster = 'cluster_example' # String | The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource.
profile = 'profile_example' # String | The ID of the connection profile to modify. The parameter must be an identifier for the resource type: esx.authentication.clientprofile.

begin
  #Removes the read-only policy configured on ESX for a specific principal.
  result = api_instance.delete_task(cluster, profile)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **profile** | **String**| The ID of the connection profile to modify. The parameter must be an identifier for the resource type: esx.authentication.clientprofile. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_task**
> String get_task(cluster, profile)

Retrieve information for a specific profile.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.new
cluster = 'cluster_example' # String | The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource.
profile = 'profile_example' # String | The ID of the profile. The parameter must be an identifier for the resource type: esx.authentication.clientprofile.

begin
  #Retrieve information for a specific profile.
  result = api_instance.get_task(cluster, profile)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **profile** | **String**| The ID of the profile. The parameter must be an identifier for the resource type: esx.authentication.clientprofile. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_task**
> String list_task(cluster, opts)

Lists all policies configured on a specific cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.new
cluster = 'cluster_example' # String | The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec | 
}

begin
  #Lists all policies configured on a specific cluster.
  result = api_instance.list_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi->list_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



