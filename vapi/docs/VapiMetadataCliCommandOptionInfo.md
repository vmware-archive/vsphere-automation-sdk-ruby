# VSphereAutomation::VAPI::VapiMetadataCliCommandOptionInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**long_option** | **String** | The long option name of the parameter as used by the user. | 
**short_option** | **String** | The single character value option name. | [optional] 
**field_name** | **String** | The fully qualified name of the option referred to by the operation element in {@link Info#operationId}. | 
**description** | **String** | The description of the option to be displayed to the user when they request usage information for a CLI command. | 
**type** | **String** | The type of option. This is used to display information about what kind of data is expected (string, number, boolean, etc.) for the option when they request usage information for a CLI command. For {@term enumerated type} this stores the fully qualified {@term enumerated type} id. | 
**generic** | [**VapiMetadataCliCommandGenericType**](VapiMetadataCliCommandGenericType.md) |  | 


