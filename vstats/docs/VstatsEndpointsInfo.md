# VSphereAutomation::VStats::VstatsEndpointsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acqspec_count** | **String** | Count of acquisition specifications configured to this endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**auth_data** | [**VstatsEndpointsAuthSpec**](VstatsEndpointsAuthSpec.md) |  | [optional] 
**id** | **String** | Endpoint identifier. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Endpoint. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Endpoint. | 
**name** | **String** | Designates the endpoint name to identify an endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**port** | **String** | Designates the port of an endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, there is no port provided. | [optional] 
**push_data_format** | **String** | Designates the type of data format supported for stats data at endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**status** | [**VstatsEndpointsStatus**](VstatsEndpointsStatus.md) |  | 
**status_reason** | **String** | The reason explaining why the status of an endpoint is either DISABLED or INVALID. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, it means status is ENABLED. | [optional] 
**uri** | **String** | Designates the uniform resource identifier of an endpoint. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


