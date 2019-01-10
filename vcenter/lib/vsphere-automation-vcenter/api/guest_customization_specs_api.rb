=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class GuestCustomizationSpecsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_names Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec.
    # @option opts [String] :filter_os_type The CustomizationSpecs.OsType enumerated type defines the types of guest operating systems for which guest customization is supported.
    # @return [VcenterGuestCustomizationSpecsListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_names Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec.
    # @option opts [String] :filter_os_type The CustomizationSpecs.OsType enumerated type defines the types of guest operating systems for which guest customization is supported.
    # @return [Array<(VcenterGuestCustomizationSpecsListResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GuestCustomizationSpecsApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_os_type'] && !['WINDOWS', 'LINUX'].include?(opts[:'filter_os_type'])
        fail ArgumentError, 'invalid value for "filter_os_type", must be one of WINDOWS, LINUX'
      end
      # resource path
      local_var_path = '/vcenter/guest/customization-specs'

      # query parameters
      query_params = {}
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
      query_params[:'filter.OS_type'] = opts[:'filter_os_type'] if !opts[:'filter_os_type'].nil?

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
	  '200' => 'VCenter::VcenterGuestCustomizationSpecsListResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GuestCustomizationSpecsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
