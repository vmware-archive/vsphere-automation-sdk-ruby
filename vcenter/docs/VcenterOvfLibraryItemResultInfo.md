# VSphereAutomation::VCenter::VcenterOvfLibraryItemResultInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;VcenterOvfOvfError&gt;**](VcenterOvfOvfError.md) | Errors reported by the {@name LibraryItem#create} or {@name LibraryItem#deploy} {@term operation}. These errors would have prevented the {@name LibraryItem#create} or {@name LibraryItem#deploy} {@term operation} from completing successfully. | 
**warnings** | [**Array&lt;VcenterOvfOvfWarning&gt;**](VcenterOvfOvfWarning.md) | Warnings reported by the {@name LibraryItem#create} or {@name LibraryItem#deploy} {@term operation}. These warnings would not have prevented the {@name LibraryItem#create} or {@name LibraryItem#deploy} {@term operation} from completing successfully, but there might be issues that warrant attention. | 
**information** | [**Array&lt;VcenterOvfOvfInfo&gt;**](VcenterOvfOvfInfo.md) | Information messages reported by the {@name LibraryItem#create} or {@name LibraryItem#deploy} {@term operation}. For example, a non-required parameter was ignored. | 


