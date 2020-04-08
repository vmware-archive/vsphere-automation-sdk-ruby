# VSphereAutomation::ESX::HclCompatibilityDataApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HclCompatibilityDataApi.md#get) | **GET** /api/esx/hcl/compatibility-data/status | Provides information about the compatibility data located on the vCenter Appliance.
[**update_task**](HclCompatibilityDataApi.md#update_task) | **POST** /api/esx/hcl/compatibility-data?action&#x3D;download&amp;vmw-task&#x3D;true | Replaces the local compatibility data with the latest version found from VMware official source.


# **get**
> EsxHclCompatibilityDataStatus get

Provides information about the compatibility data located on the vCenter Appliance.

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

api_instance = VSphereAutomation::ESX::HclCompatibilityDataApi.new

begin
  #Provides information about the compatibility data located on the vCenter Appliance.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HclCompatibilityDataApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxHclCompatibilityDataStatus**](EsxHclCompatibilityDataStatus.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_task**
> String update_task

Replaces the local compatibility data with the latest version found from VMware official source.

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

api_instance = VSphereAutomation::ESX::HclCompatibilityDataApi.new

begin
  #Replaces the local compatibility data with the latest version found from VMware official source.
  result = api_instance.update_task
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HclCompatibilityDataApi->update_task: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



