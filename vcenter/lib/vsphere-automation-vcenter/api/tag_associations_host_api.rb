# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TagAssociationsHostApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :iterate_size Size specifies the maximum number of results to return. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset defaults to 5000.
    # @option opts [String] :iterate_marker Marker is an opaque data structure that allows the Host service to find where the previously returned page of tag associations has ended and where the new page should begin. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker.
    # @option opts [Array<String>] :filter_hosts Tag associations need to have one of the host identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any host identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_tags Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any tag identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:HostSystem.
    # @return [VcenterTagAssociationsHostListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :iterate_size Size specifies the maximum number of results to return. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset defaults to 5000.
    # @option opts [String] :iterate_marker Marker is an opaque data structure that allows the Host service to find where the previously returned page of tag associations has ended and where the new page should begin. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker.
    # @option opts [Array<String>] :filter_hosts Tag associations need to have one of the host identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any host identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_tags Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any tag identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:HostSystem.
    # @return [Array<(VcenterTagAssociationsHostListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagAssociationsHostApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/tag-associations/host'

      # query parameters
      query_params = {}
      query_params[:'iterate.size'] = opts[:'iterate_size'] if !opts[:'iterate_size'].nil?
      query_params[:'iterate.marker'] = opts[:'iterate_marker'] if !opts[:'iterate_marker'].nil?
      query_params[:'filter.hosts'] = @api_client.build_collection_param(opts[:'filter_hosts'], :multi) if !opts[:'filter_hosts'].nil?
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
	  '200' => 'VCenter::VcenterTagAssociationsHostListResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagAssociationsHostApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
