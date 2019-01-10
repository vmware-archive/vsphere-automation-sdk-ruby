=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentImportHistoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancels the task for importing vCenter historical data.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil]
    def cancel(opts = {})
      cancel_with_http_info(opts)
      nil
    end

    # Cancels the task for importing vCenter historical data.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentImportHistoryApi.cancel ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/history?action=cancel'

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
        @api_client.config.logger.debug "API called: DeploymentImportHistoryApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the current status of the vCenter historical data import.
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentImportHistoryResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the current status of the vCenter historical data import.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentImportHistoryResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentImportHistoryApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/history'

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
	  '200' => 'VCenter::VcenterDeploymentImportHistoryResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentImportHistoryApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Pauses the task for importing vCenter historical data.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil]
    def pause(opts = {})
      pause_with_http_info(opts)
      nil
    end

    # Pauses the task for importing vCenter historical data.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def pause_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentImportHistoryApi.pause ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/history?action=pause'

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
        @api_client.config.logger.debug "API called: DeploymentImportHistoryApi#pause\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resumes the task for importing vCenter historical data.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil]
    def resume(opts = {})
      resume_with_http_info(opts)
      nil
    end

    # Resumes the task for importing vCenter historical data.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def resume_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentImportHistoryApi.resume ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/history?action=resume'

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
        @api_client.config.logger.debug "API called: DeploymentImportHistoryApi#resume\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates and starts task for importing vCenter historical data.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterDeploymentImportHistoryStart] :vcenter_deployment_import_history_start 
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil]
    def start(opts = {})
      start_with_http_info(opts)
      nil
    end

    # Creates and starts task for importing vCenter historical data.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterDeploymentImportHistoryStart] :vcenter_deployment_import_history_start 
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def start_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentImportHistoryApi.start ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/history?action=start'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_deployment_import_history_start'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentImportHistoryApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
