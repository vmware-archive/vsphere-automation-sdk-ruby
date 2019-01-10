=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class HealthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get health messages.
    # @param item ID of the data item
    # @param [Hash] opts the optional parameters
    # @return [ApplianceHealthMessagesResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def messages(item, opts = {})
      data, _status_code, _headers = messages_with_http_info(item, opts)
      data
    end

    # Get health messages.
    # @api private
    # @param item ID of the data item
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceHealthMessagesResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def messages_with_http_info(item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthApi.messages ...'
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling HealthApi.messages"
      end
      # resource path
      local_var_path = '/appliance/health/{item}/messages'.sub('{' + 'item' + '}', item.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceHealthMessagesResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthApi#messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
