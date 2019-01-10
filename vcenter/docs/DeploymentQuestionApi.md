# VSphereAutomation::VCenter::DeploymentQuestionApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answer**](DeploymentQuestionApi.md#answer) | **POST** /vcenter/deployment/question?action&#x3D;answer | Supply answer to the raised question.
[**get**](DeploymentQuestionApi.md#get) | **GET** /vcenter/deployment/question | Get the question that was raised during the configuration.


# **answer**
> answer(vcenter_deployment_question_answer)

Supply answer to the raised question.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentQuestionApi.new
vcenter_deployment_question_answer = VSphereAutomation::VcenterDeploymentQuestionAnswer.new # VcenterDeploymentQuestionAnswer | 

begin
  #Supply answer to the raised question.
  api_instance.answer(vcenter_deployment_question_answer)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentQuestionApi->answer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_deployment_question_answer** | [**VcenterDeploymentQuestionAnswer**](VcenterDeploymentQuestionAnswer.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> VcenterDeploymentQuestionResult get

Get the question that was raised during the configuration.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterDeploymentQuestionResult**](VcenterDeploymentQuestionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



