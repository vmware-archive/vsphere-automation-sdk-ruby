# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class InfraprofileConfigsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Exports the desired profile specification. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceInfraprofileConfigsProfilesSpec] :request_body 
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def export(opts = {})
      data, _status_code, _headers = export_with_http_info(opts)
      data
    end

    # Exports the desired profile specification. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceInfraprofileConfigsProfilesSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def export_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfraprofileConfigsApi.export ...'
      end
      # resource path
      local_var_path = '/api/appliance/infraprofile/configs?action=export'

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
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::String',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticated',
	  '404' => 'Appliance::VapiStdErrorsNotFound',
	  '500' => 'Appliance::VapiStdErrorsError',
	  '503' => 'Appliance::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfraprofileConfigsApi#export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Imports the desired profile specification.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceInfraprofileConfigsImportProfileSpec] :request_body 
    # @return [String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def import_profile_task(opts = {})
      data, _status_code, _headers = import_profile_task_with_http_info(opts)
      data
    end

    # Imports the desired profile specification.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceInfraprofileConfigsImportProfileSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def import_profile_task_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfraprofileConfigsApi.import_profile_task ...'
      end
      # resource path
      local_var_path = '/api/appliance/infraprofile/configs?action=import&vmw-task=true'

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
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'Appliance::String',
	  '400' => 'Appliance::VapiStdErrorsNotAllowedInCurrentState',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticated',
	  '404' => 'Appliance::VapiStdErrorsNotFound',
	  '500' => 'Appliance::VapiStdErrorsError',
	  '503' => 'Appliance::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfraprofileConfigsApi#import_profile_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all the profiles which are registered. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
    # @param [Hash] opts the optional parameters
    # @return [Array<ApplianceInfraprofileConfigsProfileInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List all the profiles which are registered. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApplianceInfraprofileConfigsProfileInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfraprofileConfigsApi.list ...'
      end
      # resource path
      local_var_path = '/api/appliance/infraprofile/configs'

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
	  '200' => 'Appliance::Array<ApplianceInfraprofileConfigsProfileInfo>',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticated',
	  '500' => 'Appliance::VapiStdErrorsError',
	  '503' => 'Appliance::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfraprofileConfigsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validates the desired profile specification.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceInfraprofileConfigsImportProfileSpec] :request_body 
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def validate_task(opts = {})
      data, _status_code, _headers = validate_task_with_http_info(opts)
      data
    end

    # Validates the desired profile specification.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceInfraprofileConfigsImportProfileSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def validate_task_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InfraprofileConfigsApi.validate_task ...'
      end
      # resource path
      local_var_path = '/api/appliance/infraprofile/configs?action=validate&vmw-task=true'

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
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'Appliance::String',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticated',
	  '404' => 'Appliance::VapiStdErrorsNotFound',
	  '500' => 'Appliance::VapiStdErrorsError',
	  '503' => 'Appliance::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfraprofileConfigsApi#validate_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
