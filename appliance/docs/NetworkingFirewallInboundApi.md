# VSphereAutomation::Appliance::NetworkingFirewallInboundApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingFirewallInboundApi.md#get) | **GET** /appliance/networking/firewall/inbound | Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
[**set**](NetworkingFirewallInboundApi.md#set) | **PUT** /appliance/networking/firewall/inbound | Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: &lt;table&gt; &lt;tr&gt; &lt;th&gt;Address&lt;/th&gt;&lt;th&gt;Prefix&lt;/th&gt;&lt;th&gt;Interface Name&lt;/th&gt;&lt;th&gt;Policy&lt;/th&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;10.112.0.1&lt;/td&gt;&lt;td&gt;0&lt;/td&gt;&lt;td&gt;*&lt;/td&gt;&lt;td&gt;REJECT&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td&gt;10.112.0.1&lt;/td&gt;&lt;td&gt;0&lt;/td&gt;&lt;td&gt;nic0&lt;/td&gt;&lt;td&gt;ACCEPT&lt;/td&gt; &lt;/tr&gt; &lt;/table&gt; In the above example, the first rule drops all packets originating from 10.112.0.1 and&lt;br&gt; the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.


# **get**
> ApplianceNetworkingFirewallInboundResult get

Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::NetworkingFirewallInboundApi.new

begin
  #Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingFirewallInboundApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceNetworkingFirewallInboundResult**](ApplianceNetworkingFirewallInboundResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: <table> <tr> <th>Address</th><th>Prefix</th><th>Interface Name</th><th>Policy</th> </tr> <tr> <td>10.112.0.1</td><td>0</td><td>*</td><td>REJECT</td> </tr> <tr> <td>10.112.0.1</td><td>0</td><td>nic0</td><td>ACCEPT</td> </tr> </table> In the above example, the first rule drops all packets originating from 10.112.0.1 and<br> the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::NetworkingFirewallInboundApi.new
request_body = Appliance::ApplianceNetworkingFirewallInboundSet.new # ApplianceNetworkingFirewallInboundSet | 

begin
  #Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: <table> <tr> <th>Address</th><th>Prefix</th><th>Interface Name</th><th>Policy</th> </tr> <tr> <td>10.112.0.1</td><td>0</td><td>*</td><td>REJECT</td> </tr> <tr> <td>10.112.0.1</td><td>0</td><td>nic0</td><td>ACCEPT</td> </tr> </table> In the above example, the first rule drops all packets originating from 10.112.0.1 and<br> the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingFirewallInboundApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceNetworkingFirewallInboundSet**](ApplianceNetworkingFirewallInboundSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



