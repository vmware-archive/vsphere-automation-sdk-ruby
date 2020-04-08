# VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](TechpreviewLocalaccountsUserApi.md#add) | **POST** /rest/appliance/techpreview/local-accounts/user | Create a new local user account.
[**delete**](TechpreviewLocalaccountsUserApi.md#delete) | **DELETE** /rest/appliance/techpreview/local-accounts/user/{username} | Delete a local user account.
[**get**](TechpreviewLocalaccountsUserApi.md#get) | **GET** /rest/appliance/techpreview/local-accounts/user/{username} | Get the local user account information.
[**list**](TechpreviewLocalaccountsUserApi.md#list) | **GET** /rest/appliance/techpreview/local-accounts/user | List of local accounts
[**set**](TechpreviewLocalaccountsUserApi.md#set) | **PUT** /rest/appliance/techpreview/local-accounts/user | Update local user account properties role, full name, enabled status and password


# **add**
> add(request_body)

Create a new local user account.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi.new
request_body = Appliance::ApplianceTechpreviewLocalaccountsUserAdd.new # ApplianceTechpreviewLocalaccountsUserAdd | 

begin
  #Create a new local user account.
  api_instance.add(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewLocalaccountsUserApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewLocalaccountsUserAdd**](ApplianceTechpreviewLocalaccountsUserAdd.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(username)

Delete a local user account.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi.new
username = 'username_example' # String | User login name.

begin
  #Delete a local user account.
  api_instance.delete(username)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewLocalaccountsUserApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User login name. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceTechpreviewLocalaccountsUserResp get(username)

Get the local user account information.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi.new
username = 'username_example' # String | User login name.

begin
  #Get the local user account information.
  result = api_instance.get(username)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewLocalaccountsUserApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User login name. | 

### Return type

[**ApplianceTechpreviewLocalaccountsUserResp**](ApplianceTechpreviewLocalaccountsUserResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ApplianceTechpreviewLocalaccountsUserListResp list

List of local accounts

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi.new

begin
  #List of local accounts
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewLocalaccountsUserApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewLocalaccountsUserListResp**](ApplianceTechpreviewLocalaccountsUserListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Update local user account properties role, full name, enabled status and password

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi.new
request_body = Appliance::ApplianceTechpreviewLocalaccountsUserSet.new # ApplianceTechpreviewLocalaccountsUserSet | 

begin
  #Update local user account properties role, full name, enabled status and password
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewLocalaccountsUserApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewLocalaccountsUserSet**](ApplianceTechpreviewLocalaccountsUserSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



