=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DatacenterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new datacenter in the vCenter inventory
    # @param vcenter_datacenter_create 
    # @param [Hash] opts the optional parameters
    # @return [VcenterDatacenterCreateResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vcenter_datacenter_create, opts = {})
      data, _status_code, _headers = create_with_http_info(vcenter_datacenter_create, opts)
      data
    end

    # Create a new datacenter in the vCenter inventory
    # @api private
    # @param vcenter_datacenter_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDatacenterCreateResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vcenter_datacenter_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatacenterApi.create ...'
      end
      # verify the required parameter 'vcenter_datacenter_create' is set
      if @api_client.config.client_side_validation && vcenter_datacenter_create.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_datacenter_create' when calling DatacenterApi.create"
      end
      # resource path
      local_var_path = '/vcenter/datacenter'

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
      post_body = @api_client.object_to_http_body(vcenter_datacenter_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterDatacenterCreateResult',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatacenterApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an empty datacenter from the vCenter Server
    # @param datacenter Identifier of the datacenter to be deleted. The parameter must be an identifier for the resource type: Datacenter.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, delete the datacenter even if it is not empty. If unset a ResourceInUse error will be reported if the datacenter is not empty. This is the equivalent of passing the value false.
    # @return [|VapiStdErrorsResourceInUseError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(datacenter, opts = {})
      delete_with_http_info(datacenter, opts)
      nil
    end

    # Delete an empty datacenter from the vCenter Server
    # @api private
    # @param datacenter Identifier of the datacenter to be deleted. The parameter must be an identifier for the resource type: Datacenter.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, delete the datacenter even if it is not empty. If unset a ResourceInUse error will be reported if the datacenter is not empty. This is the equivalent of passing the value false.
    # @return [Array<(|VapiStdErrorsResourceInUseError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(datacenter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatacenterApi.delete ...'
      end
      # verify the required parameter 'datacenter' is set
      if @api_client.config.client_side_validation && datacenter.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter' when calling DatacenterApi.delete"
      end
      # resource path
      local_var_path = '/vcenter/datacenter/{datacenter}'.sub('{' + 'datacenter' + '}', datacenter.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatacenterApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves information about the datacenter corresponding to datacenter.
    # @param datacenter Identifier of the datacenter. The parameter must be an identifier for the resource type: Datacenter.
    # @param [Hash] opts the optional parameters
    # @return [VcenterDatacenterResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(datacenter, opts = {})
      data, _status_code, _headers = get_with_http_info(datacenter, opts)
      data
    end

    # Retrieves information about the datacenter corresponding to datacenter.
    # @api private
    # @param datacenter Identifier of the datacenter. The parameter must be an identifier for the resource type: Datacenter.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDatacenterResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(datacenter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatacenterApi.get ...'
      end
      # verify the required parameter 'datacenter' is set
      if @api_client.config.client_side_validation && datacenter.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter' when calling DatacenterApi.get"
      end
      # resource path
      local_var_path = '/vcenter/datacenter/{datacenter}'.sub('{' + 'datacenter' + '}', datacenter.to_s)

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
	  '200' => 'VCenter::VcenterDatacenterResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatacenterApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the Datacenter.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_datacenters Identifiers of datacenters that can match the filter. If unset or empty, datacenters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [Array<String>] :filter_names Names that datacenters must have to match the filter (see Datacenter.Info.name). If unset or empty, datacenters with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the datacenters for the datacenter to match the filter. If unset or empty, datacenters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @return [VcenterDatacenterListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the Datacenter.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_datacenters Identifiers of datacenters that can match the filter. If unset or empty, datacenters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [Array<String>] :filter_names Names that datacenters must have to match the filter (see Datacenter.Info.name). If unset or empty, datacenters with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the datacenters for the datacenter to match the filter. If unset or empty, datacenters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @return [Array<(VcenterDatacenterListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatacenterApi.list ...'
      end
      # resource path
      local_var_path = '/vcenter/datacenter'

      # query parameters
      query_params = {}
      query_params[:'filter.datacenters'] = @api_client.build_collection_param(opts[:'filter_datacenters'], :multi) if !opts[:'filter_datacenters'].nil?
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
      query_params[:'filter.folders'] = @api_client.build_collection_param(opts[:'filter_folders'], :multi) if !opts[:'filter_folders'].nil?

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
	  '200' => 'VCenter::VcenterDatacenterListResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatacenterApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
