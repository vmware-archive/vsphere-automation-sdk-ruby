# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureTrustAuthorityHostsKmsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the connection info about the Key Provider Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
    # @param host @{link vcenter.Host} id. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsResourceInaccessible|]
    def get(host, opts = {})
      data, _status_code, _headers = get_with_http_info(host, opts)
      data
    end

    # Returns the connection info about the Key Provider Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
    # @api private
    # @param host @{link vcenter.Host} id. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsResourceInaccessible|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityHostsKmsApi.get ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling TrustedInfrastructureTrustAuthorityHostsKmsApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-hosts/{host}/kms/'.sub('{' + 'host' + '}', host.to_s)

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
	  '200' => 'VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsResourceInaccessible',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityHostsKmsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of the hosts running a Key Provider Service matching the specified Kms.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Kms.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Kms.FilterSpec.clusters requires System.View.  
    # @param [Hash] opts the optional parameters
    # @option opts [String] :projection { 1. The connection information could include the certificates or be a shorter summary. }, { 2. The type of the returned summary - brief, normal, or full. If {@term.unset} a normal projection will be used. }
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityHostsKmsFilterSpec] :request_body 
    # @return [Array<VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary>|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns a list of the hosts running a Key Provider Service matching the specified Kms.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Kms.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Kms.FilterSpec.clusters requires System.View.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :projection { 1. The connection information could include the certificates or be a shorter summary. }, { 2. The type of the returned summary - brief, normal, or full. If {@term.unset} a normal projection will be used. }
    # @option opts [VcenterTrustedInfrastructureTrustAuthorityHostsKmsFilterSpec] :request_body 
    # @return [Array<(Array<VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary>|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureTrustAuthorityHostsKmsApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'projection'] && !['FULL', 'NORMAL', 'BRIEF'].include?(opts[:'projection'])
        fail ArgumentError, 'invalid value for "projection", must be one of FULL, NORMAL, BRIEF'
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/trust-authority-hosts/kms?action=query'

      # query parameters
      query_params = {}
      query_params[:'projection'] = opts[:'projection'] if !opts[:'projection'].nil?

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
	  '200' => 'VCenter::Array<VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary>',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureTrustAuthorityHostsKmsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
