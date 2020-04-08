# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class CertificateManagementVcenterTrustedRootChainsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new trusted root certificate chain from the CreateSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateManagementVcenterTrustedRootChainsCreateResp|VapiStdErrorsAlreadyExistsError|VapiStdErrorsUnauthorizedError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Creates a new trusted root certificate chain from the CreateSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateManagementVcenterTrustedRootChainsCreateResp|VapiStdErrorsAlreadyExistsError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTrustedRootChainsApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling CertificateManagementVcenterTrustedRootChainsApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/trusted-root-chains'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterCertificateManagementVcenterTrustedRootChainsCreateResp',
	  '400' => 'VCenter::VapiStdErrorsAlreadyExistsError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTrustedRootChainsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
    # @param chain Unique identifier for a trusted root cert chain.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(chain, opts = {})
      delete_with_http_info(chain, opts)
      nil
    end

    # Deletes trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
    # @api private
    # @param chain Unique identifier for a trusted root cert chain.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(chain, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTrustedRootChainsApi.delete ...'
      end
      # verify the required parameter 'chain' is set
      if @api_client.config.client_side_validation && chain.nil?
        fail ArgumentError, "Missing the required parameter 'chain' when calling CertificateManagementVcenterTrustedRootChainsApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}'.sub('{' + 'chain' + '}', chain.to_s)

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
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTrustedRootChainsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @param chain Unique identifier for a trusted root cert chain.
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateManagementVcenterTrustedRootChainsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(chain, opts = {})
      data, _status_code, _headers = get_with_http_info(chain, opts)
      data
    end

    # Retrieve a trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @api private
    # @param chain Unique identifier for a trusted root cert chain.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateManagementVcenterTrustedRootChainsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(chain, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTrustedRootChainsApi.get ...'
      end
      # verify the required parameter 'chain' is set
      if @api_client.config.client_side_validation && chain.nil?
        fail ArgumentError, "Missing the required parameter 'chain' when calling CertificateManagementVcenterTrustedRootChainsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain}'.sub('{' + 'chain' + '}', chain.to_s)

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
	  '200' => 'VCenter::VcenterCertificateManagementVcenterTrustedRootChainsResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTrustedRootChainsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns summary information for each trusted root certificate chain. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateManagementVcenterTrustedRootChainsListResp|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns summary information for each trusted root certificate chain. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateManagementVcenterTrustedRootChainsListResp|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTrustedRootChainsApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/trusted-root-chains'

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
	  '200' => 'VCenter::VcenterCertificateManagementVcenterTrustedRootChainsListResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTrustedRootChainsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
