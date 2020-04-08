# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class CertificateManagementVcenterTlsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the rhttpproxy TLS certificate. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @param [Hash] opts the optional parameters
    # @return [VcenterCertificateManagementVcenterTlsResp|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Returns the rhttpproxy TLS certificate. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterCertificateManagementVcenterTlsResp|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTlsApi.get ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/tls'

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
	  '200' => 'VCenter::VcenterCertificateManagementVcenterTlsResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTlsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Renews the TLS certificate for the given duration period.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterCertificateManagementVcenterTlsRenew] :request_body 
    # @return [|VapiStdErrorsErrorError|nil]
    def renew(opts = {})
      renew_with_http_info(opts)
      nil
    end

    # Renews the TLS certificate for the given duration period.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterCertificateManagementVcenterTlsRenew] :request_body 
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def renew_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTlsApi.renew ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/tls?action=renew'

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTlsApi#renew\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Replace MACHINE SSL with VMCA signed one with the given Spec.The system will go for restart.   After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def replace_vmca_signed(request_body, opts = {})
      replace_vmca_signed_with_http_info(request_body, opts)
      nil
    end

    # Replace MACHINE SSL with VMCA signed one with the given Spec.The system will go for restart.   After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def replace_vmca_signed_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTlsApi.replace_vmca_signed ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling CertificateManagementVcenterTlsApi.replace_vmca_signed"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/tls?action=replace-vmca-signed'

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTlsApi#replace_vmca_signed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Replaces the rhttpproxy TLS certificate with the specified certificate. This operation can be used in three scenarios :     1.  When the CSR is created and the private key is already stored, this operation can replace the certificate. The Tls.Spec.cert (but not Tls.Spec.key and Tls.Spec.root-cert) must be provided as input.     2.  When the certificate is signed by a third party certificate authority/VMCA and the root certificate of the third party certificate authority/VMCA is already one of the trusted roots in the trust store, this operation can replace the certificate and private key. The Tls.Spec.cert and Tls.Spec.key (but not Tls.Spec.root-cert) must be provided as input.     3.  When the certificate is signed by a third party certificate authority and the root certificate of the third party certificate authority is not one of the trusted roots in the trust store, this operation can replace the certificate, private key and root CA certificate. The Tls.Spec.cert,Tls.Spec.key and Tls.Spec.root-cert must be provided as input.    After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  The above three scenarios are only supported from vsphere 7.0 onwards.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def set(request_body, opts = {})
      set_with_http_info(request_body, opts)
      nil
    end

    # Replaces the rhttpproxy TLS certificate with the specified certificate. This operation can be used in three scenarios :     1.  When the CSR is created and the private key is already stored, this operation can replace the certificate. The Tls.Spec.cert (but not Tls.Spec.key and Tls.Spec.root-cert) must be provided as input.     2.  When the certificate is signed by a third party certificate authority/VMCA and the root certificate of the third party certificate authority/VMCA is already one of the trusted roots in the trust store, this operation can replace the certificate and private key. The Tls.Spec.cert and Tls.Spec.key (but not Tls.Spec.root-cert) must be provided as input.     3.  When the certificate is signed by a third party certificate authority and the root certificate of the third party certificate authority is not one of the trusted roots in the trust store, this operation can replace the certificate, private key and root CA certificate. The Tls.Spec.cert,Tls.Spec.key and Tls.Spec.root-cert must be provided as input.    After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  The above three scenarios are only supported from vsphere 7.0 onwards.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CertificateManagementVcenterTlsApi.set ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling CertificateManagementVcenterTlsApi.set"
      end
      # resource path
      local_var_path = '/rest/vcenter/certificate-management/vcenter/tls'

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CertificateManagementVcenterTlsApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
