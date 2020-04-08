# VSphereAutomation::VCenter::VmToolsInstallerApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmToolsInstallerApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/tools/installer?action&#x3D;connect | Connects the VMware Tools CD installer as a CD-ROM for the guest operating system. On Windows guest operating systems with autorun, this should cause the installer to initiate the Tools installation which will need user input to complete. On other (non-Windows) guest operating systems this will make the Tools installation available, and a a user will need to do guest-specific actions. On Linux, this includes opening an archive and running the installer. To monitor the status of the Tools install, clients should check the Tools.Info.version-status and Tools.Info.run-state from Tools.get
[**disconnect**](VmToolsInstallerApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/tools/installer?action&#x3D;disconnect | Disconnect the VMware Tools installer CD image.
[**get**](VmToolsInstallerApi.md#get) | **GET** /rest/vcenter/vm/{vm}/tools/installer | Get information about the VMware Tools installer.


# **connect**
> connect(vm)

Connects the VMware Tools CD installer as a CD-ROM for the guest operating system. On Windows guest operating systems with autorun, this should cause the installer to initiate the Tools installation which will need user input to complete. On other (non-Windows) guest operating systems this will make the Tools installation available, and a a user will need to do guest-specific actions. On Linux, this includes opening an archive and running the installer. To monitor the status of the Tools install, clients should check the Tools.Info.version-status and Tools.Info.run-state from Tools.get

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

api_instance = VSphereAutomation::VCenter::VmToolsInstallerApi.new
vm = 'vm_example' # String | Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Connects the VMware Tools CD installer as a CD-ROM for the guest operating system. On Windows guest operating systems with autorun, this should cause the installer to initiate the Tools installation which will need user input to complete. On other (non-Windows) guest operating systems this will make the Tools installation available, and a a user will need to do guest-specific actions. On Linux, this includes opening an archive and running the installer. To monitor the status of the Tools install, clients should check the Tools.Info.version-status and Tools.Info.run-state from Tools.get
  api_instance.connect(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmToolsInstallerApi->connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disconnect**
> disconnect(vm)

Disconnect the VMware Tools installer CD image.

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

api_instance = VSphereAutomation::VCenter::VmToolsInstallerApi.new
vm = 'vm_example' # String | Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Disconnect the VMware Tools installer CD image.
  api_instance.disconnect(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmToolsInstallerApi->disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmToolsInstallerResp get(vm)

Get information about the VMware Tools installer.

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

api_instance = VSphereAutomation::VCenter::VmToolsInstallerApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Get information about the VMware Tools installer.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmToolsInstallerApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmToolsInstallerResp**](VcenterVmToolsInstallerResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



