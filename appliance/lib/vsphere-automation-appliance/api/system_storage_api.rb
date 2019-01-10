=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class SystemStorageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get disk to partition mapping.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceSystemStorageListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get disk to partition mapping.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceSystemStorageListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemStorageApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/system/storage'

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
	  '200' => 'Appliance::ApplianceSystemStorageListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemStorageApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resize all partitions to 100 percent of disk size.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def resize(opts = {})
      resize_with_http_info(opts)
      nil
    end

    # Resize all partitions to 100 percent of disk size.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def resize_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemStorageApi.resize ...'
      end
      # resource path
      local_var_path = '/appliance/system/storage/resize'

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
        @api_client.config.logger.debug "API called: SystemStorageApi#resize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resize all partitions to 100 percent of disk size.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceSystemStorageResizeExResult|VapiStdErrorsErrorError|]
    def resize_ex(opts = {})
      data, _status_code, _headers = resize_ex_with_http_info(opts)
      data
    end

    # Resize all partitions to 100 percent of disk size.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceSystemStorageResizeExResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def resize_ex_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemStorageApi.resize_ex ...'
      end
      # resource path
      local_var_path = '/appliance/system/storage?action=resize-ex'

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
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceSystemStorageResizeExResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemStorageApi#resize_ex\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
