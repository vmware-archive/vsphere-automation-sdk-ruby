# VSphereAutomation::VCenter::VcenterOvfParseIssue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | [**VcenterOvfParseIssueCategory**](VcenterOvfParseIssueCategory.md) |  | [optional] 
**file** | **String** | The name of the file in which the parse issue was found. | [optional] 
**line_number** | **Integer** | The line number of the line in the file (see {@link #file}) where the parse issue was found (or -1 if not applicable). | [optional] 
**column_number** | **Integer** | The position in the line (see {@link #lineNumber}) (or -1 if not applicable). | [optional] 
**message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 


