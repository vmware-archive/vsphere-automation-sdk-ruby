# VSphereAutomation::VAPI::VapiMetadataCliCommandInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity** | [**VapiMetadataCliCommandIdentity**](VapiMetadataCliCommandIdentity.md) |  | [optional] 
**description** | **String** | The text description displayed to the user in help output. | [optional] 
**service_id** | **String** | The service identifier that contains the operations for this CLI command. | [optional] 
**operation_id** | **String** | The operation identifier corresponding to this CLI command. | [optional] 
**options** | [**Array&lt;VapiMetadataCliCommandOptionInfo&gt;**](VapiMetadataCliCommandOptionInfo.md) | The input for this command. | [optional] 
**formatter** | [**VapiMetadataCliCommandFormatterType**](VapiMetadataCliCommandFormatterType.md) |  | [optional] 
**output_field_list** | [**Array&lt;VapiMetadataCliCommandOutputInfo&gt;**](VapiMetadataCliCommandOutputInfo.md) | List of output structure name and output field info. | [optional] 


