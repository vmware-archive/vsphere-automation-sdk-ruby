# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**set_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi.md#set_task) | **PUT** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/credential?vmw-task&#x3D;true | Set the key server credential.


# **set_task**
> String set_task(cluster, provider, opts)

Set the key server credential.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
opts = {
  request_body: 'request_body_example' # String | 
}

begin
  #Set the key server credential.
  result = api_instance.set_task(cluster, provider, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi->set_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **provider** | **String**| Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. | 
 **request_body** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



