=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class AccessConsolecliApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get enabled state of the console-based controlled CLI (TTY1).
    # @param [Hash] opts the optional parameters
    # @return [ApplianceAccessConsolecliResult|VapiStdErrorsErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get enabled state of the console-based controlled CLI (TTY1).
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceAccessConsolecliResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessConsolecliApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/access/consolecli'

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
	  '200' => 'Appliance::ApplianceAccessConsolecliResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessConsolecliApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set enabled state of the console-based controlled CLI (TTY1).
    # @param appliance_access_consolecli_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def set(appliance_access_consolecli_set, opts = {})
      set_with_http_info(appliance_access_consolecli_set, opts)
      nil
    end

    # Set enabled state of the console-based controlled CLI (TTY1).
    # @api private
    # @param appliance_access_consolecli_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(appliance_access_consolecli_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessConsolecliApi.set ...'
      end
      # verify the required parameter 'appliance_access_consolecli_set' is set
      if @api_client.config.client_side_validation && appliance_access_consolecli_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_access_consolecli_set' when calling AccessConsolecliApi.set"
      end
      # resource path
      local_var_path = '/appliance/access/consolecli'

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
      post_body = @api_client.object_to_http_body(appliance_access_consolecli_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessConsolecliApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
