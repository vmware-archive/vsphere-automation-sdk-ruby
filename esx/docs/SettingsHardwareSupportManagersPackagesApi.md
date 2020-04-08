# VSphereAutomation::ESX::SettingsHardwareSupportManagersPackagesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SettingsHardwareSupportManagersPackagesApi.md#list) | **GET** /api/esx/settings/hardware-support/managers/{manager}/packages | Returns the list of available Hardware Support Packages (HSPs) for a particular host, as specified by its Hardware Support Manager (HSM)


# **list**
> Array&lt;EsxSettingsHardwareSupportManagersPackagesHardwareSupportPackageInfo&gt; list(manager, opts)

Returns the list of available Hardware Support Packages (HSPs) for a particular host, as specified by its Hardware Support Manager (HSM)

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsHardwareSupportManagersPackagesApi.new
manager = 'manager_example' # String | Identifier for the Hardware Support Manager (HSM).
opts = {
  base_image_version: 'base_image_version_example' # String | vSphere release version the Hardware Support Package (HSP) must support to match the filter. Only Hardware Support Packages (HSPs) compatible with the vSphere release version specified in 'baseImageVersion' will be returned. The 'baseImageVersion' parameter should be a full numeric base image version string (e.g. \"7.1.0-2.3.436234\"). Future implementations may support version specification by prefix (e.g. \"7.1\" to specify all updates and builds of 7.1) or other forms of specification (e.g. \">=7.0\"). Hardware Support Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate the remainder is wildcarded. Matching is on the specified substring only, so a bundle supporting \"7.1.0-2\" would match a 'release' parameter of \"7.1.0-2.3.436234\" as well as \"7.1.0-2.1.4133564\" and \"7.1.0-1.0.355667\" but not \"7.1.0-3.0.63445\" or any base image version starting with \"7.2\". Note that we require compatible base image versions be specified at least down to the update version (i.e. \"7.0\" is insufficiently constrained)
}

begin
  #Returns the list of available Hardware Support Packages (HSPs) for a particular host, as specified by its Hardware Support Manager (HSM)
  result = api_instance.list(manager, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHardwareSupportManagersPackagesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manager** | **String**| Identifier for the Hardware Support Manager (HSM). | 
 **base_image_version** | **String**| vSphere release version the Hardware Support Package (HSP) must support to match the filter. Only Hardware Support Packages (HSPs) compatible with the vSphere release version specified in &#39;baseImageVersion&#39; will be returned. The &#39;baseImageVersion&#39; parameter should be a full numeric base image version string (e.g. \&quot;7.1.0-2.3.436234\&quot;). Future implementations may support version specification by prefix (e.g. \&quot;7.1\&quot; to specify all updates and builds of 7.1) or other forms of specification (e.g. \&quot;&gt;&#x3D;7.0\&quot;). Hardware Support Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate the remainder is wildcarded. Matching is on the specified substring only, so a bundle supporting \&quot;7.1.0-2\&quot; would match a &#39;release&#39; parameter of \&quot;7.1.0-2.3.436234\&quot; as well as \&quot;7.1.0-2.1.4133564\&quot; and \&quot;7.1.0-1.0.355667\&quot; but not \&quot;7.1.0-3.0.63445\&quot; or any base image version starting with \&quot;7.2\&quot;. Note that we require compatible base image versions be specified at least down to the update version (i.e. \&quot;7.0\&quot; is insufficiently constrained) | [optional] 

### Return type

[**Array&lt;EsxSettingsHardwareSupportManagersPackagesHardwareSupportPackageInfo&gt;**](EsxSettingsHardwareSupportManagersPackagesHardwareSupportPackageInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



