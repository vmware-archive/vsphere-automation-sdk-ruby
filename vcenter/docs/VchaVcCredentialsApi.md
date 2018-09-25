# VSphereAutomation::VCenter::VchaVcCredentialsApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](VchaVcCredentialsApi.md#validate) | **POST** /vcenter/vcha/vc-credentials?action&#x3D;validate | Validates the credentials of the management vCenter server of the active node of a VCHA cluster.


# **validate**
> validate(opts)

Validates the credentials of the management vCenter server of the active node of a VCHA cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaVcCredentialsApi.new
opts = {
  vcenter_vcha_vc_credentials_validate: VSphereAutomation::VcenterVchaVcCredentialsValidate.new # VcenterVchaVcCredentialsValidate | 
}

begin
  #Validates the credentials of the management vCenter server of the active node of a VCHA cluster.
  api_instance.validate(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaVcCredentialsApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vcha_vc_credentials_validate** | [**VcenterVchaVcCredentialsValidate**](VcenterVchaVcCredentialsValidate.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



