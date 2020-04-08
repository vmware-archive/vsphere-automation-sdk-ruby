# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Set the key server credential.
    # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def set_task(cluster, provider, opts = {})
      data, _status_code, _headers = set_task_with_http_info(cluster, provider, opts)
      data
    end

    # Set the key server credential.
    # @api private
    # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def set_task_with_http_info(cluster, provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi.set_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi.set_task"
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi.set_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/credential?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'provider' + '}', provider.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi#set_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
