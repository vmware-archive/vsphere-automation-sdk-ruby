# VSphereAutomation::VCenter::VchaClusterActiveApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VchaClusterActiveApi.md#get) | **POST** /vcenter/vcha/cluster/active | Retrieves information about the active node of a VCHA cluster.


# **get**
> VcenterVchaClusterActiveResult get(action, opts)

Retrieves information about the active node of a VCHA cluster.

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

api_instance = VSphereAutomation::VCenter::VchaClusterActiveApi.new
action = 'action_example' # String | action=get
opts = {
  request_body: VCenter::VcenterVchaClusterActiveGet.new # VcenterVchaClusterActiveGet | 
}

begin
  #Retrieves information about the active node of a VCHA cluster.
  result = api_instance.get(action, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterActiveApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| action&#x3D;get | 
 **request_body** | [**VcenterVchaClusterActiveGet**](VcenterVchaClusterActiveGet.md)|  | [optional] 

### Return type

[**VcenterVchaClusterActiveResult**](VcenterVchaClusterActiveResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



