=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class LoggingForwardingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the configuration for forwarding log messages to remote logging servers.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceLoggingForwardingResult|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Returns the configuration for forwarding log messages to remote logging servers.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceLoggingForwardingResult|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingForwardingApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/logging/forwarding'

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
	  '200' => 'Appliance::ApplianceLoggingForwardingResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingForwardingApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets the configuration for forwarding log messages to remote log servers.
    # @param appliance_logging_forwarding_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def set(appliance_logging_forwarding_set, opts = {})
      set_with_http_info(appliance_logging_forwarding_set, opts)
      nil
    end

    # Sets the configuration for forwarding log messages to remote log servers.
    # @api private
    # @param appliance_logging_forwarding_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(appliance_logging_forwarding_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingForwardingApi.set ...'
      end
      # verify the required parameter 'appliance_logging_forwarding_set' is set
      if @api_client.config.client_side_validation && appliance_logging_forwarding_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_logging_forwarding_set' when calling LoggingForwardingApi.set"
      end
      # resource path
      local_var_path = '/appliance/logging/forwarding'

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
      post_body = @api_client.object_to_http_body(appliance_logging_forwarding_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingForwardingApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \"This is a diagnostic log test message from vCenter Server.\"
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceLoggingForwardingTest] :appliance_logging_forwarding_test 
    # @return [ApplianceLoggingForwardingTestResult|]
    def test(opts = {})
      data, _status_code, _headers = test_with_http_info(opts)
      data
    end

    # Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \&quot;This is a diagnostic log test message from vCenter Server.\&quot;
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceLoggingForwardingTest] :appliance_logging_forwarding_test 
    # @return [Array<(ApplianceLoggingForwardingTestResult|, Fixnum, Hash)>]  data, response status code and response headers
    def test_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingForwardingApi.test ...'
      end
      # resource path
      local_var_path = '/appliance/logging/forwarding?action=test'

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_logging_forwarding_test'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceLoggingForwardingTestResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingForwardingApi#test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
