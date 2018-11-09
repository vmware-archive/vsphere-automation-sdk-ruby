# VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](DeploymentInstallInitialConfigRemotePscThumbprintApi.md#get) | **GET** /vcenter/deployment/install/initial-config/remote-psc/thumbprint | Gets the SHA1 thumbprint of the remote PSC.


# **get**
> VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult get(spec)

Gets the SHA1 thumbprint of the remote PSC.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi.new
spec = nil # Object | Information used to connect to the remote PSC.

begin
  #Gets the SHA1 thumbprint of the remote PSC.
  result = api_instance.get(spec)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallInitialConfigRemotePscThumbprintApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spec** | [**Object**](.md)| Information used to connect to the remote PSC. | 

### Return type

[**VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult**](VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



