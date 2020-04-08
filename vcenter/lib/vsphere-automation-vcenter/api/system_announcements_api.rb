# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class SystemAnnouncementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new announcement
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterSystemAnnouncementsCreateResp|VapiStdErrorsErrorError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Create a new announcement
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterSystemAnnouncementsCreateResp|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAnnouncementsApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling SystemAnnouncementsApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/system/announcements'

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
	  '200' => 'VCenter::VcenterSystemAnnouncementsCreateResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAnnouncementsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an announcement
    # @param announcement Identifier of the announcement
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def delete(announcement, opts = {})
      delete_with_http_info(announcement, opts)
      nil
    end

    # Delete an announcement
    # @api private
    # @param announcement Identifier of the announcement
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(announcement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAnnouncementsApi.delete ...'
      end
      # verify the required parameter 'announcement' is set
      if @api_client.config.client_side_validation && announcement.nil?
        fail ArgumentError, "Missing the required parameter 'announcement' when calling SystemAnnouncementsApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/system/announcements/{announcement}'.sub('{' + 'announcement' + '}', announcement.to_s)

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
        @api_client.config.logger.debug "API called: SystemAnnouncementsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return information about a specific announcements in the system.
    # @param announcement Identifier of the announcement.
    # @param [Hash] opts the optional parameters
    # @return [VcenterSystemAnnouncementsResp|VapiStdErrorsErrorError|]
    def get(announcement, opts = {})
      data, _status_code, _headers = get_with_http_info(announcement, opts)
      data
    end

    # Return information about a specific announcements in the system.
    # @api private
    # @param announcement Identifier of the announcement.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterSystemAnnouncementsResp|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(announcement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAnnouncementsApi.get ...'
      end
      # verify the required parameter 'announcement' is set
      if @api_client.config.client_side_validation && announcement.nil?
        fail ArgumentError, "Missing the required parameter 'announcement' when calling SystemAnnouncementsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/system/announcements/{announcement}'.sub('{' + 'announcement' + '}', announcement.to_s)

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
	  '200' => 'VCenter::VcenterSystemAnnouncementsResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAnnouncementsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return information about all the announcements in the system.
    # @param [Hash] opts the optional parameters
    # @return [VcenterSystemAnnouncementsListResp|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Return information about all the announcements in the system.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterSystemAnnouncementsListResp|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAnnouncementsApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/system/announcements'

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
	  '200' => 'VCenter::VcenterSystemAnnouncementsListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAnnouncementsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set announcement properties.
    # @param announcement Identifier of the announcement. If such identifier exists then the object will be updated with the new values. If such identifier doesn&#39;t exist a new object with this identifier will be created.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def set(announcement, request_body, opts = {})
      set_with_http_info(announcement, request_body, opts)
      nil
    end

    # Set announcement properties.
    # @api private
    # @param announcement Identifier of the announcement. If such identifier exists then the object will be updated with the new values. If such identifier doesn&#39;t exist a new object with this identifier will be created.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(announcement, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAnnouncementsApi.set ...'
      end
      # verify the required parameter 'announcement' is set
      if @api_client.config.client_side_validation && announcement.nil?
        fail ArgumentError, "Missing the required parameter 'announcement' when calling SystemAnnouncementsApi.set"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling SystemAnnouncementsApi.set"
      end
      # resource path
      local_var_path = '/rest/vcenter/system/announcements/{announcement}'.sub('{' + 'announcement' + '}', announcement.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAnnouncementsApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
