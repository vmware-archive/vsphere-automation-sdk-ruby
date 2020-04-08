# VSphereAutomation::VCenter::VcenterNamespaceManagementClustersEnableSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**master_dns_names** | **Array&lt;String&gt;** | List of additional DNS names to associate with the Kubernetes API server. These DNS names are embedded in the TLS certificate presented by the API server. If unset, no additional DNS names are embedded in the TLS certificate. | [optional] 
**default_image_registry** | [**VcenterNamespaceManagementClustersImageRegistry**](VcenterNamespaceManagementClustersImageRegistry.md) |  | [optional] 
**default_image_repository** | **String** | Default image repository to use when Kubernetes Pod container specification does not specify it as part of the container image name. If unset, defaults to Docker Hub official repository in case of Docker Hub image registry, otherwise defaults to empty string. | [optional] 
**default_kubernetes_service_content_library** | **String** | Identifier of the Content Library which holds the VM Images for vSphere Kubernetes Service. This Content Library should be subscribed to VMware&#39;s hosted vSphere Kubernetes Service Repository. If unset, the Content Library identifier will not be set. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: content.Library. When operations return a value of this structure as a result, the field will be an identifier for the resource type: content.Library. | [optional] 
**ephemeral_storage_policy** | **String** | Identifier of storage policy associated with ephemeral disks of all the Kubernetes Pods in the cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile. | 
**image_storage** | [**VcenterNamespaceManagementClustersImageStorageSpec**](VcenterNamespaceManagementClustersImageStorageSpec.md) |  | 
**login_banner** | **String** | Disclaimer to be displayed prior to login via the Kubectl plugin. If unset, just skip it. | [optional] 
**master_dns** | **Array&lt;String&gt;** | List of DNS server IP addresses to use on Kubernetes API server, specified in order of preference. If unset, no default DNS servers are set. | [optional] 
**master_dns_search_domains** | **Array&lt;String&gt;** | List of domains (for example \&quot;vmware.com\&quot;) to be searched when trying to lookup a host name on Kubernetes API server, specified in order of preference. If unset, no default DNS search domains are set. | [optional] 
**master_ntp_servers** | **Array&lt;String&gt;** | List of NTP server DNS names or IP addresses to use on Kubernetes API server, specified in order of preference. If unset, VMware Tools based time synchronization is enabled. | [optional] 
**master_management_network** | [**VcenterNamespaceManagementClustersNetworkSpec**](VcenterNamespaceManagementClustersNetworkSpec.md) |  | 
**master_storage_policy** | **String** | Identifier of storage policy associated with Kubernetes API server. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile. | 
**ncp_cluster_network_spec** | [**VcenterNamespaceManagementClustersNCPClusterNetworkEnableSpec**](VcenterNamespaceManagementClustersNCPClusterNetworkEnableSpec.md) |  | [optional] 
**network_provider** | [**VcenterNamespaceManagementClustersNetworkProvider**](VcenterNamespaceManagementClustersNetworkProvider.md) |  | 
**nsx_deployment** | [**VcenterNamespaceManagementClustersNSXDeployment**](VcenterNamespaceManagementClustersNSXDeployment.md) |  | [optional] 
**nsx_enable_spec** | [**VcenterNsxNSXEnableSpec**](VcenterNsxNSXEnableSpec.md) |  | [optional] 
**service_cidr** | [**VcenterNamespaceManagementIpv4Cidr**](VcenterNamespaceManagementIpv4Cidr.md) |  | 
**size_hint** | [**VcenterNamespaceManagementSizingHint**](VcenterNamespaceManagementSizingHint.md) |  | 
**worker_dns** | **Array&lt;String&gt;** | List of DNS server IP addresses to use on the worker nodes, specified in order of preference. If unset, no default DNS servers are set. | [optional] 


