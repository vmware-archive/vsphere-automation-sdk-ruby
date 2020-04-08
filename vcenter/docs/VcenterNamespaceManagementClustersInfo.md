# VSphereAutomation::VCenter::VcenterNamespaceManagementClustersInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_server_cluster_endpoint** | **String** | Kubernetes API Server IP address via cluster network. This is the IP address of the Kubernetes LoadBalancer type service fronting the apiservers. This endpoint is the one configured in kubeconfig after login, and used for most human and application interaction with Kubernetes. | 
**api_server_management_endpoint** | **String** | Kubernetes API Server IP address on the management network. This is a floating IP and assigned to one of the control plane VMs on the management network. This endpoint is used by vSphere components. | 
**api_servers** | **Array&lt;String&gt;** | Identifier of the Kubernetes API servers. These are the IP addresses of the VM instances for the Kubernetes control plane on the management network. | 
**config_status** | [**VcenterNamespaceManagementClustersConfigStatus**](VcenterNamespaceManagementClustersConfigStatus.md) |  | 
**default_kubernetes_service_content_library** | **String** | Identifier of the Content Library which holds the VM Images for vSphere Kubernetes Service. This Content Library should be subscribed to VMware&#39;s hosted vSphere Kubernetes Service Repository. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: content.Library. When operations return a value of this structure as a result, the field will be an identifier for the resource type: content.Library. | [optional] 
**kubernetes_status** | [**VcenterNamespaceManagementClustersKubernetesStatus**](VcenterNamespaceManagementClustersKubernetesStatus.md) |  | 
**kubernetes_status_messages** | [**Array&lt;VcenterNamespaceManagementClustersMessage&gt;**](VcenterNamespaceManagementClustersMessage.md) | Current set of messages associated with the object. | 
**master_dns** | **Array&lt;String&gt;** | List of DNS server IP addresses to use on Kubernetes API server, specified in order of preference. | [optional] 
**master_dns_search_domains** | **Array&lt;String&gt;** | List of domains (for example \&quot;vmware.com\&quot;) to be searched when trying to lookup a host name on Kubernetes API server, specified in order of preference. | [optional] 
**messages** | [**Array&lt;VcenterNamespaceManagementClustersMessage&gt;**](VcenterNamespaceManagementClustersMessage.md) | Current set of messages associated with the object. | 
**ncp_cluster_network_info** | [**VcenterNamespaceManagementClustersNCPClusterNetworkInfo**](VcenterNamespaceManagementClustersNCPClusterNetworkInfo.md) |  | [optional] 
**network_provider** | [**VcenterNamespaceManagementClustersNetworkProvider**](VcenterNamespaceManagementClustersNetworkProvider.md) |  | 
**service_cidr** | [**VcenterNamespaceManagementIpv4Cidr**](VcenterNamespaceManagementIpv4Cidr.md) |  | 
**stat_summary** | [**VcenterNamespaceManagementClustersStats**](VcenterNamespaceManagementClustersStats.md) |  | 
**tls_endpoint_certificate** | **String** | PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when accessed via the load balancer, e.g. devops user on corporate network. This certificate is only valid for use with the apiServerClusterEndpoint. | [optional] 
**tls_management_endpoint_certificate** | **String** | PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when accessed from the management network, e.g. from ESX servers or VCSA. This certificate is only valid for use with the apiServerManagementEndpoint. | [optional] 
**worker_dns** | **Array&lt;String&gt;** | List of DNS server IP addresses to use for pods that execute on the worker nodes (which are native pods on ESXi hosts in the vSphere Namespaces Supervisor). | [optional] 


