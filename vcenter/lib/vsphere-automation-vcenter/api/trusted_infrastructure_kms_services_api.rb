# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustedInfrastructureKmsServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Registers a Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureKmsServicesCreateSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Registers a Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureKmsServicesCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureKmsServicesApi.create ...'
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/kms/services'

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureKmsServicesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a currently registered Key Provider Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @param service the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|nil]
    def delete(service, opts = {})
      delete_with_http_info(service, opts)
      nil
    end

    # Removes a currently registered Key Provider Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
    # @api private
    # @param service the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsResourceBusy|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureKmsServicesApi.delete ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling TrustedInfrastructureKmsServicesApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/kms/services/{service}'.sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: TrustedInfrastructureKmsServicesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the detailed information about a registered Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @param service the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustedInfrastructureKmsServicesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(service, opts = {})
      data, _status_code, _headers = get_with_http_info(service, opts)
      data
    end

    # Returns the detailed information about a registered Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @api private
    # @param service the Key Provider Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.kms.Service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustedInfrastructureKmsServicesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureKmsServicesApi.get ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling TrustedInfrastructureKmsServicesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/kms/services/{service}'.sub('{' + 'service' + '}', service.to_s)

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
	  '200' => 'VCenter::VcenterTrustedInfrastructureKmsServicesInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureKmsServicesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns basic information about all registered Key Provider Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureKmsServicesFilterSpec] :request_body 
    # @return [Array<VcenterTrustedInfrastructureKmsServicesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns basic information about all registered Key Provider Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterTrustedInfrastructureKmsServicesFilterSpec] :request_body 
    # @return [Array<(Array<VcenterTrustedInfrastructureKmsServicesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustedInfrastructureKmsServicesApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/trusted-infrastructure/kms/services?action=query'

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
	  '200' => 'VCenter::Array<VcenterTrustedInfrastructureKmsServicesSummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustedInfrastructureKmsServicesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
