=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class ServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the state of a service.
    # @param service identifier of the service whose state is being queried.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceServicesResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(service, opts = {})
      data, _status_code, _headers = get_with_http_info(service, opts)
      data
    end

    # Returns the state of a service.
    # @api private
    # @param service identifier of the service whose state is being queried.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceServicesResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.get ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesApi.get"
      end
      # resource path
      local_var_path = '/appliance/services/{service}'.sub('{' + 'service' + '}', service.to_s)

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
	  '200' => 'Appliance::ApplianceServicesResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists details of vCenter services.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceServicesListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists details of vCenter services.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceServicesListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/services'

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
	  '200' => 'Appliance::ApplianceServicesListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Restarts a service
    # @param service identifier of the service to restart
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil]
    def restart(service, opts = {})
      restart_with_http_info(service, opts)
      nil
    end

    # Restarts a service
    # @api private
    # @param service identifier of the service to restart
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def restart_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.restart ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesApi.restart"
      end
      # resource path
      local_var_path = '/appliance/services/{service}/restart'.sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: ServicesApi#restart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts a service
    # @param service identifier of the service to start
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil]
    def start(service, opts = {})
      start_with_http_info(service, opts)
      nil
    end

    # Starts a service
    # @api private
    # @param service identifier of the service to start
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def start_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.start ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesApi.start"
      end
      # resource path
      local_var_path = '/appliance/services/{service}/start'.sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: ServicesApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Stops a service
    # @param service identifier of the service to stop
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def stop(service, opts = {})
      stop_with_http_info(service, opts)
      nil
    end

    # Stops a service
    # @api private
    # @param service identifier of the service to stop
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def stop_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.stop ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesApi.stop"
      end
      # resource path
      local_var_path = '/appliance/services/{service}/stop'.sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: ServicesApi#stop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
