# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return the remote server certificates.   Contacts the configured key servers and attempts to retrieve their certificates. These certificates might not yet be trusted.    If the returned certificates are to be considered trustworthy, then it must be added to the list of trusted server certificates by adding to the certificates returned by TrustedPeerCertificates.get and invoking TrustedPeerCertificates.update with the updated list of certificates. 
    # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :server_names Names that key server must have to match the filter (see CurrentPeerCertificates.Summary.server-name). If unset or empty, key servers with any name match the filter.
    # @option opts [Boolean] :trusted Trust status that server certificates must have to match the filter (see CurrentPeerCertificates.Summary.trusted). If unset, trusted and untrusted server certificates match the filter.
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def list_task(cluster, provider, opts = {})
      data, _status_code, _headers = list_task_with_http_info(cluster, provider, opts)
      data
    end

    # Return the remote server certificates.   Contacts the configured key servers and attempts to retrieve their certificates. These certificates might not yet be trusted.    If the returned certificates are to be considered trustworthy, then it must be added to the list of trusted server certificates by adding to the certificates returned by TrustedPeerCertificates.get and invoking TrustedPeerCertificates.update with the updated list of certificates. 
    # @api private
    # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param provider Identifier of the provider. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :server_names Names that key server must have to match the filter (see CurrentPeerCertificates.Summary.server-name). If unset or empty, key servers with any name match the filter.
    # @option opts [Boolean] :trusted Trust status that server certificates must have to match the filter (see CurrentPeerCertificates.Summary.trusted). If unset, trusted and untrusted server certificates match the filter.
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_task_with_http_info(cluster, provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi.list_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi.list_task"
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi.list_task"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/peer-certs/current?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'provider' + '}', provider.to_s)

      # query parameters
      query_params = {}
      query_params[:'server_names'] = @api_client.build_collection_param(opts[:'server_names'], :multi) if !opts[:'server_names'].nil?
      query_params[:'trusted'] = opts[:'trusted'] if !opts[:'trusted'].nil?

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi#list_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
