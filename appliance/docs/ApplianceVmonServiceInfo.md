# VSphereAutomation::Appliance::ApplianceVmonServiceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description_key** | **String** | Service description key. Can be used to lookup resource bundle | 
**health** | [**ApplianceVmonServiceHealth**](ApplianceVmonServiceHealth.md) |  | [optional] 
**health_messages** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Localizable messages associated with the health of the service This field is optional and it is only relevant when the value of Service.Info.state is STARTED. | [optional] 
**name_key** | **String** | Service name key. Can be used to lookup resource bundle | 
**startup_type** | [**ApplianceVmonServiceStartupType**](ApplianceVmonServiceStartupType.md) |  | 
**state** | [**ApplianceVmonServiceState**](ApplianceVmonServiceState.md) |  | 


