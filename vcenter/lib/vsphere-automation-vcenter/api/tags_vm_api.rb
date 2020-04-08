# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TagsVMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes any existing associations of this tag with virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param tag Identifier of the tag of which the associations with virtual machines will be deleted. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(tag, opts = {})
      delete_with_http_info(tag, opts)
      nil
    end

    # Deletes any existing associations of this tag with virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param tag Identifier of the tag of which the associations with virtual machines will be deleted. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsVMApi.delete ...'
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling TagsVMApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/vm/{tag}'.sub('{' + 'tag' + '}', tag.to_s)

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
        @api_client.config.logger.debug "API called: TagsVMApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about the tags that are associated with virtual machines on this vCenter Server, where the tags need to match VM.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_tags Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, returns all tag associations. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine.
    # @return [VcenterTagsVMListResp|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about the tags that are associated with virtual machines on this vCenter Server, where the tags need to match VM.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_tags Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, returns all tag associations. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine.
    # @return [Array<(VcenterTagsVMListResp|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsVMApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/vm'

      # query parameters
      query_params = {}
      query_params[:'filter.tags'] = @api_client.build_collection_param(opts[:'filter_tags'], :multi) if !opts[:'filter_tags'].nil?

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
	  '200' => 'VCenter::VcenterTagsVMListResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsVMApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
