# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete the Attestation Service configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Attestation Service configuration from any Trusted Hosts within the given cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def delete_task(cluster, opts = {})
      data, _status_code, _headers = delete_task_with_http_info(cluster, opts)
      data
    end

    # Delete the Attestation Service configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Attestation Service configuration from any Trusted Hosts within the given cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def delete_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.delete_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.delete_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi#delete_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns detailed information about the health of the specified Attestation Service configuration applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param hostname The IP address or DNS resolvable name of the service.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :port The port of the service. If unset, port 443 will be used.
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get_task(cluster, hostname, opts = {})
      data, _status_code, _headers = get_task_with_http_info(cluster, hostname, opts)
      data
    end

    # Returns detailed information about the health of the specified Attestation Service configuration applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param hostname The IP address or DNS resolvable name of the service.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :port The port of the service. If unset, port 443 will be used.
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_task_with_http_info(cluster, hostname, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.get_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.get_task"
      end
      # verify the required parameter 'hostname' is set
      if @api_client.config.client_side_validation && hostname.nil?
        fail ArgumentError, "Missing the required parameter 'hostname' when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.get_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

      # query parameters
      query_params = {}
      query_params[:'hostname'] = hostname
      query_params[:'port'] = opts[:'port'] if !opts[:'port'].nil?

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
	  '202' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi#get_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns basic information about the health of all Attestation Service configurations applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigFilterSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def list_task(cluster, opts = {})
      data, _status_code, _headers = list_task_with_http_info(cluster, opts)
      data
    end

    # Returns basic information about the health of all Attestation Service configurations applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster The ID of the cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigFilterSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.list_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.list_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?action=query&vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '202' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi#list_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the applied Attestation Service configuration on the given Trusted Cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will throw an InvalidArgument. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster The ID of the Trusted Cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def update_task(cluster, opts = {})
      data, _status_code, _headers = update_task_with_http_info(cluster, opts)
      data
    end

    # Update the applied Attestation Service configuration on the given Trusted Cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will throw an InvalidArgument. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster The ID of the Trusted Cluster against which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def update_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.update_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.update_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi#update_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
