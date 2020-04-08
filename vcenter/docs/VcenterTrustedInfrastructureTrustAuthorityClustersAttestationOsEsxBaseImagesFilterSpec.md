# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **Array&lt;String&gt;** | Search criteria by ESX base image version version numbers. displayName if {@term.unset} return all ESX display version numbers. | [optional] 
**health** | [**Array&lt;VcenterTrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesHealth&gt;**](VcenterTrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesHealth.md) | Search criteria by health indicator. health if {@term.unset} return all health indicators. | [optional] 
**version** | **Array&lt;String&gt;** | Search criteria by ESX base image version numbers. version if {@term.unset} return all ESX version numbers. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage. | [optional] 


