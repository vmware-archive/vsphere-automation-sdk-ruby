# VSphereAutomation::VCenter::VcenterVchaIpSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_family** | [**VcenterVchaIpFamily**](VcenterVchaIpFamily.md) |  | 
**ipv4** | [**VcenterVchaIpv4Spec**](VcenterVchaIpv4Spec.md) |  | [optional] 
**ipv6** | [**VcenterVchaIpv6Spec**](VcenterVchaIpv6Spec.md) |  | [optional] 
**default_gateway** | **String** | The IP address of the Gateway for this interface. If unset, gateway will not be used for the network interface. | [optional] 
**dns_servers** | **Array&lt;String&gt;** | The list of IP addresses of the DNS servers for this interface. This list is a comma separated list. If unset, DNS servers will not be used for the network interface. | [optional] 


