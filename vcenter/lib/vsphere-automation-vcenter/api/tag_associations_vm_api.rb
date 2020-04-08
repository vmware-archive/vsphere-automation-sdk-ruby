# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TagAssociationsVMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :iteration_size Size specifies the maximum number of results to return. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset defaults to 5000.
    # @option opts [String] :iteration_marker Marker is an opaque data structure that allows the VM service to find where the previously returned page of tag associations has ended and where the new page should begin. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker.
    # @option opts [Array<String>] :filter_vms Tag associations need to have one of the virtual machine identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any virtual machine identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
    # @option opts [Array<String>] :filter_tags Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any tag identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine.
    # @return [VcenterTagAssociationsVMListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :iteration_size Size specifies the maximum number of results to return. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset defaults to 5000.
    # @option opts [String] :iteration_marker Marker is an opaque data structure that allows the VM service to find where the previously returned page of tag associations has ended and where the new page should begin. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker.
    # @option opts [Array<String>] :filter_vms Tag associations need to have one of the virtual machine identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any virtual machine identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
    # @option opts [Array<String>] :filter_tags Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, tag associations with any tag identifier match this filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:VirtualMachine.
    # @return [Array<(VcenterTagAssociationsVMListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagAssociationsVMApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/tag-associations/vm'

      # query parameters
      query_params = {}
      query_params[:'iteration.size'] = opts[:'iteration_size'] if !opts[:'iteration_size'].nil?
      query_params[:'iteration.marker'] = opts[:'iteration_marker'] if !opts[:'iteration_marker'].nil?
      query_params[:'filter.vms'] = @api_client.build_collection_param(opts[:'filter_vms'], :multi) if !opts[:'filter_vms'].nil?
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
	  '200' => 'VCenter::VcenterTagAssociationsVMListResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagAssociationsVMApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
