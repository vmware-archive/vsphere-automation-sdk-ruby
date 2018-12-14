=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataPrivilegePackageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves privilege information about the package element corresponding to {@param.name packageId}.
    # @param package_id Identifier of the package element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataPrivilegePackageResult|VapiStdErrorsNotFoundError|]
    def get(package_id, opts = {})
      data, _status_code, _headers = get_with_http_info(package_id, opts)
      data
    end

    # Retrieves privilege information about the package element corresponding to {@param.name packageId}.
    # @api private
    # @param package_id Identifier of the package element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataPrivilegePackageResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(package_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataPrivilegePackageApi.get ...'
      end
      # verify the required parameter 'package_id' is set
      if @api_client.config.client_side_validation && package_id.nil?
        fail ArgumentError, "Missing the required parameter 'package_id' when calling MetadataPrivilegePackageApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/privilege/package/id:{package_id}'.sub('{' + 'package_id' + '}', package_id.to_s)

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
	  '200' => 'VAPI::VapiMetadataPrivilegePackageResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataPrivilegePackageApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers for the package elements that have privilege information.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataPrivilegePackageListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers for the package elements that have privilege information.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataPrivilegePackageListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataPrivilegePackageApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/privilege/package'

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
	  '200' => 'VAPI::VapiMetadataPrivilegePackageListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataPrivilegePackageApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
