# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespaceManagementSoftwareClustersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns upgrade related information of a specific cluster.
    # @param cluster Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [VcenterNamespaceManagementSoftwareClustersInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(cluster, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, opts)
      data
    end

    # Returns upgrade related information of a specific cluster.
    # @api private
    # @param cluster Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNamespaceManagementSoftwareClustersInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementSoftwareClustersApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespaceManagementSoftwareClustersApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/software/clusters/{cluster}'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterNamespaceManagementSoftwareClustersInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementSoftwareClustersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns upgrade related information about all WCP enabled clusters.
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterNamespaceManagementSoftwareClustersSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns upgrade related information about all WCP enabled clusters.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterNamespaceManagementSoftwareClustersSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementSoftwareClustersApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/software/clusters'

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
	  '200' => 'VCenter::Array<VcenterNamespaceManagementSoftwareClustersSummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementSoftwareClustersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Upgrade the cluster to a specific version. This operation upgrades the components on control plane VMs and worker plane hosts based on the selected version. Before upgrading, this operation performs pre-checks and sets the evaluation response in Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the severity, the upgrade may or may not proceed beyond prechecks. Here is a list of severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck operation - WARNING: Upgrade proceeds beyond precheck operation only if UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck operation uninterrupted
    # @param cluster Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespaceManagementSoftwareClustersUpgradeSpec] :request_body 
    # @return [|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def upgrade(cluster, opts = {})
      upgrade_with_http_info(cluster, opts)
      nil
    end

    # Upgrade the cluster to a specific version. This operation upgrades the components on control plane VMs and worker plane hosts based on the selected version. Before upgrading, this operation performs pre-checks and sets the evaluation response in Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the severity, the upgrade may or may not proceed beyond prechecks. Here is a list of severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck operation - WARNING: Upgrade proceeds beyond precheck operation only if UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck operation uninterrupted
    # @api private
    # @param cluster Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespaceManagementSoftwareClustersUpgradeSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def upgrade_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementSoftwareClustersApi.upgrade ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespaceManagementSoftwareClustersApi.upgrade"
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/software/clusters/{cluster}?action=upgrade'.sub('{' + 'cluster' + '}', cluster.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementSoftwareClustersApi#upgrade\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Upgrade a set of clusters to its corresponding specific version.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, VcenterNamespaceManagementSoftwareClustersUpgradeSpec>] :request_body 
    # @return [Hash<String, VcenterNamespaceManagementSoftwareClustersResult>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def upgrade_multiple(opts = {})
      data, _status_code, _headers = upgrade_multiple_with_http_info(opts)
      data
    end

    # Upgrade a set of clusters to its corresponding specific version.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, VcenterNamespaceManagementSoftwareClustersUpgradeSpec>] :request_body 
    # @return [Array<(Hash<String, VcenterNamespaceManagementSoftwareClustersResult>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def upgrade_multiple_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementSoftwareClustersApi.upgrade_multiple ...'
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/software/clusters?action=upgradeMultiple'

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
	  '200' => 'VCenter::Hash<String, VcenterNamespaceManagementSoftwareClustersResult>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementSoftwareClustersApi#upgrade_multiple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
