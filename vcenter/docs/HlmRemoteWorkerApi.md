# VSphereAutomation::VCenter::HlmRemoteWorkerApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link**](HlmRemoteWorkerApi.md#link) | **POST** /rest/vcenter/hlm/remote/link | Does operations for link as hvc solution user on the remote or target node. Currently, it creates a new trust for domain per the given spec. Note: This is only a pass through API which will call VCTrusts.create after validating privileges required to create trusts as part of creating Linked vCenters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **link**
> link(request_body)

Does operations for link as hvc solution user on the remote or target node. Currently, it creates a new trust for domain per the given spec. Note: This is only a pass through API which will call VCTrusts.create after validating privileges required to create trusts as part of creating Linked vCenters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmRemoteWorkerApi.new
request_body = VCenter::VcenterHlmRemoteWorkerLink.new # VcenterHlmRemoteWorkerLink | 

begin
  #Does operations for link as hvc solution user on the remote or target node. Currently, it creates a new trust for domain per the given spec. Note: This is only a pass through API which will call VCTrusts.create after validating privileges required to create trusts as part of creating Linked vCenters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.link(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmRemoteWorkerApi->link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterHlmRemoteWorkerLink**](VcenterHlmRemoteWorkerLink.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



