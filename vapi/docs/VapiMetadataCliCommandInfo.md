# VSphereAutomation::VAPI::VapiMetadataCliCommandInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity** | [**VapiMetadataCliCommandIdentity**](VapiMetadataCliCommandIdentity.md) |  | 
**description** | **String** | The text description displayed to the user in help output. | 
**service_id** | **String** | The service identifier that contains the operations for this CLI command. | 
**operation_id** | **String** | The operation identifier corresponding to this CLI command. | 
**options** | [**Array&lt;VapiMetadataCliCommandOptionInfo&gt;**](VapiMetadataCliCommandOptionInfo.md) | The input for this command. | 
**formatter** | [**VapiMetadataCliCommandFormatterType**](VapiMetadataCliCommandFormatterType.md) |  | [optional] 
**output_field_list** | [**Array&lt;VapiMetadataCliCommandOutputInfo&gt;**](VapiMetadataCliCommandOutputInfo.md) | List of output structure name and output field info. | 


