# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class GuestCustomizationSpecsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a customization specification.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterGuestCustomizationSpecsCreateResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Creates a customization specification.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterGuestCustomizationSpecsCreateResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling GuestCustomizationSpecsApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/guest/customization-specs'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterGuestCustomizationSpecsCreateResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a customization specification with the specified identifier.
    # @param name The name of the customization specification that needs to be deleted. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(name, opts = {})
      delete_with_http_info(name, opts)
      nil
    end

    # Deletes a customization specification with the specified identifier.
    # @api private
    # @param name The name of the customization specification that needs to be deleted. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GuestCustomizationSpecsApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/guest/customization-specs/{name}'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the content of the customization specification in the specified format. Note that any passwords in the customization specification will be set to blank values during the export operation.
    # @param name The name of the customization specification that has to be returned. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterGuestCustomizationSpecsExportResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def export(name, request_body, opts = {})
      data, _status_code, _headers = export_with_http_info(name, request_body, opts)
      data
    end

    # Returns the content of the customization specification in the specified format. Note that any passwords in the customization specification will be set to blank values during the export operation.
    # @api private
    # @param name The name of the customization specification that has to be returned. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterGuestCustomizationSpecsExportResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def export_with_http_info(name, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.export ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GuestCustomizationSpecsApi.export"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling GuestCustomizationSpecsApi.export"
      end
      # resource path
      local_var_path = '/rest/vcenter/guest/customization-specs/{name}?action=export'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterGuestCustomizationSpecsExportResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the guest customization specification from vCenter with the specified identifier.
    # @param name The name of the customization specification. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param [Hash] opts the optional parameters
    # @return [VcenterGuestCustomizationSpecsResp|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(name, opts = {})
      data, _status_code, _headers = get_with_http_info(name, opts)
      data
    end

    # Returns the guest customization specification from vCenter with the specified identifier.
    # @api private
    # @param name The name of the customization specification. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterGuestCustomizationSpecsResp|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GuestCustomizationSpecsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/guest/customization-specs/{name}'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

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
	  '200' => 'VCenter::VcenterGuestCustomizationSpecsResp',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Converts a well formatted string to a CustomizationSpecs.CreateSpec. The resulting object can be passed to CustomizationSpecs.create operation.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterGuestCustomizationSpecsImportSpecificationResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def import_specification(request_body, opts = {})
      data, _status_code, _headers = import_specification_with_http_info(request_body, opts)
      data
    end

    # Converts a well formatted string to a CustomizationSpecs.CreateSpec. The resulting object can be passed to CustomizationSpecs.create operation.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterGuestCustomizationSpecsImportSpecificationResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def import_specification_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.import_specification ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling GuestCustomizationSpecsApi.import_specification"
      end
      # resource path
      local_var_path = '/rest/vcenter/guest/customization-specs?action=import'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterGuestCustomizationSpecsImportSpecificationResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#import_specification\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_names Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec.
    # @option opts [String] :filter_os_type The CustomizationSpecs.OsType enumerated type defines the types of guest operating systems for which guest customization is supported.
    # @return [VcenterGuestCustomizationSpecsListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_names Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec.
    # @option opts [String] :filter_os_type The CustomizationSpecs.OsType enumerated type defines the types of guest operating systems for which guest customization is supported.
    # @return [Array<(VcenterGuestCustomizationSpecsListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_os_type'] && !['WINDOWS', 'LINUX'].include?(opts[:'filter_os_type'])
        fail ArgumentError, 'invalid value for "filter_os_type", must be one of WINDOWS, LINUX'
      end
      # resource path
      local_var_path = '/rest/vcenter/guest/customization-specs'

      # query parameters
      query_params = {}
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
      query_params[:'filter.OS_type'] = opts[:'filter_os_type'] if !opts[:'filter_os_type'].nil?

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
	  '200' => 'VCenter::VcenterGuestCustomizationSpecsListResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets an existing specification, possibly after retrieving (by using CustomizationSpecs.get) and editing it.
    # @param name The name of the customization specification that needs to be set. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def set(name, request_body, opts = {})
      set_with_http_info(name, request_body, opts)
      nil
    end

    # Sets an existing specification, possibly after retrieving (by using CustomizationSpecs.get) and editing it.
    # @api private
    # @param name The name of the customization specification that needs to be set. The parameter must be an identifier for the resource type: vcenter.guest.CustomizationSpec.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(name, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.set ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GuestCustomizationSpecsApi.set"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling GuestCustomizationSpecsApi.set"
      end
      # resource path
      local_var_path = '/rest/vcenter/guest/customization-specs/{name}'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
