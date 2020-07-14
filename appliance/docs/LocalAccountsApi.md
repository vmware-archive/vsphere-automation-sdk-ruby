# VSphereAutomation::Appliance::LocalAccountsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](LocalAccountsApi.md#create) | **POST** /appliance/local-accounts/{username} | Create a new local user account.
[**delete**](LocalAccountsApi.md#delete) | **DELETE** /appliance/local-accounts/{username} | Delete a local user account.
[**get**](LocalAccountsApi.md#get) | **GET** /appliance/local-accounts/{username} | Get the local user account information.
[**list**](LocalAccountsApi.md#list) | **GET** /appliance/local-accounts | Get a list of the local user accounts.
[**set**](LocalAccountsApi.md#set) | **PUT** /appliance/local-accounts/{username} | Set local user account properties.
[**update**](LocalAccountsApi.md#update) | **PATCH** /appliance/local-accounts/{username} | Update selected fields in local user account properties.


# **create**
> create(username, request_body)

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

api_instance = VSphereAutomation::Appliance::LocalAccountsApi.new
username = 'username_example' # String | User login name
request_body = Appliance::ApplianceLocalAccountsCreate.new # ApplianceLocalAccountsCreate | 

begin
  #Create a new local user account.
  api_instance.create(username, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User login name | 
 **request_body** | [**ApplianceLocalAccountsCreate**](ApplianceLocalAccountsCreate.md)|  | 

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

api_instance = VSphereAutomation::Appliance::LocalAccountsApi.new
username = 'username_example' # String | User login name

begin
  #Delete a local user account.
  api_instance.delete(username)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User login name | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceLocalAccountsResult get(username)

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

api_instance = VSphereAutomation::Appliance::LocalAccountsApi.new
username = 'username_example' # String | User login name

begin
  #Get the local user account information.
  result = api_instance.get(username)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User login name | 

### Return type

[**ApplianceLocalAccountsResult**](ApplianceLocalAccountsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ApplianceLocalAccountsListResult list

Get a list of the local user accounts.

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

api_instance = VSphereAutomation::Appliance::LocalAccountsApi.new

begin
  #Get a list of the local user accounts.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceLocalAccountsListResult**](ApplianceLocalAccountsListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(username, request_body)

Set local user account properties.

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

api_instance = VSphereAutomation::Appliance::LocalAccountsApi.new
username = 'username_example' # String | User login name
request_body = Appliance::ApplianceLocalAccountsSet.new # ApplianceLocalAccountsSet | 

begin
  #Set local user account properties.
  api_instance.set(username, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User login name | 
 **request_body** | [**ApplianceLocalAccountsSet**](ApplianceLocalAccountsSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(username, request_body)

Update selected fields in local user account properties.

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

api_instance = VSphereAutomation::Appliance::LocalAccountsApi.new
username = 'username_example' # String | User login name
request_body = Appliance::ApplianceLocalAccountsUpdate.new # ApplianceLocalAccountsUpdate | 

begin
  #Update selected fields in local user account properties.
  api_instance.update(username, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User login name | 
 **request_body** | [**ApplianceLocalAccountsUpdate**](ApplianceLocalAccountsUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



