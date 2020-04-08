# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustedClustersAttestationServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Configures the cluster to use a the given registered Attestation Service.
    # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|]
    def create_task(cluster, opts = {})
      data, _status_code, _headers = create_task_with_http_info(cluster, opts)
      data
    end

    # Configures the cluster to use a the given registered Attestation Service.
    # @api private
    # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsUnableToAllocateResource|, Fixnum, Hash)>]  data, response status code and response headers
    def create_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesApi.create_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesApi.create_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '500' => 'VCenter::VapiStdErrorsUnableToAllocateResource',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesApi#create_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes the Attestation Service instance from the configuration of the given cluster.
    # @param cluster the unique ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param service the registered Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def delete_task(cluster, service, opts = {})
      data, _status_code, _headers = delete_task_with_http_info(cluster, service, opts)
      data
    end

    # Removes the Attestation Service instance from the configuration of the given cluster.
    # @api private
    # @param cluster the unique ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param service the registered Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def delete_task_with_http_info(cluster, service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesApi.delete_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesApi.delete_task"
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling TrustedInfrastructureTrustedClustersAttestationServicesApi.delete_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services/{service}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesApi#delete_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns detailed information about the given registered Attestation Service instance that is configured for the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
    # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param service The ID of the service. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustedInfrastructureTrustedClustersAttestationServicesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(cluster, service, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, service, opts)
      data
    end

    # Returns detailed information about the given registered Attestation Service instance that is configured for the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
    # @api private
    # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param service The ID of the service. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustedInfrastructureTrustedClustersAttestationServicesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesApi.get"
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling TrustedInfrastructureTrustedClustersAttestationServicesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services/{service}'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'service' + '}', service.to_s)

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
	  '200' => 'VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the basic information about all configured Attestation Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
    # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesFilterSpec] :request_body 
    # @return [Array<VcenterTrustedInfrastructureTrustedClustersAttestationServicesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def list(cluster, opts = {})
      data, _status_code, _headers = list_with_http_info(cluster, opts)
      data
    end

    # Returns the basic information about all configured Attestation Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
    # @api private
    # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesFilterSpec] :request_body 
    # @return [Array<(Array<VcenterTrustedInfrastructureTrustedClustersAttestationServicesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustedClustersAttestationServicesApi.list ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustedClustersAttestationServicesApi.list"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services?action=query'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::Array<VcenterTrustedInfrastructureTrustedClustersAttestationServicesSummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustedClustersAttestationServicesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
