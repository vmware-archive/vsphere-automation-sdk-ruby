=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class NetworkingFirewallInboundApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingFirewallInboundResult|VapiStdErrorsErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingFirewallInboundResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingFirewallInboundApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/networking/firewall/inbound'

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
	  '200' => 'Appliance::ApplianceNetworkingFirewallInboundResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingFirewallInboundApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: <ol> <li> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"*\",\"policy\": \"REJECT\"<br> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"nic0\",\"policy\": \"ACCEPT\"<br> </li> </ol> In the above example, the first rule drops all packets originating from 10.112.0.1 and<br> the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
    # @param appliance_networking_firewall_inbound_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def set(appliance_networking_firewall_inbound_set, opts = {})
      set_with_http_info(appliance_networking_firewall_inbound_set, opts)
      nil
    end

    # Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: &lt;ol&gt; &lt;li&gt; \&quot;address\&quot;: \&quot;10.112.0.1\&quot;, \&quot;prefix\&quot;: 0, \&quot;interface_name\&quot;: \&quot;*\&quot;,\&quot;policy\&quot;: \&quot;REJECT\&quot;&lt;br&gt; \&quot;address\&quot;: \&quot;10.112.0.1\&quot;, \&quot;prefix\&quot;: 0, \&quot;interface_name\&quot;: \&quot;nic0\&quot;,\&quot;policy\&quot;: \&quot;ACCEPT\&quot;&lt;br&gt; &lt;/li&gt; &lt;/ol&gt; In the above example, the first rule drops all packets originating from 10.112.0.1 and&lt;br&gt; the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
    # @api private
    # @param appliance_networking_firewall_inbound_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(appliance_networking_firewall_inbound_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingFirewallInboundApi.set ...'
      end
      # verify the required parameter 'appliance_networking_firewall_inbound_set' is set
      if @api_client.config.client_side_validation && appliance_networking_firewall_inbound_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_networking_firewall_inbound_set' when calling NetworkingFirewallInboundApi.set"
      end
      # resource path
      local_var_path = '/appliance/networking/firewall/inbound'

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
      post_body = @api_client.object_to_http_body(appliance_networking_firewall_inbound_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingFirewallInboundApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
