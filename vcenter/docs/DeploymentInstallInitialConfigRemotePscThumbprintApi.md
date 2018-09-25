# VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](DeploymentInstallInitialConfigRemotePscThumbprintApi.md#get) | **GET** /vcenter/deployment/install/initial-config/remote-psc/thumbprint | Gets the SHA1 thumbprint of the remote PSC.


# **get**
> VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult get

Gets the SHA1 thumbprint of the remote PSC.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi.new

begin
  #Gets the SHA1 thumbprint of the remote PSC.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallInitialConfigRemotePscThumbprintApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult**](VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



