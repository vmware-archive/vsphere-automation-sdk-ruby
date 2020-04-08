# VSphereAutomation::VCenter::VcenterNsxIpv4Range

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address_count** | **Integer** | A positive number denoting the number of IP addresses in the range. Addresses are derived by incrementing Ipv4Range.starting-address. This field is for future use. It is not supported yet. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Ipv4Range.size-specifier is ADDRESS_COUNT. | [optional] 
**ending_address** | **String** | The IPv4 address denoting the end of the range. The range includes the Ipv4Range.ending-address. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Ipv4Range.size-specifier is ENDING_ADDRESS. | [optional] 
**size_specifier** | [**VcenterNsxIpv4RangeSizeSpecifier**](VcenterNsxIpv4RangeSizeSpecifier.md) |  | 
**starting_address** | **String** | The IPv4 address denoting the start of the range. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**subnet_mask** | **String** | The subnet mask to be set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


