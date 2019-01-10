=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class ConfigurationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the current configuration values.
    # @param [Hash] opts the optional parameters
    # @return [ContentConfigurationResult|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Retrieves the current configuration values.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentConfigurationResult|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.get ...'
      end
      # resource path
      local_var_path = '/com/vmware/content/configuration?~action=get'

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
	  '200' => 'Content::ContentConfigurationResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn't guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.
    # @param content_configuration_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|nil]
    def update(content_configuration_update, opts = {})
      update_with_http_info(content_configuration_update, opts)
      nil
    end

    # Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn&#39;t guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.
    # @api private
    # @param content_configuration_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(content_configuration_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigurationApi.update ...'
      end
      # verify the required parameter 'content_configuration_update' is set
      if @api_client.config.client_side_validation && content_configuration_update.nil?
        fail ArgumentError, "Missing the required parameter 'content_configuration_update' when calling ConfigurationApi.update"
      end
      # resource path
      local_var_path = '/com/vmware/content/configuration'

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
      post_body = @api_client.object_to_http_body(content_configuration_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
