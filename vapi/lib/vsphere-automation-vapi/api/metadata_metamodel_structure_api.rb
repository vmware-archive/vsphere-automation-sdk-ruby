=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataMetamodelStructureApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves information about the structure element corresponding to {@param.name structureId}. <p> The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.
    # @param structure_id Identifier of the structure element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelStructureResult|VapiStdErrorsNotFoundError|]
    def get(structure_id, opts = {})
      data, _status_code, _headers = get_with_http_info(structure_id, opts)
      data
    end

    # Retrieves information about the structure element corresponding to {@param.name structureId}. &lt;p&gt; The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.
    # @api private
    # @param structure_id Identifier of the structure element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelStructureResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(structure_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelStructureApi.get ...'
      end
      # verify the required parameter 'structure_id' is set
      if @api_client.config.client_side_validation && structure_id.nil?
        fail ArgumentError, "Missing the required parameter 'structure_id' when calling MetadataMetamodelStructureApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/structure/id:{structure_id}'.sub('{' + 'structure_id' + '}', structure_id.to_s)

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
	  '200' => 'VAPI::VapiMetadataMetamodelStructureResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelStructureApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers for the structure elements that are contained in all the package elements and service elements.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelStructureListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers for the structure elements that are contained in all the package elements and service elements.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelStructureListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelStructureApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/structure'

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
	  '200' => 'VAPI::VapiMetadataMetamodelStructureListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelStructureApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
