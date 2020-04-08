# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestFilesystemTransfersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Initiates an operation to transfer a file from the guest.   Obtains a URL to the file inside the guest to be transferred to the client.   If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the file inside the guest that has to be transferred to the client. It cannot be a path to a directory or a symbolic link.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|]
    def get(vm, interactive_session, type, path, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, interactive_session, type, path, opts)
      data
    end

    # Initiates an operation to transfer a file from the guest.   Obtains a URL to the file inside the guest to be transferred to the client.   If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the file inside the guest that has to be transferred to the client. It cannot be a path to a directory or a symbolic link.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [Array<(String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, interactive_session, type, path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemTransfersApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemTransfersApi.get"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemTransfersApi.get"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemTransfersApi.get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemTransfersApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentState',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsResourceBusy',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemTransfersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Initiates an operation to transfer a file to the guest.   Obtains a URL to the file inside the guest to be transferred from the client. The user should send a HTTP PUT request specifying the file content in the body of the request. Multiple PUT request cannot be sent to the URL simultaneously. URL will be invalidated after a successful PUT request is sent. If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete destination path in the guest to transfer the file from the client. It cannot be a path to a directory or a symbolic link.
    # @param file_size Size of the file to transfer to the guest in bytes. This specifies how many bytes are read; any extra are ignored. XXX need to call out what happens (if anythng) if the size is too big to fit. Appears to be no check.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :last_modified The date and time the file was last modified. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific modification time is desired.
    # @option opts [String] :last_accessed The date and time the file was last accessed. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific access time is desired.
    # @option opts [String] :windows 
    # @option opts [String] :posix 
    # @option opts [Boolean] :overwrite If true, the destination file is clobbered. If unset, the destination file is clobbered.
    # @return [String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|VapiStdErrorsServiceUnavailable|]
    def put(vm, interactive_session, type, path, file_size, opts = {})
      data, _status_code, _headers = put_with_http_info(vm, interactive_session, type, path, file_size, opts)
      data
    end

    # Initiates an operation to transfer a file to the guest.   Obtains a URL to the file inside the guest to be transferred from the client. The user should send a HTTP PUT request specifying the file content in the body of the request. Multiple PUT request cannot be sent to the URL simultaneously. URL will be invalidated after a successful PUT request is sent. If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete destination path in the guest to transfer the file from the client. It cannot be a path to a directory or a symbolic link.
    # @param file_size Size of the file to transfer to the guest in bytes. This specifies how many bytes are read; any extra are ignored. XXX need to call out what happens (if anythng) if the size is too big to fit. Appears to be no check.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :last_modified The date and time the file was last modified. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific modification time is desired.
    # @option opts [String] :last_accessed The date and time the file was last accessed. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific access time is desired.
    # @option opts [String] :windows 
    # @option opts [String] :posix 
    # @option opts [Boolean] :overwrite If true, the destination file is clobbered. If unset, the destination file is clobbered.
    # @return [Array<(String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def put_with_http_info(vm, interactive_session, type, path, file_size, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemTransfersApi.put ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemTransfersApi.put"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemTransfersApi.put"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemTransfersApi.put"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemTransfersApi.put"
      end
      # verify the required parameter 'file_size' is set
      if @api_client.config.client_side_validation && file_size.nil?
        fail ArgumentError, "Missing the required parameter 'file_size' when calling VmGuestFilesystemTransfersApi.put"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'file_size'] = file_size
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?
      query_params[:'last_modified'] = opts[:'last_modified'] if !opts[:'last_modified'].nil?
      query_params[:'last_accessed'] = opts[:'last_accessed'] if !opts[:'last_accessed'].nil?
      query_params[:'windows'] = opts[:'windows'] if !opts[:'windows'].nil?
      query_params[:'posix'] = opts[:'posix'] if !opts[:'posix'].nil?
      query_params[:'overwrite'] = opts[:'overwrite'] if !opts[:'overwrite'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentState',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsUnableToAllocateResource',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemTransfersApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
