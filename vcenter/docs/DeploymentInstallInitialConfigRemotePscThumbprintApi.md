# VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](DeploymentInstallInitialConfigRemotePscThumbprintApi.md#get) | **GET** /vcenter/deployment/install/initial-config/remote-psc/thumbprint | Gets the SHA1 thumbprint of the remote PSC.


# **get**
> VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult get(spec_address, opts)

Gets the SHA1 thumbprint of the remote PSC.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi.new
spec_address = 'spec_address_example' # String | The IP address or DNS resolvable name of the remote PSC.
opts = {
  spec_https_port: 56 # Integer | The HTTPS port of the remote PSC.
}

begin
  #Gets the SHA1 thumbprint of the remote PSC.
  result = api_instance.get(spec_address, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentInstallInitialConfigRemotePscThumbprintApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spec_address** | **String**| The IP address or DNS resolvable name of the remote PSC. | 
 **spec_https_port** | **Integer**| The HTTPS port of the remote PSC. | [optional] 

### Return type

[**VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult**](VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



