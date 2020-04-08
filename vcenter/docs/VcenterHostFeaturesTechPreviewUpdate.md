# VSphereAutomation::VCenter::VcenterHostFeaturesTechPreviewUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**feature_status** | [**Array&lt;VcenterHostFeaturesTechPreviewRespValue&gt;**](VcenterHostFeaturesTechPreviewRespValue.md) | Map of feature names and their desired status. If a feature name is not present in the map the status of that feature will not be changed. If an unknown feature name is specified a {@link vapi.std.errors.NotFound error} will be reported. | 


