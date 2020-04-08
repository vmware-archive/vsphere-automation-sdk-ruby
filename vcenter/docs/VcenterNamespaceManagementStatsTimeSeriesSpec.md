# VSphereAutomation::VCenter::VcenterNamespaceManagementStatsTimeSeriesSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cluster** | **String** | Cluster identifier for queries for a cluster. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is CLUSTER. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. | [optional] 
**_end** | **Integer** | UNIX timestamp value indicating when the requested series of statistical samples should end. https://en.wikipedia.org/wiki/Unix_time | 
**namespace** | **String** | Namespace name for queries for a namespace. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is NAMESPACE. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespaces.Instance. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespaces.Instance. | [optional] 
**obj_type** | [**VcenterNamespaceManagementStatsTimeSeriesSpecObjType**](VcenterNamespaceManagementStatsTimeSeriesSpecObjType.md) |  | 
**pod** | [**VcenterNamespaceManagementStatsTimeSeriesPodIdentifier**](VcenterNamespaceManagementStatsTimeSeriesPodIdentifier.md) |  | [optional] 
**start** | **Integer** | UNIX timestamp value indicating when the requested series of statistical samples should begin. https://en.wikipedia.org/wiki/Unix_time | 


