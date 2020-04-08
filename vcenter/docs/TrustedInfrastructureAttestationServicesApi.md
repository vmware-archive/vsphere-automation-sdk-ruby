# VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TrustedInfrastructureAttestationServicesApi.md#create) | **POST** /api/vcenter/trusted-infrastructure/attestation/services | Registers a new Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
[**delete**](TrustedInfrastructureAttestationServicesApi.md#delete) | **DELETE** /api/vcenter/trusted-infrastructure/attestation/services/{service} | Removes a registered Attestation Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
[**get**](TrustedInfrastructureAttestationServicesApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/attestation/services/{service} | Returns the detailed information about a registered Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
[**list**](TrustedInfrastructureAttestationServicesApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/attestation/services?action&#x3D;query | Returns detailed information about all registered Attestation Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  


# **create**
> String create(opts)

Registers a new Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi.new
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureAttestationServicesCreateSpec.new # VcenterTrustedInfrastructureAttestationServicesCreateSpec | 
}

begin
  #Registers a new Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureAttestationServicesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterTrustedInfrastructureAttestationServicesCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(service)

Removes a registered Attestation Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi.new
service = 'service_example' # String | the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.

begin
  #Removes a registered Attestation Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
  api_instance.delete(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureAttestationServicesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterTrustedInfrastructureAttestationServicesInfo get(service)

Returns the detailed information about a registered Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi.new
service = 'service_example' # String | the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.

begin
  #Returns the detailed information about a registered Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
  result = api_instance.get(service)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureAttestationServicesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. | 

### Return type

[**VcenterTrustedInfrastructureAttestationServicesInfo**](VcenterTrustedInfrastructureAttestationServicesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterTrustedInfrastructureAttestationServicesSummary&gt; list(opts)

Returns detailed information about all registered Attestation Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi.new
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureAttestationServicesFilterSpec.new # VcenterTrustedInfrastructureAttestationServicesFilterSpec | 
}

begin
  #Returns detailed information about all registered Attestation Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureAttestationServicesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterTrustedInfrastructureAttestationServicesFilterSpec**|  | [optional] 

### Return type

[**Array&lt;VcenterTrustedInfrastructureAttestationServicesSummary&gt;**](VcenterTrustedInfrastructureAttestationServicesSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



