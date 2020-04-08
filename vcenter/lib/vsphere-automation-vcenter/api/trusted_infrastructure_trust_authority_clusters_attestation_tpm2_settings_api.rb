# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return the TPM 2.0 protocol settings.
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get_task(cluster, opts = {})
      data, _status_code, _headers = get_task_with_http_info(cluster, opts)
      data
    end

    # Return the TPM 2.0 protocol settings.
    # @api private
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.get_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.get_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/settings?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi#get_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set the TPM 2.0 protocol settings.
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def update_task(cluster, opts = {})
      data, _status_code, _headers = update_task_with_http_info(cluster, opts)
      data
    end

    # Set the TPM 2.0 protocol settings.
    # @api private
    # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def update_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.update_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.update_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/settings?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi#update_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
