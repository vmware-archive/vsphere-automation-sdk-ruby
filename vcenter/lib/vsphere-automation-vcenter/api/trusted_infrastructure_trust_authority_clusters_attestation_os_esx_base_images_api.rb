# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remove a trusted ESX base image of each ESX in the cluster.
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param version The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def delete_task(cluster, version, opts = {})
      data, _status_code, _headers = delete_task_with_http_info(cluster, version, opts)
      data
    end

    # Remove a trusted ESX base image of each ESX in the cluster.
    # @api private
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param version The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def delete_task_with_http_info(cluster, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.delete_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.delete_task"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.delete_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images/{version}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'version' + '}', version.to_s)

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi#delete_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the trusted ESX base version details.
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param version The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get_task(cluster, version, opts = {})
      data, _status_code, _headers = get_task_with_http_info(cluster, version, opts)
      data
    end

    # Get the trusted ESX base version details.
    # @api private
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param version The ESX base image version. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_task_with_http_info(cluster, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.get_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.get_task"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.get_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images/{version}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'version' + '}', version.to_s)

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
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi#get_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Import ESX metadata as a new trusted base image to each host in the cluster.   Import a boot_imgdb.tgz file which contains metadata that describes a trusted ESX base image. A boot_imgdb.tgz file can be downloaded from a representative host. 
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def import_from_imgdb_task(cluster, opts = {})
      data, _status_code, _headers = import_from_imgdb_task_with_http_info(cluster, opts)
      data
    end

    # Import ESX metadata as a new trusted base image to each host in the cluster.   Import a boot_imgdb.tgz file which contains metadata that describes a trusted ESX base image. A boot_imgdb.tgz file can be downloaded from a representative host. 
    # @api private
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def import_from_imgdb_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.import_from_imgdb_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.import_from_imgdb_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images?action=import-from-imgdb&vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi#import_from_imgdb_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a list of trusted ESX base images.
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :version Search criteria by ESX base image version numbers. version if {@term.unset} return all ESX version numbers. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.
    # @option opts [Array<String>] :display_name Search criteria by ESX base image version version numbers. displayName if {@term.unset} return all ESX display version numbers.
    # @option opts [Array<String>] :health Search criteria by health indicator. health if {@term.unset} return all health indicators.
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def list_task(cluster, opts = {})
      data, _status_code, _headers = list_task_with_http_info(cluster, opts)
      data
    end

    # Return a list of trusted ESX base images.
    # @api private
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :version Search criteria by ESX base image version numbers. version if {@term.unset} return all ESX version numbers. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage.
    # @option opts [Array<String>] :display_name Search criteria by ESX base image version version numbers. displayName if {@term.unset} return all ESX display version numbers.
    # @option opts [Array<String>] :health Search criteria by health indicator. health if {@term.unset} return all health indicators.
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.list_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.list_task"
      end
      if @api_client.config.client_side_validation && opts[:'health'] && !opts[:'health'].all? { |item| ['NONE', 'OK', 'WARNING', 'ERROR'].include?(item) }
        fail ArgumentError, 'invalid value for "health", must include one of NONE, OK, WARNING, ERROR'
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

      # query parameters
      query_params = {}
      query_params[:'version'] = @api_client.build_collection_param(opts[:'version'], :multi) if !opts[:'version'].nil?
      query_params[:'display_name'] = @api_client.build_collection_param(opts[:'display_name'], :multi) if !opts[:'display_name'].nil?
      query_params[:'health'] = @api_client.build_collection_param(opts[:'health'], :multi) if !opts[:'health'].nil?

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi#list_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
