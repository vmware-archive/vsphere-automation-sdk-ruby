# VSphereAutomation::VCenter::IsoImageApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mount**](IsoImageApi.md#mount) | **POST** /com/vmware/vcenter/iso/image/id:{library_item}?~action&#x3D;mount | Mounts an ISO image from a content library on a virtual machine.
[**unmount**](IsoImageApi.md#unmount) | **POST** /com/vmware/vcenter/iso/image/id:{vm}?~action&#x3D;unmount | Unmounts a previously mounted CD-ROM using an ISO image as a backing.


# **mount**
> VcenterIsoImageMountResult mount(library_item, vcenter_iso_image_mount)

Mounts an ISO image from a content library on a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::IsoImageApi.new
library_item = 'library_item_example' # String | The identifier of the library item having the ISO image to mount on the virtual machine.
vcenter_iso_image_mount = VSphereAutomation::VcenterIsoImageMount.new # VcenterIsoImageMount | 

begin
  #Mounts an ISO image from a content library on a virtual machine.
  result = api_instance.mount(library_item, vcenter_iso_image_mount)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IsoImageApi->mount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item** | **String**| The identifier of the library item having the ISO image to mount on the virtual machine. | 
 **vcenter_iso_image_mount** | [**VcenterIsoImageMount**](VcenterIsoImageMount.md)|  | 

### Return type

[**VcenterIsoImageMountResult**](VcenterIsoImageMountResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **unmount**
> unmount(vm, vcenter_iso_image_unmount)

Unmounts a previously mounted CD-ROM using an ISO image as a backing.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::IsoImageApi.new
vm = 'vm_example' # String | The identifier of the virtual machine from which to unmount the virtual CD-ROM.
vcenter_iso_image_unmount = VSphereAutomation::VcenterIsoImageUnmount.new # VcenterIsoImageUnmount | 

begin
  #Unmounts a previously mounted CD-ROM using an ISO image as a backing.
  api_instance.unmount(vm, vcenter_iso_image_unmount)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IsoImageApi->unmount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| The identifier of the virtual machine from which to unmount the virtual CD-ROM. | 
 **vcenter_iso_image_unmount** | [**VcenterIsoImageUnmount**](VcenterIsoImageUnmount.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



