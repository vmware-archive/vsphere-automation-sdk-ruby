# VSphereAutomation::VCenter::VcenterClusterEdrsRecommendationRecommendation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | [**VcenterClusterEdrsRecommendationRecommendationAction**](VcenterClusterEdrsRecommendationRecommendationAction.md) |  | 
**hosts** | **Array&lt;String&gt;** | A set of available hosts which were seen by EDRS when the recommendation was made. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | 
**hosts_to_remove** | **Array&lt;String&gt;** | Hosts that should be removed from the cluster for a SCALE_IN recommendation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Recommendation.Recommendation.action is SCALE_IN. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | [optional] 
**is_edrs_enabled** | **Boolean** | This is true if the EDRS is enabled in the cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**no_action_reasons** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | The reasons why NO_ACTION is recommended. The recommendation could be NO_ACTION because all resources are well utilized or because something is preventing recommending SCALE_IN even though resources utilization is low. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Recommendation.Recommendation.action is NO_ACTION. | [optional] 
**utilization** | [**VcenterClusterEdrsRecommendationUtilizationInfo**](VcenterClusterEdrsRecommendationUtilizationInfo.md) |  | 


