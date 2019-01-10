=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class HealthSystemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get overall health of system.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceHealthSystemResult|VapiStdErrorsErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get overall health of system.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceHealthSystemResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthSystemApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/health/system'

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
	  '200' => 'Appliance::ApplianceHealthSystemResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthSystemApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get last check timestamp of the health of the system.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceHealthSystemLastcheckResult|VapiStdErrorsErrorError|]
    def lastcheck(opts = {})
      data, _status_code, _headers = lastcheck_with_http_info(opts)
      data
    end

    # Get last check timestamp of the health of the system.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceHealthSystemLastcheckResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def lastcheck_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthSystemApi.lastcheck ...'
      end
      # resource path
      local_var_path = '/appliance/health/system/lastcheck'

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
	  '200' => 'Appliance::ApplianceHealthSystemLastcheckResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthSystemApi#lastcheck\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
