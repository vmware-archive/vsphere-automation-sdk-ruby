# VSphereAutomation::VCenter::IsoImageApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mount**](IsoImageApi.md#mount) | **POST** /rest/com/vmware/vcenter/iso/image/id:{library_item}?~action&#x3D;mount | Mounts an ISO image from a content library on a virtual machine.
[**unmount**](IsoImageApi.md#unmount) | **POST** /rest/com/vmware/vcenter/iso/image/id:{vm}?~action&#x3D;unmount | Unmounts a previously mounted CD-ROM using an ISO image as a backing.


# **mount**
> VcenterIsoImageMountResp mount(library_item, request_body)

Mounts an ISO image from a content library on a virtual machine.

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

api_instance = VSphereAutomation::VCenter::IsoImageApi.new
library_item = 'library_item_example' # String | The identifier of the library item having the ISO image to mount on the virtual machine.
request_body = VCenter::VcenterIsoImageMount.new # VcenterIsoImageMount | 

begin
  #Mounts an ISO image from a content library on a virtual machine.
  result = api_instance.mount(library_item, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IsoImageApi->mount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item** | **String**| The identifier of the library item having the ISO image to mount on the virtual machine. | 
 **request_body** | [**VcenterIsoImageMount**](VcenterIsoImageMount.md)|  | 

### Return type

[**VcenterIsoImageMountResp**](VcenterIsoImageMountResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unmount**
> unmount(vm, request_body)

Unmounts a previously mounted CD-ROM using an ISO image as a backing.

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

api_instance = VSphereAutomation::VCenter::IsoImageApi.new
vm = 'vm_example' # String | The identifier of the virtual machine from which to unmount the virtual CD-ROM.
request_body = VCenter::VcenterIsoImageUnmount.new # VcenterIsoImageUnmount | 

begin
  #Unmounts a previously mounted CD-ROM using an ISO image as a backing.
  api_instance.unmount(vm, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IsoImageApi->unmount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| The identifier of the virtual machine from which to unmount the virtual CD-ROM. | 
 **request_body** | [**VcenterIsoImageUnmount**](VcenterIsoImageUnmount.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



