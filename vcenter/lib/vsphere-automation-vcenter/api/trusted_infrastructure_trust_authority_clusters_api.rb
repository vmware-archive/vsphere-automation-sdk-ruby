# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustAuthorityClustersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the result of the last Update operation which matches the cluster id. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
    # @param cluster Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustedInfrastructureTrustAuthorityClustersInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(cluster, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, opts)
      data
    end

    # Get the result of the last Update operation which matches the cluster id. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
    # @api private
    # @param cluster Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustedInfrastructureTrustAuthorityClustersInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of clusters for this vCenter instance which matches the TrustAuthorityClusters.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the attribute TrustAuthorityClusters.FilterSpec.cluster requires System.View.  
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :cluster Identifies the cluster. cluster If {@term.unset} return all Trust Authority Clusters. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :state The state of the TrustAuthorityClusters. state If {@term.unset} return all Trust Authority Clusters.
    # @return [Array<VcenterTrustedInfrastructureTrustAuthorityClustersSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns a list of clusters for this vCenter instance which matches the TrustAuthorityClusters.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the attribute TrustAuthorityClusters.FilterSpec.cluster requires System.View.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :cluster Identifies the cluster. cluster If {@term.unset} return all Trust Authority Clusters. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :state The state of the TrustAuthorityClusters. state If {@term.unset} return all Trust Authority Clusters.
    # @return [Array<(Array<VcenterTrustedInfrastructureTrustAuthorityClustersSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'state'] && !opts[:'state'].all? { |item| ['ENABLE', 'DISABLE'].include?(item) }
        fail ArgumentError, 'invalid value for "state", must include one of ENABLE, DISABLE'
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters'

      # query parameters
      query_params = {}
      query_params[:'cluster'] = @api_client.build_collection_param(opts[:'cluster'], :multi) if !opts[:'cluster'].nil?
      query_params[:'state'] = @api_client.build_collection_param(opts[:'state'], :multi) if !opts[:'state'].nil?

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
	  '200' => 'VCenter::Array<VcenterTrustedInfrastructureTrustAuthorityClustersSummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the state of a cluster.
    # @param cluster Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersUpdateSpec] :request_body 
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def update_task(cluster, opts = {})
      data, _status_code, _headers = update_task_with_http_info(cluster, opts)
      data
    end

    # Updates the state of a cluster.
    # @api private
    # @param cluster Cluster id. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersUpdateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def update_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersApi.update_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersApi.update_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'VCenter::String',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersApi#update_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
