# VSphereAutomation::ESX::SettingsHostsEnablementSoftwareApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_task**](SettingsHostsEnablementSoftwareApi.md#check_task) | **POST** /api/esx/settings/hosts/{host}/enablement/software?action&#x3D;check&amp;vmw-task&#x3D;true | Checks the possibility to manage the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**enable_task**](SettingsHostsEnablementSoftwareApi.md#enable_task) | **PUT** /api/esx/settings/hosts/{host}/enablement/software?vmw-task&#x3D;true | Enables the feature which manages the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](SettingsHostsEnablementSoftwareApi.md#get) | **GET** /api/esx/settings/hosts/{host}/enablement/software | Returns whether the given standalone host is managed with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **check_task**
> String check_task(host, opts)

Checks the possibility to manage the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsEnablementSoftwareApi.new
host = 'host_example' # String | Identifier of the host.
opts = {
  request_body: ESX::EsxSettingsHostsEnablementSoftwareCheckSpec.new # EsxSettingsHostsEnablementSoftwareCheckSpec | 
}

begin
  #Checks the possibility to manage the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.check_task(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsEnablementSoftwareApi->check_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **request_body** | **EsxSettingsHostsEnablementSoftwareCheckSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **enable_task**
> String enable_task(host, opts)

Enables the feature which manages the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsEnablementSoftwareApi.new
host = 'host_example' # String | Identifier of the host.
opts = {
  request_body: ESX::EsxSettingsHostsEnablementSoftwareEnableSpec.new # EsxSettingsHostsEnablementSoftwareEnableSpec | 
}

begin
  #Enables the feature which manages the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.enable_task(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsEnablementSoftwareApi->enable_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **request_body** | **EsxSettingsHostsEnablementSoftwareEnableSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> EsxSettingsHostsEnablementSoftwareInfo get(host)

Returns whether the given standalone host is managed with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsEnablementSoftwareApi.new
host = 'host_example' # String | Identifier of the host.

begin
  #Returns whether the given standalone host is managed with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsEnablementSoftwareApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 

### Return type

[**EsxSettingsHostsEnablementSoftwareInfo**](EsxSettingsHostsEnablementSoftwareInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



