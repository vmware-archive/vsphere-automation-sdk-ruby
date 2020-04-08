# VSphereAutomation::VCenter::VmwportalAccountsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VmwportalAccountsApi.md#check) | **POST** /api/vcenter/vmwportal/accounts/{account}?action&#x3D;check | Checks if given user account is entitled to download product binaries from the my.vmware.com portal. Call Accounts::list() to get all the entitlement accounts linked to given my.vmware.com user. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](VmwportalAccountsApi.md#list) | **GET** /api/vcenter/vmwportal/accounts | Gets the list of Entitlement Accounts (EA) attached to the user account on the my.vmware.com portal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **check**
> check(account, opts)

Checks if given user account is entitled to download product binaries from the my.vmware.com portal. Call Accounts::list() to get all the entitlement accounts linked to given my.vmware.com user. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmwportalAccountsApi.new
account = 'account_example' # String | ID for which entitlement has to be checked. The parameter must be an identifier for the resource type: vcenter.vmwportal.Account.
opts = {
  request_body: VCenter::VcenterVmwportalAccountsCheckSpec.new # VcenterVmwportalAccountsCheckSpec | 
}

begin
  #Checks if given user account is entitled to download product binaries from the my.vmware.com portal. Call Accounts::list() to get all the entitlement accounts linked to given my.vmware.com user. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.check(account, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmwportalAccountsApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| ID for which entitlement has to be checked. The parameter must be an identifier for the resource type: vcenter.vmwportal.Account. | 
 **request_body** | **VcenterVmwportalAccountsCheckSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> Array&lt;VcenterVmwportalAccountsSummary&gt; list

Gets the list of Entitlement Accounts (EA) attached to the user account on the my.vmware.com portal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmwportalAccountsApi.new

begin
  #Gets the list of Entitlement Accounts (EA) attached to the user account on the my.vmware.com portal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmwportalAccountsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterVmwportalAccountsSummary&gt;**](VcenterVmwportalAccountsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



