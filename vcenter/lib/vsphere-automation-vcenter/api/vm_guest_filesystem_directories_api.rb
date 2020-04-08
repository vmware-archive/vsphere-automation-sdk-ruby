# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestFilesystemDirectoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Boolean] :create_parents Whether any parent directories should be created. If any failure occurs, some parent directories could be left behind. If unset parent directories are not created.
    # @return [|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil]
    def create(vm, interactive_session, type, path, opts = {})
      create_with_http_info(vm, interactive_session, type, path, opts)
      nil
    end

    # Creates a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Boolean] :create_parents Whether any parent directories should be created. If any failure occurs, some parent directories could be left behind. If unset parent directories are not created.
    # @return [Array<(|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(vm, interactive_session, type, path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemDirectoriesApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemDirectoriesApi.create"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemDirectoriesApi.create"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemDirectoriesApi.create"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemDirectoriesApi.create"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/directories?action=create'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?
      query_params[:'create_parents'] = opts[:'create_parents'] if !opts[:'create_parents'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemDirectoriesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a temporary directory.   Creates a new unique temporary directory for the user to use as needed. The guest operating system may clean up the directory after a guest specific amount of time if parentPath is not set, or the user can remove the directory when no longer needed.    The new directory name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param prefix The prefix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param suffix The suffix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :parent_path The complete path to the directory in which to create the new directory. Directory If unset a guest-specific default will be used.
    # @return [String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|]
    def create_temporary(vm, interactive_session, type, prefix, suffix, opts = {})
      data, _status_code, _headers = create_temporary_with_http_info(vm, interactive_session, type, prefix, suffix, opts)
      data
    end

    # Creates a temporary directory.   Creates a new unique temporary directory for the user to use as needed. The guest operating system may clean up the directory after a guest specific amount of time if parentPath is not set, or the user can remove the directory when no longer needed.    The new directory name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param prefix The prefix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param suffix The suffix to be given to the new temporary directory. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :parent_path The complete path to the directory in which to create the new directory. Directory If unset a guest-specific default will be used.
    # @return [Array<(String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def create_temporary_with_http_info(vm, interactive_session, type, prefix, suffix, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemDirectoriesApi.create_temporary ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemDirectoriesApi.create_temporary"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemDirectoriesApi.create_temporary"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemDirectoriesApi.create_temporary"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'prefix' is set
      if @api_client.config.client_side_validation && prefix.nil?
        fail ArgumentError, "Missing the required parameter 'prefix' when calling VmGuestFilesystemDirectoriesApi.create_temporary"
      end
      # verify the required parameter 'suffix' is set
      if @api_client.config.client_side_validation && suffix.nil?
        fail ArgumentError, "Missing the required parameter 'suffix' when calling VmGuestFilesystemDirectoriesApi.create_temporary"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/directories?action=createTemporary'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'prefix'] = prefix
      query_params[:'suffix'] = suffix
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?
      query_params[:'parent_path'] = opts[:'parent_path'] if !opts[:'parent_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
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
        @api_client.config.logger.debug "API called: VmGuestFilesystemDirectoriesApi#create_temporary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Boolean] :recursive If true, all subdirectories are also deleted. If false, the directory must be empty for the operation to succeed. If unset, all subdirectories are also deleted.
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil]
    def delete(vm, interactive_session, type, path, opts = {})
      delete_with_http_info(vm, interactive_session, type, path, opts)
      nil
    end

    # Deletes a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Boolean] :recursive If true, all subdirectories are also deleted. If false, the directory must be empty for the operation to succeed. If unset, all subdirectories are also deleted.
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, interactive_session, type, path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemDirectoriesApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemDirectoriesApi.delete"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemDirectoriesApi.delete"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemDirectoriesApi.delete"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemDirectoriesApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/directories?action=delete'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?
      query_params[:'recursive'] = opts[:'recursive'] if !opts[:'recursive'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemDirectoriesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Renames a directory in the guest.   Renames the directory, or copies and deletes the old contents as required by the underlying filsystem.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory to be moved.
    # @param new_path The complete path to where the directory is moved or its new name. It cannot be a path to an existing directory or an existing file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil]
    def move(vm, interactive_session, type, path, new_path, opts = {})
      move_with_http_info(vm, interactive_session, type, path, new_path, opts)
      nil
    end

    # Renames a directory in the guest.   Renames the directory, or copies and deletes the old contents as required by the underlying filsystem.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory to be moved.
    # @param new_path The complete path to where the directory is moved or its new name. It cannot be a path to an existing directory or an existing file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [Array<(|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def move_with_http_info(vm, interactive_session, type, path, new_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemDirectoriesApi.move ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemDirectoriesApi.move"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemDirectoriesApi.move"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemDirectoriesApi.move"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemDirectoriesApi.move"
      end
      # verify the required parameter 'new_path' is set
      if @api_client.config.client_side_validation && new_path.nil?
        fail ArgumentError, "Missing the required parameter 'new_path' when calling VmGuestFilesystemDirectoriesApi.move"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/directories?action=move'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'new_path'] = new_path
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemDirectoriesApi#move\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
