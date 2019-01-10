=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class ClusterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves information about the cluster corresponding to cluster.
    # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [VcenterClusterResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(cluster, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, opts)
      data
    end

    # Retrieves information about the cluster corresponding to cluster.
    # @api private
    # @param cluster Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterClusterResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling ClusterApi.get"
      end
      # resource path
      local_var_path = '/vcenter/cluster/{cluster}'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterClusterResult',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_clusters Identifiers of clusters that can match the filter. If unset or empty, clusters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :filter_names Names that clusters must have to match the filter (see Cluster.Info.name). If unset or empty, clusters with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @return [VcenterClusterListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_clusters Identifiers of clusters that can match the filter. If unset or empty, clusters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Array<String>] :filter_names Names that clusters must have to match the filter (see Cluster.Info.name). If unset or empty, clusters with any name match the filter.
    # @option opts [Array<String>] :filter_folders Folders that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @return [Array<(VcenterClusterListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterApi.list ...'
      end
      # resource path
      local_var_path = '/vcenter/cluster'

      # query parameters
      query_params = {}
      query_params[:'filter.clusters'] = @api_client.build_collection_param(opts[:'filter_clusters'], :multi) if !opts[:'filter_clusters'].nil?
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
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
	  '200' => 'VCenter::VcenterClusterListResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
