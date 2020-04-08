# VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TrustedInfrastructureKmsServicesApi.md#create) | **POST** /api/vcenter/trusted-infrastructure/kms/services | Registers a Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
[**delete**](TrustedInfrastructureKmsServicesApi.md#delete) | **DELETE** /api/vcenter/trusted-infrastructure/kms/services/{service} | Removes a currently registered Key Provider Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
[**get**](TrustedInfrastructureKmsServicesApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/kms/services/{service} | Returns the detailed information about a registered Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
[**list**](TrustedInfrastructureKmsServicesApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/kms/services?action&#x3D;query | Returns basic information about all registered Key Provider Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  


# **create**
> String create(opts)

Registers a Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi.new
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureKmsServicesCreateSpec.new # VcenterTrustedInfrastructureKmsServicesCreateSpec | 
}

begin
  #Registers a Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureKmsServicesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterTrustedInfrastructureKmsServicesCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(service)

Removes a currently registered Key Provider Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi.new
service = 'service_example' # String | the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.

begin
  #Removes a currently registered Key Provider Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
  api_instance.delete(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureKmsServicesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterTrustedInfrastructureKmsServicesInfo get(service)

Returns the detailed information about a registered Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi.new
service = 'service_example' # String | the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.

begin
  #Returns the detailed information about a registered Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
  result = api_instance.get(service)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureKmsServicesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service. | 

### Return type

[**VcenterTrustedInfrastructureKmsServicesInfo**](VcenterTrustedInfrastructureKmsServicesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterTrustedInfrastructureKmsServicesSummary&gt; list(opts)

Returns basic information about all registered Key Provider Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi.new
opts = {
  request_body: VCenter::VcenterTrustedInfrastructureKmsServicesFilterSpec.new # VcenterTrustedInfrastructureKmsServicesFilterSpec | 
}

begin
  #Returns basic information about all registered Key Provider Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureKmsServicesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterTrustedInfrastructureKmsServicesFilterSpec**|  | [optional] 

### Return type

[**Array&lt;VcenterTrustedInfrastructureKmsServicesSummary&gt;**](VcenterTrustedInfrastructureKmsServicesSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



