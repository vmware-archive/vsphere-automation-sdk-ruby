=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class NetworkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the Network.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_networks Identifiers of networks that can match the filter. If unset or empty, networks with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Network. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Network.
    # @option opts [Array<String>] :filter_names Names that networks must have to match the filter (see Network.Summary.name). If unset or empty, networks with any name match the filter.
    # @option opts [Array<String>] :filter_types Types that networks must have to match the filter (see Network.Summary.type). If unset, networks with any type match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the network for the network to match the filter. If unset or empty, networks in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the network for the network to match the filter. If unset or empty, networks in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @return [VcenterNetworkListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the Network.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_networks Identifiers of networks that can match the filter. If unset or empty, networks with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Network. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Network.
    # @option opts [Array<String>] :filter_names Names that networks must have to match the filter (see Network.Summary.name). If unset or empty, networks with any name match the filter.
    # @option opts [Array<String>] :filter_types Types that networks must have to match the filter (see Network.Summary.type). If unset, networks with any type match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the network for the network to match the filter. If unset or empty, networks in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the network for the network to match the filter. If unset or empty, networks in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @return [Array<(VcenterNetworkListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_types'] && !opts[:'filter_types'].all? { |item| ['STANDARD_PORTGROUP', 'DISTRIBUTED_PORTGROUP', 'OPAQUE_NETWORK'].include?(item) }
        fail ArgumentError, 'invalid value for "filter_types", must include one of STANDARD_PORTGROUP, DISTRIBUTED_PORTGROUP, OPAQUE_NETWORK'
      end
      # resource path
      local_var_path = '/vcenter/network'

      # query parameters
      query_params = {}
      query_params[:'filter.networks'] = @api_client.build_collection_param(opts[:'filter_networks'], :multi) if !opts[:'filter_networks'].nil?
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
      query_params[:'filter.types'] = @api_client.build_collection_param(opts[:'filter_types'], :multi) if !opts[:'filter_types'].nil?
      query_params[:'filter.folders'] = @api_client.build_collection_param(opts[:'filter_folders'], :multi) if !opts[:'filter_folders'].nil?
      query_params[:'filter.datacenters'] = @api_client.build_collection_param(opts[:'filter_datacenters'], :multi) if !opts[:'filter_datacenters'].nil?

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
	  '200' => 'VCenter::VcenterNetworkListResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
