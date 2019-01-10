# VSphereAutomation::VCenter::VcenterVchaIpv4Spec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | IPV4 address to be used to configure the interface. | 
**subnet_mask** | **String** | The subnet mask for the interface. If unset and the Ipv4Spec.prefix field is unset, then an error will be reported.  If unset and the Ipv4Spec.prefix field is set, then the Ipv4Spec.prefix field will be used to create a subnet mask whose first prefix bits are 1 and the remaining bits 0.  If both the Ipv4Spec.subnet-mask field and the Ipv4Spec.prefix field are set and they do not represent the same value, then an error will be reported. | [optional] 
**prefix** | **Integer** | The CIDR prefix for the interface. If unset and the Ipv4Spec.subnet-mask field is unset, this an error will be reported.  If unset and the Ipv4Spec.subnet-mask field is set, then the Ipv4Spec.subnet-mask field will be used.  If both the Ipv4Spec.subnet-mask field and the Ipv4Spec.prefix field are set and they do not represent the same value, then an error will be reported. | [optional] 


