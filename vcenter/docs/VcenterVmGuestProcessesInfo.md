# VSphereAutomation::VCenter::VcenterVmGuestProcessesInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**command** | **String** | The full command line of the process. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**exit_code** | **Integer** | If the process was started using Processes.create then the process exit code will be available if queried within 5 minutes after it completes. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if the process was started with Processes.create and has recently exited. | [optional] 
**finished** | **DateTime** | If the process was started using Processes.create then the process completion time will be available if queried within 5 minutes after it completes. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if the process was started with Processes.create and has recently exited. | [optional] 
**name** | **String** | The process name. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**owner** | **String** | The process owner. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**pid** | **Integer** | The process ID. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**started** | **DateTime** | The start time of the process. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


