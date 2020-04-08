# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureAttestationServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Registers a new Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureAttestationServicesCreateSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Registers a new Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureAttestationServicesCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureAttestationServicesApi.create ...'
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/attestation/services'

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
	  '201' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureAttestationServicesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a registered Attestation Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @param service the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|nil]
    def delete(service, opts = {})
      delete_with_http_info(service, opts)
      nil
    end

    # Removes a registered Attestation Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @api private
    # @param service the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureAttestationServicesApi.delete ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling TrustedInfrastructureAttestationServicesApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/attestation/services/{service}'.sub('{' + 'service' + '}', service.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureAttestationServicesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the detailed information about a registered Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @param service the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustedInfrastructureAttestationServicesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(service, opts = {})
      data, _status_code, _headers = get_with_http_info(service, opts)
      data
    end

    # Returns the detailed information about a registered Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @api private
    # @param service the Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustedInfrastructureAttestationServicesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureAttestationServicesApi.get ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling TrustedInfrastructureAttestationServicesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/attestation/services/{service}'.sub('{' + 'service' + '}', service.to_s)

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
	  '200' => 'VCenter::VcenterTrustedInfrastructureAttestationServicesInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureAttestationServicesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns detailed information about all registered Attestation Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureAttestationServicesFilterSpec] :request_body 
    # @return [Array<VcenterTrustedInfrastructureAttestationServicesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns detailed information about all registered Attestation Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureAttestationServicesFilterSpec] :request_body 
    # @return [Array<(Array<VcenterTrustedInfrastructureAttestationServicesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureAttestationServicesApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/attestation/services?action=query'

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
	  '200' => 'VCenter::Array<VcenterTrustedInfrastructureAttestationServicesSummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureAttestationServicesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
