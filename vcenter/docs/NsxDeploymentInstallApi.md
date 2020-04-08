# VSphereAutomation::VCenter::NsxDeploymentInstallApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](NsxDeploymentInstallApi.md#cancel) | **POST** /api/vcenter/nsx/deployment/install?action&#x3D;cancel | Cancels the ongoing NSX installation on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](NsxDeploymentInstallApi.md#get) | **GET** /api/vcenter/nsx/deployment/install | Gets the NSX appliance deployment status on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**start**](NsxDeploymentInstallApi.md#start) | **POST** /api/vcenter/nsx/deployment/install?action&#x3D;start | Starts the NSX appliance deployment on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**uninstall**](NsxDeploymentInstallApi.md#uninstall) | **POST** /api/vcenter/nsx/deployment/install?action&#x3D;uninstall | Uninstalls the NSX appliance deployed on the current vCenter. This API can only uninstall NSXI and cannot be used to uninstall NSXT. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **cancel**
> cancel

Cancels the ongoing NSX installation on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentInstallApi.new

begin
  #Cancels the ongoing NSX installation on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentInstallApi->cancel: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterNsxDeploymentInstallInfo get

Gets the NSX appliance deployment status on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentInstallApi.new

begin
  #Gets the NSX appliance deployment status on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentInstallApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxDeploymentInstallInfo**](VcenterNsxDeploymentInstallInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **start**
> start(opts)

Starts the NSX appliance deployment on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentInstallApi.new
opts = {
  request_body: VCenter::VcenterNsxDeploymentInstallInstallSpec.new # VcenterNsxDeploymentInstallInstallSpec | 
}

begin
  #Starts the NSX appliance deployment on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.start(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentInstallApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNsxDeploymentInstallInstallSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **uninstall**
> uninstall

Uninstalls the NSX appliance deployed on the current vCenter. This API can only uninstall NSXI and cannot be used to uninstall NSXT. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentInstallApi.new

begin
  #Uninstalls the NSX appliance deployed on the current vCenter. This API can only uninstall NSXI and cannot be used to uninstall NSXT. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.uninstall
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentInstallApi->uninstall: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



