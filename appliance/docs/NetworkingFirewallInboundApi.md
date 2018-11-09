# VSphereAutomation::Appliance::NetworkingFirewallInboundApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NetworkingFirewallInboundApi.md#get) | **GET** /appliance/networking/firewall/inbound | Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
[**set**](NetworkingFirewallInboundApi.md#set) | **PUT** /appliance/networking/firewall/inbound | Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: &lt;ol&gt; &lt;li&gt; \&quot;address\&quot;: \&quot;10.112.0.1\&quot;, \&quot;prefix\&quot;: 0, \&quot;interface_name\&quot;: \&quot;*\&quot;,\&quot;policy\&quot;: \&quot;REJECT\&quot;&lt;br&gt; \&quot;address\&quot;: \&quot;10.112.0.1\&quot;, \&quot;prefix\&quot;: 0, \&quot;interface_name\&quot;: \&quot;nic0\&quot;,\&quot;policy\&quot;: \&quot;ACCEPT\&quot;&lt;br&gt; &lt;/li&gt; &lt;/ol&gt; In the above example, the first rule drops all packets originating from 10.112.0.1 and&lt;br&gt; the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.


# **get**
> ApplianceNetworkingFirewallInboundResult get

Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_networking_firewall_inbound_set)

Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: <ol> <li> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"*\",\"policy\": \"REJECT\"<br> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"nic0\",\"policy\": \"ACCEPT\"<br> </li> </ol> In the above example, the first rule drops all packets originating from 10.112.0.1 and<br> the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::NetworkingFirewallInboundApi.new
appliance_networking_firewall_inbound_set = VSphereAutomation::ApplianceNetworkingFirewallInboundSet.new # ApplianceNetworkingFirewallInboundSet | 

begin
  #Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: <ol> <li> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"*\",\"policy\": \"REJECT\"<br> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"nic0\",\"policy\": \"ACCEPT\"<br> </li> </ol> In the above example, the first rule drops all packets originating from 10.112.0.1 and<br> the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
  api_instance.set(appliance_networking_firewall_inbound_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkingFirewallInboundApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_networking_firewall_inbound_set** | [**ApplianceNetworkingFirewallInboundSet**](ApplianceNetworkingFirewallInboundSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



