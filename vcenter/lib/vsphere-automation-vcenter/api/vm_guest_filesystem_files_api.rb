# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestFilesystemFilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a temporary file.   Creates a new unique temporary file for the user to use as needed. The user is responsible for removing it when it is no longer needed.    The new file name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param prefix The prefix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param suffix The suffix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :parent_path The complete path to the directory in which to create the file. Directory to use if specified, otherwise a guest-specific default will be used.
    # @return [String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|]
    def create_temporary(vm, interactive_session, type, prefix, suffix, opts = {})
      data, _status_code, _headers = create_temporary_with_http_info(vm, interactive_session, type, prefix, suffix, opts)
      data
    end

    # Creates a temporary file.   Creates a new unique temporary file for the user to use as needed. The user is responsible for removing it when it is no longer needed.    The new file name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param prefix The prefix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param suffix The suffix to be given to the new temporary file. XXX make this optional? Tools wants value, but we can pass an empty string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :parent_path The complete path to the directory in which to create the file. Directory to use if specified, otherwise a guest-specific default will be used.
    # @return [Array<(String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def create_temporary_with_http_info(vm, interactive_session, type, prefix, suffix, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemFilesApi.create_temporary ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemFilesApi.create_temporary"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemFilesApi.create_temporary"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemFilesApi.create_temporary"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'prefix' is set
      if @api_client.config.client_side_validation && prefix.nil?
        fail ArgumentError, "Missing the required parameter 'prefix' when calling VmGuestFilesystemFilesApi.create_temporary"
      end
      # verify the required parameter 'suffix' is set
      if @api_client.config.client_side_validation && suffix.nil?
        fail ArgumentError, "Missing the required parameter 'suffix' when calling VmGuestFilesystemFilesApi.create_temporary"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/files?action=createTemporary'.sub('{' + 'vm' + '}', vm.to_s)

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
        @api_client.config.logger.debug "API called: VmGuestFilesystemFilesApi#create_temporary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a file in the guest operating system   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param path The complete path to the file or symbolic link to be deleted.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil]
    def delete(vm, path, interactive_session, type, opts = {})
      delete_with_http_info(vm, path, interactive_session, type, opts)
      nil
    end

    # Deletes a file in the guest operating system   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param path The complete path to the file or symbolic link to be deleted.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, path, interactive_session, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemFilesApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemFilesApi.delete"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemFilesApi.delete"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemFilesApi.delete"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemFilesApi.delete"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/files/{path}?action=delete'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
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
        @api_client.config.logger.debug "API called: VmGuestFilesystemFilesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a file or directory in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param path The complete path to the file.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [VcenterVmGuestFilesystemFilesInfo|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|]
    def get(vm, path, interactive_session, type, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, path, interactive_session, type, opts)
      data
    end

    # Returns information about a file or directory in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param path The complete path to the file.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @return [Array<(VcenterVmGuestFilesystemFilesInfo|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, path, interactive_session, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemFilesApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemFilesApi.get"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemFilesApi.get"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemFilesApi.get"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemFilesApi.get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/files/{path}?action=get'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
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
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmGuestFilesystemFilesInfo',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentState',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsResourceBusy',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemFilesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about files and directories in the guest.   The results could be extremely large, so to minimize the size of the return value for cases where a UI only needs to show the first N results, the answer is batched. Files are returned in operating system-specific (inode) order. If the directory is modified between queries, missing or duplicate results can occur.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory or file to query.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Integer] :index Which result to start the list with. The default value is 0.
    # @option opts [Integer] :max_results The maximum number of results to return. The default value is 50.
    # @option opts [String] :match_pattern A filter for the return values. Match patterns are specified using perl-compatible regular expressions. Patterns are applied to the relative contents of path. The default value is &#39;.*&#39;.
    # @return [VcenterVmGuestFilesystemFilesListFileInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|]
    def list(vm, interactive_session, type, path, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, interactive_session, type, path, opts)
      data
    end

    # Returns information about files and directories in the guest.   The results could be extremely large, so to minimize the size of the return value for cases where a UI only needs to show the first N results, the answer is batched. Files are returned in operating system-specific (inode) order. If the directory is modified between queries, missing or duplicate results can occur.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the directory or file to query.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Integer] :index Which result to start the list with. The default value is 0.
    # @option opts [Integer] :max_results The maximum number of results to return. The default value is 50.
    # @option opts [String] :match_pattern A filter for the return values. Match patterns are specified using perl-compatible regular expressions. Patterns are applied to the relative contents of path. The default value is &#39;.*&#39;.
    # @return [Array<(VcenterVmGuestFilesystemFilesListFileInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, interactive_session, type, path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemFilesApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemFilesApi.list"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemFilesApi.list"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemFilesApi.list"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemFilesApi.list"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/files?action=list'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?
      query_params[:'index'] = opts[:'index'] if !opts[:'index'].nil?
      query_params[:'max_results'] = opts[:'max_results'] if !opts[:'max_results'].nil?
      query_params[:'match_pattern'] = opts[:'match_pattern'] if !opts[:'match_pattern'].nil?

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
	  '200' => 'VCenter::VcenterVmGuestFilesystemFilesListFileInfo',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsResourceBusy',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemFilesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Renames a file in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the original file or symbolic link to be moved.
    # @param new_path The complete path to the where the file is renamed. It cannot be a path to an existing directory.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Boolean] :overwrite If true, the destination file is clobbered. If unset, the destination file is clobbered.
    # @return [|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil]
    def move(vm, interactive_session, type, path, new_path, opts = {})
      move_with_http_info(vm, interactive_session, type, path, new_path, opts)
      nil
    end

    # Renames a file in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the original file or symbolic link to be moved.
    # @param new_path The complete path to the where the file is renamed. It cannot be a path to an existing directory.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [Boolean] :overwrite If true, the destination file is clobbered. If unset, the destination file is clobbered.
    # @return [Array<(|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def move_with_http_info(vm, interactive_session, type, path, new_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemFilesApi.move ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemFilesApi.move"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemFilesApi.move"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemFilesApi.move"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemFilesApi.move"
      end
      # verify the required parameter 'new_path' is set
      if @api_client.config.client_side_validation && new_path.nil?
        fail ArgumentError, "Missing the required parameter 'new_path' when calling VmGuestFilesystemFilesApi.move"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/files?action=move'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'new_path'] = new_path
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestFilesystemFilesApi#move\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Changes the file attributes of a specified file or directory inside the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the file or directory to be changed in the guest. If the file points to an symbolic link, then the attributes of the target file are changed.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :last_modified The date and time the file was last modified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed.
    # @option opts [String] :last_accessed The date and time the file was last accessed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed.
    # @option opts [String] :windows 
    # @option opts [String] :posix 
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil]
    def update(vm, interactive_session, type, path, opts = {})
      update_with_http_info(vm, interactive_session, type, path, opts)
      nil
    end

    # Changes the file attributes of a specified file or directory inside the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual Machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param interactive_session If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param type Types of guest credentials. Warning: This enumeration is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param path The complete path to the file or directory to be changed in the guest. If the file points to an symbolic link, then the attributes of the target file are changed.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_name For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied.
    # @option opts [String] :password password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD.
    # @option opts [String] :saml_token SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN.
    # @option opts [String] :last_modified The date and time the file was last modified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed.
    # @option opts [String] :last_accessed The date and time the file was last accessed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the value will not be changed.
    # @option opts [String] :windows 
    # @option opts [String] :posix 
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(vm, interactive_session, type, path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestFilesystemFilesApi.update ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestFilesystemFilesApi.update"
      end
      # verify the required parameter 'interactive_session' is set
      if @api_client.config.client_side_validation && interactive_session.nil?
        fail ArgumentError, "Missing the required parameter 'interactive_session' when calling VmGuestFilesystemFilesApi.update"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VmGuestFilesystemFilesApi.update"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USERNAME_PASSWORD', 'SAML_BEARER_TOKEN'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USERNAME_PASSWORD, SAML_BEARER_TOKEN"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling VmGuestFilesystemFilesApi.update"
      end
      # resource path
      local_var_path = '/api/vcenter/vm/{vm}/guest/filesystem/files?action=update'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}
      query_params[:'interactive_session'] = interactive_session
      query_params[:'type'] = type
      query_params[:'path'] = path
      query_params[:'user_name'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'saml_token'] = opts[:'saml_token'] if !opts[:'saml_token'].nil?
      query_params[:'last_modified'] = opts[:'last_modified'] if !opts[:'last_modified'].nil?
      query_params[:'last_accessed'] = opts[:'last_accessed'] if !opts[:'last_accessed'].nil?
      query_params[:'windows'] = opts[:'windows'] if !opts[:'windows'].nil?
      query_params[:'posix'] = opts[:'posix'] if !opts[:'posix'].nil?

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
        @api_client.config.logger.debug "API called: VmGuestFilesystemFilesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
