# VSphereAutomation::VAPI::VapiMetadataCliCommandInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | The text description displayed to the user in help output. | 
**formatter** | [**VapiMetadataCliCommandFormatterType**](VapiMetadataCliCommandFormatterType.md) |  | [optional] 
**identity** | [**VapiMetadataCliCommandIdentity**](VapiMetadataCliCommandIdentity.md) |  | 
**operation_id** | **String** | The operation identifier corresponding to this CLI command. | 
**options** | [**Array&lt;VapiMetadataCliCommandOptionInfo&gt;**](VapiMetadataCliCommandOptionInfo.md) | The input for this command. | 
**output_field_list** | [**Array&lt;VapiMetadataCliCommandOutputInfo&gt;**](VapiMetadataCliCommandOutputInfo.md) | List of output structure name and output field info. | 
**service_id** | **String** | The service identifier that contains the operations for this CLI command. | 


