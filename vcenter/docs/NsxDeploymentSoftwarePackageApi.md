# VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](NsxDeploymentSoftwarePackageApi.md#cancel) | **POST** /api/vcenter/nsx/deployment/software-package?action&#x3D;cancel | Cancel running NSX download or upload process. This would interrupt the NSX binary upload or download process and clean up the NSX binary being uploaded. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**download**](NsxDeploymentSoftwarePackageApi.md#download) | **POST** /api/vcenter/nsx/deployment/software-package?action&#x3D;download | Download NSX binaries from the my.vmware.com portal on vCenter Server. To call this API user needs to first Authenticate, then get List of accounts, select a listed account and check its entitlement and then invoke download. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](NsxDeploymentSoftwarePackageApi.md#get) | **GET** /api/vcenter/nsx/deployment/software-package | Gets Stage operation status like MUB file staged version, staging in progress, stage percentage etc. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**upload**](NsxDeploymentSoftwarePackageApi.md#upload) | **POST** /api/vcenter/nsx/deployment/software-package?action&#x3D;upload | Upload NSX binaries to vCenter server. This API would provide the URI which has to be used to upload the content. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **cancel**
> cancel

Cancel running NSX download or upload process. This would interrupt the NSX binary upload or download process and clean up the NSX binary being uploaded. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi.new

begin
  #Cancel running NSX download or upload process. This would interrupt the NSX binary upload or download process and clean up the NSX binary being uploaded. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentSoftwarePackageApi->cancel: #{e}"
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



# **download**
> download

Download NSX binaries from the my.vmware.com portal on vCenter Server. To call this API user needs to first Authenticate, then get List of accounts, select a listed account and check its entitlement and then invoke download. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi.new

begin
  #Download NSX binaries from the my.vmware.com portal on vCenter Server. To call this API user needs to first Authenticate, then get List of accounts, select a listed account and check its entitlement and then invoke download. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.download
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentSoftwarePackageApi->download: #{e}"
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
> VcenterNsxDeploymentSoftwarePackageInfo get

Gets Stage operation status like MUB file staged version, staging in progress, stage percentage etc. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi.new

begin
  #Gets Stage operation status like MUB file staged version, staging in progress, stage percentage etc. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentSoftwarePackageApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNsxDeploymentSoftwarePackageInfo**](VcenterNsxDeploymentSoftwarePackageInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload**
> VcenterNsxDeploymentSoftwarePackageUploadResult upload(opts)

Upload NSX binaries to vCenter server. This API would provide the URI which has to be used to upload the content. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi.new
opts = {
  request_body: VCenter::VcenterNsxDeploymentSoftwarePackageUploadSpec.new # VcenterNsxDeploymentSoftwarePackageUploadSpec | 
}

begin
  #Upload NSX binaries to vCenter server. This API would provide the URI which has to be used to upload the content. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.upload(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxDeploymentSoftwarePackageApi->upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNsxDeploymentSoftwarePackageUploadSpec**|  | [optional] 

### Return type

[**VcenterNsxDeploymentSoftwarePackageUploadResult**](VcenterNsxDeploymentSoftwarePackageUploadResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



