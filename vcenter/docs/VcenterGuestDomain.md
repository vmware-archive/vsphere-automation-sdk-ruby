# VSphereAutomation::VCenter::VcenterGuestDomain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | The domain to which the virtual machine should be joined. This field is optional and it is only relevant when the value of Domain.type is DOMAIN. | [optional] 
**domain_password** | **String** | The domain user password that has permission to join the Domain.domain-username after customization. This field is optional and it is only relevant when the value of Domain.type is DOMAIN. | [optional] 
**domain_username** | **String** | The domain user that has permission to join the domain after virtual machine is joined. This field is optional and it is only relevant when the value of Domain.type is DOMAIN. | [optional] 
**type** | [**VcenterGuestDomainType**](VcenterGuestDomainType.md) |  | 
**workgroup** | **String** | The workgroup that the virtual machine should join. This field is optional and it is only relevant when the value of Domain.type is WORKGROUP. | [optional] 


