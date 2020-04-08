# VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNCPClusterNetworkInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cluster_distributed_switch** | **String** | vSphere Distributed Switch used to connect this cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vSphereDistributedSwitch. | 
**default_ingress_tls_certificate** | **String** | PEM-encoded x509 certificate used by NSX as a default fallback certificate for Kubernetes Ingress services. | 
**egress_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. | 
**ingress_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. | 
**nsx_edge_cluster** | **String** | NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes Ingresses, and NSX SNAT. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXEdgeCluster. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXEdgeCluster. | 
**pod_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which Kubernetes allocates pod IP addresses. | 


