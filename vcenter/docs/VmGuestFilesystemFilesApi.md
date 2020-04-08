# VSphereAutomation::VCenter::VmGuestFilesystemFilesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_temporary**](VmGuestFilesystemFilesApi.md#create_temporary) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;createTemporary | Creates a temporary file.   Creates a new unique temporary file for the user to use as needed. The user is responsible for removing it when it is no longer needed.    The new file name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](VmGuestFilesystemFilesApi.md#delete) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files/{path}?action&#x3D;delete | Deletes a file in the guest operating system   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](VmGuestFilesystemFilesApi.md#get) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files/{path}?action&#x3D;get | Returns information about a file or directory in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](VmGuestFilesystemFilesApi.md#list) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;list | Returns information about files and directories in the guest.   The results could be extremely large, so to minimize the size of the return value for cases where a UI only needs to show the first N results, the answer is batched. Files are returned in operating system-specific (inode) order. If the directory is modified between queries, missing or duplicate results can occur.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**move**](VmGuestFilesystemFilesApi.md#move) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;move | Renames a file in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](VmGuestFilesystemFilesApi.md#update) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;update | Changes the file attributes of a specified file or directory inside the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create_temporary**
> String create_temporary(vm, interactive_session, type, prefix, suffix, opts)

Creates a temporary file.   Creates a new unique temporary file for the user to use as needed. The user is responsible for removing it when it is no longer needed.    The new file name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemFilesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
prefix = 'prefix_example' # String | The prefix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string.
suffix = 'suffix_example' # String | The suffix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  parent_path: 'parent_path_example' # String | The complete path to the directory in which to create the file. Directory to use if specified, otherwise a guest-specific default will be used.
}

begin
  #Creates a temporary file.   Creates a new unique temporary file for the user to use as needed. The user is responsible for removing it when it is no longer needed.    The new file name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create_temporary(vm, interactive_session, type, prefix, suffix, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemFilesApi->create_temporary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **prefix** | **String**| The prefix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string. | 
 **suffix** | **String**| The suffix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **parent_path** | **String**| The complete path to the directory in which to create the file. Directory to use if specified, otherwise a guest-specific default will be used. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete**
> delete(vm, path, interactive_session, type, opts)

Deletes a file in the guest operating system   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemFilesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
path = 'path_example' # String | The complete path to the file or symbolic link to be deleted.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example' # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
}

begin
  #Deletes a file in the guest operating system   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(vm, path, interactive_session, type, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemFilesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **path** | **String**| The complete path to the file or symbolic link to be deleted. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmGuestFilesystemFilesInfo get(vm, path, interactive_session, type, opts)

Returns information about a file or directory in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemFilesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
path = 'path_example' # String | The complete path to the file.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example' # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
}

begin
  #Returns information about a file or directory in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(vm, path, interactive_session, type, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemFilesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **path** | **String**| The complete path to the file. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 

### Return type

[**VcenterVmGuestFilesystemFilesInfo**](VcenterVmGuestFilesystemFilesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmGuestFilesystemFilesListFileInfo list(vm, interactive_session, type, path, opts)

Returns information about files and directories in the guest.   The results could be extremely large, so to minimize the size of the return value for cases where a UI only needs to show the first N results, the answer is batched. Files are returned in operating system-specific (inode) order. If the directory is modified between queries, missing or duplicate results can occur.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemFilesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete path to the directory or file to query.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  index: 56, # Integer | Which result to start the list with. The default value is 0.
  max_results: 56, # Integer | The maximum number of results to return. The default value is 50.
  match_pattern: 'match_pattern_example' # String | A filter for the return values. Match patterns are specified using perl-compatible regular expressions. Patterns are applied to the relative contents of path. The default value is '.*'.
}

begin
  #Returns information about files and directories in the guest.   The results could be extremely large, so to minimize the size of the return value for cases where a UI only needs to show the first N results, the answer is batched. Files are returned in operating system-specific (inode) order. If the directory is modified between queries, missing or duplicate results can occur.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(vm, interactive_session, type, path, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemFilesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete path to the directory or file to query. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **index** | **Integer**| Which result to start the list with. The default value is 0. | [optional] 
 **max_results** | **Integer**| The maximum number of results to return. The default value is 50. | [optional] 
 **match_pattern** | **String**| A filter for the return values. Match patterns are specified using perl-compatible regular expressions. Patterns are applied to the relative contents of path. The default value is &#39;.*&#39;. | [optional] 

### Return type

[**VcenterVmGuestFilesystemFilesListFileInfo**](VcenterVmGuestFilesystemFilesListFileInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **move**
> move(vm, interactive_session, type, path, new_path, opts)

Renames a file in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemFilesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete path to the original file or symbolic link to be moved.
new_path = 'new_path_example' # String | The complete path to the where the file is renamed. It cannot be a path to an existing directory.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  overwrite: true # Boolean | If true, the destination file is clobbered. If unset, the destination file is clobbered.
}

begin
  #Renames a file in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.move(vm, interactive_session, type, path, new_path, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemFilesApi->move: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete path to the original file or symbolic link to be moved. | 
 **new_path** | **String**| The complete path to the where the file is renamed. It cannot be a path to an existing directory. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **overwrite** | **Boolean**| If true, the destination file is clobbered. If unset, the destination file is clobbered. | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, interactive_session, type, path, opts)

Changes the file attributes of a specified file or directory inside the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemFilesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete path to the file or directory to be changed in the guest. If the file points to an symbolic link, then the attributes of the target file are changed.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  last_modified: 'last_modified_example', # String | The date and time the file was last modified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed.
  last_accessed: 'last_accessed_example', # String | The date and time the file was last accessed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed.
  windows: 'windows_example', # String | 
  posix: 'posix_example' # String | 
}

begin
  #Changes the file attributes of a specified file or directory inside the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(vm, interactive_session, type, path, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemFilesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete path to the file or directory to be changed in the guest. If the file points to an symbolic link, then the attributes of the target file are changed. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **last_modified** | **String**| The date and time the file was last modified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed. | [optional] 
 **last_accessed** | **String**| The date and time the file was last accessed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed. | [optional] 
 **windows** | **String**|  | [optional] 
 **posix** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



