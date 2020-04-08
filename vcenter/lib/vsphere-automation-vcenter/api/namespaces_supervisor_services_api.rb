# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespacesSupervisorServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update the desired state for a Supervisor Service. The desired state is stored and updated in the vCenter Namespaces Supervisor Kubernetes layer. It may also be updated directly within Kubernetes, where the state is authoratively kept. Desired state is a combination of the enabled and version fields. The desired state is set and will be asynchronously remediated.
    # @param cluster Identifier for the cluster on which to enable the service. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param service_id ID of the Service that is being changed. The parameter must be an identifier for the resource type: vcenter.namespaces.SupervisorService.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesSupervisorServicesSetSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def set(cluster, service_id, opts = {})
      set_with_http_info(cluster, service_id, opts)
      nil
    end

    # Update the desired state for a Supervisor Service. The desired state is stored and updated in the vCenter Namespaces Supervisor Kubernetes layer. It may also be updated directly within Kubernetes, where the state is authoratively kept. Desired state is a combination of the enabled and version fields. The desired state is set and will be asynchronously remediated.
    # @api private
    # @param cluster Identifier for the cluster on which to enable the service. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param service_id ID of the Service that is being changed. The parameter must be an identifier for the resource type: vcenter.namespaces.SupervisorService.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesSupervisorServicesSetSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(cluster, service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesSupervisorServicesApi.set ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespacesSupervisorServicesApi.set"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling NamespacesSupervisorServicesApi.set"
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/clusters/{cluster}/supervisorservices/{service_ID}'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'service_ID' + '}', service_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesSupervisorServicesApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
