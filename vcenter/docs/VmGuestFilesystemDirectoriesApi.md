# VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmGuestFilesystemDirectoriesApi.md#create) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;create | Creates a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**create_temporary**](VmGuestFilesystemDirectoriesApi.md#create_temporary) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;createTemporary | Creates a temporary directory.   Creates a new unique temporary directory for the user to use as needed. The guest operating system may clean up the directory after a guest specific amount of time if parentPath is not set, or the user can remove the directory when no longer needed.    The new directory name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](VmGuestFilesystemDirectoriesApi.md#delete) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;delete | Deletes a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**move**](VmGuestFilesystemDirectoriesApi.md#move) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;move | Renames a directory in the guest.   Renames the directory, or copies and deletes the old contents as required by the underlying filsystem.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> create(vm, interactive_session, type, path, opts)

Creates a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete path to the directory to be created.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  create_parents: true # Boolean | Whether any parent directories should be created. If any failure occurs, some parent directories could be left behind. If unset parent directories are not created.
}

begin
  #Creates a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.create(vm, interactive_session, type, path, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemDirectoriesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete path to the directory to be created. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **create_parents** | **Boolean**| Whether any parent directories should be created. If any failure occurs, some parent directories could be left behind. If unset parent directories are not created. | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_temporary**
> String create_temporary(vm, interactive_session, type, prefix, suffix, opts)

Creates a temporary directory.   Creates a new unique temporary directory for the user to use as needed. The guest operating system may clean up the directory after a guest specific amount of time if parentPath is not set, or the user can remove the directory when no longer needed.    The new directory name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
prefix = 'prefix_example' # String | The prefix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string.
suffix = 'suffix_example' # String | The suffix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  parent_path: 'parent_path_example' # String | The complete path to the directory in which to create the new directory. Directory If unset a guest-specific default will be used.
}

begin
  #Creates a temporary directory.   Creates a new unique temporary directory for the user to use as needed. The guest operating system may clean up the directory after a guest specific amount of time if parentPath is not set, or the user can remove the directory when no longer needed.    The new directory name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create_temporary(vm, interactive_session, type, prefix, suffix, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemDirectoriesApi->create_temporary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **prefix** | **String**| The prefix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string. | 
 **suffix** | **String**| The suffix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **parent_path** | **String**| The complete path to the directory in which to create the new directory. Directory If unset a guest-specific default will be used. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete**
> delete(vm, interactive_session, type, path, opts)

Deletes a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete path to the directory to be deleted.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  recursive: true # Boolean | If true, all subdirectories are also deleted. If false, the directory must be empty for the operation to succeed. If unset, all subdirectories are also deleted.
}

begin
  #Deletes a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(vm, interactive_session, type, path, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemDirectoriesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete path to the directory to be deleted. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **recursive** | **Boolean**| If true, all subdirectories are also deleted. If false, the directory must be empty for the operation to succeed. If unset, all subdirectories are also deleted. | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **move**
> move(vm, interactive_session, type, path, new_path, opts)

Renames a directory in the guest.   Renames the directory, or copies and deletes the old contents as required by the underlying filsystem.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete path to the directory to be moved.
new_path = 'new_path_example' # String | The complete path to where the directory is moved or its new name. It cannot be a path to an existing directory or an existing file.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example' # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
}

begin
  #Renames a directory in the guest.   Renames the directory, or copies and deletes the old contents as required by the underlying filsystem.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.move(vm, interactive_session, type, path, new_path, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemDirectoriesApi->move: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete path to the directory to be moved. | 
 **new_path** | **String**| The complete path to where the directory is moved or its new name. It cannot be a path to an existing directory or an existing file. | 
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



