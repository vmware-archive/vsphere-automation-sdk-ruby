# VSphereAutomation::VCenter::VcenterNamespacesSupervisorServicesSetSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Boolean** | Desired state for service enablement. If the state is changed to be enabled, the service will be deployed. Typically this involves creation of a namespace, a Kubernetes operator, RBAC rules, Kubernetes Service objects, as well as registration of new CustomResourceDefinitions. Thus, as new pods may be scheduled, additional CPU, memory and possibly storage resources may be consumed. The amount depends on the specific service. If the state if changed to be disabled, the service is marked for deletion. Note though that disabling may block if the service is still using resources it doesn&#39;t want to release. Hence it is recommended to explicitly delete any instances before disabling the service. This is done to prevent accidental deletion of critical customer data. | 
**version** | **String** | Desired version. Changing the version only relates to the version of the service operator, i.e. its control plane, not to any running instances, if applicable. Updating may lead to temporary service disruption of the operator. Available versions are published by the service, and only published versions are allowed to be set. If unset, when initially enabling a service, the latest version (at the time) is used. If already enabled, an empty input is ignored. | [optional] 


