# VSphereAutomation::VCenter::VcenterOvfParseIssue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | [**VcenterOvfParseIssueCategory**](VcenterOvfParseIssueCategory.md) |  | 
**file** | **String** | The name of the file in which the parse issue was found. | 
**line_number** | **Integer** | The line number of the line in the file (see {@link #file}) where the parse issue was found (or -1 if not applicable). | 
**column_number** | **Integer** | The position in the line (see {@link #lineNumber}) (or -1 if not applicable). | 
**message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 


