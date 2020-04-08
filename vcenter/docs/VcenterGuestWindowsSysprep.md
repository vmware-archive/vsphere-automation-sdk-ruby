# VSphereAutomation::VCenter::VcenterGuestWindowsSysprep

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | [**VcenterGuestDomain**](VcenterGuestDomain.md) |  | [optional] 
**gui_run_once_commands** | **Array&lt;String&gt;** | A list of commands to run at first user logon, after customizing the guest. These commands are directly mapped to the GuiRunOnce key in the sysprep.xml answer file. These commands are transferred into the sysprep.xml file that VirtualCenter stores on the target virtual disk. For more information about performing unattended installation, check https://technet.microsoft.com/en-us/library/cc771830(v&#x3D;ws.10).aspx The commands listed here ar executed when a user logs on the first time after customization completes. The logon may be driven by GuiUnattended.auto-logon setting. These commands are directly mapped to the GuiRunOnce key in the If unset, no commands are run. | [optional] 
**gui_unattended** | [**VcenterGuestGuiUnattended**](VcenterGuestGuiUnattended.md) |  | 
**user_data** | [**VcenterGuestUserData**](VcenterGuestUserData.md) |  | 


