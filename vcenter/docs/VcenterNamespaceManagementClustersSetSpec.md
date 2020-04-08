# VSphereAutomation::VCenter::VcenterNamespaceManagementClustersSetSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_image_registry** | [**VcenterNamespaceManagementClustersImageRegistry**](VcenterNamespaceManagementClustersImageRegistry.md) |  | [optional] 
**default_image_repository** | **String** | Default image repository to use when Kubernetes Pod container specification does not specify it as part of the container image name. If unset, default image repository will be set to Docker Hub official repository in case of Docker Hub image registry, otherwise will be set to empty string. | [optional] 
**default_kubernetes_service_content_library** | **String** | Identifier of the Content Library which holds the VM Images for vSphere Kubernetes Service. This Content Library should be subscribed to VMware&#39;s hosted vSphere Kubernetes Service Repository. Modifying or clearing the Content Library identifier will not affect existing vSphere Kubernetes Service clusters. However, upgrades or scale-out of existing clusters may be affected if the new Content Library doesn&#39;t have the necessary VM Images. If unset, the Content Library identifier will be cleared. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: content.Library. When operations return a value of this structure as a result, the field will be an identifier for the resource type: content.Library. | [optional] 
**ephemeral_storage_policy** | **String** | Identifier of storage policy associated with ephemeral disks of all the Kubernetes Pods in the cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile. | 
**image_storage** | [**VcenterNamespaceManagementClustersImageStorageSpec**](VcenterNamespaceManagementClustersImageStorageSpec.md) |  | 
**login_banner** | **String** | Disclaimer to be displayed prior to login via the Kubectl plugin. If unset, disclaimer to be displayed prior to login via the Kubectl plugin will be cleared. | [optional] 
**master_dns** | **Array&lt;String&gt;** | List of DNS server IP addresses to use on Kubernetes API server, specified in order of preference. If unset, DNS servers set on Kubernetes API server will be cleared. | [optional] 
**master_dns_search_domains** | **Array&lt;String&gt;** | List of domains (for example \&quot;vmware.com\&quot;) to be searched when trying to lookup a host name on Kubernetes API server, specified in order of preference. If unset, DNS search domains set on Kubernetes API server will be cleared. | [optional] 
**master_ntp_servers** | **Array&lt;String&gt;** | List of NTP server DNS names or IP addresses to use on Kubernetes API server, specified in order of preference. If unset, VMware Tools based time synchronization is enabled and any set NTP servers are cleared. | [optional] 
**master_storage_policy** | **String** | Identifier of storage policy associated with Kubernetes API server. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile. | 
**ncp_cluster_network_spec** | [**VcenterNamespaceManagementClustersNCPClusterNetworkSetSpec**](VcenterNamespaceManagementClustersNCPClusterNetworkSetSpec.md) |  | [optional] 
**network_provider** | [**VcenterNamespaceManagementClustersNetworkProvider**](VcenterNamespaceManagementClustersNetworkProvider.md) |  | 
**size_hint** | [**VcenterNamespaceManagementSizingHint**](VcenterNamespaceManagementSizingHint.md) |  | 
**worker_dns** | **Array&lt;String&gt;** | List of DNS server IP addresses to use on the worker nodes, specified in order of preference. If unset, DNS servers set on worker nodes will be cleared. | [optional] 


