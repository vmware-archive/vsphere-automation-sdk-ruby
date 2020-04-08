# VSphereAutomation::VCenter::VmConsoleTicketsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmConsoleTicketsApi.md#create) | **POST** /rest/vcenter/vm/{vm}/console/tickets | Creates a virtual machine console ticket of a given ticket type. The created ticket is a one time use URI. The validity of the ticket is 30 minutes, if not used with in the time frame the ticket expires.   The VMRC ticket contains the IP address or the DNS resolvable name of the vCenter server. This ticket requires installation of VMware Workstation, VMware Fusion or VMRC to be installed on the machine where the ticket has to be opened. This ticket can be acquired even when the VM is turned off.    The WEBMKS ticket contains the IP address of the DNS resolvable name of the ESX server. This ticket requires user to embed this ticket in a HTML page using VMware HTML Console SDK - https://www.vmware.com/support/developer/html-console This ticket can be acquired only when the VM is turned on. 


# **create**
> VcenterVmConsoleTicketsCreateResp create(vm, request_body)

Creates a virtual machine console ticket of a given ticket type. The created ticket is a one time use URI. The validity of the ticket is 30 minutes, if not used with in the time frame the ticket expires.   The VMRC ticket contains the IP address or the DNS resolvable name of the vCenter server. This ticket requires installation of VMware Workstation, VMware Fusion or VMRC to be installed on the machine where the ticket has to be opened. This ticket can be acquired even when the VM is turned off.    The WEBMKS ticket contains the IP address of the DNS resolvable name of the ESX server. This ticket requires user to embed this ticket in a HTML page using VMware HTML Console SDK - https://www.vmware.com/support/developer/html-console This ticket can be acquired only when the VM is turned on. 

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

api_instance = VSphereAutomation::VCenter::VmConsoleTicketsApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmConsoleTicketsCreate.new # VcenterVmConsoleTicketsCreate | 

begin
  #Creates a virtual machine console ticket of a given ticket type. The created ticket is a one time use URI. The validity of the ticket is 30 minutes, if not used with in the time frame the ticket expires.   The VMRC ticket contains the IP address or the DNS resolvable name of the vCenter server. This ticket requires installation of VMware Workstation, VMware Fusion or VMRC to be installed on the machine where the ticket has to be opened. This ticket can be acquired even when the VM is turned off.    The WEBMKS ticket contains the IP address of the DNS resolvable name of the ESX server. This ticket requires user to embed this ticket in a HTML page using VMware HTML Console SDK - https://www.vmware.com/support/developer/html-console This ticket can be acquired only when the VM is turned on. 
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmConsoleTicketsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmConsoleTicketsCreate**](VcenterVmConsoleTicketsCreate.md)|  | 

### Return type

[**VcenterVmConsoleTicketsCreateResp**](VcenterVmConsoleTicketsCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



