=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VchaVcCredentialsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Validates the credentials of the management vCenter server of the active node of a VCHA cluster.
    # @param vcenter_vcha_vc_credentials_validate 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def validate(vcenter_vcha_vc_credentials_validate, opts = {})
      validate_with_http_info(vcenter_vcha_vc_credentials_validate, opts)
      nil
    end

    # Validates the credentials of the management vCenter server of the active node of a VCHA cluster.
    # @api private
    # @param vcenter_vcha_vc_credentials_validate 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def validate_with_http_info(vcenter_vcha_vc_credentials_validate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaVcCredentialsApi.validate ...'
      end
      # verify the required parameter 'vcenter_vcha_vc_credentials_validate' is set
      if @api_client.config.client_side_validation && vcenter_vcha_vc_credentials_validate.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vcha_vc_credentials_validate' when calling VchaVcCredentialsApi.validate"
      end
      # resource path
      local_var_path = '/vcenter/vcha/vc-credentials?action=validate'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(vcenter_vcha_vc_credentials_validate)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaVcCredentialsApi#validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
