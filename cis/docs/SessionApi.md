# VSphereAutomation::CIS::SessionApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SessionApi.md#create) | **POST** /com/vmware/cis/session | Creates a session with the API. This is the equivalent of login. This operation exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.
[**delete**](SessionApi.md#delete) | **DELETE** /com/vmware/cis/session | Terminates the validity of a session token. This is the equivalent of log out.   A session identifier is expected as part of the request.    
[**get**](SessionApi.md#get) | **POST** /com/vmware/cis/session?~action&#x3D;get | Returns information about the current session. This operation expects a valid session identifier to be supplied.   A side effect of invoking this operation may be a change to the session&#39;s last accessed time to the current time if this is supported by the session implementation. Invoking any other operation in the API will also update the session&#39;s last accessed time.    This API is meant to serve the needs of various front end projects that may want to display the name of the user. Examples of this include various web based user interfaces and logging facilities. 


# **create**
> CisSessionCreateResult create(vmware_use_header_authn)

Creates a session with the API. This is the equivalent of login. This operation exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::SessionApi.new
vmware_use_header_authn = 'vmware_use_header_authn_example' # String | Custom header to protect against CSRF attacks in browser based clients

begin
  #Creates a session with the API. This is the equivalent of login. This operation exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.
  result = api_instance.create(vmware_use_header_authn)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SessionApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmware_use_header_authn** | **String**| Custom header to protect against CSRF attacks in browser based clients | 

### Return type

[**CisSessionCreateResult**](CisSessionCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **delete**
> delete

Terminates the validity of a session token. This is the equivalent of log out.   A session identifier is expected as part of the request.    

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::SessionApi.new

begin
  #Terminates the validity of a session token. This is the equivalent of log out.   A session identifier is expected as part of the request.    
  api_instance.delete
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SessionApi->delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> CisSessionResult get

Returns information about the current session. This operation expects a valid session identifier to be supplied.   A side effect of invoking this operation may be a change to the session's last accessed time to the current time if this is supported by the session implementation. Invoking any other operation in the API will also update the session's last accessed time.    This API is meant to serve the needs of various front end projects that may want to display the name of the user. Examples of this include various web based user interfaces and logging facilities. 

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::SessionApi.new

begin
  #Returns information about the current session. This operation expects a valid session identifier to be supplied.   A side effect of invoking this operation may be a change to the session's last accessed time to the current time if this is supported by the session implementation. Invoking any other operation in the API will also update the session's last accessed time.    This API is meant to serve the needs of various front end projects that may want to display the name of the user. Examples of this include various web based user interfaces and logging facilities. 
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SessionApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CisSessionResult**](CisSessionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



