# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class CertificateAuthorityCertificateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Verify the provided certificate on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @param cert The certificate to be verified in string format.
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateAuthorityCertificateCertStatusResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|]
    def cert_status(cert, opts = {})
      data, _status_code, _headers = cert_status_with_http_info(cert, opts)
      data
    end

    # Verify the provided certificate on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @api private
    # @param cert The certificate to be verified in string format.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateAuthorityCertificateCertStatusResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def cert_status_with_http_info(cert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateAuthorityCertificateApi.cert_status ...'
      end
      # verify the required parameter 'cert' is set
      if @api_client.config.client_side_validation && cert.nil?
        fail ArgumentError, "Missing the required parameter 'cert' when calling CertificateAuthorityCertificateApi.cert_status"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-authority/certificate?action=cert-status'

      # query parameters
      query_params = {}
      query_params[:'cert'] = cert

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
	  '200' => 'VCenter::VcenterCertificateAuthorityCertificateCertStatusResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '500' => 'VCenter::VapiStdErrorsInternalServerErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateAuthorityCertificateApi#cert_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the count of certificates on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @param status The information is about status of certificate in query.
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateAuthorityCertificateCountCertsResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|]
    def count_certs(status, opts = {})
      data, _status_code, _headers = count_certs_with_http_info(status, opts)
      data
    end

    # Get the count of certificates on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @api private
    # @param status The information is about status of certificate in query.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateAuthorityCertificateCountCertsResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def count_certs_with_http_info(status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateAuthorityCertificateApi.count_certs ...'
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling CertificateAuthorityCertificateApi.count_certs"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-authority/certificate?action=count-certs'

      # query parameters
      query_params = {}
      query_params[:'status'] = status

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
	  '200' => 'VCenter::VcenterCertificateAuthorityCertificateCountCertsResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '500' => 'VCenter::VapiStdErrorsInternalServerErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateAuthorityCertificateApi#count_certs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all the certs in the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @param status The information is about status of certificate in query.
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateAuthorityCertificateEnumCertsResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|]
    def enum_certs(status, opts = {})
      data, _status_code, _headers = enum_certs_with_http_info(status, opts)
      data
    end

    # List all the certs in the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @api private
    # @param status The information is about status of certificate in query.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateAuthorityCertificateEnumCertsResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def enum_certs_with_http_info(status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateAuthorityCertificateApi.enum_certs ...'
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling CertificateAuthorityCertificateApi.enum_certs"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-authority/certificate?action=enum-certs'

      # query parameters
      query_params = {}
      query_params[:'status'] = status

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
	  '200' => 'VCenter::VcenterCertificateAuthorityCertificateEnumCertsResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '500' => 'VCenter::VapiStdErrorsInternalServerErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateAuthorityCertificateApi#enum_certs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the signed certificate for the given Spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateAuthorityCertificateGenCertResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|]
    def gen_cert(request_body, opts = {})
      data, _status_code, _headers = gen_cert_with_http_info(request_body, opts)
      data
    end

    # Get the signed certificate for the given Spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateAuthorityCertificateGenCertResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def gen_cert_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateAuthorityCertificateApi.gen_cert ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling CertificateAuthorityCertificateApi.gen_cert"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-authority/certificate?action=gen-cert'

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
	  '200' => 'VCenter::VcenterCertificateAuthorityCertificateGenCertResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '500' => 'VCenter::VapiStdErrorsInternalServerErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateAuthorityCertificateApi#gen_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate the public and private key pair for given keysize. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterCertificateAuthorityCertificateGenerateKeys] :request_body 
    # @return [VcenterCertificateAuthorityCertificateGenerateKeysResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|]
    def generate_keys(opts = {})
      data, _status_code, _headers = generate_keys_with_http_info(opts)
      data
    end

    # Generate the public and private key pair for given keysize. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterCertificateAuthorityCertificateGenerateKeys] :request_body 
    # @return [Array<(VcenterCertificateAuthorityCertificateGenerateKeysResp|VapiStdErrorsErrorError|VapiStdErrorsInternalServerErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def generate_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateAuthorityCertificateApi.generate_keys ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-authority/certificate?action=generate-keys'

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
	  '200' => 'VCenter::VcenterCertificateAuthorityCertificateGenerateKeysResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '500' => 'VCenter::VapiStdErrorsInternalServerErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateAuthorityCertificateApi#generate_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
