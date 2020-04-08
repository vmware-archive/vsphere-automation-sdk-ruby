# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**servers** | [**Array&lt;VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersServer&gt;**](VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersServer.md) | List of KMIP compliant key servers.   Key servers must be configured for active-active replication. If the server port is unset, a default value for KMIP&#39;s port will be used.     If unset, server configuration will remain unchanged. | [optional] 
**username** | **String** | Username for authentication.    If unset, username will remain unchanged. | [optional] 


