=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class HostApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Connect to the host corresponding to host previously added to the vCenter server.
    # @param host Identifier of the host to be reconnected. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def connect(host, opts = {})
      connect_with_http_info(host, opts)
      nil
    end

    # Connect to the host corresponding to host previously added to the vCenter server.
    # @api private
    # @param host Identifier of the host to be reconnected. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def connect_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostApi.connect ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostApi.connect"
      end
      # resource path
      local_var_path = '/vcenter/host/{host}/connect'.sub('{' + 'host' + '}', host.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#connect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.
    # @param vcenter_host_create 
    # @param [Hash] opts the optional parameters
    # @return [VcenterHostCreateResult|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vcenter_host_create, opts = {})
      data, _status_code, _headers = create_with_http_info(vcenter_host_create, opts)
      data
    end

    # Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.
    # @api private
    # @param vcenter_host_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterHostCreateResult|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vcenter_host_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostApi.create ...'
      end
      # verify the required parameter 'vcenter_host_create' is set
      if @api_client.config.client_side_validation && vcenter_host_create.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_host_create' when calling HostApi.create"
      end
      # resource path
      local_var_path = '/vcenter/host'

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
      post_body = @api_client.object_to_http_body(vcenter_host_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterHostCreateResult',
	  '400' => 'VCenter::VapiStdErrorsUnsupportedError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove a standalone host from the vCenter Server.
    # @param host Identifier of the host to be deleted. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInUseError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(host, opts = {})
      delete_with_http_info(host, opts)
      nil
    end

    # Remove a standalone host from the vCenter Server.
    # @api private
    # @param host Identifier of the host to be deleted. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInUseError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostApi.delete ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostApi.delete"
      end
      # resource path
      local_var_path = '/vcenter/host/{host}'.sub('{' + 'host' + '}', host.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disconnect the host corresponding to host from the vCenter server
    # @param host Identifier of the host to be disconnected. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def disconnect(host, opts = {})
      disconnect_with_http_info(host, opts)
      nil
    end

    # Disconnect the host corresponding to host from the vCenter server
    # @api private
    # @param host Identifier of the host to be disconnected. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def disconnect_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostApi.disconnect ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostApi.disconnect"
      end
      # resource path
      local_var_path = '/vcenter/host/{host}/disconnect'.sub('{' + 'host' + '}', host.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#disconnect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_hosts Identifiers of hosts that can match the filter. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_names Names that hosts must have to match the filter (see Host.Summary.name). If unset or empty, hosts with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [BOOLEAN] :filter_standalone If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter. If unset Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and Host.FilterSpec.clusters os not empty, no hosts will match the filter.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this field is not empty and Host.FilterSpec.standalone is true, no hosts will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :filter_connection_states Connection states that a host must be in to match the filter (see Host.Summary.connection-state. If unset or empty, hosts in any connection state match the filter.
    # @return [VcenterHostListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_hosts Identifiers of hosts that can match the filter. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_names Names that hosts must have to match the filter (see Host.Summary.name). If unset or empty, hosts with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [BOOLEAN] :filter_standalone If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter. If unset Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and Host.FilterSpec.clusters os not empty, no hosts will match the filter.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this field is not empty and Host.FilterSpec.standalone is true, no hosts will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :filter_connection_states Connection states that a host must be in to match the filter (see Host.Summary.connection-state. If unset or empty, hosts in any connection state match the filter.
    # @return [Array<(VcenterHostListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_connection_states'] && !opts[:'filter_connection_states'].all? { |item| ['CONNECTED', 'DISCONNECTED', 'NOT_RESPONDING'].include?(item) }
        fail ArgumentError, 'invalid value for "filter_connection_states", must include one of CONNECTED, DISCONNECTED, NOT_RESPONDING'
      end
      # resource path
      local_var_path = '/vcenter/host'

      # query parameters
      query_params = {}
      query_params[:'filter.hosts'] = @api_client.build_collection_param(opts[:'filter_hosts'], :multi) if !opts[:'filter_hosts'].nil?
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
      query_params[:'filter.folders'] = @api_client.build_collection_param(opts[:'filter_folders'], :multi) if !opts[:'filter_folders'].nil?
      query_params[:'filter.datacenters'] = @api_client.build_collection_param(opts[:'filter_datacenters'], :multi) if !opts[:'filter_datacenters'].nil?
      query_params[:'filter.standalone'] = opts[:'filter_standalone'] if !opts[:'filter_standalone'].nil?
      query_params[:'filter.clusters'] = @api_client.build_collection_param(opts[:'filter_clusters'], :multi) if !opts[:'filter_clusters'].nil?
      query_params[:'filter.connection_states'] = @api_client.build_collection_param(opts[:'filter_connection_states'], :multi) if !opts[:'filter_connection_states'].nil?

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
	  '200' => 'VCenter::VcenterHostListResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
