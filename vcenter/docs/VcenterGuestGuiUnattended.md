# VSphereAutomation::VCenter::VcenterGuestGuiUnattended

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_logon** | **Boolean** | Flag to determine whether or not the machine automatically logs on as Administrator. See the GuiUnattended.password property. If GuiUnattended.auto-logon flag is set, then GuiUnattended.password must not be unset or the guest customization will fail. | 
**auto_logon_count** | **Integer** | If the GuiUnattended.auto-logon flag is set, then this property specifies the number of times the machine should automatically log on as Administrator. Generally it should be 1, but if the setup requires a number of reboots, you may want to increase it. This number may be determined by the list of commands. | 
**password** | **String** | The new administrator password for the machine. To specify that the password should be set to blank (that is, no password), leave it unset. If unset, blank password will be used. | [optional] 
**time_zone** | **Integer** | The time zone index for the virtual machine. Numbers correspond to time zones at https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values | 


