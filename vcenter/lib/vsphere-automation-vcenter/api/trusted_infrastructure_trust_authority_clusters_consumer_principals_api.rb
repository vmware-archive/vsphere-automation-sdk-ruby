# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a profile with the specified connection information on all hosts from a Trust Authority Cluster.
    # @param cluster The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec] :request_body 
    # @return [String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def create_task(cluster, opts = {})
      data, _status_code, _headers = create_task_with_http_info(cluster, opts)
      data
    end

    # Creates a profile with the specified connection information on all hosts from a Trust Authority Cluster.
    # @api private
    # @param cluster The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.create_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.create_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '400' => 'VCenter::VapiStdErrorsAlreadyExists',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi#create_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes the read-only policy configured on ESX for a specific principal.
    # @param cluster The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param profile The ID of the connection profile to modify. The parameter must be an identifier for the resource type: esx.authentication.clientprofile.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def delete_task(cluster, profile, opts = {})
      data, _status_code, _headers = delete_task_with_http_info(cluster, profile, opts)
      data
    end

    # Removes the read-only policy configured on ESX for a specific principal.
    # @api private
    # @param cluster The ID of the Trust Authority Cluster to configure. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param profile The ID of the connection profile to modify. The parameter must be an identifier for the resource type: esx.authentication.clientprofile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def delete_task_with_http_info(cluster, profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.delete_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.delete_task"
      end
      # verify the required parameter 'profile' is set
      if @api_client.config.client_side_validation && profile.nil?
        fail ArgumentError, "Missing the required parameter 'profile' when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.delete_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals/{profile}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'profile' + '}', profile.to_s)

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
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi#delete_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve information for a specific profile.
    # @param cluster The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param profile The ID of the profile. The parameter must be an identifier for the resource type: esx.authentication.clientprofile.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get_task(cluster, profile, opts = {})
      data, _status_code, _headers = get_task_with_http_info(cluster, profile, opts)
      data
    end

    # Retrieve information for a specific profile.
    # @api private
    # @param cluster The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param profile The ID of the profile. The parameter must be an identifier for the resource type: esx.authentication.clientprofile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_task_with_http_info(cluster, profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.get_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.get_task"
      end
      # verify the required parameter 'profile' is set
      if @api_client.config.client_side_validation && profile.nil?
        fail ArgumentError, "Missing the required parameter 'profile' when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.get_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals/{profile}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'profile' + '}', profile.to_s)

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
	  '202' => 'VCenter::String',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi#get_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all policies configured on a specific cluster.
    # @param cluster The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec] :request_body 
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def list_task(cluster, opts = {})
      data, _status_code, _headers = list_task_with_http_info(cluster, opts)
      data
    end

    # Lists all policies configured on a specific cluster.
    # @api private
    # @param cluster The ID of the Trust Authority Cluster on which the profile is configured. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.list_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.list_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals?action=query&vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi#list_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
