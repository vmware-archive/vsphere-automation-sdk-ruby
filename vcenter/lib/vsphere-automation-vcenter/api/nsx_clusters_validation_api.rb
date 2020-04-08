# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NsxClustersValidationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Performs validation checks on the specification that can be used to update NSX Edge capabilities in an existing NSX Edge Cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxEdgeClusterUpdateSpec] :request_body 
    # @return [VcenterNsxClustersValidationCheckResult|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def check_edge_cluster_update_spec(cluster, opts = {})
      data, _status_code, _headers = check_edge_cluster_update_spec_with_http_info(cluster, opts)
      data
    end

    # Performs validation checks on the specification that can be used to update NSX Edge capabilities in an existing NSX Edge Cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxEdgeClusterUpdateSpec] :request_body 
    # @return [Array<(VcenterNsxClustersValidationCheckResult|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_edge_cluster_update_spec_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxClustersValidationApi.check_edge_cluster_update_spec ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NsxClustersValidationApi.check_edge_cluster_update_spec"
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/clusters/{cluster}/validation?action=checkEdgeClusterUpdateSpec'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterNsxClustersValidationCheckResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentState',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxClustersValidationApi#check_edge_cluster_update_spec\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Performs validation checks on the specification that can be used for enabling NSX networking with transport node configuration on all the hosts in a vSphere cluster and enabling NSX Edge cluster in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster Identifier for the vSphere cluster on which NSX networking will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxNSXEnableSpec] :request_body 
    # @return [VcenterNsxClustersValidationCheckResult|VapiStdErrorsAlreadyExists|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def check_enable_specs(cluster, opts = {})
      data, _status_code, _headers = check_enable_specs_with_http_info(cluster, opts)
      data
    end

    # Performs validation checks on the specification that can be used for enabling NSX networking with transport node configuration on all the hosts in a vSphere cluster and enabling NSX Edge cluster in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster Identifier for the vSphere cluster on which NSX networking will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNsxNSXEnableSpec] :request_body 
    # @return [Array<(VcenterNsxClustersValidationCheckResult|VapiStdErrorsAlreadyExists|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_enable_specs_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxClustersValidationApi.check_enable_specs ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NsxClustersValidationApi.check_enable_specs"
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/clusters/{cluster}/validation?action=checkEnableSpecs'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterNsxClustersValidationCheckResult',
	  '400' => 'VCenter::VapiStdErrorsAlreadyExists',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxClustersValidationApi#check_enable_specs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
