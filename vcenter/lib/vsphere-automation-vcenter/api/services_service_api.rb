=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class ServicesServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the state of a service.
    # @param service identifier of the service whose state is being queried.
    # @param [Hash] opts the optional parameters
    # @return [VcenterServicesServiceResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(service, opts = {})
      data, _status_code, _headers = get_with_http_info(service, opts)
      data
    end

    # Returns the state of a service.
    # @api private
    # @param service identifier of the service whose state is being queried.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterServicesServiceResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesServiceApi.get ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesServiceApi.get"
      end
      # resource path
      local_var_path = '/vcenter/services/{service}'.sub('{' + 'service' + '}', service.to_s)

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
	  '200' => 'VCenter::VcenterServicesServiceResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesServiceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists details of vCenter services.
    # @param [Hash] opts the optional parameters
    # @return [VcenterServicesServiceListDetailsResult|VapiStdErrorsErrorError|]
    def list_details(opts = {})
      data, _status_code, _headers = list_details_with_http_info(opts)
      data
    end

    # Lists details of vCenter services.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterServicesServiceListDetailsResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesServiceApi.list_details ...'
      end
      # resource path
      local_var_path = '/vcenter/services'

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
	  '200' => 'VCenter::VcenterServicesServiceListDetailsResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesServiceApi#list_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: ServicesServiceApi.restart ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesServiceApi.restart"
      end
      # resource path
      local_var_path = '/vcenter/services/{service}/restart'.sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: ServicesServiceApi#restart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: ServicesServiceApi.start ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesServiceApi.start"
      end
      # resource path
      local_var_path = '/vcenter/services/{service}/start'.sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: ServicesServiceApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: ServicesServiceApi.stop ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesServiceApi.stop"
      end
      # resource path
      local_var_path = '/vcenter/services/{service}/stop'.sub('{' + 'service' + '}', service.to_s)

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
        @api_client.config.logger.debug "API called: ServicesServiceApi#stop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the properties of a service.
    # @param service identifier of the service whose properties are being updated.
    # @param vcenter_services_service_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def update(service, vcenter_services_service_update, opts = {})
      update_with_http_info(service, vcenter_services_service_update, opts)
      nil
    end

    # Updates the properties of a service.
    # @api private
    # @param service identifier of the service whose properties are being updated.
    # @param vcenter_services_service_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(service, vcenter_services_service_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesServiceApi.update ...'
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ServicesServiceApi.update"
      end
      # verify the required parameter 'vcenter_services_service_update' is set
      if @api_client.config.client_side_validation && vcenter_services_service_update.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_services_service_update' when calling ServicesServiceApi.update"
      end
      # resource path
      local_var_path = '/vcenter/services/{service}'.sub('{' + 'service' + '}', service.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_services_service_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesServiceApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
