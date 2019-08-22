# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class OvfLibraryItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a library item in content library from a virtual machine or virtual appliance. <p> This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. </p>
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterOvfLibraryItemCreateResult|VapiStdErrorsResourceBusyError|VapiStdErrorsNotFoundError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Creates a library item in content library from a virtual machine or virtual appliance. &lt;p&gt; This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. &lt;/p&gt;
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterOvfLibraryItemCreateResult|VapiStdErrorsResourceBusyError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OvfLibraryItemApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling OvfLibraryItemApi.create"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/ovf/library-item'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterOvfLibraryItemCreateResult',
	  '400' => 'VCenter::VapiStdErrorsResourceBusyError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OvfLibraryItemApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. <p> This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. </p>
    # @param ovf_library_item_id Identifier of the content library item containing the OVF package to be deployed.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterOvfLibraryItemDeployResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def deploy(ovf_library_item_id, request_body, opts = {})
      data, _status_code, _headers = deploy_with_http_info(ovf_library_item_id, request_body, opts)
      data
    end

    # Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. &lt;p&gt; This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. &lt;/p&gt;
    # @api private
    # @param ovf_library_item_id Identifier of the content library item containing the OVF package to be deployed.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterOvfLibraryItemDeployResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def deploy_with_http_info(ovf_library_item_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OvfLibraryItemApi.deploy ...'
      end
      # verify the required parameter 'ovf_library_item_id' is set
      if @api_client.config.client_side_validation && ovf_library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'ovf_library_item_id' when calling OvfLibraryItemApi.deploy"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling OvfLibraryItemApi.deploy"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action=deploy'.sub('{' + 'ovf_library_item_id' + '}', ovf_library_item_id.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterOvfLibraryItemDeployResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OvfLibraryItemApi#deploy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. <p> This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. </p>
    # @param ovf_library_item_id Identifier of the content library item containing the OVF package to query.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterOvfLibraryItemFilterResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsNotFoundError|]
    def filter(ovf_library_item_id, request_body, opts = {})
      data, _status_code, _headers = filter_with_http_info(ovf_library_item_id, request_body, opts)
      data
    end

    # Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. &lt;p&gt; This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. &lt;/p&gt;
    # @api private
    # @param ovf_library_item_id Identifier of the content library item containing the OVF package to query.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterOvfLibraryItemFilterResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def filter_with_http_info(ovf_library_item_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OvfLibraryItemApi.filter ...'
      end
      # verify the required parameter 'ovf_library_item_id' is set
      if @api_client.config.client_side_validation && ovf_library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'ovf_library_item_id' when calling OvfLibraryItemApi.filter"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling OvfLibraryItemApi.filter"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action=filter'.sub('{' + 'ovf_library_item_id' + '}', ovf_library_item_id.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterOvfLibraryItemFilterResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OvfLibraryItemApi#filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
