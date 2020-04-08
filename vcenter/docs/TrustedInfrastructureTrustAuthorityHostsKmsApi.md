# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsKmsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TrustedInfrastructureTrustAuthorityHostsKmsApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-hosts/{host}/kms/ | Returns the connection info about the Key Provider Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
[**list**](TrustedInfrastructureTrustAuthorityHostsKmsApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-hosts/kms?action&#x3D;query | Returns a list of the hosts running a Key Provider Service matching the specified Kms.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Kms.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Kms.FilterSpec.clusters requires System.View.  


# **get**
> VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo get(host)

Returns the connection info about the Key Provider Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsKmsApi.new
host = 'host_example' # String | @{link vcenter.Host} id. The parameter must be an identifier for the resource type: HostSystem.

begin
  #Returns the connection info about the Key Provider Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityHostsKmsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| @{link vcenter.Host} id. The parameter must be an identifier for the resource type: HostSystem. | 

### Return type

[**VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo**](VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary&gt; list(opts)

Returns a list of the hosts running a Key Provider Service matching the specified Kms.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Kms.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Kms.FilterSpec.clusters requires System.View.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsKmsApi.new
opts = {
  projection: 'projection_example', # String | { 1. The connection information could include the certificates or be a shorter summary. }, { 2. The type of the returned summary - brief, normal, or full. If {@term.unset} a normal projection will be used. }
  request_body: VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsFilterSpec.new # VcenterTrustedInfrastructureTrustAuthorityHostsKmsFilterSpec | 
}

begin
  #Returns a list of the hosts running a Key Provider Service matching the specified Kms.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Kms.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Kms.FilterSpec.clusters requires System.View.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityHostsKmsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projection** | **String**| { 1. The connection information could include the certificates or be a shorter summary. }, { 2. The type of the returned summary - brief, normal, or full. If {@term.unset} a normal projection will be used. } | [optional] 
 **request_body** | **VcenterTrustedInfrastructureTrustAuthorityHostsKmsFilterSpec**|  | [optional] 

### Return type

[**Array&lt;VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary&gt;**](VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



