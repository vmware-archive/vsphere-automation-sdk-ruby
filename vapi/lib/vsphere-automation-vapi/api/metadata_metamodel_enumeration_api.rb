=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataMetamodelEnumerationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. <p> The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
    # @param enumeration_id Identifier of the enumeration element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelEnumerationResult|VapiStdErrorsNotFoundError|]
    def get(enumeration_id, opts = {})
      data, _status_code, _headers = get_with_http_info(enumeration_id, opts)
      data
    end

    # Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. &lt;p&gt; The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
    # @api private
    # @param enumeration_id Identifier of the enumeration element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelEnumerationResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(enumeration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelEnumerationApi.get ...'
      end
      # verify the required parameter 'enumeration_id' is set
      if @api_client.config.client_side_validation && enumeration_id.nil?
        fail ArgumentError, "Missing the required parameter 'enumeration_id' when calling MetadataMetamodelEnumerationApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/enumeration/id:{enumeration_id}'.sub('{' + 'enumeration_id' + '}', enumeration_id.to_s)

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
	  '200' => 'VAPI::VapiMetadataMetamodelEnumerationResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelEnumerationApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelEnumerationListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelEnumerationListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelEnumerationApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/enumeration'

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
	  '200' => 'VAPI::VapiMetadataMetamodelEnumerationListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelEnumerationApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
