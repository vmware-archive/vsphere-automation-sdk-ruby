=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataMetamodelResourceModelApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. <p> The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.
    # @param resource_id Identifier of the resource type.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelResourceModelListResult|VapiStdErrorsNotFoundError|]
    def list(resource_id, opts = {})
      data, _status_code, _headers = list_with_http_info(resource_id, opts)
      data
    end

    # Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. &lt;p&gt; The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.
    # @api private
    # @param resource_id Identifier of the resource type.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelResourceModelListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelResourceModelApi.list ...'
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling MetadataMetamodelResourceModelApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/resource/model'

      # query parameters
      query_params = {}
      query_params[:'resource_id'] = resource_id

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
	  '200' => 'VAPI::VapiMetadataMetamodelResourceModelListResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelResourceModelApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
