# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespaceManagementSupportBundleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes' bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response's Content-Disposition header. 
    # @param cluster Identifier of cluster for which the Namespaces-related support bundle should be generated. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [VcenterNamespaceManagementSupportBundleLocation|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def create(cluster, opts = {})
      data, _status_code, _headers = create_with_http_info(cluster, opts)
      data
    end

    # Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes&#39; bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response&#39;s Content-Disposition header. 
    # @api private
    # @param cluster Identifier of cluster for which the Namespaces-related support bundle should be generated. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNamespaceManagementSupportBundleLocation|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementSupportBundleApi.create ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespaceManagementSupportBundleApi.create"
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/clusters/{cluster}/support-bundle'.sub('{' + 'cluster' + '}', cluster.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '201' => 'VCenter::VcenterNamespaceManagementSupportBundleLocation',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementSupportBundleApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
