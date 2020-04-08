# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_task**](TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/peer-certs/current?vmw-task&#x3D;true | Return the remote server certificates.   Contacts the configured key servers and attempts to retrieve their certificates. These certificates might not yet be trusted.    If the returned certificates are to be considered trustworthy, then it must be added to the list of trusted server certificates by adding to the certificates returned by TrustedPeerCertificates.get and invoking TrustedPeerCertificates.update with the updated list of certificates. 


# **list_task**
> String list_task(cluster, provider, opts)

Return the remote server certificates.   Contacts the configured key servers and attempts to retrieve their certificates. These certificates might not yet be trusted.    If the returned certificates are to be considered trustworthy, then it must be added to the list of trusted server certificates by adding to the certificates returned by TrustedPeerCertificates.get and invoking TrustedPeerCertificates.update with the updated list of certificates. 

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
provider = 'provider_example' # String | Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
opts = {
  server_names: ['server_names_example'], # Array<String> | Names that key server must have to match the filter (see CurrentPeerCertificates.Summary.server-name). If unset or empty, key servers with any name match the filter.
  trusted: true # Boolean | Trust status that server certificates must have to match the filter (see CurrentPeerCertificates.Summary.trusted). If unset, trusted and untrusted server certificates match the filter.
}

begin
  #Return the remote server certificates.   Contacts the configured key servers and attempts to retrieve their certificates. These certificates might not yet be trusted.    If the returned certificates are to be considered trustworthy, then it must be added to the list of trusted server certificates by adding to the certificates returned by TrustedPeerCertificates.get and invoking TrustedPeerCertificates.update with the updated list of certificates. 
  result = api_instance.list_task(cluster, provider, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi->list_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **provider** | **String**| Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. | 
 **server_names** | [**Array&lt;String&gt;**](String.md)| Names that key server must have to match the filter (see CurrentPeerCertificates.Summary.server-name). If unset or empty, key servers with any name match the filter. | [optional] 
 **trusted** | **Boolean**| Trust status that server certificates must have to match the filter (see CurrentPeerCertificates.Summary.trusted). If unset, trusted and untrusted server certificates match the filter. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



