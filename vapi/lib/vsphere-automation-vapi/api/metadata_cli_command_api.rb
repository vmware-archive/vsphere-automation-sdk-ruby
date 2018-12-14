=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataCliCommandApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the aggregate fingerprint of all the command metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataCliCommandFingerprintResult|]
    def fingerprint(opts = {})
      data, _status_code, _headers = fingerprint_with_http_info(opts)
      data
    end

    # Returns the aggregate fingerprint of all the command metadata from all the metadata sources. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataCliCommandFingerprintResult|, Fixnum, Hash)>]  data, response status code and response headers
    def fingerprint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliCommandApi.fingerprint ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/command?~action=fingerprint'

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
	  '200' => 'VAPI::VapiMetadataCliCommandFingerprintResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliCommandApi#fingerprint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves information about a command including information about how to execute that command.
    # @param vapi_metadata_cli_command_get 
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataCliCommandResult|VapiStdErrorsNotFoundError|]
    def get(vapi_metadata_cli_command_get, opts = {})
      data, _status_code, _headers = get_with_http_info(vapi_metadata_cli_command_get, opts)
      data
    end

    # Retrieves information about a command including information about how to execute that command.
    # @api private
    # @param vapi_metadata_cli_command_get 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataCliCommandResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vapi_metadata_cli_command_get, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliCommandApi.get ...'
      end
      # verify the required parameter 'vapi_metadata_cli_command_get' is set
      if @api_client.config.client_side_validation && vapi_metadata_cli_command_get.nil?
        fail ArgumentError, "Missing the required parameter 'vapi_metadata_cli_command_get' when calling MetadataCliCommandApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/command?~action=get'

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
      post_body = @api_client.object_to_http_body(vapi_metadata_cli_command_get)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VAPI::VapiMetadataCliCommandResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliCommandApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all commands, or commands in a specific namespace.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :path The dot-separated path of the namespace for which command identifiers should be returned.
    # @return [VapiMetadataCliCommandListResult|VapiStdErrorsNotFoundError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers of all commands, or commands in a specific namespace.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :path The dot-separated path of the namespace for which command identifiers should be returned.
    # @return [Array<(VapiMetadataCliCommandListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliCommandApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/command'

      # query parameters
      query_params = {}
      query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?

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
	  '200' => 'VAPI::VapiMetadataCliCommandListResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliCommandApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
