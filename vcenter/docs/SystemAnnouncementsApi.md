# VSphereAutomation::VCenter::SystemAnnouncementsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SystemAnnouncementsApi.md#create) | **POST** /rest/vcenter/system/announcements | Create a new announcement
[**delete**](SystemAnnouncementsApi.md#delete) | **DELETE** /rest/vcenter/system/announcements/{announcement} | Delete an announcement
[**get**](SystemAnnouncementsApi.md#get) | **GET** /rest/vcenter/system/announcements/{announcement} | Return information about a specific announcements in the system.
[**list**](SystemAnnouncementsApi.md#list) | **GET** /rest/vcenter/system/announcements | Return information about all the announcements in the system.
[**set**](SystemAnnouncementsApi.md#set) | **PUT** /rest/vcenter/system/announcements/{announcement} | Set announcement properties.


# **create**
> VcenterSystemAnnouncementsCreateResp create(request_body)

Create a new announcement

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

api_instance = VSphereAutomation::VCenter::SystemAnnouncementsApi.new
request_body = VCenter::VcenterSystemAnnouncementsCreate.new # VcenterSystemAnnouncementsCreate | 

begin
  #Create a new announcement
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemAnnouncementsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSystemAnnouncementsCreate**](VcenterSystemAnnouncementsCreate.md)|  | 

### Return type

[**VcenterSystemAnnouncementsCreateResp**](VcenterSystemAnnouncementsCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(announcement)

Delete an announcement

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

api_instance = VSphereAutomation::VCenter::SystemAnnouncementsApi.new
announcement = 'announcement_example' # String | Identifier of the announcement

begin
  #Delete an announcement
  api_instance.delete(announcement)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemAnnouncementsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **announcement** | **String**| Identifier of the announcement | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterSystemAnnouncementsResp get(announcement)

Return information about a specific announcements in the system.

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

api_instance = VSphereAutomation::VCenter::SystemAnnouncementsApi.new
announcement = 'announcement_example' # String | Identifier of the announcement.

begin
  #Return information about a specific announcements in the system.
  result = api_instance.get(announcement)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemAnnouncementsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **announcement** | **String**| Identifier of the announcement. | 

### Return type

[**VcenterSystemAnnouncementsResp**](VcenterSystemAnnouncementsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterSystemAnnouncementsListResp list

Return information about all the announcements in the system.

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

api_instance = VSphereAutomation::VCenter::SystemAnnouncementsApi.new

begin
  #Return information about all the announcements in the system.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemAnnouncementsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterSystemAnnouncementsListResp**](VcenterSystemAnnouncementsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(announcement, request_body)

Set announcement properties.

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

api_instance = VSphereAutomation::VCenter::SystemAnnouncementsApi.new
announcement = 'announcement_example' # String | Identifier of the announcement. If such identifier exists then the object will be updated with the new values. If such identifier doesn't exist a new object with this identifier will be created.
request_body = VCenter::VcenterSystemAnnouncementsSet.new # VcenterSystemAnnouncementsSet | 

begin
  #Set announcement properties.
  api_instance.set(announcement, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemAnnouncementsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **announcement** | **String**| Identifier of the announcement. If such identifier exists then the object will be updated with the new values. If such identifier doesn&#39;t exist a new object with this identifier will be created. | 
 **request_body** | [**VcenterSystemAnnouncementsSet**](VcenterSystemAnnouncementsSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



