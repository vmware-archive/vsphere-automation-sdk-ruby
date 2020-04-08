# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmDiscoveryAssociatedProductsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Associates a VMware product with vCenter Server manually. The product must be taken from the product catalog API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterLcmDiscoveryAssociatedProductsCreateSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Associates a VMware product with vCenter Server manually. The product must be taken from the product catalog API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterLcmDiscoveryAssociatedProductsCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmDiscoveryAssociatedProductsApi.create ...'
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/discovery/associated-products'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '201' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgument',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmDiscoveryAssociatedProductsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes or dissociates a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be deleted or dissociated. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param product An id of the product to be removed. The parameter must be an identifier for the resource type: vcenter.lcm.product.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def delete(product, opts = {})
      delete_with_http_info(product, opts)
      nil
    end

    # Deletes or dissociates a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be deleted or dissociated. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param product An id of the product to be removed. The parameter must be an identifier for the resource type: vcenter.lcm.product.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(product, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmDiscoveryAssociatedProductsApi.delete ...'
      end
      # verify the required parameter 'product' is set
      if @api_client.config.client_side_validation && product.nil?
        fail ArgumentError, "Missing the required parameter 'product' when calling LcmDiscoveryAssociatedProductsApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/discovery/associated-products/{product}'.sub('{' + 'product' + '}', product.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmDiscoveryAssociatedProductsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the detailed information of a product associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param product An identifier of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product.
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmDiscoveryProduct|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(product, opts = {})
      data, _status_code, _headers = get_with_http_info(product, opts)
      data
    end

    # Returns the detailed information of a product associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param product An identifier of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmDiscoveryProduct|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(product, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmDiscoveryAssociatedProductsApi.get ...'
      end
      # verify the required parameter 'product' is set
      if @api_client.config.client_side_validation && product.nil?
        fail ArgumentError, "Missing the required parameter 'product' when calling LcmDiscoveryAssociatedProductsApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/discovery/associated-products/{product}'.sub('{' + 'product' + '}', product.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterLcmDiscoveryProduct',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmDiscoveryAssociatedProductsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves a list of all associated VMware product deployments with vCenter Server in the environment. The list contains both product deployments discovered automatically and deployments registered manually through the API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterLcmDiscoveryProduct>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Retrieves a list of all associated VMware product deployments with vCenter Server in the environment. The list contains both product deployments discovered automatically and deployments registered manually through the API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterLcmDiscoveryProduct>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmDiscoveryAssociatedProductsApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/discovery/associated-products'

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::Array<VcenterLcmDiscoveryProduct>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmDiscoveryAssociatedProductsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modifies a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be modified. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param product An id of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterLcmDiscoveryAssociatedProductsUpdateSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def update(product, opts = {})
      update_with_http_info(product, opts)
      nil
    end

    # Modifies a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be modified. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param product An id of the product to be modified. The parameter must be an identifier for the resource type: vcenter.lcm.product.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterLcmDiscoveryAssociatedProductsUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(product, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmDiscoveryAssociatedProductsApi.update ...'
      end
      # verify the required parameter 'product' is set
      if @api_client.config.client_side_validation && product.nil?
        fail ArgumentError, "Missing the required parameter 'product' when calling LcmDiscoveryAssociatedProductsApi.update"
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/discovery/associated-products/{product}'.sub('{' + 'product' + '}', product.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmDiscoveryAssociatedProductsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
