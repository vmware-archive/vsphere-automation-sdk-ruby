# VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNCPClusterNetworkSetSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_ingress_tls_certificate** | **String** | PEM-encoded x509 certificate used by NSX as a default fallback certificate for Kubernetes Ingress services. | 
**egress_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. These ranges should not overlap with those in Clusters.NCPClusterNetworkSetSpec.pod-cidrs, vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkSetSpec.ingress-cidrs, or other services running in the datacenter. A set operation only allows for addition of new CIDR blocks to the existing list. | 
**ingress_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. These ranges should not overlap with those in Clusters.NCPClusterNetworkSetSpec.pod-cidrs, vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkSetSpec.egress-cidrs, or other services running in the datacenter. A set operation only allows for addition of new CIDR blocks to the existing list. | 
**pod_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not overlap with those in vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkSetSpec.ingress-cidrs, Clusters.NCPClusterNetworkSetSpec.egress-cidrs, or other services running in the datacenter. A set operation only allows for addition of new CIDR blocks to the existing list. All Pod CIDR blocks must be of at least subnet size /23. | 


