# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TaggingAssociationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns tag associations that match the specified iteration spec.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :marker Marker is an opaque token that allows the caller to request the next page of tag associations. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tagging.associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tagging.associations.Marker.
    # @return [VcenterTaggingAssociationsListResult|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns tag associations that match the specified iteration spec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :marker Marker is an opaque token that allows the caller to request the next page of tag associations. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tagging.associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tagging.associations.Marker.
    # @return [Array<(VcenterTaggingAssociationsListResult|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaggingAssociationsApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/tagging/associations'

      # query parameters
      query_params = {}
      query_params[:'marker'] = opts[:'marker'] if !opts[:'marker'].nil?

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
	  '200' => 'VCenter::VcenterTaggingAssociationsListResult',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaggingAssociationsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
