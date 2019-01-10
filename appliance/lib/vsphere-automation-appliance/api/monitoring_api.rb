=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class MonitoringApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get monitored item info
    # @param stat_id statistic item id
    # @param [Hash] opts the optional parameters
    # @return [ApplianceMonitoringResult|VapiStdErrorsErrorError|]
    def get(stat_id, opts = {})
      data, _status_code, _headers = get_with_http_info(stat_id, opts)
      data
    end

    # Get monitored item info
    # @api private
    # @param stat_id statistic item id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceMonitoringResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(stat_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.get ...'
      end
      # verify the required parameter 'stat_id' is set
      if @api_client.config.client_side_validation && stat_id.nil?
        fail ArgumentError, "Missing the required parameter 'stat_id' when calling MonitoringApi.get"
      end
      # resource path
      local_var_path = '/appliance/monitoring/{stat_id}'.sub('{' + 'stat_id' + '}', stat_id.to_s)

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
	  '200' => 'Appliance::ApplianceMonitoringResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get monitored items list
    # @param [Hash] opts the optional parameters
    # @return [ApplianceMonitoringListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get monitored items list
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceMonitoringListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/monitoring'

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
	  '200' => 'Appliance::ApplianceMonitoringListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get monitoring data.
    # @param item_names monitored item IDs Ex: CPU, MEMORY
    # @param item_interval {@name IntervalType} {@term enumerated type} Defines interval between the values in hours and mins,                    for which aggregation will apply
    # @param item_function {@name FunctionType} {@term enumerated type} Defines aggregation function
    # @param item_start_time Start time in UTC
    # @param item_end_time End time in UTC
    # @param [Hash] opts the optional parameters
    # @return [ApplianceMonitoringQueryResult|VapiStdErrorsErrorError|]
    def query(item_names, item_interval, item_function, item_start_time, item_end_time, opts = {})
      data, _status_code, _headers = query_with_http_info(item_names, item_interval, item_function, item_start_time, item_end_time, opts)
      data
    end

    # Get monitoring data.
    # @api private
    # @param item_names monitored item IDs Ex: CPU, MEMORY
    # @param item_interval {@name IntervalType} {@term enumerated type} Defines interval between the values in hours and mins,                    for which aggregation will apply
    # @param item_function {@name FunctionType} {@term enumerated type} Defines aggregation function
    # @param item_start_time Start time in UTC
    # @param item_end_time End time in UTC
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceMonitoringQueryResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def query_with_http_info(item_names, item_interval, item_function, item_start_time, item_end_time, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.query ...'
      end
      # verify the required parameter 'item_names' is set
      if @api_client.config.client_side_validation && item_names.nil?
        fail ArgumentError, "Missing the required parameter 'item_names' when calling MonitoringApi.query"
      end
      # verify the required parameter 'item_interval' is set
      if @api_client.config.client_side_validation && item_interval.nil?
        fail ArgumentError, "Missing the required parameter 'item_interval' when calling MonitoringApi.query"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['MINUTES30', 'HOURS2', 'MINUTES5', 'DAY1', 'HOURS6'].include?(item_interval)
        fail ArgumentError, "invalid value for 'item_interval', must be one of MINUTES30, HOURS2, MINUTES5, DAY1, HOURS6"
      end
      # verify the required parameter 'item_function' is set
      if @api_client.config.client_side_validation && item_function.nil?
        fail ArgumentError, "Missing the required parameter 'item_function' when calling MonitoringApi.query"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['COUNT', 'MAX', 'AVG', 'MIN'].include?(item_function)
        fail ArgumentError, "invalid value for 'item_function', must be one of COUNT, MAX, AVG, MIN"
      end
      # verify the required parameter 'item_start_time' is set
      if @api_client.config.client_side_validation && item_start_time.nil?
        fail ArgumentError, "Missing the required parameter 'item_start_time' when calling MonitoringApi.query"
      end
      # verify the required parameter 'item_end_time' is set
      if @api_client.config.client_side_validation && item_end_time.nil?
        fail ArgumentError, "Missing the required parameter 'item_end_time' when calling MonitoringApi.query"
      end
      # resource path
      local_var_path = '/appliance/monitoring/query'

      # query parameters
      query_params = {}
      query_params[:'item.names'] = @api_client.build_collection_param(item_names, :multi)
      query_params[:'item.interval'] = item_interval
      query_params[:'item.function'] = item_function
      query_params[:'item.start_time'] = item_start_time
      query_params[:'item.end_time'] = item_end_time

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
	  '200' => 'Appliance::ApplianceMonitoringQueryResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
