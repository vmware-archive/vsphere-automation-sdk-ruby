# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespaceManagementStatsTimeSeriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gather statistical values for a cluster, namespace, or pod.
    # @param obj_type Type of statistics object that this request is operating on.
    # @param start UNIX timestamp value indicating when the requested series of statistical samples should begin. https://en.wikipedia.org/wiki/Unix_time
    # @param _end UNIX timestamp value indicating when the requested series of statistical samples should end. https://en.wikipedia.org/wiki/Unix_time
    # @param [Hash] opts the optional parameters
    # @option opts [String] :pod 
    # @option opts [String] :namespace Namespace name for queries for a namespace. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is NAMESPACE. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespaces.Instance. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespaces.Instance.
    # @option opts [String] :cluster Cluster identifier for queries for a cluster. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is CLUSTER. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource.
    # @return [Array<VcenterNamespaceManagementStatsTimeSeriesTimeSeries>|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(obj_type, start, _end, opts = {})
      data, _status_code, _headers = get_with_http_info(obj_type, start, _end, opts)
      data
    end

    # Gather statistical values for a cluster, namespace, or pod.
    # @api private
    # @param obj_type Type of statistics object that this request is operating on.
    # @param start UNIX timestamp value indicating when the requested series of statistical samples should begin. https://en.wikipedia.org/wiki/Unix_time
    # @param _end UNIX timestamp value indicating when the requested series of statistical samples should end. https://en.wikipedia.org/wiki/Unix_time
    # @param [Hash] opts the optional parameters
    # @option opts [String] :pod 
    # @option opts [String] :namespace Namespace name for queries for a namespace. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is NAMESPACE. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespaces.Instance. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespaces.Instance.
    # @option opts [String] :cluster Cluster identifier for queries for a cluster. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is CLUSTER. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource.
    # @return [Array<(Array<VcenterNamespaceManagementStatsTimeSeriesTimeSeries>|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(obj_type, start, _end, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementStatsTimeSeriesApi.get ...'
      end
      # verify the required parameter 'obj_type' is set
      if @api_client.config.client_side_validation && obj_type.nil?
        fail ArgumentError, "Missing the required parameter 'obj_type' when calling NamespaceManagementStatsTimeSeriesApi.get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['CLUSTER', 'NAMESPACE', 'POD'].include?(obj_type)
        fail ArgumentError, "invalid value for 'obj_type', must be one of CLUSTER, NAMESPACE, POD"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling NamespaceManagementStatsTimeSeriesApi.get"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling NamespaceManagementStatsTimeSeriesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/stats/time-series'

      # query parameters
      query_params = {}
      query_params[:'obj_type'] = obj_type
      query_params[:'start'] = start
      query_params[:'end'] = _end
      query_params[:'pod'] = opts[:'pod'] if !opts[:'pod'].nil?
      query_params[:'namespace'] = opts[:'namespace'] if !opts[:'namespace'].nil?
      query_params[:'cluster'] = opts[:'cluster'] if !opts[:'cluster'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::Array<VcenterNamespaceManagementStatsTimeSeriesTimeSeries>',
	  '400' => 'VCenter::VapiStdErrorsUnsupported',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementStatsTimeSeriesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
