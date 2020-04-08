# VSphereAutomation::VCenter::VmGuestFilesystemTransfersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestFilesystemTransfersApi.md#get) | **GET** /api/vcenter/vm/{vm}/guest/filesystem | Initiates an operation to transfer a file from the guest.   Obtains a URL to the file inside the guest to be transferred to the client.   If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**put**](VmGuestFilesystemTransfersApi.md#put) | **PUT** /api/vcenter/vm/{vm}/guest/filesystem | Initiates an operation to transfer a file to the guest.   Obtains a URL to the file inside the guest to be transferred from the client. The user should send a HTTP PUT request specifying the file content in the body of the request. Multiple PUT request cannot be sent to the URL simultaneously. URL will be invalidated after a successful PUT request is sent. If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> String get(vm, interactive_session, type, path, opts)

Initiates an operation to transfer a file from the guest.   Obtains a URL to the file inside the guest to be transferred to the client.   If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemTransfersApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete path to the file inside the guest that has to be transferred to the client. It cannot be a path to a directory or a symbolic link.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example' # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
}

begin
  #Initiates an operation to transfer a file from the guest.   Obtains a URL to the file inside the guest to be transferred to the client.   If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(vm, interactive_session, type, path, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemTransfersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete path to the file inside the guest that has to be transferred to the client. It cannot be a path to a directory or a symbolic link. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put**
> String put(vm, interactive_session, type, path, file_size, opts)

Initiates an operation to transfer a file to the guest.   Obtains a URL to the file inside the guest to be transferred from the client. The user should send a HTTP PUT request specifying the file content in the body of the request. Multiple PUT request cannot be sent to the URL simultaneously. URL will be invalidated after a successful PUT request is sent. If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestFilesystemTransfersApi.new
vm = 'vm_example' # String | Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
interactive_session = true # Boolean | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
type = 'type_example' # String | Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
path = 'path_example' # String | The complete destination path in the guest to transfer the file from the client. It cannot be a path to a directory or a symbolic link.
file_size = 56 # Integer | Size of the file to transfer to the guest in bytes. This specifies how many bytes are read; any extra are ignored. XXX need to call out what happens (if anythng) if the size is too big to fit. Appears to be no check.
opts = {
  user_name: 'user_name_example', # String | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
  password: 'password_example', # String | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
  saml_token: 'saml_token_example', # String | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
  last_modified: 'last_modified_example', # String | The date and time the file was last modified. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific modification time is desired.
  last_accessed: 'last_accessed_example', # String | The date and time the file was last accessed. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific access time is desired.
  windows: 'windows_example', # String | 
  posix: 'posix_example', # String | 
  overwrite: true # Boolean | If true, the destination file is clobbered. If unset, the destination file is clobbered.
}

begin
  #Initiates an operation to transfer a file to the guest.   Obtains a URL to the file inside the guest to be transferred from the client. The user should send a HTTP PUT request specifying the file content in the body of the request. Multiple PUT request cannot be sent to the URL simultaneously. URL will be invalidated after a successful PUT request is sent. If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.put(vm, interactive_session, type, path, file_size, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestFilesystemTransfersApi->put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **interactive_session** | **Boolean**| If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **type** | **String**| Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
 **path** | **String**| The complete destination path in the guest to transfer the file from the client. It cannot be a path to a directory or a symbolic link. | 
 **file_size** | **Integer**| Size of the file to transfer to the guest in bytes. This specifies how many bytes are read; any extra are ignored. XXX need to call out what happens (if anythng) if the size is too big to fit. Appears to be no check. | 
 **user_name** | **String**| For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 
 **password** | **String**| password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
 **saml_token** | **String**| SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
 **last_modified** | **String**| The date and time the file was last modified. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific modification time is desired. | [optional] 
 **last_accessed** | **String**| The date and time the file was last accessed. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific access time is desired. | [optional] 
 **windows** | **String**|  | [optional] 
 **posix** | **String**|  | [optional] 
 **overwrite** | **Boolean**| If true, the destination file is clobbered. If unset, the destination file is clobbered. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



