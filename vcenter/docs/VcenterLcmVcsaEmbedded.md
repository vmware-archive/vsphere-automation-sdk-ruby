# VSphereAutomation::VCenter::VcenterLcmVcsaEmbedded

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ceip_enabled** | **Boolean** | This key describes the enabling option for the VMware&#39;s Customer Experience Improvement Program (CEIP). By default we have VcsaEmbedded.ceip-enabled: true, which indicates that you are joining CEIP. If you prefer not to participate in the VMware&#39;s CEIP for this product, you must disable CEIP by setting VcsaEmbedded.ceip-enabled: false. You may join or leave VMware&#39;s CEIP for this product at any time. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, defaults to True | 
**replicated** | [**VcenterLcmEmbeddedReplicatedVcsa**](VcenterLcmEmbeddedReplicatedVcsa.md) |  | [optional] 
**standalone** | [**VcenterLcmEmbeddedStandaloneVcsa**](VcenterLcmEmbeddedStandaloneVcsa.md) |  | [optional] 


