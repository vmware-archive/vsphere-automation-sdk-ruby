# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TrustSubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a new subscription record into database. There are two possible situations for add. A. In the first case, the client is only interested in one VCTrust object and the VCTrust object has to exist in database. To make such a subscription, the client need to tell database which VCTrust object he is interested in. The GUID (VCTrust Id) field stands for that specific VCTrust and need to be specified. In this way, the client will only receive notification from that specified object changes. There is no limit on how many subscription an endpoint can add. B. In the second case, the client makes a subscription without a specified VCTrust object, which means the client is interested in every VCTrust object. Whenever the database changes (e.g add a new VCTrust, delete VCTrust, update...), the client gets notified. All the records in the database will not be deleted automatically. The only way to delete a record is to invoke delete API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustSubscriptionsAddResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|]
    def add(request_body, opts = {})
      data, _status_code, _headers = add_with_http_info(request_body, opts)
      data
    end

    # Add a new subscription record into database. There are two possible situations for add. A. In the first case, the client is only interested in one VCTrust object and the VCTrust object has to exist in database. To make such a subscription, the client need to tell database which VCTrust object he is interested in. The GUID (VCTrust Id) field stands for that specific VCTrust and need to be specified. In this way, the client will only receive notification from that specified object changes. There is no limit on how many subscription an endpoint can add. B. In the second case, the client makes a subscription without a specified VCTrust object, which means the client is interested in every VCTrust object. Whenever the database changes (e.g add a new VCTrust, delete VCTrust, update...), the client gets notified. All the records in the database will not be deleted automatically. The only way to delete a record is to invoke delete API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustSubscriptionsAddResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def add_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustSubscriptionsApi.add ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TrustSubscriptionsApi.add"
      end
      # resource path
      local_var_path = '/rest/vcenter/trust/subscriptions?action=add'

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
	  '200' => 'VCenter::VcenterTrustSubscriptionsAddResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustSubscriptionsApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # If the client is no longer interested in the subscription, it can delete it by invoking this API and specify the subscription id. The subscription id is returned to the endpoint when it was created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param subscription The subscription id indicates which subscription to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(subscription, opts = {})
      delete_with_http_info(subscription, opts)
      nil
    end

    # If the client is no longer interested in the subscription, it can delete it by invoking this API and specify the subscription id. The subscription id is returned to the endpoint when it was created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param subscription The subscription id indicates which subscription to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustSubscriptionsApi.delete ...'
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling TrustSubscriptionsApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/trust/subscriptions/{subscription}?action=delete'.sub('{' + 'subscription' + '}', subscription.to_s)

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
        @api_client.config.logger.debug "API called: TrustSubscriptionsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API is used by client to request for detailed information of a specific susbcription. It is queried using subscription id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param subscription 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustSubscriptionsInfoResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def info(subscription, opts = {})
      data, _status_code, _headers = info_with_http_info(subscription, opts)
      data
    end

    # This API is used by client to request for detailed information of a specific susbcription. It is queried using subscription id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param subscription 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustSubscriptionsInfoResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def info_with_http_info(subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustSubscriptionsApi.info ...'
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling TrustSubscriptionsApi.info"
      end
      # resource path
      local_var_path = '/rest/vcenter/trust/subscriptions/{subscription}?action=info'.sub('{' + 'subscription' + '}', subscription.to_s)

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
	  '200' => 'VCenter::VcenterTrustSubscriptionsInfoResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustSubscriptionsApi#info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all the subscriptions that a client have. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustSubscriptionsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List all the subscriptions that a client have. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustSubscriptionsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustSubscriptionsApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/trust/subscriptions?action=list'

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
	  '200' => 'VCenter::VcenterTrustSubscriptionsListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustSubscriptionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This API is used by client to renew a subscription by extend the expiration time of its existing subscriptions. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param subscription_id To indicate which subscription to renew
    # @param [Hash] opts the optional parameters
    # @return [VcenterTrustSubscriptionsUpdateResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def update(subscription_id, opts = {})
      data, _status_code, _headers = update_with_http_info(subscription_id, opts)
      data
    end

    # This API is used by client to renew a subscription by extend the expiration time of its existing subscriptions. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param subscription_id To indicate which subscription to renew
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTrustSubscriptionsUpdateResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def update_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrustSubscriptionsApi.update ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling TrustSubscriptionsApi.update"
      end
      # resource path
      local_var_path = '/rest/vcenter/trust/subscriptions/{subscription_id}?action=update'.sub('{' + 'subscription_id' + '}', subscription_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterTrustSubscriptionsUpdateResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustSubscriptionsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
