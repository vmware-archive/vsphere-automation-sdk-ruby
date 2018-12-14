=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataMetamodelComponentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.metamodel.Component#get}.
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelComponentFingerprintResult|VapiStdErrorsNotFoundError|]
    def fingerprint(component_id, opts = {})
      data, _status_code, _headers = fingerprint_with_http_info(component_id, opts)
      data
    end

    # Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to {@param.name componentId}. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.metamodel.Component#get}.
    # @api private
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelComponentFingerprintResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def fingerprint_with_http_info(component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelComponentApi.fingerprint ...'
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling MetadataMetamodelComponentApi.fingerprint"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/component/id:{component_id}?~action=fingerprint'.sub('{' + 'component_id' + '}', component_id.to_s)

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
	  '200' => 'VAPI::VapiMetadataMetamodelComponentFingerprintResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelComponentApi#fingerprint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves metamodel information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the metamodel information about the component and it's fingerprint. It contains information about all the package elements that are contained in this component element.
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelComponentResult|VapiStdErrorsNotFoundError|]
    def get(component_id, opts = {})
      data, _status_code, _headers = get_with_http_info(component_id, opts)
      data
    end

    # Retrieves metamodel information about the component element corresponding to {@param.name componentId}. &lt;p&gt; The {@link ComponentData} contains the metamodel information about the component and it&#39;s fingerprint. It contains information about all the package elements that are contained in this component element.
    # @api private
    # @param component_id Identifier of the component element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelComponentResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelComponentApi.get ...'
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling MetadataMetamodelComponentApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/component/id:{component_id}'.sub('{' + 'component_id' + '}', component_id.to_s)

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
	  '200' => 'VAPI::VapiMetadataMetamodelComponentResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelComponentApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers for the component elements that are registered with the infrastructure.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelComponentListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers for the component elements that are registered with the infrastructure.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelComponentListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelComponentApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/component'

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
	  '200' => 'VAPI::VapiMetadataMetamodelComponentListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelComponentApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
