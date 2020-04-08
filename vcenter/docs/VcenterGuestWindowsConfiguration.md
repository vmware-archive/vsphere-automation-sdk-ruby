# VSphereAutomation::VCenter::VcenterGuestWindowsConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reboot** | [**VcenterGuestWindowsConfigurationRebootOption**](VcenterGuestWindowsConfigurationRebootOption.md) |  | [optional] 
**sysprep** | [**VcenterGuestWindowsSysprep**](VcenterGuestWindowsSysprep.md) |  | [optional] 
**sysprep_xml** | **String** | All settings specified in a XML format. This is the content of a typical answer.xml file that is used by System administrators during the Windows image customization. Check https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs Exactly one of WindowsConfiguration.sysprep or WindowsConfiguration.sysprep-xml must be specified. If unset, sysprep settings will not be applied to the windows guest operating system. | [optional] 


