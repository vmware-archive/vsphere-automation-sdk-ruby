=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class ShutdownApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel pending shutdown action.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def cancel(opts = {})
      cancel_with_http_info(opts)
      nil
    end

    # Cancel pending shutdown action.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShutdownApi.cancel ...'
      end
      # resource path
      local_var_path = '/appliance/shutdown/cancel'

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
        @api_client.config.logger.debug "API called: ShutdownApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get details about the pending shutdown action.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceShutdownResult|VapiStdErrorsErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get details about the pending shutdown action.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceShutdownResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShutdownApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/shutdown'

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
	  '200' => 'Appliance::ApplianceShutdownResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShutdownApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Power off the appliance.
    # @param appliance_shutdown_poweroff 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def poweroff(appliance_shutdown_poweroff, opts = {})
      poweroff_with_http_info(appliance_shutdown_poweroff, opts)
      nil
    end

    # Power off the appliance.
    # @api private
    # @param appliance_shutdown_poweroff 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def poweroff_with_http_info(appliance_shutdown_poweroff, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShutdownApi.poweroff ...'
      end
      # verify the required parameter 'appliance_shutdown_poweroff' is set
      if @api_client.config.client_side_validation && appliance_shutdown_poweroff.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_shutdown_poweroff' when calling ShutdownApi.poweroff"
      end
      # resource path
      local_var_path = '/appliance/shutdown/poweroff'

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
      post_body = @api_client.object_to_http_body(appliance_shutdown_poweroff)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShutdownApi#poweroff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reboot the appliance.
    # @param appliance_shutdown_reboot 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def reboot(appliance_shutdown_reboot, opts = {})
      reboot_with_http_info(appliance_shutdown_reboot, opts)
      nil
    end

    # Reboot the appliance.
    # @api private
    # @param appliance_shutdown_reboot 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def reboot_with_http_info(appliance_shutdown_reboot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShutdownApi.reboot ...'
      end
      # verify the required parameter 'appliance_shutdown_reboot' is set
      if @api_client.config.client_side_validation && appliance_shutdown_reboot.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_shutdown_reboot' when calling ShutdownApi.reboot"
      end
      # resource path
      local_var_path = '/appliance/shutdown/reboot'

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
      post_body = @api_client.object_to_http_body(appliance_shutdown_reboot)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShutdownApi#reboot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
