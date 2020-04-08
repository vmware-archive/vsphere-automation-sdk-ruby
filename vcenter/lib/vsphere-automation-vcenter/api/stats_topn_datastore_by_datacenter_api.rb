# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class StatsTopnDatastoreByDatacenterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve Top N datastores in a datacenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param counter name of the performance counter which could be disk Usage (GB), disk capacity (GB), disk provisioned (GB) etc.
    # @param top indicates how many top values to return.
    # @param datacenter datacenter that datastores should belong to.
    # @param interval desired roll-up duration in seconds.
    # @param start StartTime of the time window for topN query.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :_end 
    # @option opts [String] :verbosity 
    # @return [VcenterStatsTopnDatastoreByDatacenterResp|]
    def get(counter, top, datacenter, interval, start, opts = {})
      data, _status_code, _headers = get_with_http_info(counter, top, datacenter, interval, start, opts)
      data
    end

    # Retrieve Top N datastores in a datacenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param counter name of the performance counter which could be disk Usage (GB), disk capacity (GB), disk provisioned (GB) etc.
    # @param top indicates how many top values to return.
    # @param datacenter datacenter that datastores should belong to.
    # @param interval desired roll-up duration in seconds.
    # @param start StartTime of the time window for topN query.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :_end 
    # @option opts [String] :verbosity 
    # @return [Array<(VcenterStatsTopnDatastoreByDatacenterResp|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(counter, top, datacenter, interval, start, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatsTopnDatastoreByDatacenterApi.get ...'
      end
      # verify the required parameter 'counter' is set
      if @api_client.config.client_side_validation && counter.nil?
        fail ArgumentError, "Missing the required parameter 'counter' when calling StatsTopnDatastoreByDatacenterApi.get"
      end
      # verify the required parameter 'top' is set
      if @api_client.config.client_side_validation && top.nil?
        fail ArgumentError, "Missing the required parameter 'top' when calling StatsTopnDatastoreByDatacenterApi.get"
      end
      # verify the required parameter 'datacenter' is set
      if @api_client.config.client_side_validation && datacenter.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter' when calling StatsTopnDatastoreByDatacenterApi.get"
      end
      # verify the required parameter 'interval' is set
      if @api_client.config.client_side_validation && interval.nil?
        fail ArgumentError, "Missing the required parameter 'interval' when calling StatsTopnDatastoreByDatacenterApi.get"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling StatsTopnDatastoreByDatacenterApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/stats/topn/datastore/by-datacenter'

      # query parameters
      query_params = {}
      query_params[:'counter'] = counter
      query_params[:'top'] = top
      query_params[:'datacenter'] = datacenter
      query_params[:'interval'] = interval
      query_params[:'start'] = start
      query_params[:'end'] = opts[:'_end'] if !opts[:'_end'].nil?
      query_params[:'verbosity'] = opts[:'verbosity'] if !opts[:'verbosity'].nil?

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
	  '200' => 'VCenter::VcenterStatsTopnDatastoreByDatacenterResp',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatsTopnDatastoreByDatacenterApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
