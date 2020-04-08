# VSphereAutomation::VCenter::DeploymentQuestionApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answer**](DeploymentQuestionApi.md#answer) | **POST** /rest/vcenter/deployment/question?action&#x3D;answer | Supply answer to the raised question.
[**get**](DeploymentQuestionApi.md#get) | **GET** /rest/vcenter/deployment/question | Get the question that was raised during the configuration.


# **answer**
> answer(request_body)

Supply answer to the raised question.

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

api_instance = VSphereAutomation::VCenter::DeploymentQuestionApi.new
request_body = VCenter::VcenterDeploymentQuestionAnswer.new # VcenterDeploymentQuestionAnswer | 

begin
  #Supply answer to the raised question.
  api_instance.answer(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentQuestionApi->answer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterDeploymentQuestionAnswer**](VcenterDeploymentQuestionAnswer.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterDeploymentQuestionResp get

Get the question that was raised during the configuration.

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

api_instance = VSphereAutomation::VCenter::DeploymentQuestionApi.new

begin
  #Get the question that was raised during the configuration.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentQuestionApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterDeploymentQuestionResp**](VcenterDeploymentQuestionResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



