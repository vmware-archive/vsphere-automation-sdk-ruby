=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class LocalAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new local user account.
    # @param username User login name
    # @param appliance_local_accounts_create 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def create(username, appliance_local_accounts_create, opts = {})
      create_with_http_info(username, appliance_local_accounts_create, opts)
      nil
    end

    # Create a new local user account.
    # @api private
    # @param username User login name
    # @param appliance_local_accounts_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(username, appliance_local_accounts_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalAccountsApi.create ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling LocalAccountsApi.create"
      end
      # verify the required parameter 'appliance_local_accounts_create' is set
      if @api_client.config.client_side_validation && appliance_local_accounts_create.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_local_accounts_create' when calling LocalAccountsApi.create"
      end
      # resource path
      local_var_path = '/appliance/local-accounts/{username}'.sub('{' + 'username' + '}', username.to_s)

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
      post_body = @api_client.object_to_http_body(appliance_local_accounts_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalAccountsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a local user account.
    # @param username User login name
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def delete(username, opts = {})
      delete_with_http_info(username, opts)
      nil
    end

    # Delete a local user account.
    # @api private
    # @param username User login name
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(username, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalAccountsApi.delete ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling LocalAccountsApi.delete"
      end
      # resource path
      local_var_path = '/appliance/local-accounts/{username}'.sub('{' + 'username' + '}', username.to_s)

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
        @api_client.config.logger.debug "API called: LocalAccountsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the local user account information.
    # @param username User login name
    # @param [Hash] opts the optional parameters
    # @return [ApplianceLocalAccountsResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(username, opts = {})
      data, _status_code, _headers = get_with_http_info(username, opts)
      data
    end

    # Get the local user account information.
    # @api private
    # @param username User login name
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceLocalAccountsResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(username, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalAccountsApi.get ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling LocalAccountsApi.get"
      end
      # resource path
      local_var_path = '/appliance/local-accounts/{username}'.sub('{' + 'username' + '}', username.to_s)

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
	  '200' => 'Appliance::ApplianceLocalAccountsResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '404' => 'Appliance::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalAccountsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of the local user accounts.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceLocalAccountsListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get a list of the local user accounts.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceLocalAccountsListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalAccountsApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/local-accounts'

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
	  '200' => 'Appliance::ApplianceLocalAccountsListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalAccountsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set local user account properties.
    # @param username User login name
    # @param appliance_local_accounts_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def set(username, appliance_local_accounts_set, opts = {})
      set_with_http_info(username, appliance_local_accounts_set, opts)
      nil
    end

    # Set local user account properties.
    # @api private
    # @param username User login name
    # @param appliance_local_accounts_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(username, appliance_local_accounts_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalAccountsApi.set ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling LocalAccountsApi.set"
      end
      # verify the required parameter 'appliance_local_accounts_set' is set
      if @api_client.config.client_side_validation && appliance_local_accounts_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_local_accounts_set' when calling LocalAccountsApi.set"
      end
      # resource path
      local_var_path = '/appliance/local-accounts/{username}'.sub('{' + 'username' + '}', username.to_s)

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
      post_body = @api_client.object_to_http_body(appliance_local_accounts_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalAccountsApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update selected fields in local user account properties.
    # @param username User login name
    # @param appliance_local_accounts_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil]
    def update(username, appliance_local_accounts_update, opts = {})
      update_with_http_info(username, appliance_local_accounts_update, opts)
      nil
    end

    # Update selected fields in local user account properties.
    # @api private
    # @param username User login name
    # @param appliance_local_accounts_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(username, appliance_local_accounts_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalAccountsApi.update ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling LocalAccountsApi.update"
      end
      # verify the required parameter 'appliance_local_accounts_update' is set
      if @api_client.config.client_side_validation && appliance_local_accounts_update.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_local_accounts_update' when calling LocalAccountsApi.update"
      end
      # resource path
      local_var_path = '/appliance/local-accounts/{username}'.sub('{' + 'username' + '}', username.to_s)

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
      post_body = @api_client.object_to_http_body(appliance_local_accounts_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalAccountsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
