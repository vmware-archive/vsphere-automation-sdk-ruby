# VSphereAutomation::VCenter::VcenterVmHardwareIdeAddressSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**primary** | **BOOLEAN** | Flag specifying whether the device should be attached to the primary or secondary IDE adapter of the virtual machine. If unset, the server will choose a adapter with an available connection. If no IDE connections are available, the request will be rejected. | [optional] 
**master** | **BOOLEAN** | Flag specifying whether the device should be the master or slave device on the IDE adapter. If unset, the server will choose an available connection type. If no IDE connections are available, the request will be rejected. | [optional] 


