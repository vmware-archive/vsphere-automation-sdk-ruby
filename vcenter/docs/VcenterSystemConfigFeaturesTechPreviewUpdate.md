# VSphereAutomation::VCenter::VcenterSystemConfigFeaturesTechPreviewUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**feature_status** | [**Array&lt;VcenterSystemConfigFeaturesTechPreviewRespValue&gt;**](VcenterSystemConfigFeaturesTechPreviewRespValue.md) | {@term map} of feature names and their desired status. If a feature name is not present in the {@term map} the status of that feature will not be changed. If an unknown feature name is specified a {@link vapi.std.errors.NotFound {@term error}} will be reported. | 


