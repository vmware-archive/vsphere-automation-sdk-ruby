=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class VcenterActivationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Sends a request to cancel the task associated with the provided {@param.name activationId}.
    # @param activation_id the {@param.name activationId} associated with a vCenter Server task to be canceled.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def cancel(activation_id, opts = {})
      cancel_with_http_info(activation_id, opts)
      nil
    end

    # Sends a request to cancel the task associated with the provided {@param.name activationId}.
    # @api private
    # @param activation_id the {@param.name activationId} associated with a vCenter Server task to be canceled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(activation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcenterActivationApi.cancel ...'
      end
      # verify the required parameter 'activation_id' is set
      if @api_client.config.client_side_validation && activation_id.nil?
        fail ArgumentError, "Missing the required parameter 'activation_id' when calling VcenterActivationApi.cancel"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/vcenter/activation/id:{activation_id}?~action=cancel'.sub('{' + 'activation_id' + '}', activation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcenterActivationApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
