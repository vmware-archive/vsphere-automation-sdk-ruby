=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DatastoreDefaultPolicyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the identifier of the current default storage policy associated with the specified datastore.
    # @param datastore Identifier of the datastore for which the default policy is requested. The parameter must be an identifier for the resource type: Datastore.
    # @param [Hash] opts the optional parameters
    # @return [VcenterDatastoreDefaultPolicyResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(datastore, opts = {})
      data, _status_code, _headers = get_with_http_info(datastore, opts)
      data
    end

    # Returns the identifier of the current default storage policy associated with the specified datastore.
    # @api private
    # @param datastore Identifier of the datastore for which the default policy is requested. The parameter must be an identifier for the resource type: Datastore.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDatastoreDefaultPolicyResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(datastore, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatastoreDefaultPolicyApi.get ...'
      end
      # verify the required parameter 'datastore' is set
      if @api_client.config.client_side_validation && datastore.nil?
        fail ArgumentError, "Missing the required parameter 'datastore' when calling DatastoreDefaultPolicyApi.get"
      end
      # resource path
      local_var_path = '/vcenter/datastore/{datastore}/default-policy'.sub('{' + 'datastore' + '}', datastore.to_s)

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
	  '200' => 'VCenter::VcenterDatastoreDefaultPolicyResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatastoreDefaultPolicyApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
