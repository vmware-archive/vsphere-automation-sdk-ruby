# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/settings?vmw-task&#x3D;true | Return the TPM 2.0 protocol settings.
[**update_task**](TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/settings?vmw-task&#x3D;true | Set the TPM 2.0 protocol settings.


# **get_task**
> String get_task(cluster)

Return the TPM 2.0 protocol settings.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Return the TPM 2.0 protocol settings.
  result = api_instance.get_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_task**
> String update_task(cluster, opts)

Set the TPM 2.0 protocol settings.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.new
cluster = 'cluster_example' # String | The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec.new # VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec | 
}

begin
  #Set the TPM 2.0 protocol settings.
  result = api_instance.update_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi->update_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



