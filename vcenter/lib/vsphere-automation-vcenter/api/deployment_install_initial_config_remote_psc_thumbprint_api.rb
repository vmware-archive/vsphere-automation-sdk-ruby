=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentInstallInitialConfigRemotePscThumbprintApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets the SHA1 thumbprint of the remote PSC.
    # @param spec_address The IP address or DNS resolvable name of the remote PSC.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :spec_https_port The HTTPS port of the remote PSC.
    # @return [VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|]
    def get(spec_address, opts = {})
      data, _status_code, _headers = get_with_http_info(spec_address, opts)
      data
    end

    # Gets the SHA1 thumbprint of the remote PSC.
    # @api private
    # @param spec_address The IP address or DNS resolvable name of the remote PSC.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :spec_https_port The HTTPS port of the remote PSC.
    # @return [Array<(VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(spec_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentInstallInitialConfigRemotePscThumbprintApi.get ...'
      end
      # verify the required parameter 'spec_address' is set
      if @api_client.config.client_side_validation && spec_address.nil?
        fail ArgumentError, "Missing the required parameter 'spec_address' when calling DeploymentInstallInitialConfigRemotePscThumbprintApi.get"
      end
      # resource path
      local_var_path = '/vcenter/deployment/install/initial-config/remote-psc/thumbprint'

      # query parameters
      query_params = {}
      query_params[:'spec.address'] = spec_address
      query_params[:'spec.https_port'] = opts[:'spec_https_port'] if !opts[:'spec_https_port'].nil?

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
	  '200' => 'VCenter::VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentInstallInitialConfigRemotePscThumbprintApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
