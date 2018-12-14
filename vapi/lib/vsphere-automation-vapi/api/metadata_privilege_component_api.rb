=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataPrivilegeComponentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the fingerprint computed from the privilege metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.privilege.Component#get}.
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataPrivilegeComponentFingerprintResult|VapiStdErrorsNotFoundError|]
    def fingerprint(component_id, opts = {})
      data, _status_code, _headers = fingerprint_with_http_info(component_id, opts)
      data
    end

    # Retrieves the fingerprint computed from the privilege metadata of the component element corresponding to {@param.name componentId}. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.privilege.Component#get}.
    # @api private
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataPrivilegeComponentFingerprintResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def fingerprint_with_http_info(component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataPrivilegeComponentApi.fingerprint ...'
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling MetadataPrivilegeComponentApi.fingerprint"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/privilege/component/id:{component_id}?~action=fingerprint'.sub('{' + 'component_id' + '}', component_id.to_s)

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
	  '200' => 'VAPI::VapiMetadataPrivilegeComponentFingerprintResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataPrivilegeComponentApi#fingerprint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves privilege information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the privilege information about the component element and its fingerprint. It contains information about all the package elements that belong to this component element.
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataPrivilegeComponentResult|VapiStdErrorsNotFoundError|]
    def get(component_id, opts = {})
      data, _status_code, _headers = get_with_http_info(component_id, opts)
      data
    end

    # Retrieves privilege information about the component element corresponding to {@param.name componentId}. &lt;p&gt; The {@link ComponentData} contains the privilege information about the component element and its fingerprint. It contains information about all the package elements that belong to this component element.
    # @api private
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataPrivilegeComponentResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataPrivilegeComponentApi.get ...'
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling MetadataPrivilegeComponentApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/privilege/component/id:{component_id}'.sub('{' + 'component_id' + '}', component_id.to_s)

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
	  '200' => 'VAPI::VapiMetadataPrivilegeComponentResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataPrivilegeComponentApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers for the component elements that have privilege information.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataPrivilegeComponentListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers for the component elements that have privilege information.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataPrivilegeComponentListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataPrivilegeComponentApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/privilege/component'

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
	  '200' => 'VAPI::VapiMetadataPrivilegeComponentListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataPrivilegeComponentApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
