# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsAttestationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TrustedInfrastructureTrustAuthorityHostsAttestationApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-hosts/{host}/attestation/ | Returns the connection info about the Attestation Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
[**list**](TrustedInfrastructureTrustAuthorityHostsAttestationApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-hosts/attestation | Returns a list of the hosts running a Attestation Service matching the specified Attestation.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Attestation.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Attestation.FilterSpec.clusters requires System.View.  


# **get**
> VcenterTrustedInfrastructureTrustAuthorityHostsAttestationInfo get(host)

Returns the connection info about the Attestation Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsAttestationApi.new
host = 'host_example' # String | @{link vcenter.Host} id. The parameter must be an identifier for the resource type: HostSystem.

begin
  #Returns the connection info about the Attestation Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityHostsAttestationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| @{link vcenter.Host} id. The parameter must be an identifier for the resource type: HostSystem. | 

### Return type

[**VcenterTrustedInfrastructureTrustAuthorityHostsAttestationInfo**](VcenterTrustedInfrastructureTrustAuthorityHostsAttestationInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummary&gt; list(opts)

Returns a list of the hosts running a Attestation Service matching the specified Attestation.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Attestation.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Attestation.FilterSpec.clusters requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsAttestationApi.new
opts = {
  projection: 'projection_example', # String | { 1. The connection information could include the certificates or be a shorter summary. }, { 2. The type of the returned summary - brief, normal, or full. If {@term.unset} a normal projection will be used. }
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationFilterSpec.new # VcenterTrustedInfrastructureTrustAuthorityHostsAttestationFilterSpec | 
}

begin
  #Returns a list of the hosts running a Attestation Service matching the specified Attestation.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Attestation.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Attestation.FilterSpec.clusters requires System.View.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityHostsAttestationApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projection** | **String**| { 1. The connection information could include the certificates or be a shorter summary. }, { 2. The type of the returned summary - brief, normal, or full. If {@term.unset} a normal projection will be used. } | [optional] 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityHostsAttestationFilterSpec**|  | [optional] 

### Return type

[**Array&lt;VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummary&gt;**](VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



