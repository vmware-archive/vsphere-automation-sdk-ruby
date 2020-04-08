# VSphereAutomation::ESX::EsxHclPCIDevice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_code** | **String** | Register that specifies the type of function the device performs. | 
**did** | **String** | A unique number that identifies the specific device of the Vendor (VID). | 
**driver** | [**EsxHclDriver**](EsxHclDriver.md) |  | 
**firmware** | [**EsxHclFirmware**](EsxHclFirmware.md) |  | [optional] 
**model_name** | **String** | The name of the device model. | 
**pci_address** | **String** | The device&#39;s address in a given ESXi host. | 
**ssid** | **String** | A unique number that identifies the specific device of Subsystem Vendor (SVID). | 
**sub_class_code** | **String** | Register that specifies the specific function the device performs. | 
**svid** | **String** | A unique number that identifies the card manufacturer. | 
**used_by_vsan** | **Boolean** | Shows whether the device is part of VSAN cluster or not. | 
**vendor** | **String** | The name of the vendor. | 
**vid** | **String** | A unique number assigned to each computer hardware device that helps to identify the chipset manufacturer. For example, Dell, Broadcom, etc. | 


