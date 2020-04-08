# vsphere-automation-vcenter

The Ruby gem for the vSphere VCenter API

- API version: 2.0.0
- Package version: 0.5.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vsphere-automation-vcenter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vsphere-automation-vcenter

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vsphere-automation-vcenter'

# Setup authorization
VSphereAutomation.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi.new
request_body = VCenter::VcenterActivedirectoryActiveDirectoryJoin.new # VcenterActivedirectoryActiveDirectoryJoin | 

begin
  #Join the appliance to given domain.
  api_instance.join(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ActivedirectoryActiveDirectoryApi->join: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi` | [**join**](docs/ActivedirectoryActiveDirectoryApi.md#join) | **POST** /rest/vcenter/system/active-directory | Join the appliance to given domain.
`VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi` | [**leave**](docs/ActivedirectoryActiveDirectoryApi.md#leave) | **PATCH** /rest/vcenter/system/active-directory | Leave the registered domain, if registered to any.
`VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi` | [**status**](docs/ActivedirectoryActiveDirectoryApi.md#status) | **GET** /rest/vcenter/system/active-directory | Returns the Active Directory Domain Join Status of the system the identity server is executing on.
`VSphereAutomation::VCenter::CertificateAuthorityCertificateApi` | [**cert_status**](docs/CertificateAuthorityCertificateApi.md#cert_status) | **GET** /rest/vcenter/certificate-authority/certificate?action&#x3D;cert-status | Verify the provided certificate on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
`VSphereAutomation::VCenter::CertificateAuthorityCertificateApi` | [**count_certs**](docs/CertificateAuthorityCertificateApi.md#count_certs) | **GET** /rest/vcenter/certificate-authority/certificate?action&#x3D;count-certs | Get the count of certificates on the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
`VSphereAutomation::VCenter::CertificateAuthorityCertificateApi` | [**enum_certs**](docs/CertificateAuthorityCertificateApi.md#enum_certs) | **GET** /rest/vcenter/certificate-authority/certificate?action&#x3D;enum-certs | List all the certs in the server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
`VSphereAutomation::VCenter::CertificateAuthorityCertificateApi` | [**gen_cert**](docs/CertificateAuthorityCertificateApi.md#gen_cert) | **POST** /rest/vcenter/certificate-authority/certificate?action&#x3D;gen-cert | Get the signed certificate for the given Spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
`VSphereAutomation::VCenter::CertificateAuthorityCertificateApi` | [**generate_keys**](docs/CertificateAuthorityCertificateApi.md#generate_keys) | **POST** /rest/vcenter/certificate-authority/certificate?action&#x3D;generate-keys | Generate the public and private key pair for given keysize. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
`VSphereAutomation::VCenter::CertificateAuthorityGetRootApi` | [**get_root**](docs/CertificateAuthorityGetRootApi.md#get_root) | **GET** /rest/vcenter/certificate-authority/get-root | Returns the rhttpproxy TLS certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
`VSphereAutomation::VCenter::CertificateAuthoritySignCertApi` | [**sign_cert_from_csr**](docs/CertificateAuthoritySignCertApi.md#sign_cert_from_csr) | **POST** /rest/vcenter/certificate-authority/sign-cert?action&#x3D;sign-cert-from-csr | Sign the provided CSR and generate a certificate. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateAuthority.Manage and CertificateAuthority.Administer.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi` | [**get**](docs/CertificateManagementVcenterTlsApi.md#get) | **GET** /rest/vcenter/certificate-management/vcenter/tls | Returns the rhttpproxy TLS certificate. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi` | [**renew**](docs/CertificateManagementVcenterTlsApi.md#renew) | **POST** /rest/vcenter/certificate-management/vcenter/tls?action&#x3D;renew | Renews the TLS certificate for the given duration period.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi` | [**replace_vmca_signed**](docs/CertificateManagementVcenterTlsApi.md#replace_vmca_signed) | **POST** /rest/vcenter/certificate-management/vcenter/tls?action&#x3D;replace-vmca-signed | Replace MACHINE SSL with VMCA signed one with the given Spec.The system will go for restart.   After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTlsApi` | [**set**](docs/CertificateManagementVcenterTlsApi.md#set) | **PUT** /rest/vcenter/certificate-management/vcenter/tls | Replaces the rhttpproxy TLS certificate with the specified certificate. This operation can be used in three scenarios :     1.  When the CSR is created and the private key is already stored, this operation can replace the certificate. The Tls.Spec.cert (but not Tls.Spec.key and Tls.Spec.root-cert) must be provided as input.     2.  When the certificate is signed by a third party certificate authority/VMCA and the root certificate of the third party certificate authority/VMCA is already one of the trusted roots in the trust store, this operation can replace the certificate and private key. The Tls.Spec.cert and Tls.Spec.key (but not Tls.Spec.root-cert) must be provided as input.     3.  When the certificate is signed by a third party certificate authority and the root certificate of the third party certificate authority is not one of the trusted roots in the trust store, this operation can replace the certificate, private key and root CA certificate. The Tls.Spec.cert,Tls.Spec.key and Tls.Spec.root-cert must be provided as input.    After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  The above three scenarios are only supported from vsphere 7.0 onwards.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTlsCsrApi` | [**create**](docs/CertificateManagementVcenterTlsCsrApi.md#create) | **POST** /rest/vcenter/certificate-management/vcenter/tls-csr | Generates a CSR with the given Spec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi` | [**create**](docs/CertificateManagementVcenterTrustedRootChainsApi.md#create) | **POST** /rest/vcenter/certificate-management/vcenter/trusted-root-chains | Creates a new trusted root certificate chain from the CreateSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi` | [**delete**](docs/CertificateManagementVcenterTrustedRootChainsApi.md#delete) | **DELETE** /rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain} | Deletes trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Manage and CertificateManagement.Administer.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi` | [**get**](docs/CertificateManagementVcenterTrustedRootChainsApi.md#get) | **GET** /rest/vcenter/certificate-management/vcenter/trusted-root-chains/{chain} | Retrieve a trusted root certificate chain for a given identifier. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
`VSphereAutomation::VCenter::CertificateManagementVcenterTrustedRootChainsApi` | [**list**](docs/CertificateManagementVcenterTrustedRootChainsApi.md#list) | **GET** /rest/vcenter/certificate-management/vcenter/trusted-root-chains | Returns summary information for each trusted root certificate chain. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
`VSphereAutomation::VCenter::CertificateManagementVcenterVmcaRootApi` | [**create**](docs/CertificateManagementVcenterVmcaRootApi.md#create) | **POST** /rest/vcenter/certificate-management/vcenter/vmca-root | Replace Root Certificate with VMCA signed one using the given Spec.  After this operation completes, the services using the certificate will be restarted for the new certificate to take effect.  if you do not have all of the privileges described as follows:     -  Operation execution requires CertificateManagement.Administer.  
`VSphereAutomation::VCenter::ClusterApi` | [**create**](docs/ClusterApi.md#create) | **POST** /rest/vcenter/cluster | Create a new cluster in the vCenter inventory. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterApi` | [**delete**](docs/ClusterApi.md#delete) | **DELETE** /rest/vcenter/cluster/{cluster} | Delete an empty cluster from the vCenter Server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterApi` | [**get**](docs/ClusterApi.md#get) | **GET** /rest/vcenter/cluster/{cluster} | Retrieves information about the cluster corresponding to cluster.
`VSphereAutomation::VCenter::ClusterApi` | [**list**](docs/ClusterApi.md#list) | **GET** /rest/vcenter/cluster | Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.
`VSphereAutomation::VCenter::ClusterEdrsAlgoParameterApi` | [**get**](docs/ClusterEdrsAlgoParameterApi.md#get) | **GET** /rest/vcenter/cluster/{cluster}/edrs/algo-parameter | Gets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
`VSphereAutomation::VCenter::ClusterEdrsAlgoParameterApi` | [**set**](docs/ClusterEdrsAlgoParameterApi.md#set) | **PUT** /rest/vcenter/cluster/{cluster}/edrs/algo-parameter | Sets EDRS algorithm parameters for a given cluster. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
`VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi` | [**enter**](docs/ClusterEdrsMaintenanceModeApi.md#enter) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;enter | Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
`VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi` | [**enter_task**](docs/ClusterEdrsMaintenanceModeApi.md#enter_task) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;enter&amp;vmw-task&#x3D;true | Request the cluster to enter the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
`VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi` | [**exit**](docs/ClusterEdrsMaintenanceModeApi.md#exit) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;exit | Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
`VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi` | [**exit_task**](docs/ClusterEdrsMaintenanceModeApi.md#exit_task) | **POST** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode?action&#x3D;exit&amp;vmw-task&#x3D;true | Request the cluster to exit the maintenance mode, EDRS would generate the scaling recommendation based on cluster resources utilization. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires Host.Inventory.EditCluster.  
`VSphereAutomation::VCenter::ClusterEdrsMaintenanceModeApi` | [**get**](docs/ClusterEdrsMaintenanceModeApi.md#get) | **GET** /rest/vcenter/cluster/{cluster}/edrs/maintenance-mode | Get the status of the cluster maintenance mode. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  The resource ClusterComputeResource referenced by the parameter cluster requires System.Read.  
`VSphereAutomation::VCenter::ClusterEdrsRecommendationApi` | [**generate**](docs/ClusterEdrsRecommendationApi.md#generate) | **POST** /rest/vcenter/cluster/{cluster}/edrs/recommendation?action&#x3D;generate | Gives a recommendation to scale in a cluster when all resources (CPU/memory/storage) are underutilized, or to scale out a cluster when any resource is being heavily utilized. NO_ACTION will be returned if cluster resources are well utilized. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterModulesApi` | [**create**](docs/ClusterModulesApi.md#create) | **POST** /rest/vcenter/cluster/modules | Creates a new module in a vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterModulesApi` | [**delete**](docs/ClusterModulesApi.md#delete) | **DELETE** /rest/vcenter/cluster/modules/{module} | Deletes a specific module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterModulesApi` | [**list**](docs/ClusterModulesApi.md#list) | **GET** /rest/vcenter/cluster/modules | Returns information about the modules available in this vCenter server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterModulesVmMembersApi` | [**add**](docs/ClusterModulesVmMembersApi.md#add) | **POST** /rest/vcenter/cluster/modules/vm/{module}/members?action&#x3D;add | Adds virtual machines to the module. These virtual machines are required to be in the same vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterModulesVmMembersApi` | [**get**](docs/ClusterModulesVmMembersApi.md#get) | **GET** /rest/vcenter/cluster/modules/vm/{module}/members | Returns the virtual machines that are members of the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ClusterModulesVmMembersApi` | [**remove**](docs/ClusterModulesVmMembersApi.md#remove) | **POST** /rest/vcenter/cluster/modules/vm/{module}/members?action&#x3D;remove | Removes virtual machines from the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ComputePoliciesApi` | [**create**](docs/ComputePoliciesApi.md#create) | **POST** /api/vcenter/compute/policies | Creates a new compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::ComputePoliciesApi` | [**delete**](docs/ComputePoliciesApi.md#delete) | **DELETE** /api/vcenter/compute/policies/{policy} | Deletes a specific compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::ComputePoliciesApi` | [**get**](docs/ComputePoliciesApi.md#get) | **GET** /api/vcenter/compute/policies/{policy} | Returns information about a specific compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::ComputePoliciesApi` | [**list**](docs/ComputePoliciesApi.md#list) | **GET** /api/vcenter/compute/policies | Returns information about the compute policies available in this vCenter server in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::ComputePoliciesCapabilitiesApi` | [**get**](docs/ComputePoliciesCapabilitiesApi.md#get) | **GET** /api/vcenter/compute/policies/capabilities/{capability} | Returns information about a specific compute policy capability in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::ComputePoliciesCapabilitiesApi` | [**list**](docs/ComputePoliciesCapabilitiesApi.md#list) | **GET** /api/vcenter/compute/policies/capabilities | Returns information about the compute policy capabilities available in this vCenter server in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::ComputePoliciesTagUsageApi` | [**list**](docs/ComputePoliciesTagUsageApi.md#list) | **GET** /api/vcenter/compute/policies/tag-usage | Returns information about the tags used by policies available in this vCenter server matching the {@link FilterSpec} in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::ComputePoliciesVMApi` | [**list**](docs/ComputePoliciesVMApi.md#list) | **GET** /api/vcenter/compute/policies/vm | Returns policies associated with virtual machines and their compliance status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ContentRegistriesHarborApi` | [**create**](docs/ContentRegistriesHarborApi.md#create) | **POST** /rest/vcenter/content/registries/harbor | Creates a Harbor registry in the cluster.
`VSphereAutomation::VCenter::ContentRegistriesHarborApi` | [**delete**](docs/ContentRegistriesHarborApi.md#delete) | **DELETE** /rest/vcenter/content/registries/harbor/{registry} | Delete the Harbor registry in the cluster. All Harbor projects, repositories and images will be deleted upon Harbor registry deletion.
`VSphereAutomation::VCenter::ContentRegistriesHarborApi` | [**get**](docs/ContentRegistriesHarborApi.md#get) | **GET** /rest/vcenter/content/registries/harbor/{registry} | Get detailed information of the Harbor registry.
`VSphereAutomation::VCenter::ContentRegistriesHarborApi` | [**list**](docs/ContentRegistriesHarborApi.md#list) | **GET** /rest/vcenter/content/registries/harbor | Returns basic information of all Harbor registries.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi` | [**create**](docs/ContentRegistriesHarborProjectMembersApi.md#create) | **POST** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members | Create a project member for specified Harbor project.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi` | [**delete**](docs/ContentRegistriesHarborProjectMembersApi.md#delete) | **DELETE** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member} | Remove a project member from specified Harbor project.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi` | [**get**](docs/ContentRegistriesHarborProjectMembersApi.md#get) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member} | Get detailed Harbor project member information for specified user or group.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi` | [**list**](docs/ContentRegistriesHarborProjectMembersApi.md#list) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members | Returns all members basic information in the specified Harbor project.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi` | [**update**](docs/ContentRegistriesHarborProjectMembersApi.md#update) | **PATCH** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member} | Update access control for a member in a registry project.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi` | [**create**](docs/ContentRegistriesHarborProjectsApi.md#create) | **POST** /rest/vcenter/content/registries/harbor/{registry}/projects | Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi` | [**delete**](docs/ContentRegistriesHarborProjectsApi.md#delete) | **DELETE** /rest/vcenter/content/registries/harbor/{registry}/projects/{project} | Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi` | [**get**](docs/ContentRegistriesHarborProjectsApi.md#get) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects/{project} | Returns detailed information about the specified Harbor project.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi` | [**list**](docs/ContentRegistriesHarborProjectsApi.md#list) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects | Returns basic information of all projects in a Harbor registry.
`VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi` | [**purge**](docs/ContentRegistriesHarborProjectsApi.md#purge) | **POST** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}?action&#x3D;purge | Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
`VSphereAutomation::VCenter::ContentRegistriesHealthApi` | [**get**](docs/ContentRegistriesHealthApi.md#get) | **GET** /rest/vcenter/content/registries/{registry}/health | Returns the health information of a container registry in the vCenter.
`VSphereAutomation::VCenter::DatacenterApi` | [**create**](docs/DatacenterApi.md#create) | **POST** /rest/vcenter/datacenter | Create a new datacenter in the vCenter inventory
`VSphereAutomation::VCenter::DatacenterApi` | [**delete**](docs/DatacenterApi.md#delete) | **DELETE** /rest/vcenter/datacenter/{datacenter} | Delete an empty datacenter from the vCenter Server
`VSphereAutomation::VCenter::DatacenterApi` | [**get**](docs/DatacenterApi.md#get) | **GET** /rest/vcenter/datacenter/{datacenter} | Retrieves information about the datacenter corresponding to datacenter.
`VSphereAutomation::VCenter::DatacenterApi` | [**list**](docs/DatacenterApi.md#list) | **GET** /rest/vcenter/datacenter | Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the Datacenter.FilterSpec.
`VSphereAutomation::VCenter::DatastoreApi` | [**get**](docs/DatastoreApi.md#get) | **GET** /rest/vcenter/datastore/{datastore} | Retrieves information about the datastore indicated by datastore.
`VSphereAutomation::VCenter::DatastoreApi` | [**list**](docs/DatastoreApi.md#list) | **GET** /rest/vcenter/datastore | Returns information about at most 2500 visible (subject to permission checks) datastores in vCenter matching the Datastore.FilterSpec.
`VSphereAutomation::VCenter::DatastoreDefaultPolicyApi` | [**get**](docs/DatastoreDefaultPolicyApi.md#get) | **GET** /rest/vcenter/datastore/{datastore}/default-policy | Returns the identifier of the current default storage policy associated with the specified datastore.
`VSphereAutomation::VCenter::DeploymentApi` | [**get**](docs/DeploymentApi.md#get) | **GET** /rest/vcenter/deployment | Get the current status of the appliance deployment.
`VSphereAutomation::VCenter::DeploymentApi` | [**rollback**](docs/DeploymentApi.md#rollback) | **POST** /rest/vcenter/deployment?action&#x3D;rollback | Rollback a failed appliance so it can be configured once again.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**cancel**](docs/DeploymentImportHistoryApi.md#cancel) | **POST** /rest/vcenter/deployment/history?action&#x3D;cancel | Cancels the task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**get**](docs/DeploymentImportHistoryApi.md#get) | **GET** /rest/vcenter/deployment/history | Get the current status of the vCenter historical data import.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**pause**](docs/DeploymentImportHistoryApi.md#pause) | **POST** /rest/vcenter/deployment/history?action&#x3D;pause | Pauses the task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**resume**](docs/DeploymentImportHistoryApi.md#resume) | **POST** /rest/vcenter/deployment/history?action&#x3D;resume | Resumes the task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**start**](docs/DeploymentImportHistoryApi.md#start) | **POST** /rest/vcenter/deployment/history?action&#x3D;start | Creates and starts task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**cancel**](docs/DeploymentInstallApi.md#cancel) | **POST** /rest/vcenter/deployment/install?action&#x3D;cancel | Cancel the appliance installation that is in progress.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**check**](docs/DeploymentInstallApi.md#check) | **POST** /rest/vcenter/deployment/install?action&#x3D;check | Run sanity checks using the InstallSpec parameters passed.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**get**](docs/DeploymentInstallApi.md#get) | **GET** /rest/vcenter/deployment/install | Get the parameters used to configure the ongoing appliance installation.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**start**](docs/DeploymentInstallApi.md#start) | **POST** /rest/vcenter/deployment/install?action&#x3D;start | Start the appliance installation.
`VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi` | [**get**](docs/DeploymentInstallInitialConfigRemotePscThumbprintApi.md#get) | **GET** /rest/vcenter/deployment/install/initial-config/remote-psc/thumbprint | Gets the SHA1 thumbprint of the remote PSC.
`VSphereAutomation::VCenter::DeploymentInstallPscReplicatedApi` | [**check**](docs/DeploymentInstallPscReplicatedApi.md#check) | **POST** /rest/vcenter/deployment/install/psc/replicated?action&#x3D;check | Checks whether the provided remote PSC is reachable and can be replicated.
`VSphereAutomation::VCenter::DeploymentInstallPscStandaloneApi` | [**check**](docs/DeploymentInstallPscStandaloneApi.md#check) | **POST** /rest/vcenter/deployment/install/psc/standalone?action&#x3D;check | Checks that the information to configure a non-replicated PSC satisfies the requirements.
`VSphereAutomation::VCenter::DeploymentInstallRemotePscApi` | [**check**](docs/DeploymentInstallRemotePscApi.md#check) | **POST** /rest/vcenter/deployment/install/remote-psc?action&#x3D;check | Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.
`VSphereAutomation::VCenter::DeploymentMigrateApi` | [**cancel**](docs/DeploymentMigrateApi.md#cancel) | **POST** /rest/vcenter/deployment/migrate?action&#x3D;cancel | Cancel the appliance migration that is in progress.
`VSphereAutomation::VCenter::DeploymentMigrateApi` | [**check**](docs/DeploymentMigrateApi.md#check) | **POST** /rest/vcenter/deployment/migrate?action&#x3D;check | Run sanity checks using the MigrateSpec parameters passed.
`VSphereAutomation::VCenter::DeploymentMigrateApi` | [**get**](docs/DeploymentMigrateApi.md#get) | **GET** /rest/vcenter/deployment/migrate | Get the MigrateSpec parameters used to configure the ongoing appliance migration.
`VSphereAutomation::VCenter::DeploymentMigrateApi` | [**start**](docs/DeploymentMigrateApi.md#start) | **POST** /rest/vcenter/deployment/migrate?action&#x3D;start | Start the appliance migration.
`VSphereAutomation::VCenter::DeploymentMigrateActiveDirectoryApi` | [**check**](docs/DeploymentMigrateActiveDirectoryApi.md#check) | **POST** /rest/vcenter/deployment/migrate/active-directory?action&#x3D;check | Checks whether the provided Active Directory user has permission to join the migrated vCenter Server appliance to the domain.
`VSphereAutomation::VCenter::DeploymentQuestionApi` | [**answer**](docs/DeploymentQuestionApi.md#answer) | **POST** /rest/vcenter/deployment/question?action&#x3D;answer | Supply answer to the raised question.
`VSphereAutomation::VCenter::DeploymentQuestionApi` | [**get**](docs/DeploymentQuestionApi.md#get) | **GET** /rest/vcenter/deployment/question | Get the question that was raised during the configuration.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**cancel**](docs/DeploymentUpgradeApi.md#cancel) | **POST** /rest/vcenter/deployment/upgrade?action&#x3D;cancel | Cancel the appliance upgrade that is in progress.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**check**](docs/DeploymentUpgradeApi.md#check) | **POST** /rest/vcenter/deployment/upgrade?action&#x3D;check | Run sanity checks using the UpgradeSpec parameters passed.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**get**](docs/DeploymentUpgradeApi.md#get) | **GET** /rest/vcenter/deployment/upgrade | Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**start**](docs/DeploymentUpgradeApi.md#start) | **POST** /rest/vcenter/deployment/upgrade?action&#x3D;start | Start the appliance installation.
`VSphereAutomation::VCenter::ExtensionTasksApi` | [**create**](docs/ExtensionTasksApi.md#create) | **POST** /rest/vcenter/extension/tasks | Returns a taskId for the task using the CreateSpec. The taskId can be used for querying or updating the status of the task by the client. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::ExtensionTasksApi` | [**update**](docs/ExtensionTasksApi.md#update) | **PATCH** /rest/vcenter/extension/tasks/{task_id} | Updates the information of the operation associated with a task on the ManagedObjects. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::FolderApi` | [**list**](docs/FolderApi.md#list) | **GET** /rest/vcenter/folder | Returns information about at most 1000 visible (subject to permission checks) folders in vCenter matching the Folder.FilterSpec.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**create**](docs/GuestCustomizationSpecsApi.md#create) | **POST** /rest/vcenter/guest/customization-specs | Creates a customization specification.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**delete**](docs/GuestCustomizationSpecsApi.md#delete) | **DELETE** /rest/vcenter/guest/customization-specs/{name} | Deletes a customization specification with the specified identifier.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**export**](docs/GuestCustomizationSpecsApi.md#export) | **POST** /rest/vcenter/guest/customization-specs/{name}?action&#x3D;export | Returns the content of the customization specification in the specified format. Note that any passwords in the customization specification will be set to blank values during the export operation.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**get**](docs/GuestCustomizationSpecsApi.md#get) | **GET** /rest/vcenter/guest/customization-specs/{name} | Returns the guest customization specification from vCenter with the specified identifier.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**import_specification**](docs/GuestCustomizationSpecsApi.md#import_specification) | **POST** /rest/vcenter/guest/customization-specs?action&#x3D;import | Converts a well formatted string to a CustomizationSpecs.CreateSpec. The resulting object can be passed to CustomizationSpecs.create operation.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**list**](docs/GuestCustomizationSpecsApi.md#list) | **GET** /rest/vcenter/guest/customization-specs | Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**set**](docs/GuestCustomizationSpecsApi.md#set) | **POST** /rest/vcenter/guest/customization-specs/{name} | Sets an existing specification, possibly after retrieving (by using CustomizationSpecs.get) and editing it.
`VSphereAutomation::VCenter::HlmCommunityApi` | [**add_task**](docs/HlmCommunityApi.md#add_task) | **POST** /rest/vcenter/hlm/community?action&#x3D;add&amp;vmw-task&#x3D;true | Adds the target node to the community. By default, the first member of the community id the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmCommunityApi` | [**check**](docs/HlmCommunityApi.md#check) | **POST** /rest/vcenter/hlm/community?action&#x3D;check | Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmCommunityApi` | [**check_task**](docs/HlmCommunityApi.md#check_task) | **POST** /rest/vcenter/hlm/community?action&#x3D;check&amp;vmw-task&#x3D;true | Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmCommunityApi` | [**get**](docs/HlmCommunityApi.md#get) | **GET** /rest/vcenter/hlm/community | Information about the community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmCommunityApi` | [**remove_task**](docs/HlmCommunityApi.md#remove_task) | **POST** /rest/vcenter/hlm/community?action&#x3D;remove&amp;vmw-task&#x3D;true | Removes a specified node from a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmConvergenceApi` | [**converge_task**](docs/HlmConvergenceApi.md#converge_task) | **GET** /rest/vcenter/hlm/convergence?vmw-task&#x3D;true | Performs convergence checks for whole community in all services. This can be called after link finished to check whether the system is available. Or anytime want to know whether the system is converged after data been modified. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmMultiSddcApi` | [**set**](docs/HlmMultiSddcApi.md#set) | **PUT** /rest/vcenter/hlm/multiSddc | Sets the Multi SDDC feature to enabled on the appliance. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmRemoteWorkerApi` | [**link**](docs/HlmRemoteWorkerApi.md#link) | **POST** /rest/vcenter/hlm/remote/link | Does operations for link as hvc solution user on the remote or target node. Currently, it creates a new trust for domain per the given spec. Note: This is only a pass through API which will call VCTrusts.create after validating privileges required to create trusts as part of creating Linked vCenters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HlmSddcsApi` | [**list**](docs/HlmSddcsApi.md#list) | **GET** /rest/vcenter/hlm/sddcs | Lists all Sddcs that are under the same organization as the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HostApi` | [**connect**](docs/HostApi.md#connect) | **POST** /rest/vcenter/host/{host}/connect | Connect to the host corresponding to host previously added to the vCenter server.
`VSphereAutomation::VCenter::HostApi` | [**create**](docs/HostApi.md#create) | **POST** /rest/vcenter/host | Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.
`VSphereAutomation::VCenter::HostApi` | [**delete**](docs/HostApi.md#delete) | **DELETE** /rest/vcenter/host/{host} | Remove a standalone host from the vCenter Server.
`VSphereAutomation::VCenter::HostApi` | [**disconnect**](docs/HostApi.md#disconnect) | **POST** /rest/vcenter/host/{host}/disconnect | Disconnect the host corresponding to host from the vCenter server
`VSphereAutomation::VCenter::HostApi` | [**list**](docs/HostApi.md#list) | **GET** /rest/vcenter/host | Returns information about at most 2500 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.
`VSphereAutomation::VCenter::HostFeaturesTechPreviewApi` | [**get**](docs/HostFeaturesTechPreviewApi.md#get) | **GET** /rest/vcenter/host/{host}/features/tech-preview | Returns the current status of the feature switches in Tech Preview mode for the feature names in the input set. If the input set is empty, returns the status of all the features. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HostFeaturesTechPreviewApi` | [**update**](docs/HostFeaturesTechPreviewApi.md#update) | **PATCH** /rest/vcenter/host/{host}/features/tech-preview | Sets the status to enabled/disabled for the Tech Preview feature switches passed in the input map. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HostMaintenanceRequestsApi` | [**create**](docs/HostMaintenanceRequestsApi.md#create) | **POST** /api/vcenter/host/{host}/maintenance/requests | Create a new maintenance request for a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource HostSystem referenced by the parameter host requires Host.Config.Maintenance.  
`VSphereAutomation::VCenter::HostMaintenanceRequestsApi` | [**delete**](docs/HostMaintenanceRequestsApi.md#delete) | **POST** /api/vcenter/host/maintenance/requests?action&#x3D;delete | Deletes the given set of maintenance requests. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HostMaintenanceRequestsApi` | [**list**](docs/HostMaintenanceRequestsApi.md#list) | **GET** /api/vcenter/host/maintenance/requests | Returns information about maintenance requests matching the Requests.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
`VSphereAutomation::VCenter::HostTagsApi` | [**add**](docs/HostTagsApi.md#add) | **POST** /rest/vcenter/host/{host}/tags?action&#x3D;add | Attaches tags to a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HostTagsApi` | [**get**](docs/HostTagsApi.md#get) | **GET** /rest/vcenter/host/{host}/tags | Lists all tags attached to the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HostTagsApi` | [**remove**](docs/HostTagsApi.md#remove) | **POST** /rest/vcenter/host/{host}/tags?action&#x3D;remove | Detaches tags from a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HvcLinksApi` | [**create**](docs/HvcLinksApi.md#create) | **POST** /rest/hvc/links | Creates a new hybrid link between the local and foreign PSC. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcLinksApi` | [**delete**](docs/HvcLinksApi.md#delete) | **DELETE** /rest/hvc/links/{link} | Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcLinksApi` | [**delete_with_credentials**](docs/HvcLinksApi.md#delete_with_credentials) | **POST** /rest/hvc/links/{link}?action&#x3D;delete | Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HvcLinksApi` | [**get**](docs/HvcLinksApi.md#get) | **GET** /rest/hvc/links/{link} | Gets information for a link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HvcLinksApi` | [**list**](docs/HvcLinksApi.md#list) | **GET** /rest/hvc/links | Enumerates the list of registered hybrid links. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcLinksSyncApi` | [**remediate**](docs/HvcLinksSyncApi.md#remediate) | **POST** /rest/hvc/links/{link}/sync?action&#x3D;remediate | Remediates the sync state between the linked domains by initiating a fresh sync for certificate providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::HvcLinksSyncApi` | [**reset**](docs/HvcLinksSyncApi.md#reset) | **POST** /rest/hvc/links/{link}/sync?action&#x3D;reset | Resets the sync state between the linked domains by initiating a fresh sync for all providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcLinksSyncProvidersApi` | [**get**](docs/HvcLinksSyncProvidersApi.md#get) | **GET** /rest/hvc/links/{link}/sync/providers/{provider} | Gets Sync information for a sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcLinksSyncProvidersApi` | [**list**](docs/HvcLinksSyncProvidersApi.md#list) | **GET** /rest/hvc/links/{link}/sync/providers | Enumerates the sync providers. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcLinksSyncProvidersApi` | [**start**](docs/HvcLinksSyncProvidersApi.md#start) | **POST** /rest/hvc/links/{link}/sync/providers/{provider}?action&#x3D;start | Initiates synchronization between the local and remote replicas for the sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcManagementAdministratorsApi` | [**add**](docs/HvcManagementAdministratorsApi.md#add) | **POST** /rest/hvc/management/administrators?action&#x3D;add | Add the local sso group with the new group. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcManagementAdministratorsApi` | [**get**](docs/HvcManagementAdministratorsApi.md#get) | **GET** /rest/hvc/management/administrators | Enumerates the set of all the groups in the local sso group. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcManagementAdministratorsApi` | [**remove**](docs/HvcManagementAdministratorsApi.md#remove) | **POST** /rest/hvc/management/administrators?action&#x3D;remove | Remove the group from the local sso group. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::HvcManagementAdministratorsApi` | [**set**](docs/HvcManagementAdministratorsApi.md#set) | **PUT** /rest/hvc/management/administrators | Sets the groups in the local sso group. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi` | [**create**](docs/IdentityForeignSecurityPrincipalsApi.md#create) | **POST** /rest/vcenter/identity/foreign-security-principals | Create a foreign security principal. If the same Id already exists, update the record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi` | [**get**](docs/IdentityForeignSecurityPrincipalsApi.md#get) | **GET** /rest/vcenter/identity/foreign-security-principals/{principal} | Retrieve foreign security principal based on the identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi` | [**list_domains**](docs/IdentityForeignSecurityPrincipalsApi.md#list_domains) | **GET** /rest/vcenter/identity/foreign-security-principals/domains | Retrieve all domain names associated with foreign security principals. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi` | [**update**](docs/IdentityForeignSecurityPrincipalsApi.md#update) | **PATCH** /rest/vcenter/identity/foreign-security-principals/{id} | Update a foreign security principal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::IdentityProvidersApi` | [**create**](docs/IdentityProvidersApi.md#create) | **POST** /rest/vcenter/identity/providers | Create a vCenter Server identity provider.
`VSphereAutomation::VCenter::IdentityProvidersApi` | [**delete**](docs/IdentityProvidersApi.md#delete) | **DELETE** /rest/vcenter/identity/providers/{provider} | Delete a vCenter Server identity provider.
`VSphereAutomation::VCenter::IdentityProvidersApi` | [**get**](docs/IdentityProvidersApi.md#get) | **GET** /rest/vcenter/identity/providers/{provider} | Retrieve detailed information of the specified identity provider.
`VSphereAutomation::VCenter::IdentityProvidersApi` | [**list**](docs/IdentityProvidersApi.md#list) | **GET** /rest/vcenter/identity/providers | Retrieve all identity providers.
`VSphereAutomation::VCenter::IdentityProvidersApi` | [**update**](docs/IdentityProvidersApi.md#update) | **PATCH** /rest/vcenter/identity/providers/{provider} | Update a vCenter Server identity provider.
`VSphereAutomation::VCenter::IdentityVcIdentityApi` | [**get**](docs/IdentityVcIdentityApi.md#get) | **GET** /rest/vcenter/identity/vc-identity | Retrieve VcIdentity for local domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::IdentityVcIdentityApi` | [**update**](docs/IdentityVcIdentityApi.md#update) | **PATCH** /rest/vcenter/identity/vc-identity | Update the VcIdentity for local domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::InventoryDatastoreApi` | [**find**](docs/InventoryDatastoreApi.md#find) | **POST** /rest/com/vmware/vcenter/inventory/datastore?~action&#x3D;find | Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.
`VSphereAutomation::VCenter::InventoryNetworkApi` | [**find**](docs/InventoryNetworkApi.md#find) | **POST** /rest/com/vmware/vcenter/inventory/network?~action&#x3D;find | Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
`VSphereAutomation::VCenter::IsoImageApi` | [**mount**](docs/IsoImageApi.md#mount) | **POST** /rest/com/vmware/vcenter/iso/image/id:{library_item}?~action&#x3D;mount | Mounts an ISO image from a content library on a virtual machine.
`VSphereAutomation::VCenter::IsoImageApi` | [**unmount**](docs/IsoImageApi.md#unmount) | **POST** /rest/com/vmware/vcenter/iso/image/id:{vm}?~action&#x3D;unmount | Unmounts a previously mounted CD-ROM using an ISO image as a backing.
`VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi` | [**create**](docs/LcmDiscoveryAssociatedProductsApi.md#create) | **POST** /api/vcenter/lcm/discovery/associated-products | Associates a VMware product with vCenter Server manually. The product must be taken from the product catalog API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi` | [**delete**](docs/LcmDiscoveryAssociatedProductsApi.md#delete) | **DELETE** /api/vcenter/lcm/discovery/associated-products/{product} | Deletes or dissociates a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be deleted or dissociated. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi` | [**get**](docs/LcmDiscoveryAssociatedProductsApi.md#get) | **GET** /api/vcenter/lcm/discovery/associated-products/{product} | Returns the detailed information of a product associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi` | [**list**](docs/LcmDiscoveryAssociatedProductsApi.md#list) | **GET** /api/vcenter/lcm/discovery/associated-products | Retrieves a list of all associated VMware product deployments with vCenter Server in the environment. The list contains both product deployments discovered automatically and deployments registered manually through the API. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmDiscoveryAssociatedProductsApi` | [**update**](docs/LcmDiscoveryAssociatedProductsApi.md#update) | **PATCH** /api/vcenter/lcm/discovery/associated-products/{product} | Modifies a VMware product associated with vCenter Server which was added manually. Automatically discovered VMware products cannot be modified. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmDiscoveryInteropReportApi` | [**create_task**](docs/LcmDiscoveryInteropReportApi.md#create_task) | **POST** /api/vcenter/lcm/discovery/interop-report?vmw-task&#x3D;true | Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
`VSphereAutomation::VCenter::LcmDiscoveryProductCatalogApi` | [**list**](docs/LcmDiscoveryProductCatalogApi.md#list) | **GET** /api/vcenter/lcm/discovery/product-catalog | Retrieves a list of all VMware products that can be associated with vCenter Server. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmInstallApi` | [**check**](docs/LcmInstallApi.md#check) | **POST** /rest/vcenter/lcm/install?action&#x3D;check | Performs a precheck for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmInstallApi` | [**start**](docs/LcmInstallApi.md#start) | **POST** /rest/vcenter/lcm/install?action&#x3D;start | Deploys the appliance for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmInstallScheduledApi` | [**get**](docs/LcmInstallScheduledApi.md#get) | **GET** /rest/vcenter/lcm/install/scheduled/{task} | Retrieves information of the install operation that has the given id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::LcmInstallScheduledApi` | [**set**](docs/LcmInstallScheduledApi.md#set) | **PUT** /rest/vcenter/lcm/install/scheduled/{task} | Updates the information of the task that has the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::LcmReportsApi` | [**get**](docs/LcmReportsApi.md#get) | **GET** /api/vcenter/lcm/reports/{report} | Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmStatusManagerApi` | [**check**](docs/LcmStatusManagerApi.md#check) | **GET** /rest/vcenter/lcm/appliance-status | Retrieves the status of the appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmTasksApi` | [**delete**](docs/LcmTasksApi.md#delete) | **DELETE** /rest/vcenter/lcm/tasks/{task} | Removes the task of the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::LcmTasksActiveApi` | [**list**](docs/LcmTasksActiveApi.md#list) | **GET** /rest/vcenter/lcm/tasks/active | Retrieves information of the tasks that are being executed. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::LcmTasksHistoricalApi` | [**list**](docs/LcmTasksHistoricalApi.md#list) | **GET** /rest/vcenter/lcm/tasks/historical | Retrieves information of the tasks that are has been executed. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::LcmTasksScheduledApi` | [**list**](docs/LcmTasksScheduledApi.md#list) | **GET** /rest/vcenter/lcm/tasks/scheduled | Retrieves information of the tasks that are scheduled to be executed in the future. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::LcmTopologyNodesApi` | [**list**](docs/LcmTopologyNodesApi.md#list) | **GET** /api/vcenter/lcm/topology/nodes | This operation retrieves detailed information about all linked vCenter Server nodes. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmUpdatePendingApi` | [**get**](docs/LcmUpdatePendingApi.md#get) | **GET** /api/vcenter/lcm/update/pending/{version} | Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmUpdatePendingApi` | [**list**](docs/LcmUpdatePendingApi.md#list) | **GET** /api/vcenter/lcm/update/pending | Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
`VSphereAutomation::VCenter::LcmUpdatePrecheckReportApi` | [**create_task**](docs/LcmUpdatePrecheckReportApi.md#create_task) | **POST** /api/vcenter/lcm/update/pending/{version}/precheck-report?vmw-task&#x3D;true | Creates a vCenter Server pre-update compatibility check report for the pending update version. The report can be exported and downloaded in CSV format.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
`VSphereAutomation::VCenter::LcmValidationApi` | [**check_appliance_name_task**](docs/LcmValidationApi.md#check_appliance_name_task) | **POST** /rest/vcenter/lcm/validation?action&#x3D;check-appliance-name&amp;vmw-task&#x3D;true | Validate the name of the appliance to be deployed.     1. 1. Return False if the there is already an appliance that has the same name as given in the spec exist in the path.  . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NamespaceManagementClusterAvailableVersionsApi` | [**list**](docs/NamespaceManagementClusterAvailableVersionsApi.md#list) | **GET** /api/vcenter/namespace-management/software/cluster-available-versions | Get information about each available upgrade.
`VSphereAutomation::VCenter::NamespaceManagementClusterCompatibilityApi` | [**list**](docs/NamespaceManagementClusterCompatibilityApi.md#list) | **GET** /api/vcenter/namespace-management/cluster-compatibility | Returns Namespaces compatibility information for all clusters in vCenter matching the ClusterCompatibility.FilterSpec. The result contains only visible (subject to permission checks) clusters.
`VSphereAutomation::VCenter::NamespaceManagementClusterSizeInfoApi` | [**get**](docs/NamespaceManagementClusterSizeInfoApi.md#get) | **GET** /api/vcenter/namespace-management/cluster-size-info | Get information about the default values associated with various sizes.
`VSphereAutomation::VCenter::NamespaceManagementClustersApi` | [**disable**](docs/NamespaceManagementClustersApi.md#disable) | **POST** /api/vcenter/namespace-management/clusters/{cluster}?action&#x3D;disable | Disable vSphere Namespaces on the cluster. This operation tears down the Kubernetes instance and the worker nodes associated with vSphere Namespaces enabled cluster.
`VSphereAutomation::VCenter::NamespaceManagementClustersApi` | [**enable**](docs/NamespaceManagementClustersApi.md#enable) | **POST** /api/vcenter/namespace-management/clusters/{cluster}?action&#x3D;enable | Enable vSphere Namespaces on the cluster. This operation sets up Kubernetes instance for the cluster along with worker nodes.
`VSphereAutomation::VCenter::NamespaceManagementClustersApi` | [**get**](docs/NamespaceManagementClustersApi.md#get) | **GET** /api/vcenter/namespace-management/clusters/{cluster} | Returns information about a specific cluster.
`VSphereAutomation::VCenter::NamespaceManagementClustersApi` | [**list**](docs/NamespaceManagementClustersApi.md#list) | **GET** /api/vcenter/namespace-management/clusters | Returns information about all clusters on which vSphere Namespaces are enabled on this vCenter.
`VSphereAutomation::VCenter::NamespaceManagementClustersApi` | [**rotate_password**](docs/NamespaceManagementClustersApi.md#rotate_password) | **POST** /api/vcenter/namespace-management/clusters/{cluster}?action&#x3D;rotate_password | Request a new root password for all control plane nodes in the cluster. This operation generates a new root password and configures every control plane node in the cluster to accept it for authentication.
`VSphereAutomation::VCenter::NamespaceManagementClustersApi` | [**set**](docs/NamespaceManagementClustersApi.md#set) | **PUT** /api/vcenter/namespace-management/clusters/{cluster} | Set a new configuration on the cluster object. The specified configuration is applied in entirety and will replace the current configuration fully.
`VSphereAutomation::VCenter::NamespaceManagementClustersApi` | [**update**](docs/NamespaceManagementClustersApi.md#update) | **PATCH** /api/vcenter/namespace-management/clusters/{cluster} | Update configuration on the cluster object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.
`VSphereAutomation::VCenter::NamespaceManagementDistributedSwitchCompatibilityApi` | [**list**](docs/NamespaceManagementDistributedSwitchCompatibilityApi.md#list) | **GET** /api/vcenter/namespace-management/distributed-switch-compatibility | Returns Namespaces compatibility information of Distributed Switches in vCenter associated with the vCenter cluster, matching the DistributedSwitchCompatibility.FilterSpec.
`VSphereAutomation::VCenter::NamespaceManagementEdgeClusterCompatibilityApi` | [**list**](docs/NamespaceManagementEdgeClusterCompatibilityApi.md#list) | **GET** /api/vcenter/namespace-management/edge-cluster-compatibility | Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec.
`VSphereAutomation::VCenter::NamespaceManagementEventsEventsApi` | [**get**](docs/NamespaceManagementEventsEventsApi.md#get) | **GET** /rest/vcenter/namespace-management/events/{cluster} | Returns Kubernetes events related to a specific cluster.
`VSphereAutomation::VCenter::NamespaceManagementHostsConfigApi` | [**get**](docs/NamespaceManagementHostsConfigApi.md#get) | **GET** /api/vcenter/namespace-management/capability | Returns support and licensing information about hosts under a VC.
`VSphereAutomation::VCenter::NamespaceManagementNamespaceResourceOptionsApi` | [**get**](docs/NamespaceManagementNamespaceResourceOptionsApi.md#get) | **GET** /api/vcenter/namespace-management/clusters/{cluster}/workload-resource-options | Get the information about the objects used to set and update resource quota keys for version of Kubernetes running on {#link cluster}.
`VSphereAutomation::VCenter::NamespaceManagementNodesApi` | [**enter_maintenance_mode**](docs/NamespaceManagementNodesApi.md#enter_maintenance_mode) | **POST** /rest/vcenter/namespace-management/clusters/{cluster}/nodes?action&#x3D;enter_maintenance_mode | Enter Namespaces maintenance mode on the node. This operation removes Kubernetes pods from the given node and prevents further scheduling of pods on the node. This operation can be cancelled by calling exitMaintenanceMode operation on the node.
`VSphereAutomation::VCenter::NamespaceManagementNodesApi` | [**exit_maintenance_mode**](docs/NamespaceManagementNodesApi.md#exit_maintenance_mode) | **POST** /rest/vcenter/namespace-management/clusters/{cluster}/nodes?action&#x3D;exit_maintenance_mode | Exit Namespaces maintenance mode on the node. This operation enables scheduling of Kubernetes pods on the node.
`VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi` | [**get**](docs/NamespaceManagementSoftwareClustersApi.md#get) | **GET** /api/vcenter/namespace-management/software/clusters/{cluster} | Returns upgrade related information of a specific cluster.
`VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi` | [**list**](docs/NamespaceManagementSoftwareClustersApi.md#list) | **GET** /api/vcenter/namespace-management/software/clusters | Returns upgrade related information about all WCP enabled clusters.
`VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi` | [**upgrade**](docs/NamespaceManagementSoftwareClustersApi.md#upgrade) | **POST** /api/vcenter/namespace-management/software/clusters/{cluster}?action&#x3D;upgrade | Upgrade the cluster to a specific version. This operation upgrades the components on control plane VMs and worker plane hosts based on the selected version. Before upgrading, this operation performs pre-checks and sets the evaluation response in Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the severity, the upgrade may or may not proceed beyond prechecks. Here is a list of severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck operation - WARNING: Upgrade proceeds beyond precheck operation only if UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck operation uninterrupted
`VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi` | [**upgrade_multiple**](docs/NamespaceManagementSoftwareClustersApi.md#upgrade_multiple) | **POST** /api/vcenter/namespace-management/software/clusters?action&#x3D;upgradeMultiple | Upgrade a set of clusters to its corresponding specific version.
`VSphereAutomation::VCenter::NamespaceManagementStatsTimeSeriesApi` | [**get**](docs/NamespaceManagementStatsTimeSeriesApi.md#get) | **GET** /api/vcenter/namespace-management/stats/time-series | Gather statistical values for a cluster, namespace, or pod.
`VSphereAutomation::VCenter::NamespaceManagementSupportBundleApi` | [**create**](docs/NamespaceManagementSupportBundleApi.md#create) | **POST** /api/vcenter/namespace-management/clusters/{cluster}/support-bundle | Returns the location SupportBundle.Location information for downloading the Namespaces-related support bundle for the specified cluster.   Retrieving a support bundle involves two steps:      - Step 1: Invoke operation to provision a token and a URI.    - Step 2: Make an HTTP GET request using URI and one time used token returned in step 1 to generate the support bundle and return it.   There can only be one valid token per cluster at any given time. If this operation is invoked again for the same cluster identifier while a token still valid, the API will return the same SupportBundle.Location response.   The HTTP GET request will:      -  return 401 (Not Authorized) if the download URL is recognized, but the token is invalid.    -  otherwise return 200 (OK), mark the token used (invalidating it for any future use), open a application/tar download stream for the client, and start the bundle process. As part of its work, the API will orchestrate support bundling on the worker nodes of a cluster. If a failure occurs during the collection of support bundle from worker node, the API will not abort the request, but will log a warning and move on to processing other worker nodes' bundles. The API will only abort its operation if the content of the stream has been corrupted. When the API has to abort its operation (and the response stream), it will not provide any indication of failures to the client. The client will need to verify validity of the resultant file based on the format specified in the response's Content-Disposition header. 
`VSphereAutomation::VCenter::NamespacesAccessApi` | [**create**](docs/NamespacesAccessApi.md#create) | **POST** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Set up access control for the subject on given domain on the namespace.
`VSphereAutomation::VCenter::NamespacesAccessApi` | [**delete**](docs/NamespacesAccessApi.md#delete) | **DELETE** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Remove access control of the subject on given domain from the namespace.
`VSphereAutomation::VCenter::NamespacesAccessApi` | [**get**](docs/NamespacesAccessApi.md#get) | **GET** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Get the information about the access control of the subject on given domain on the namespace.
`VSphereAutomation::VCenter::NamespacesAccessApi` | [**set**](docs/NamespacesAccessApi.md#set) | **PUT** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Set new access control on the namespace for the subject on given domain.
`VSphereAutomation::VCenter::NamespacesEventsEventsApi` | [**get**](docs/NamespacesEventsEventsApi.md#get) | **GET** /rest/vcenter/namespaces/events/{namespace} | Returns Kubernetes events related to a specific namespace.
`VSphereAutomation::VCenter::NamespacesInstancesApi` | [**create**](docs/NamespacesInstancesApi.md#create) | **POST** /api/vcenter/namespaces/instances | Create namespace object in the cluster.
`VSphereAutomation::VCenter::NamespacesInstancesApi` | [**delete**](docs/NamespacesInstancesApi.md#delete) | **DELETE** /api/vcenter/namespaces/instances/{namespace} | Delete the namespace object in the cluster.
`VSphereAutomation::VCenter::NamespacesInstancesApi` | [**get**](docs/NamespacesInstancesApi.md#get) | **GET** /api/vcenter/namespaces/instances/{namespace} | Returns information about a specific namespace.
`VSphereAutomation::VCenter::NamespacesInstancesApi` | [**list**](docs/NamespacesInstancesApi.md#list) | **GET** /api/vcenter/namespaces/instances | Returns the information about all namespaces on this vCenter.
`VSphereAutomation::VCenter::NamespacesInstancesApi` | [**set**](docs/NamespacesInstancesApi.md#set) | **PUT** /api/vcenter/namespaces/instances/{namespace} | Set a new configuration on the namespace object. The specified configuration is applied in entirety and will replace the current configuration fully.
`VSphereAutomation::VCenter::NamespacesInstancesApi` | [**update**](docs/NamespacesInstancesApi.md#update) | **PATCH** /api/vcenter/namespaces/instances/{namespace} | Update the namespace object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.
`VSphereAutomation::VCenter::NamespacesSupervisorServicesApi` | [**set**](docs/NamespacesSupervisorServicesApi.md#set) | **PUT** /api/vcenter/namespace-management/clusters/{cluster}/supervisorservices/{service_ID} | Update the desired state for a Supervisor Service. The desired state is stored and updated in the vCenter Namespaces Supervisor Kubernetes layer. It may also be updated directly within Kubernetes, where the state is authoratively kept. Desired state is a combination of the enabled and version fields. The desired state is set and will be asynchronously remediated.
`VSphereAutomation::VCenter::NamespacesSystemregistryInstancesApi` | [**create**](docs/NamespacesSystemregistryInstancesApi.md#create) | **POST** /rest/vcenter/namespaces/systemregistry/instances | Create a namespace object whose name prefixed with \"vmware-system-registry\" for an integrated registry in the cluster.
`VSphereAutomation::VCenter::NamespacesSystemregistryInstancesApi` | [**delete**](docs/NamespacesSystemregistryInstancesApi.md#delete) | **DELETE** /rest/vcenter/namespaces/systemregistry/instances/{namespace} | Delete the namespace object created for an integrated registry in the cluster.
`VSphereAutomation::VCenter::NamespacesUserInstancesApi` | [**list**](docs/NamespacesUserInstancesApi.md#list) | **GET** /api/vcenter/namespaces-user/namespaces | Returns namespaces that user making the call is authorized to access.
`VSphereAutomation::VCenter::NetworkApi` | [**list**](docs/NetworkApi.md#list) | **GET** /rest/vcenter/network | Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the Network.FilterSpec.
`VSphereAutomation::VCenter::NetworkDistributedSwitchesApi` | [**list**](docs/NetworkDistributedSwitchesApi.md#list) | **GET** /rest/vcenter/network/distributed-switches | Returns information about at most 1000 visible (subject to permission checks) vSphere distributed switches in vCenter matching the DistributedSwitches.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxClustersApi` | [**get**](docs/NsxClustersApi.md#get) | **GET** /api/vcenter/nsx/clusters/{cluster} | Returns information about NSX networking specification on a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxClustersConfigurationApi` | [**disable**](docs/NsxClustersConfigurationApi.md#disable) | **POST** /api/vcenter/nsx/clusters/{cluster}/configuration?action&#x3D;disable | Disables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxClustersConfigurationApi` | [**enable**](docs/NsxClustersConfigurationApi.md#enable) | **POST** /api/vcenter/nsx/clusters/{cluster}/configuration?action&#x3D;enable | Enables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxClustersNetworkingStatusApi` | [**get**](docs/NsxClustersNetworkingStatusApi.md#get) | **GET** /api/vcenter/nsx/clusters/{cluster}/networking-status | Returns information about the overall configuration status of the cluster, status of the VDS which was used for the overlay network configuration of the cluster, configuration status and health status of the NSX Edge node(s) in the cluster, configuration status and health status of ESXi hosts in the cluster and information about the logical router in the NSX Edge node(s). Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxClustersStatusApi` | [**get**](docs/NsxClustersStatusApi.md#get) | **GET** /api/vcenter/nsx/clusters/{cluster}/status | Return the status of NSX configuration on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxClustersValidationApi` | [**check_edge_cluster_update_spec**](docs/NsxClustersValidationApi.md#check_edge_cluster_update_spec) | **POST** /api/vcenter/nsx/clusters/{cluster}/validation?action&#x3D;checkEdgeClusterUpdateSpec | Performs validation checks on the specification that can be used to update NSX Edge capabilities in an existing NSX Edge Cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxClustersValidationApi` | [**check_enable_specs**](docs/NsxClustersValidationApi.md#check_enable_specs) | **POST** /api/vcenter/nsx/clusters/{cluster}/validation?action&#x3D;checkEnableSpecs | Performs validation checks on the specification that can be used for enabling NSX networking with transport node configuration on all the hosts in a vSphere cluster and enabling NSX Edge cluster in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentCompatibilityApi` | [**check**](docs/NsxDeploymentCompatibilityApi.md#check) | **GET** /api/vcenter/nsx/deployment/compatibility/latest-version | Gets the latest update or patch version of the latest supported NSX binary available in my.vmware.com portal. This will be utilized by customers having the access to my.vmware.com portal from vCenter server. This operation requires that vCenter has internet access. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentCompatibilityApi` | [**get**](docs/NsxDeploymentCompatibilityApi.md#get) | **GET** /api/vcenter/nsx/deployment/compatibility | Gets the compatibility information between the currently installed NSX version and the current vCenter Server version. This operation is executed against data bundled in vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentConfigurationApi` | [**get**](docs/NsxDeploymentConfigurationApi.md#get) | **GET** /api/vcenter/nsx/deployment/configuration | Gets the configuration details of currently installed NSX on the vCenter Server Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentInstallApi` | [**cancel**](docs/NsxDeploymentInstallApi.md#cancel) | **POST** /api/vcenter/nsx/deployment/install?action&#x3D;cancel | Cancels the ongoing NSX installation on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentInstallApi` | [**get**](docs/NsxDeploymentInstallApi.md#get) | **GET** /api/vcenter/nsx/deployment/install | Gets the NSX appliance deployment status on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentInstallApi` | [**start**](docs/NsxDeploymentInstallApi.md#start) | **POST** /api/vcenter/nsx/deployment/install?action&#x3D;start | Starts the NSX appliance deployment on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentInstallApi` | [**uninstall**](docs/NsxDeploymentInstallApi.md#uninstall) | **POST** /api/vcenter/nsx/deployment/install?action&#x3D;uninstall | Uninstalls the NSX appliance deployed on the current vCenter. This API can only uninstall NSXI and cannot be used to uninstall NSXT. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentInstallRecommendationsApi` | [**get**](docs/NsxDeploymentInstallRecommendationsApi.md#get) | **GET** /api/vcenter/nsx/deployment/install-recommendations | Gets the NSX appliance deployment sizes and recommended NSX size as per the vCenter size to which we want to install NSX. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentLicenseApi` | [**get**](docs/NsxDeploymentLicenseApi.md#get) | **GET** /api/vcenter/nsx/deployment/license | Gets the NSX licensing details applied to the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentLicenseApi` | [**update**](docs/NsxDeploymentLicenseApi.md#update) | **PATCH** /api/vcenter/nsx/deployment/license | Updates the license key on the NSX Manager Appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentLicenseApi` | [**validate**](docs/NsxDeploymentLicenseApi.md#validate) | **POST** /api/vcenter/nsx/deployment/license?action&#x3D;validate | Validates the license key. This operation checks if the license key can be successfully applied and is a valid WCP license. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi` | [**cancel**](docs/NsxDeploymentSoftwarePackageApi.md#cancel) | **POST** /api/vcenter/nsx/deployment/software-package?action&#x3D;cancel | Cancel running NSX download or upload process. This would interrupt the NSX binary upload or download process and clean up the NSX binary being uploaded. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi` | [**download**](docs/NsxDeploymentSoftwarePackageApi.md#download) | **POST** /api/vcenter/nsx/deployment/software-package?action&#x3D;download | Download NSX binaries from the my.vmware.com portal on vCenter Server. To call this API user needs to first Authenticate, then get List of accounts, select a listed account and check its entitlement and then invoke download. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi` | [**get**](docs/NsxDeploymentSoftwarePackageApi.md#get) | **GET** /api/vcenter/nsx/deployment/software-package | Gets Stage operation status like MUB file staged version, staging in progress, stage percentage etc. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentSoftwarePackageApi` | [**upload**](docs/NsxDeploymentSoftwarePackageApi.md#upload) | **POST** /api/vcenter/nsx/deployment/software-package?action&#x3D;upload | Upload NSX binaries to vCenter server. This API would provide the URI which has to be used to upload the content. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentSupportedVersionApi` | [**get**](docs/NsxDeploymentSupportedVersionApi.md#get) | **GET** /api/vcenter/nsx/deployment/supported-version | Gets the supported NSX version for a current vCenter Server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentUpgradeApi` | [**check**](docs/NsxDeploymentUpgradeApi.md#check) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;check | Runs checks for available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentUpgradeApi` | [**get**](docs/NsxDeploymentUpgradeApi.md#get) | **GET** /api/vcenter/nsx/deployment/upgrade | Gets NSX deployment information, this includes the overall upgrade status, the available release version, the last precheck run time, the current operation details and the list of clusters with their upgrade status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentUpgradeApi` | [**pause**](docs/NsxDeploymentUpgradeApi.md#pause) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;pause | Pauses already running NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentUpgradeApi` | [**resume**](docs/NsxDeploymentUpgradeApi.md#resume) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;resume | Resumes already paused NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentUpgradeApi` | [**start**](docs/NsxDeploymentUpgradeApi.md#start) | **POST** /api/vcenter/nsx/deployment/upgrade?action&#x3D;start | Applies available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxDeploymentUpgradeStatusApi` | [**get**](docs/NsxDeploymentUpgradeStatusApi.md#get) | **GET** /api/vcenter/nsx/deployment/upgrade-status | Gets the information about the current NSX upgrade operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxEdgeClustersApi` | [**get**](docs/NsxEdgeClustersApi.md#get) | **GET** /api/vcenter/nsx/edge-clusters/{cluster} | Return information about NSX Edge cluster specification on a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxEdgeClustersApi` | [**update**](docs/NsxEdgeClustersApi.md#update) | **POST** /api/vcenter/nsx/edge-clusters/{cluster}?action&#x3D;update | Update NSX Edge capabilities of an existing NSX Edge cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxEdgeClustersConfigurationApi` | [**disable**](docs/NsxEdgeClustersConfigurationApi.md#disable) | **POST** /api/vcenter/nsx/edge-clusters/{cluster}/configuration?action&#x3D;disable | Disables NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxEdgeClustersConfigurationApi` | [**enable**](docs/NsxEdgeClustersConfigurationApi.md#enable) | **POST** /api/vcenter/nsx/edge-clusters/{cluster}/configuration?action&#x3D;enable | Enable NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxEdgeClustersStatusApi` | [**get**](docs/NsxEdgeClustersStatusApi.md#get) | **GET** /api/vcenter/nsx/edge-clusters/{cluster}/status | Return the status of configuration of NSX Edge capabilities on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxIpPoolsApi` | [**get**](docs/NsxIpPoolsApi.md#get) | **GET** /api/vcenter/nsx/ip-pools/{ip_pool} | Read the NSX IP pool. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxIpPoolsApi` | [**list**](docs/NsxIpPoolsApi.md#list) | **GET** /api/vcenter/nsx/ip-pools | Returns the list of the NSX IP pools. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxManagementNetworkCompatibilityApi` | [**list**](docs/NsxManagementNetworkCompatibilityApi.md#list) | **GET** /api/vcenter/nsx/management-network-compatibility | List the distributed port groups (DVPG) and the network configuration of VMKernel NICs associated with the given cluster and dvSwitch. This information will be used in populating the ManagementNetworkSpec for the Configuration.enable API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxRecoveryApi` | [**execute**](docs/NsxRecoveryApi.md#execute) | **POST** /api/vcenter/nsx/recovery?action&#x3D;execute | Recovers the system from the loss of WCP service and/or NSX. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxRecoveryApi` | [**execute_status**](docs/NsxRecoveryApi.md#execute_status) | **GET** /api/vcenter/nsx/recovery/execute/status | Gets the recovery status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxRecoveryApi` | [**get**](docs/NsxRecoveryApi.md#get) | **POST** /api/vcenter/nsx/recovery?action&#x3D;get | Returns whether recovery is needed. If needed, then returns the type of loss that needs recovery. If recovery is not needed, then clears the recovery state to allow the WCP service to enter steady state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::NsxdPrincipalIdentityApi` | [**create**](docs/NsxdPrincipalIdentityApi.md#create) | **POST** /api/vcenter/nsxd/principal-identity/create | Create the Principal Identity within configured NSX environment.
`VSphereAutomation::VCenter::OvfExportFlagApi` | [**list**](docs/OvfExportFlagApi.md#list) | **GET** /rest/com/vmware/vcenter/ovf/export-flag | Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
`VSphereAutomation::VCenter::OvfImportFlagApi` | [**list**](docs/OvfImportFlagApi.md#list) | **GET** /rest/com/vmware/vcenter/ovf/import-flag | Returns information about the import flags supported by the deployment platform. <p> The supported flags are: <dl> <dt>LAX</dt> <dd>Lax mode parsing of the OVF descriptor.</dd> </dl> <p> Future server versions might support additional flags.
`VSphereAutomation::VCenter::OvfLibraryItemApi` | [**create**](docs/OvfLibraryItemApi.md#create) | **POST** /rest/com/vmware/vcenter/ovf/library-item | Creates a library item in content library from a virtual machine or virtual appliance. <p> This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. Meta data such as name and description is not updated for the exisitng library item. </p>
`VSphereAutomation::VCenter::OvfLibraryItemApi` | [**deploy**](docs/OvfLibraryItemApi.md#deploy) | **POST** /rest/com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action&#x3D;deploy | Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. <p> This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. </p>
`VSphereAutomation::VCenter::OvfLibraryItemApi` | [**filter**](docs/OvfLibraryItemApi.md#filter) | **POST** /rest/com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action&#x3D;filter | Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. <p> This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. </p>
`VSphereAutomation::VCenter::ResourcePoolApi` | [**create**](docs/ResourcePoolApi.md#create) | **POST** /rest/vcenter/resource-pool | Creates a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the attribute ResourcePool.CreateSpec.parent requires Resource.CreatePool.  
`VSphereAutomation::VCenter::ResourcePoolApi` | [**delete**](docs/ResourcePoolApi.md#delete) | **DELETE** /rest/vcenter/resource-pool/{resource_pool} | Deletes a resource pool.
`VSphereAutomation::VCenter::ResourcePoolApi` | [**get**](docs/ResourcePoolApi.md#get) | **GET** /rest/vcenter/resource-pool/{resource_pool} | Retrieves information about the resource pool indicated by resourcePool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires System.Read.  
`VSphereAutomation::VCenter::ResourcePoolApi` | [**list**](docs/ResourcePoolApi.md#list) | **GET** /rest/vcenter/resource-pool | Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.
`VSphereAutomation::VCenter::ResourcePoolApi` | [**update**](docs/ResourcePoolApi.md#update) | **PATCH** /rest/vcenter/resource-pool/{resource_pool} | Updates the configuration of a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires Resource.EditPool.  
`VSphereAutomation::VCenter::ServicesServiceApi` | [**get**](docs/ServicesServiceApi.md#get) | **GET** /rest/vcenter/services/{service} | Returns the state of a service.
`VSphereAutomation::VCenter::ServicesServiceApi` | [**list_details**](docs/ServicesServiceApi.md#list_details) | **GET** /rest/vcenter/services | Lists details of vCenter services.
`VSphereAutomation::VCenter::ServicesServiceApi` | [**restart**](docs/ServicesServiceApi.md#restart) | **POST** /rest/vcenter/services/{service}/restart | Restarts a service
`VSphereAutomation::VCenter::ServicesServiceApi` | [**start**](docs/ServicesServiceApi.md#start) | **POST** /rest/vcenter/services/{service}/start | Starts a service
`VSphereAutomation::VCenter::ServicesServiceApi` | [**stop**](docs/ServicesServiceApi.md#stop) | **POST** /rest/vcenter/services/{service}/stop | Stops a service
`VSphereAutomation::VCenter::ServicesServiceApi` | [**update**](docs/ServicesServiceApi.md#update) | **PATCH** /rest/vcenter/services/{service} | Updates the properties of a service.
`VSphereAutomation::VCenter::SettingsNamespacesApi` | [**create**](docs/SettingsNamespacesApi.md#create) | **POST** /rest/vcenter/settings/namespaces | Creates a namespace. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SettingsNamespacesApi` | [**delete**](docs/SettingsNamespacesApi.md#delete) | **DELETE** /rest/vcenter/settings/namespaces/{namespace} | Deletes a namespace along with its associated item data. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SettingsNamespacesApi` | [**get**](docs/SettingsNamespacesApi.md#get) | **GET** /rest/vcenter/settings/namespaces/{namespace} | Retrieves the details of the namespace. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SettingsNamespacesApi` | [**list**](docs/SettingsNamespacesApi.md#list) | **GET** /rest/vcenter/settings/namespaces | Lists all the namespaces in Settings Service. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SettingsNamespacesApi` | [**update**](docs/SettingsNamespacesApi.md#update) | **PATCH** /rest/vcenter/settings/namespaces/{namespace} | Update a namespace with a changing configuration. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SettingsNamespacesItemsApi` | [**list**](docs/SettingsNamespacesItemsApi.md#list) | **GET** /rest/vcenter/settings/namespaces/{namespace}/items | Returns a map of  item values corresponding to the keys in the namespace. The readPrivilege defined in the namespace is checked before the operation is initiated. If keys is not passed in, the entire map of KV pairs are returned. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SettingsNamespacesItemsApi` | [**put**](docs/SettingsNamespacesItemsApi.md#put) | **PATCH** /rest/vcenter/settings/namespaces/{namespace}/items | Put a map of key value pairs in the namespace. This overrides any existing key/value if they already exist in the namespace. The writePrivilege defined in the namespace is checked before the operation is initiated. When the value is not passed in the map items, the item in the namespace is deleted. When an empty (0 length) String, \"\", is passed in as the value, the value is set to \"\". Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StatsTopnDatastoreByDatacenterApi` | [**get**](docs/StatsTopnDatastoreByDatacenterApi.md#get) | **GET** /rest/vcenter/stats/topn/datastore/by-datacenter | Retrieve Top N datastores in a datacenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StatsTopnDatastoreByStoragePodApi` | [**get**](docs/StatsTopnDatastoreByStoragePodApi.md#get) | **GET** /rest/vcenter/stats/topn/datastore/by-storage-pod | Retrieve Top N datastores in a storage pod. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StatsTopnHostByClusterApi` | [**get**](docs/StatsTopnHostByClusterApi.md#get) | **GET** /rest/vcenter/stats/topn/host/by-cluster | Retrieve Top N hosts in a cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StatsTopnResourcechildByClusterApi` | [**get**](docs/StatsTopnResourcechildByClusterApi.md#get) | **GET** /rest/vcenter/stats/topn/resource-child/by-cluster | Retrieve Top N ResourcePools, vApps & VMs in a cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StatsTopnResourcechildByResourcePoolApi` | [**get**](docs/StatsTopnResourcechildByResourcePoolApi.md#get) | **GET** /rest/vcenter/stats/topn/resource-child/by-resource-pool | Retrieve Top N ResourcePools, vApps & VMs in a resource pool. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StatsTopnResourcechildByVappApi` | [**get**](docs/StatsTopnResourcechildByVappApi.md#get) | **GET** /rest/vcenter/stats/topn/resource-child/by-vapp | Retrieve Top N ResourcePools, vApps & VMs in a vApp. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StatsTopnVmByHostApi` | [**get**](docs/StatsTopnVmByHostApi.md#get) | **GET** /rest/vcenter/stats/topn/vm/by-host | Retrieve Top N VMs in a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::StoragePoliciesApi` | [**check_compatibility**](docs/StoragePoliciesApi.md#check_compatibility) | **POST** /rest/vcenter/storage/policies/{policy}?action&#x3D;check-compatibility | Returns datastore compatibility summary about a specific storage policy.
`VSphereAutomation::VCenter::StoragePoliciesApi` | [**list**](docs/StoragePoliciesApi.md#list) | **GET** /rest/vcenter/storage/policies | Returns information about at most 1024 visible (subject to permission checks) storage solicies availabe in vCenter. These storage policies can be used for provisioning virtual machines or disks.
`VSphereAutomation::VCenter::StoragePoliciesComplianceApi` | [**list**](docs/StoragePoliciesComplianceApi.md#list) | **GET** /rest/vcenter/storage/policies/entities/compliance | Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.
`VSphereAutomation::VCenter::StoragePoliciesComplianceVMApi` | [**list**](docs/StoragePoliciesComplianceVMApi.md#list) | **GET** /rest/vcenter/storage/policies/compliance/vm | Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.
`VSphereAutomation::VCenter::StoragePoliciesVMApi` | [**list**](docs/StoragePoliciesVMApi.md#list) | **GET** /rest/vcenter/storage/policies/{policy}/vm | Returns information about the virtual machines and/or their virtual disks that are associated with the given storage policy.
`VSphereAutomation::VCenter::SvcaccountmgmtPasswordApi` | [**change**](docs/SvcaccountmgmtPasswordApi.md#change) | **POST** /rest/vcenter/svc-account-mgmt/password?action&#x3D;change | Change the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SvcaccountmgmtPasswordApi` | [**reset**](docs/SvcaccountmgmtPasswordApi.md#reset) | **POST** /rest/vcenter/svc-account-mgmt/password?action&#x3D;reset | Reset the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SvcaccountmgmtServiceAccountApi` | [**create**](docs/SvcaccountmgmtServiceAccountApi.md#create) | **POST** /rest/vcenter/svc-account-mgmt/service-account?action&#x3D;create | Create a service account with the input configuration parameters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SvcaccountmgmtServiceAccountApi` | [**delete**](docs/SvcaccountmgmtServiceAccountApi.md#delete) | **POST** /rest/vcenter/svc-account-mgmt/service-account?action&#x3D;delete | Delete the service account with the input name. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SystemAnnouncementsApi` | [**create**](docs/SystemAnnouncementsApi.md#create) | **POST** /rest/vcenter/system/announcements | Create a new announcement
`VSphereAutomation::VCenter::SystemAnnouncementsApi` | [**delete**](docs/SystemAnnouncementsApi.md#delete) | **DELETE** /rest/vcenter/system/announcements/{announcement} | Delete an announcement
`VSphereAutomation::VCenter::SystemAnnouncementsApi` | [**get**](docs/SystemAnnouncementsApi.md#get) | **GET** /rest/vcenter/system/announcements/{announcement} | Return information about a specific announcements in the system.
`VSphereAutomation::VCenter::SystemAnnouncementsApi` | [**list**](docs/SystemAnnouncementsApi.md#list) | **GET** /rest/vcenter/system/announcements | Return information about all the announcements in the system.
`VSphereAutomation::VCenter::SystemAnnouncementsApi` | [**set**](docs/SystemAnnouncementsApi.md#set) | **PUT** /rest/vcenter/system/announcements/{announcement} | Set announcement properties.
`VSphereAutomation::VCenter::SystemConfigCeipApi` | [**get**](docs/SystemConfigCeipApi.md#get) | **GET** /rest/vcenter/system-config/ceip | Get CEIP (Customer Experience Improvement Program) value.
`VSphereAutomation::VCenter::SystemConfigCeipApi` | [**set**](docs/SystemConfigCeipApi.md#set) | **PUT** /rest/vcenter/system-config/ceip | Set CEIP (Customer Experience Improvement Program) value.
`VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi` | [**get**](docs/SystemConfigDeploymentTypeApi.md#get) | **GET** /rest/vcenter/system-config/deployment-type | Get the type of the vCenter appliance.
`VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi` | [**reconfigure**](docs/SystemConfigDeploymentTypeApi.md#reconfigure) | **POST** /rest/vcenter/system-config/deployment-type | Reconfigure the type of the vCenter appliance.
`VSphereAutomation::VCenter::SystemConfigFeatureStateApi` | [**get**](docs/SystemConfigFeatureStateApi.md#get) | **GET** /rest/vcenter/system-config/feature-state | Returns the current status of feature state switches.
`VSphereAutomation::VCenter::SystemConfigFeaturesTechPreviewApi` | [**get**](docs/SystemConfigFeaturesTechPreviewApi.md#get) | **GET** /rest/vcenter/system-config/features/tech-preview | Returns the current status of all the feature switches in Tech Preview. mode. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SystemConfigFeaturesTechPreviewApi` | [**update**](docs/SystemConfigFeaturesTechPreviewApi.md#update) | **PATCH** /rest/vcenter/system-config/features/tech-preview | Sets the status to enabled/disabled for the Tech Preview feature switches present in the input {@term map}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::SystemConfigPscRegistrationApi` | [**get**](docs/SystemConfigPscRegistrationApi.md#get) | **GET** /rest/vcenter/system-config/psc-registration | Get information of the PSC that this appliance is registered with.
`VSphereAutomation::VCenter::SystemConfigPscRegistrationApi` | [**repoint**](docs/SystemConfigPscRegistrationApi.md#repoint) | **POST** /rest/vcenter/system-config/psc-registration | Repoint this vCenter Server appliance to a different external PSC.
`VSphereAutomation::VCenter::TagAssociationsHostApi` | [**list**](docs/TagAssociationsHostApi.md#list) | **GET** /rest/vcenter/tag-associations/host | Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagAssociationsVMApi` | [**list**](docs/TagAssociationsVMApi.md#list) | **GET** /rest/vcenter/tag-associations/vm | Returns tag associations that match the specified filter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TaggingAssociationsApi` | [**list**](docs/TaggingAssociationsApi.md#list) | **GET** /api/vcenter/tagging/associations | Returns tag associations that match the specified iteration spec.
`VSphereAutomation::VCenter::TagsHostApi` | [**delete**](docs/TagsHostApi.md#delete) | **DELETE** /rest/vcenter/tags/host/{tag} | Deletes any existing associations of this tag with hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsHostApi` | [**list**](docs/TagsHostApi.md#list) | **GET** /rest/vcenter/tags/host | Returns information about the tags that are associated with hosts on this vCenter Server, where the tags need to match Host.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsHostAssociationsApi` | [**add**](docs/TagsHostAssociationsApi.md#add) | **POST** /rest/vcenter/tags/host/{tag}/associations?action&#x3D;add | Attaches a tag to multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsHostAssociationsApi` | [**get**](docs/TagsHostAssociationsApi.md#get) | **GET** /rest/vcenter/tags/host/{tag}/associations | Lists all hosts that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsHostAssociationsApi` | [**remove**](docs/TagsHostAssociationsApi.md#remove) | **POST** /rest/vcenter/tags/host/{tag}/associations?action&#x3D;remove | Detaches a tag from multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsVMApi` | [**delete**](docs/TagsVMApi.md#delete) | **DELETE** /rest/vcenter/tags/vm/{tag} | Deletes any existing associations of this tag with virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsVMApi` | [**list**](docs/TagsVMApi.md#list) | **GET** /rest/vcenter/tags/vm | Returns information about the tags that are associated with virtual machines on this vCenter Server, where the tags need to match VM.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsVmAssociationsApi` | [**add**](docs/TagsVmAssociationsApi.md#add) | **POST** /rest/vcenter/tags/vm/{tag}/associations?action&#x3D;add | Attaches a tag to multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsVmAssociationsApi` | [**get**](docs/TagsVmAssociationsApi.md#get) | **GET** /rest/vcenter/tags/vm/{tag}/associations | Lists all virtual machine that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TagsVmAssociationsApi` | [**remove**](docs/TagsVmAssociationsApi.md#remove) | **POST** /rest/vcenter/tags/vm/{tag}/associations?action&#x3D;remove | Detaches a tag from multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TokenserviceTokenExchangeApi` | [**exchange**](docs/TokenserviceTokenExchangeApi.md#exchange) | **POST** /rest/vcenter/tokenservice/token-exchange | Exchanges incoming token based on the spec and current client authorization data.
`VSphereAutomation::VCenter::TopologyNodesApi` | [**get**](docs/TopologyNodesApi.md#get) | **GET** /rest/vcenter/topology/nodes/{node} | Retrieve details for a given identifier of the vCenter or Platform Services Controller node. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
`VSphereAutomation::VCenter::TopologyNodesApi` | [**list**](docs/TopologyNodesApi.md#list) | **GET** /rest/vcenter/topology/nodes | Returns information about all vCenter and Platform Services Controller nodes matching the Nodes.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
`VSphereAutomation::VCenter::TopologyNodesEmbeddedApi` | [**decommission_task**](docs/TopologyNodesEmbeddedApi.md#decommission_task) | **POST** /rest/vcenter/topology/nodes/embedded/{hostname}?action&#x3D;decommission&amp;vmw-task&#x3D;true | Decommission the vCenter Server node. Decommissioning a vCenter Server node from the topology is irreversible. Any workloads associated with the node will be lost. Make sure to move the workloads before decommissioning the vCenter Server node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TopologyReplicationStatusApi` | [**list**](docs/TopologyReplicationStatusApi.md#list) | **GET** /rest/vcenter/topology/replication-status | Returns the replication information of vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL (see Nodes.Info.type) matching the ReplicationStatus.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
`VSphereAutomation::VCenter::TrustSubscriptionsApi` | [**add**](docs/TrustSubscriptionsApi.md#add) | **POST** /rest/vcenter/trust/subscriptions?action&#x3D;add | Add a new subscription record into database. There are two possible situations for add. A. In the first case, the client is only interested in one VCTrust object and the VCTrust object has to exist in database. To make such a subscription, the client need to tell database which VCTrust object he is interested in. The GUID (VCTrust Id) field stands for that specific VCTrust and need to be specified. In this way, the client will only receive notification from that specified object changes. There is no limit on how many subscription an endpoint can add. B. In the second case, the client makes a subscription without a specified VCTrust object, which means the client is interested in every VCTrust object. Whenever the database changes (e.g add a new VCTrust, delete VCTrust, update...), the client gets notified. All the records in the database will not be deleted automatically. The only way to delete a record is to invoke delete API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustSubscriptionsApi` | [**delete**](docs/TrustSubscriptionsApi.md#delete) | **DELETE** /rest/vcenter/trust/subscriptions/{subscription}?action&#x3D;delete | If the client is no longer interested in the subscription, it can delete it by invoking this API and specify the subscription id. The subscription id is returned to the endpoint when it was created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustSubscriptionsApi` | [**info**](docs/TrustSubscriptionsApi.md#info) | **GET** /rest/vcenter/trust/subscriptions/{subscription}?action&#x3D;info | This API is used by client to request for detailed information of a specific susbcription. It is queried using subscription id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustSubscriptionsApi` | [**list**](docs/TrustSubscriptionsApi.md#list) | **GET** /rest/vcenter/trust/subscriptions?action&#x3D;list | List all the subscriptions that a client have. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustSubscriptionsApi` | [**update**](docs/TrustSubscriptionsApi.md#update) | **PATCH** /rest/vcenter/trust/subscriptions/{subscription_id}?action&#x3D;update | This API is used by client to renew a subscription by extend the expiration time of its existing subscriptions. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustVcTrustsApi` | [**create**](docs/TrustVcTrustsApi.md#create) | **POST** /rest/vcenter/trust/vc-trusts | Creates a new trust for domain in given spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustVcTrustsApi` | [**delete**](docs/TrustVcTrustsApi.md#delete) | **DELETE** /rest/vcenter/trust/vc-trusts/{domain} | Deletes a trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustVcTrustsApi` | [**get**](docs/TrustVcTrustsApi.md#get) | **GET** /rest/vcenter/trust/vc-trusts/{domain} | Retrieve trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustVcTrustsApi` | [**list**](docs/TrustVcTrustsApi.md#list) | **GET** /rest/vcenter/trust/vc-trusts | Returns summary information for each trust of the local node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustVcTrustsApi` | [**update**](docs/TrustVcTrustsApi.md#update) | **PATCH** /rest/vcenter/trust/vc-trusts/{domain} | Update a trust for given domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi` | [**create**](docs/TrustedInfrastructureAttestationServicesApi.md#create) | **POST** /api/vcenter/trusted-infrastructure/attestation/services | Registers a new Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi` | [**delete**](docs/TrustedInfrastructureAttestationServicesApi.md#delete) | **DELETE** /api/vcenter/trusted-infrastructure/attestation/services/{service} | Removes a registered Attestation Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi` | [**get**](docs/TrustedInfrastructureAttestationServicesApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/attestation/services/{service} | Returns the detailed information about a registered Attestation Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructureAttestationServicesApi` | [**list**](docs/TrustedInfrastructureAttestationServicesApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/attestation/services?action&#x3D;query | Returns detailed information about all registered Attestation Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi` | [**create**](docs/TrustedInfrastructureKmsServicesApi.md#create) | **POST** /api/vcenter/trusted-infrastructure/kms/services | Registers a Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi` | [**delete**](docs/TrustedInfrastructureKmsServicesApi.md#delete) | **DELETE** /api/vcenter/trusted-infrastructure/kms/services/{service} | Removes a currently registered Key Provider Service instance from this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ManageTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi` | [**get**](docs/TrustedInfrastructureKmsServicesApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/kms/services/{service} | Returns the detailed information about a registered Key Provider Service instance in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructureKmsServicesApi` | [**list**](docs/TrustedInfrastructureKmsServicesApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/kms/services?action&#x3D;query | Returns basic information about all registered Key Provider Service instances in this vCenter. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.  
`VSphereAutomation::VCenter::TrustedInfrastructurePrincipalApi` | [**get**](docs/TrustedInfrastructurePrincipalApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/principal | Returns information about the STS used by this vCenter instance. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadStsInfo.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersApi` | [**get**](docs/TrustedInfrastructureTrustAuthorityClustersApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster} | Get the result of the last Update operation which matches the cluster id. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersApi` | [**list**](docs/TrustedInfrastructureTrustAuthorityClustersApi.md#list) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters | Returns a list of clusters for this vCenter instance which matches the TrustAuthorityClusters.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the attribute TrustAuthorityClusters.FilterSpec.cluster requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersApi` | [**update_task**](docs/TrustedInfrastructureTrustAuthorityClustersApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}?vmw-task&#x3D;true | Updates the state of a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi` | [**delete_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images/{version}?vmw-task&#x3D;true | Remove a trusted ESX base image of each ESX in the cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images/{version}?vmw-task&#x3D;true | Get the trusted ESX base version details.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi` | [**import_from_imgdb_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#import_from_imgdb_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images?action&#x3D;import-from-imgdb&amp;vmw-task&#x3D;true | Import ESX metadata as a new trusted base image to each host in the cluster.   Import a boot_imgdb.tgz file which contains metadata that describes a trusted ESX base image. A boot_imgdb.tgz file can be downloaded from a representative host. 
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi` | [**list_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/os/esx/base-images?vmw-task&#x3D;true | Return a list of trusted ESX base images.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationServiceStatusApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationServiceStatusApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/service-status?vmw-task&#x3D;true | Return the Attestation service health in the given cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi` | [**create_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates?vmw-task&#x3D;true | Add a new TPM CA certificate on a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi` | [**delete_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates/{name}?vmw-task&#x3D;true | Remove a TPM CA certificate on a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates/{name}?vmw-task&#x3D;true | Get the TPM CA certificate details on a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi` | [**list_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/ca-certificates?vmw-task&#x3D;true | Return a list of configured TPM CA certificates on a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi` | [**create_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys?vmw-task&#x3D;true | Add a new TPM endorsement key on a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi` | [**delete_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys/{name}?vmw-task&#x3D;true | Remove a TPM endorsement key on a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys/{name}?vmw-task&#x3D;true | Get the TPM endorsement key details on a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi` | [**list_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/endorsement-keys?vmw-task&#x3D;true | Return a list of configured TPM endorsement keys in a cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/settings?vmw-task&#x3D;true | Return the TPM 2.0 protocol settings.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi` | [**update_task**](docs/TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/attestation/tpm2/settings?vmw-task&#x3D;true | Set the TPM 2.0 protocol settings.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi` | [**create_task**](docs/TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals?vmw-task&#x3D;true | Creates a profile with the specified connection information on all hosts from a Trust Authority Cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi` | [**delete_task**](docs/TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals/{profile}?vmw-task&#x3D;true | Removes the read-only policy configured on ESX for a specific principal.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals/{profile}?vmw-task&#x3D;true | Retrieve information for a specific profile.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi` | [**list_task**](docs/TrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsApi.md#list_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/consumer-principals?action&#x3D;query&amp;vmw-task&#x3D;true | Lists all policies configured on a specific cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi` | [**create_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers?vmw-task&#x3D;true | Add a new Key Provider.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi` | [**delete_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}?vmw-task&#x3D;true | Remove a Key Provider.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}?vmw-task&#x3D;true | Return information about a Key Provider.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi` | [**list_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers?vmw-task&#x3D;true | Return a list of summary of Key Providers.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi` | [**update_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}?vmw-task&#x3D;true | Update an existing Key Provider.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi` | [**create_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task&#x3D;true | Generate a new self signed client certificate. Existing client certificate is overwritten. The key server will use this certificate to validate the client connection.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task&#x3D;true | Return the existing client certificate.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi` | [**update_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate?vmw-task&#x3D;true | Update the client certificate.   The key server will use this certificate to validate the client connection. If a client certificate already exists, it will be replaced.    An optional private key can be specified if the certificate has already been provisioned. 
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi` | [**create_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate/csr?vmw-task&#x3D;true | Generate a certificate signing request (CSR) for the client certificate. This overwrites any existing CSR.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    Calling the API repeatedly will result in a generating a new CSR each time. 
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateCsrApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/client-certificate/csr?vmw-task&#x3D;true | Get existing certificate signing request (CSR) for the client certificate.   The CSR will allow the certificate to be signed by a third party. Once the CSR is signed, certificate may be added as a client certificate.    
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi` | [**set_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersCredentialApi.md#set_task) | **PUT** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/credential?vmw-task&#x3D;true | Set the key server credential.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi` | [**list_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesApi.md#list_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/peer-certs/current?vmw-task&#x3D;true | Return the remote server certificates.   Contacts the configured key servers and attempts to retrieve their certificates. These certificates might not yet be trusted.    If the returned certificates are to be considered trustworthy, then it must be added to the list of trusted server certificates by adding to the certificates returned by TrustedPeerCertificates.get and invoking TrustedPeerCertificates.update with the updated list of certificates. 
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/peer-certs/trusted?vmw-task&#x3D;true | Return the list of trusted server certificates.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi` | [**update_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/providers/{provider}/peer-certs/trusted?vmw-task&#x3D;true | Update trusted server certificate(s).   The client will use these certificates to validate the server connection. The existing list of trusted certificates will be overwritten.    The client will not trust the server connection until a server certificate has been set. 
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsServiceStatusApi` | [**get_task**](docs/TrustedInfrastructureTrustAuthorityClustersKmsServiceStatusApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/service-status?vmw-task&#x3D;true | Return the Key Provider Service health in the given cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsAttestationApi` | [**get**](docs/TrustedInfrastructureTrustAuthorityHostsAttestationApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-hosts/{host}/attestation/ | Returns the connection info about the Attestation Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsAttestationApi` | [**list**](docs/TrustedInfrastructureTrustAuthorityHostsAttestationApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-hosts/attestation | Returns a list of the hosts running a Attestation Service matching the specified Attestation.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Attestation.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Attestation.FilterSpec.clusters requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsKmsApi` | [**get**](docs/TrustedInfrastructureTrustAuthorityHostsKmsApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-hosts/{host}/kms/ | Returns the connection info about the Key Provider Service running on the specified host. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the parameter host requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityHostsKmsApi` | [**list**](docs/TrustedInfrastructureTrustAuthorityHostsKmsApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/trust-authority-hosts/kms?action&#x3D;query | Returns a list of the hosts running a Key Provider Service matching the specified Kms.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource HostSystem referenced by the attribute Kms.FilterSpec.hosts requires System.View.    -  The resource ClusterComputeResource referenced by the attribute Kms.FilterSpec.clusters requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesApi` | [**create_task**](docs/TrustedInfrastructureTrustedClustersAttestationServicesApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services?vmw-task&#x3D;true | Configures the cluster to use a the given registered Attestation Service.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesApi` | [**delete_task**](docs/TrustedInfrastructureTrustedClustersAttestationServicesApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services/{service}?vmw-task&#x3D;true | Removes the Attestation Service instance from the configuration of the given cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesApi` | [**get**](docs/TrustedInfrastructureTrustedClustersAttestationServicesApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services/{service} | Returns detailed information about the given registered Attestation Service instance that is configured for the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesApi` | [**list**](docs/TrustedInfrastructureTrustedClustersAttestationServicesApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services?action&#x3D;query | Returns the basic information about all configured Attestation Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi` | [**delete_task**](docs/TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task&#x3D;true | Delete the Attestation Service configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Attestation Service configuration from any Trusted Hosts within the given cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi` | [**get_task**](docs/TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task&#x3D;true | Returns detailed information about the health of the specified Attestation Service configuration applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi` | [**list_task**](docs/TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#list_task) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?action&#x3D;query&amp;vmw-task&#x3D;true | Returns basic information about the health of all Attestation Service configurations applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi` | [**update_task**](docs/TrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/attestation/services-applied-config?vmw-task&#x3D;true | Update the applied Attestation Service configuration on the given Trusted Cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will throw an InvalidArgument. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi` | [**create_task**](docs/TrustedInfrastructureTrustedClustersKmsServicesApi.md#create_task) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services?vmw-task&#x3D;true | Configures the cluster to use a the given registered Key Provider Service.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi` | [**delete_task**](docs/TrustedInfrastructureTrustedClustersKmsServicesApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services/{service}?vmw-task&#x3D;true | Removes the Key Provider Service instance from the configuration of the given cluster.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi` | [**get**](docs/TrustedInfrastructureTrustedClustersKmsServicesApi.md#get) | **GET** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services/{service} | Returns detailed information about the given Key Provider Service instance used by the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesApi` | [**list**](docs/TrustedInfrastructureTrustedClustersKmsServicesApi.md#list) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services?action&#x3D;query | Returns basic information about all configured Key Provider Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi` | [**delete_task**](docs/TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi.md#delete_task) | **DELETE** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services-applied-config?vmw-task&#x3D;true | Delete the Key Provider Service configuration that has been applied to the given cluster. This method has no affect on the desired state, it only removes applied Key Provider Service configuration from any Trusted Hosts within the given cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi` | [**get_task**](docs/TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services-applied-config?vmw-task&#x3D;true | Returns detailed information about the health of the specified Key Provider Service configuration applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi` | [**list_task**](docs/TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi.md#list_task) | **POST** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services-applied-config?action&#x3D;query&amp;vmw-task&#x3D;true | Returns basic information about the health of all Key Provider Service configurations applied to the cluster with respect to the desired state. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi` | [**update_task**](docs/TrustedInfrastructureTrustedClustersKmsServicesAppliedConfigApi.md#update_task) | **PATCH** /api/vcenter/trusted-infrastructure/trusted-clusters/{cluster}/kms/services-applied-config?vmw-task&#x3D;true | Update the applied Key Provider Service configuration on the given Trusted Cluster to be consistent with the desired state. This method has no affect on the desired state, apart from it being used as a reference point for the remediation. If the cluster is not a Trusted Cluster, the method will throw an InvalidArgument. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VMApi` | [**clone**](docs/VMApi.md#clone) | **POST** /rest/vcenter/vm?action&#x3D;clone | Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
`VSphereAutomation::VCenter::VMApi` | [**clone_task**](docs/VMApi.md#clone_task) | **POST** /rest/vcenter/vm?action&#x3D;clone&amp;vmw-task&#x3D;true | Creates a virtual machine from an existing virtual machine.    if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.DiskCloneSpec.datastore requires Datastore.AllocateSpace.    -  The resource Datastore referenced by the attribute VM.ClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Folder referenced by the attribute VM.ClonePlacementSpec.folder requires VirtualMachine.Inventory.CreateFromExisting.    -  The resource ResourcePool referenced by the attribute VM.ClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource VirtualMachine referenced by the attribute VM.CloneSpec.source requires VirtualMachine.Provisioning.Clone.  
`VSphereAutomation::VCenter::VMApi` | [**create**](docs/VMApi.md#create) | **POST** /rest/vcenter/vm | Creates a virtual machine. if you do not have all of the privileges described as follows:     -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Create.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.StoragePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
`VSphereAutomation::VCenter::VMApi` | [**delete**](docs/VMApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm} | Deletes a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Delete.  
`VSphereAutomation::VCenter::VMApi` | [**get**](docs/VMApi.md#get) | **GET** /rest/vcenter/vm/{vm} | Returns information about a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
`VSphereAutomation::VCenter::VMApi` | [**instant_clone**](docs/VMApi.md#instant_clone) | **POST** /rest/vcenter/vm?action&#x3D;instant-clone | Create an instant clone of an existing virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the attribute VM.InstantCloneSpec.source requires VirtualMachine.Provisioning.Clone and VirtualMachine.Inventory.CreateFromExisting.    -  The resource Folder referenced by the attribute VM.InstantClonePlacementSpec.folder requires VirtualMachine.Interact.PowerOn.    -  The resource ResourcePool referenced by the attribute VM.InstantClonePlacementSpec.resource-pool requires Resource.AssignVMToPool.    -  The resource Datastore referenced by the attribute VM.InstantClonePlacementSpec.datastore requires Datastore.AllocateSpace.    -  The resource Network referenced by the attribute Ethernet.BackingSpec.network requires Network.Assign.  
`VSphereAutomation::VCenter::VMApi` | [**list**](docs/VMApi.md#list) | **GET** /rest/vcenter/vm | Returns information about at most 4000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.
`VSphereAutomation::VCenter::VMApi` | [**register**](docs/VMApi.md#register) | **POST** /rest/vcenter/vm?action&#x3D;register | Creates a virtual machine from existing virtual machine files on storage. if you do not have all of the privileges described as follows:     -  The resource Datastore referenced by the attribute VM.RegisterSpec.datastore requires System.Read.    -  The resource Folder referenced by the attribute VM.InventoryPlacementSpec.folder requires VirtualMachine.Inventory.Register.    -  The resource ResourcePool referenced by the attribute VM.ComputePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
`VSphereAutomation::VCenter::VMApi` | [**relocate**](docs/VMApi.md#relocate) | **POST** /rest/vcenter/vm/{vm}?action&#x3D;relocate | Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
`VSphereAutomation::VCenter::VMApi` | [**relocate_task**](docs/VMApi.md#relocate_task) | **POST** /rest/vcenter/vm/{vm}?action&#x3D;relocate&amp;vmw-task&#x3D;true | Relocates a virtual machine based on the specification. The parts of the virtual machine that can move are: FOLDER, RESOURCE_POOL, HOST, CLUSTER and DATASTORE of home of the virtual machine and disks.    if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires Resource.ColdMigrate.    -  The resource ResourcePool referenced by the attribute VM.RelocatePlacementSpec.resource-pool requires Resource.AssignVMToPool.  
`VSphereAutomation::VCenter::VMApi` | [**unregister**](docs/VMApi.md#unregister) | **POST** /rest/vcenter/vm/{vm}?action&#x3D;unregister | Removes the virtual machine corresponding to vm from the vCenter inventory without removing any of the virtual machine's files from storage. All high-level information stored with the management server (ESXi or vCenter) is removed, including information such as statistics, resource pool association, permissions, and alarms. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Inventory.Unregister.  
`VSphereAutomation::VCenter::VchaCapabilitiesApi` | [**get**](docs/VchaCapabilitiesApi.md#get) | **GET** /rest/vcenter/vcha/capabilities | Gets the capabilities of the active node of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterApi` | [**deploy_task**](docs/VchaClusterApi.md#deploy_task) | **POST** /rest/vcenter/vcha/cluster?action&#x3D;deploy&amp;vmw-task&#x3D;true | Prepares, clones, and configures a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterApi` | [**failover_task**](docs/VchaClusterApi.md#failover_task) | **POST** /rest/vcenter/vcha/cluster?action&#x3D;failover&amp;vmw-task&#x3D;true | Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster's mode is enabled and all cluster members are present.    2.  Cluster's mode is maintenance and all cluster members are present. 
`VSphereAutomation::VCenter::VchaClusterApi` | [**get**](docs/VchaClusterApi.md#get) | **POST** /rest/vcenter/vcha/cluster?action&#x3D;get | Retrieves the status of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterApi` | [**undeploy_task**](docs/VchaClusterApi.md#undeploy_task) | **POST** /rest/vcenter/vcha/cluster?action&#x3D;undeploy&amp;vmw-task&#x3D;true | Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 
`VSphereAutomation::VCenter::VchaClusterActiveApi` | [**get**](docs/VchaClusterActiveApi.md#get) | **POST** /rest/vcenter/vcha/cluster/active?action&#x3D;get | Retrieves information about the active node of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterDeploymentTypeApi` | [**get**](docs/VchaClusterDeploymentTypeApi.md#get) | **GET** /rest/vcenter/vcha/cluster/deployment-type | Retrieves the deployment type of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterModeApi` | [**get**](docs/VchaClusterModeApi.md#get) | **GET** /rest/vcenter/vcha/cluster/mode | Retrieves the current mode of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterModeApi` | [**set_task**](docs/VchaClusterModeApi.md#set_task) | **PUT** /rest/vcenter/vcha/cluster/mode?vmw-task&#x3D;true | Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
`VSphereAutomation::VCenter::VchaClusterPassiveApi` | [**check**](docs/VchaClusterPassiveApi.md#check) | **POST** /rest/vcenter/vcha/cluster/passive?action&#x3D;check | Validates the specified passive node's placement configuration.
`VSphereAutomation::VCenter::VchaClusterPassiveApi` | [**redeploy_task**](docs/VchaClusterPassiveApi.md#redeploy_task) | **POST** /rest/vcenter/vcha/cluster/passive?action&#x3D;redeploy&amp;vmw-task&#x3D;true | Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
`VSphereAutomation::VCenter::VchaClusterWitnessApi` | [**check**](docs/VchaClusterWitnessApi.md#check) | **POST** /rest/vcenter/vcha/cluster/witness?action&#x3D;check | Validates the specified witness node's placement configuration.
`VSphereAutomation::VCenter::VchaClusterWitnessApi` | [**redeploy_task**](docs/VchaClusterWitnessApi.md#redeploy_task) | **POST** /rest/vcenter/vcha/cluster/witness?action&#x3D;redeploy&amp;vmw-task&#x3D;true | Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
`VSphereAutomation::VCenter::VchaLicenseApi` | [**get**](docs/VchaLicenseApi.md#get) | **GET** /rest/vcenter/vcha/license | Gets the license of the active node of a VCHA cluster.
`VSphereAutomation::VCenter::VchaOperationsApi` | [**get**](docs/VchaOperationsApi.md#get) | **GET** /rest/vcenter/vcha/operations | Retrieves the current active and disabled operations of a VCHA cluster.
`VSphereAutomation::VCenter::VchaVcCredentialsApi` | [**validate**](docs/VchaVcCredentialsApi.md#validate) | **POST** /rest/vcenter/vcha/vc-credentials?action&#x3D;validate | Validates the credentials of the management vCenter server of the active node of a VCHA cluster.
`VSphereAutomation::VCenter::VmComputePoliciesApi` | [**get**](docs/VmComputePoliciesApi.md#get) | **GET** /api/vcenter/vm/{vm}/compute/policies/{policy} | Returns information about the compliance of a virtual machine with a compute policy in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
`VSphereAutomation::VCenter::VmConsoleTicketsApi` | [**create**](docs/VmConsoleTicketsApi.md#create) | **POST** /rest/vcenter/vm/{vm}/console/tickets | Creates a virtual machine console ticket of a given ticket type. The created ticket is a one time use URI. The validity of the ticket is 30 minutes, if not used with in the time frame the ticket expires.   The VMRC ticket contains the IP address or the DNS resolvable name of the vCenter server. This ticket requires installation of VMware Workstation, VMware Fusion or VMRC to be installed on the machine where the ticket has to be opened. This ticket can be acquired even when the VM is turned off.    The WEBMKS ticket contains the IP address of the DNS resolvable name of the ESX server. This ticket requires user to embed this ticket in a HTML page using VMware HTML Console SDK - https://www.vmware.com/support/developer/html-console This ticket can be acquired only when the VM is turned on. 
`VSphereAutomation::VCenter::VmGuestCustomizationApi` | [**get**](docs/VmGuestCustomizationApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/customization | Returns the status of the customization operation that has been applied for the virtual machine in vm. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestCustomizationApi` | [**set**](docs/VmGuestCustomizationApi.md#set) | **PUT** /rest/vcenter/vm/{vm}/guest/customization | Applies a customization specification in spec on the virtual machine in vm. This operation only sets the specification settings for the virtual machine. The actual customization happens inside the guest when the virtual machine is powered on. If spec has unset values, then any pending customization settings for the virtual machine are cleared. If there is a pending customization for the virtual machine and spec has valid content, then the existing customization setting will be overwritten with the new settings.
`VSphereAutomation::VCenter::VmGuestDataSetsApi` | [**create**](docs/VmGuestDataSetsApi.md#create) | **POST** /api/vcenter/vm/{vm}/guest/data-sets | Creates a new data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsApi` | [**delete**](docs/VmGuestDataSetsApi.md#delete) | **DELETE** /api/vcenter/vm/{vm}/guest/data-sets/{data_set} | Delete a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsApi` | [**get**](docs/VmGuestDataSetsApi.md#get) | **GET** /api/vcenter/vm/{vm}/guest/data-sets/{data_set} | Returns information describing a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsApi` | [**list**](docs/VmGuestDataSetsApi.md#list) | **GET** /api/vcenter/vm/{vm}/guest/data-sets | Lists the data sets of a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsApi` | [**update**](docs/VmGuestDataSetsApi.md#update) | **PATCH** /api/vcenter/vm/{vm}/guest/data-sets/{data_set} | Modifies the attributes of a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi` | [**delete**](docs/VmGuestDataSetsEntriesApi.md#delete) | **DELETE** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key} | Deletes an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi` | [**delete_multiple**](docs/VmGuestDataSetsEntriesApi.md#delete_multiple) | **POST** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}?actions&#x3D;delete-multiple | Deletes multiple entries from a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi` | [**get**](docs/VmGuestDataSetsEntriesApi.md#get) | **GET** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key} | Gets the value of an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi` | [**get_multiple**](docs/VmGuestDataSetsEntriesApi.md#get_multiple) | **POST** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}?actions&#x3D;get-multiple | Gets the value of multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi` | [**set**](docs/VmGuestDataSetsEntriesApi.md#set) | **PUT** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}/entries/{key} | Sets an entry in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestDataSetsEntriesApi` | [**set_multiple**](docs/VmGuestDataSetsEntriesApi.md#set_multiple) | **POST** /api/vcenter/vm/{vm}/guest/data-sets/{data_set}?action&#x3D;set-multiple | Sets multiple entries in a data set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestEnvironmentApi` | [**get**](docs/VmGuestEnvironmentApi.md#get) | **POST** /rest/vcenter/vm/{vm}/guest/environment/{name}?action&#x3D;get | Reads a single environment variable from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestEnvironmentApi` | [**list**](docs/VmGuestEnvironmentApi.md#list) | **POST** /rest/vcenter/vm/{vm}/guest/environment?action&#x3D;list | Reads a list of environment variables from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi` | [**create**](docs/VmGuestFilesystemDirectoriesApi.md#create) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;create | Creates a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi` | [**create_temporary**](docs/VmGuestFilesystemDirectoriesApi.md#create_temporary) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;createTemporary | Creates a temporary directory.   Creates a new unique temporary directory for the user to use as needed. The guest operating system may clean up the directory after a guest specific amount of time if parentPath is not set, or the user can remove the directory when no longer needed.    The new directory name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi` | [**delete**](docs/VmGuestFilesystemDirectoriesApi.md#delete) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;delete | Deletes a directory in the guest operating system.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemDirectoriesApi` | [**move**](docs/VmGuestFilesystemDirectoriesApi.md#move) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/directories?action&#x3D;move | Renames a directory in the guest.   Renames the directory, or copies and deletes the old contents as required by the underlying filsystem.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemFilesApi` | [**create_temporary**](docs/VmGuestFilesystemFilesApi.md#create_temporary) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;createTemporary | Creates a temporary file.   Creates a new unique temporary file for the user to use as needed. The user is responsible for removing it when it is no longer needed.    The new file name will be created in a guest-specific format using prefix, a guest generated string and suffix in parentPath.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemFilesApi` | [**delete**](docs/VmGuestFilesystemFilesApi.md#delete) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files/{path}?action&#x3D;delete | Deletes a file in the guest operating system   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemFilesApi` | [**get**](docs/VmGuestFilesystemFilesApi.md#get) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files/{path}?action&#x3D;get | Returns information about a file or directory in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemFilesApi` | [**list**](docs/VmGuestFilesystemFilesApi.md#list) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;list | Returns information about files and directories in the guest.   The results could be extremely large, so to minimize the size of the return value for cases where a UI only needs to show the first N results, the answer is batched. Files are returned in operating system-specific (inode) order. If the directory is modified between queries, missing or duplicate results can occur.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemFilesApi` | [**move**](docs/VmGuestFilesystemFilesApi.md#move) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;move | Renames a file in the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemFilesApi` | [**update**](docs/VmGuestFilesystemFilesApi.md#update) | **POST** /api/vcenter/vm/{vm}/guest/filesystem/files?action&#x3D;update | Changes the file attributes of a specified file or directory inside the guest.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemTransfersApi` | [**get**](docs/VmGuestFilesystemTransfersApi.md#get) | **GET** /api/vcenter/vm/{vm}/guest/filesystem | Initiates an operation to transfer a file from the guest.   Obtains a URL to the file inside the guest to be transferred to the client.   If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestFilesystemTransfersApi` | [**put**](docs/VmGuestFilesystemTransfersApi.md#put) | **PUT** /api/vcenter/vm/{vm}/guest/filesystem | Initiates an operation to transfer a file to the guest.   Obtains a URL to the file inside the guest to be transferred from the client. The user should send a HTTP PUT request specifying the file content in the body of the request. Multiple PUT request cannot be sent to the URL simultaneously. URL will be invalidated after a successful PUT request is sent. If the power state of the Virtual Machine is changed when the file transfer is in progress, or the Virtual Machine is migrated, then the transfer operation is aborted.    In order to ensure a secure connection to the host when transferring a file using HTTPS, the X.509 certificate for the host must be used to authenticate the remote end of the connection. The certificate of the host that the virtual machine is running on can be retrieved using the following fields: XXX insert link to certificate in Host config XXX    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmGuestIdentityApi` | [**get**](docs/VmGuestIdentityApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/identity | Return information about the guest.
`VSphereAutomation::VCenter::VmGuestLocalFilesystemApi` | [**get**](docs/VmGuestLocalFilesystemApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/local-filesystem | Returns details of the local file systems in the guest operating system.
`VSphereAutomation::VCenter::VmGuestNetworkingApi` | [**get**](docs/VmGuestNetworkingApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/networking | Returns information about the network configuration in the guest operating system.
`VSphereAutomation::VCenter::VmGuestNetworkingInterfacesApi` | [**list**](docs/VmGuestNetworkingInterfacesApi.md#list) | **GET** /rest/vcenter/vm/{vm}/guest/networking/interfaces | Returns information about the networking interfaces in the guest operating system.
`VSphereAutomation::VCenter::VmGuestNetworkingRoutesApi` | [**list**](docs/VmGuestNetworkingRoutesApi.md#list) | **GET** /rest/vcenter/vm/{vm}/guest/networking/routes | Returns information about network routing in the guest operating system.
`VSphereAutomation::VCenter::VmGuestOperationsApi` | [**get**](docs/VmGuestOperationsApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/operations | Get information about the guest operation status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**get**](docs/VmGuestPowerApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/power | Returns information about the guest operating system power state.
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**reboot**](docs/VmGuestPowerApi.md#reboot) | **POST** /rest/vcenter/vm/{vm}/guest/power?action&#x3D;reboot | Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**shutdown**](docs/VmGuestPowerApi.md#shutdown) | **POST** /rest/vcenter/vm/{vm}/guest/power?action&#x3D;shutdown | Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**standby**](docs/VmGuestPowerApi.md#standby) | **POST** /rest/vcenter/vm/{vm}/guest/power?action&#x3D;standby | Issues a request to the guest operating system asking it to perform a suspend operation.
`VSphereAutomation::VCenter::VmGuestProcessesApi` | [**create**](docs/VmGuestProcessesApi.md#create) | **POST** /rest/vcenter/vm/{vm}/guest/processes?action&#x3D;create | Starts a program in the guest operating system.   A process started this way can have its status queried with Processes.list or Processes.get. When the process completes, its exit code and end time will be available for 5 minutes after completion.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
`VSphereAutomation::VCenter::VmGuestProcessesApi` | [**delete**](docs/VmGuestProcessesApi.md#delete) | **POST** /rest/vcenter/vm/{vm}/guest/processes/{pid}?action&#x3D;delete | Terminates a process in the guest OS.   On Posix guests, the process is sent a TERM signal. If that doesn't terminate the process, a KILL signal is sent. A process may still be running if it's stuck.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
`VSphereAutomation::VCenter::VmGuestProcessesApi` | [**get**](docs/VmGuestProcessesApi.md#get) | **POST** /rest/vcenter/vm/{vm}/guest/processes/{pid}?action&#x3D;get | Gets the status of a process running in the guest operating system, including those started by Processes.create that may have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
`VSphereAutomation::VCenter::VmGuestProcessesApi` | [**list**](docs/VmGuestProcessesApi.md#list) | **POST** /rest/vcenter/vm/{vm}/guest/processes?action&#x3D;list | List the processes running in the guest operating system, plus those started by Processes.create that have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
`VSphereAutomation::VCenter::VmHardwareApi` | [**get**](docs/VmHardwareApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware | Returns the virtual hardware settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareApi` | [**update**](docs/VmHardwareApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware | Updates the virtual hardware settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareApi` | [**upgrade**](docs/VmHardwareApi.md#upgrade) | **POST** /rest/vcenter/vm/{vm}/hardware/action/upgrade | Upgrades the virtual machine to a newer virtual hardware version.
`VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi` | [**create**](docs/VmHardwareAdapterNvmeApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/adapter/nvme | Adds a virtual NVMe adapter to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi` | [**delete**](docs/VmHardwareAdapterNvmeApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/adapter/nvme/{adapter} | Removes a virtual NVMe adapter from the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi` | [**get**](docs/VmHardwareAdapterNvmeApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/nvme/{adapter} | Returns information about a virtual NVMe adapter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi` | [**list**](docs/VmHardwareAdapterNvmeApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/nvme | Returns commonly used information about the virtual NVMe adapters belonging to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**create**](docs/VmHardwareAdapterSataApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/adapter/sata | Adds a virtual SATA adapter to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**delete**](docs/VmHardwareAdapterSataApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/adapter/sata/{adapter} | Removes a virtual SATA adapter from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**get**](docs/VmHardwareAdapterSataApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/sata/{adapter} | Returns information about a virtual SATA adapter.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**list**](docs/VmHardwareAdapterSataApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/sata | Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**create**](docs/VmHardwareAdapterScsiApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/adapter/scsi | Adds a virtual SCSI adapter to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**delete**](docs/VmHardwareAdapterScsiApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Removes a virtual SCSI adapter from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**get**](docs/VmHardwareAdapterScsiApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Returns information about a virtual SCSI adapter.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**list**](docs/VmHardwareAdapterScsiApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/scsi | Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**update**](docs/VmHardwareAdapterScsiApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Updates the configuration of a virtual SCSI adapter.
`VSphereAutomation::VCenter::VmHardwareBootApi` | [**get**](docs/VmHardwareBootApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/boot | Returns the boot-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareBootApi` | [**update**](docs/VmHardwareBootApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/boot | Updates the boot-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareBootDeviceApi` | [**get**](docs/VmHardwareBootDeviceApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/boot/device | Returns an ordered list of boot devices for the virtual machine. If the list is empty, the virtual machine uses a default boot sequence.
`VSphereAutomation::VCenter::VmHardwareBootDeviceApi` | [**set**](docs/VmHardwareBootDeviceApi.md#set) | **PUT** /rest/vcenter/vm/{vm}/hardware/boot/device | Sets the virtual devices that will be used to boot the virtual machine. The virtual machine will check the devices in order, attempting to boot from each, until the virtual machine boots successfully. If the list is empty, the virtual machine will use a default boot sequence. There should be no more than one instance of Device.Entry for a given device type except ETHERNET in the list.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**connect**](docs/VmHardwareCdromApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/cdrom/{cdrom}/connect | Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**create**](docs/VmHardwareCdromApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/cdrom | Adds a virtual CD-ROM device to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**delete**](docs/VmHardwareCdromApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Removes a virtual CD-ROM device from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**disconnect**](docs/VmHardwareCdromApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/cdrom/{cdrom}/disconnect | Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**get**](docs/VmHardwareCdromApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Returns information about a virtual CD-ROM device.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**list**](docs/VmHardwareCdromApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/cdrom | Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**update**](docs/VmHardwareCdromApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Updates the configuration of a virtual CD-ROM device.
`VSphereAutomation::VCenter::VmHardwareCpuApi` | [**get**](docs/VmHardwareCpuApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/cpu | Returns the CPU-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareCpuApi` | [**update**](docs/VmHardwareCpuApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/cpu | Updates the CPU-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**create**](docs/VmHardwareDiskApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/disk | Adds a virtual disk to the virtual machine. While adding the virtual disk, a new VMDK file may be created or an existing VMDK file may be used to back the virtual disk.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**delete**](docs/VmHardwareDiskApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/disk/{disk} | Removes a virtual disk from the virtual machine. This operation does not destroy the VMDK file that backs the virtual disk. It only detaches the VMDK file from the virtual machine. Once detached, the VMDK file will not be destroyed when the virtual machine to which it was associated is deleted.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**get**](docs/VmHardwareDiskApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/disk/{disk} | Returns information about a virtual disk.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**list**](docs/VmHardwareDiskApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/disk | Returns commonly used information about the virtual disks belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**update**](docs/VmHardwareDiskApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/disk/{disk} | Updates the configuration of a virtual disk. An update operation can be used to detach the existing VMDK file and attach another VMDK file to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**connect**](docs/VmHardwareEthernetApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic}/connect | Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**create**](docs/VmHardwareEthernetApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/ethernet | Adds a virtual Ethernet adapter to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**delete**](docs/VmHardwareEthernetApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic} | Removes a virtual Ethernet adapter from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**disconnect**](docs/VmHardwareEthernetApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic}/disconnect | Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**get**](docs/VmHardwareEthernetApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic} | Returns information about a virtual Ethernet adapter.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**list**](docs/VmHardwareEthernetApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/ethernet | Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**update**](docs/VmHardwareEthernetApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic} | Updates the configuration of a virtual Ethernet adapter.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**connect**](docs/VmHardwareFloppyApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/floppy/{floppy}/connect | Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**create**](docs/VmHardwareFloppyApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/floppy | Adds a virtual floppy drive to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**delete**](docs/VmHardwareFloppyApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/floppy/{floppy} | Removes a virtual floppy drive from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**disconnect**](docs/VmHardwareFloppyApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/floppy/{floppy}/disconnect | Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**get**](docs/VmHardwareFloppyApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/floppy/{floppy} | Returns information about a virtual floppy drive.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**list**](docs/VmHardwareFloppyApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/floppy | Returns commonly used information about the virtual floppy drives belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**update**](docs/VmHardwareFloppyApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/floppy/{floppy} | Updates the configuration of a virtual floppy drive.
`VSphereAutomation::VCenter::VmHardwareMemoryApi` | [**get**](docs/VmHardwareMemoryApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/memory | Returns the memory-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareMemoryApi` | [**update**](docs/VmHardwareMemoryApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/memory | Updates the memory-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**connect**](docs/VmHardwareParallelApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/parallel/{port}/connect | Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**create**](docs/VmHardwareParallelApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/parallel | Adds a virtual parallel port to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**delete**](docs/VmHardwareParallelApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/parallel/{port} | Removes a virtual parallel port from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**disconnect**](docs/VmHardwareParallelApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/parallel/{port}/disconnect | Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**get**](docs/VmHardwareParallelApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/parallel/{port} | Returns information about a virtual parallel port.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**list**](docs/VmHardwareParallelApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/parallel | Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**update**](docs/VmHardwareParallelApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/parallel/{port} | Updates the configuration of a virtual parallel port.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**connect**](docs/VmHardwareSerialApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/serial/{port}/connect | Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**create**](docs/VmHardwareSerialApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/serial | Adds a virtual serial port to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**delete**](docs/VmHardwareSerialApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/serial/{port} | Removes a virtual serial port from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**disconnect**](docs/VmHardwareSerialApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/serial/{port}/disconnect | Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**get**](docs/VmHardwareSerialApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/serial/{port} | Returns information about a virtual serial port.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**list**](docs/VmHardwareSerialApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/serial | Returns commonly used information about the virtual serial ports belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**update**](docs/VmHardwareSerialApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/serial/{port} | Updates the configuration of a virtual serial port.
`VSphereAutomation::VCenter::VmLibraryItemApi` | [**get**](docs/VmLibraryItemApi.md#get) | **GET** /rest/vcenter/vm/{vm}/library-item | Returns the information about the library item associated with the virtual machine.
`VSphereAutomation::VCenter::VmPowerApi` | [**get**](docs/VmPowerApi.md#get) | **GET** /rest/vcenter/vm/{vm}/power | Returns the power state information of a virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
`VSphereAutomation::VCenter::VmPowerApi` | [**reset**](docs/VmPowerApi.md#reset) | **POST** /rest/vcenter/vm/{vm}/power/reset | Resets a powered-on virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Interact.Reset.  
`VSphereAutomation::VCenter::VmPowerApi` | [**start**](docs/VmPowerApi.md#start) | **POST** /rest/vcenter/vm/{vm}/power/start | Powers on a powered-off or suspended virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Interact.PowerOn.  
`VSphereAutomation::VCenter::VmPowerApi` | [**stop**](docs/VmPowerApi.md#stop) | **POST** /rest/vcenter/vm/{vm}/power/stop | Powers off a powered-on or suspended virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Interact.PowerOff.  
`VSphereAutomation::VCenter::VmPowerApi` | [**suspend**](docs/VmPowerApi.md#suspend) | **POST** /rest/vcenter/vm/{vm}/power/suspend | Suspends a powered-on virtual machine. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.Interact.Suspend.  
`VSphereAutomation::VCenter::VmStoragePolicyApi` | [**get**](docs/VmStoragePolicyApi.md#get) | **GET** /rest/vcenter/vm/{vm}/storage/policy | Returns Information about Storage Policy associated with a virtual machine's home directory and/or its virtual hard disks.
`VSphereAutomation::VCenter::VmStoragePolicyApi` | [**update**](docs/VmStoragePolicyApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/storage/policy | Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.
`VSphereAutomation::VCenter::VmStoragePolicyComplianceApi` | [**check**](docs/VmStoragePolicyComplianceApi.md#check) | **POST** /rest/vcenter/vm/{vm}/storage/policy/compliance?action&#x3D;check | Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
`VSphereAutomation::VCenter::VmStoragePolicyComplianceApi` | [**get**](docs/VmStoragePolicyComplianceApi.md#get) | **GET** /rest/vcenter/vm/{vm}/storage/policy/compliance | Returns the cached storage policy compliance information of a virtual machine.
`VSphereAutomation::VCenter::VmTagsApi` | [**add**](docs/VmTagsApi.md#add) | **POST** /rest/vcenter/vm/{vm}/tags?action&#x3D;add | Attaches tags to a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmTagsApi` | [**get**](docs/VmTagsApi.md#get) | **GET** /rest/vcenter/vm/{vm}/tags | Lists all tags attached to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmTagsApi` | [**remove**](docs/VmTagsApi.md#remove) | **POST** /rest/vcenter/vm/{vm}/tags?action&#x3D;remove | Detaches tags from a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsApi` | [**create**](docs/VmTemplateLibraryItemsApi.md#create) | **POST** /rest/vcenter/vm-template/library-items | Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsApi` | [**deploy**](docs/VmTemplateLibraryItemsApi.md#deploy) | **POST** /rest/vcenter/vm-template/library-items/{template_library_item}?action&#x3D;deploy | Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsApi` | [**get**](docs/VmTemplateLibraryItemsApi.md#get) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item} | Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}
`VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi` | [**check_in**](docs/VmTemplateLibraryItemsCheckOutsApi.md#check_in) | **POST** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm}?action&#x3D;check-in | Checks in a virtual machine into the library item. This {@term operation} updates the library item to contain the virtual machine being checked in as a template. This template becomes the latest version of the library item. The previous virtual machine template contained in the library item is available as a backup and its information can be queried using the {@name Versions} {@term service}. At most one previous version of a virtual machine template is retained in the library item.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi` | [**check_out**](docs/VmTemplateLibraryItemsCheckOutsApi.md#check_out) | **POST** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs?action&#x3D;check-out | Checks out a library item containing a virtual machine template. This {@term operation} makes a copy of the source virtual machine template contained in the library item as a virtual machine. The virtual machine is copied with the same storage specification as the source virtual machine template. Changes to the checked out virtual machine do not affect the virtual machine template contained in the library item. To save these changes back into the library item, {@link #checkIn} the virtual machine. To discard the changes, {@link #delete} the virtual machine.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi` | [**delete**](docs/VmTemplateLibraryItemsCheckOutsApi.md#delete) | **DELETE** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm} | Deletes the checked out virtual machine.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi` | [**get**](docs/VmTemplateLibraryItemsCheckOutsApi.md#get) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm} | Returns the information about a checked out virtual machine.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi` | [**list**](docs/VmTemplateLibraryItemsCheckOutsApi.md#list) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs | Returns commonly used information about the virtual machines that are checked out of the library item.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi` | [**delete**](docs/VmTemplateLibraryItemsVersionsApi.md#delete) | **DELETE** /rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version} | Deletes the virtual machine template contained in the library item at the specified version.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi` | [**get**](docs/VmTemplateLibraryItemsVersionsApi.md#get) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version} | Returns information about the live version of a library item containing a virtual machine template.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi` | [**list**](docs/VmTemplateLibraryItemsVersionsApi.md#list) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/versions | Returns commonly used information about the live versions of a virtual machine template library item.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi` | [**rollback**](docs/VmTemplateLibraryItemsVersionsApi.md#rollback) | **POST** /rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version}?action&#x3D;rollback | Rollbacks a library item containing a virtual machine template to a previous version. The virtual machine template at the specified version becomes the latest virtual machine template with a new version identifier.
`VSphereAutomation::VCenter::VmToolsApi` | [**get**](docs/VmToolsApi.md#get) | **GET** /rest/vcenter/vm/{vm}/tools | Get the properties of VMware Tools.
`VSphereAutomation::VCenter::VmToolsApi` | [**update**](docs/VmToolsApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/tools | Update the properties of VMware Tools.
`VSphereAutomation::VCenter::VmToolsApi` | [**upgrade**](docs/VmToolsApi.md#upgrade) | **POST** /rest/vcenter/vm/{vm}/tools?action&#x3D;upgrade | Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.
`VSphereAutomation::VCenter::VmToolsInstallerApi` | [**connect**](docs/VmToolsInstallerApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/tools/installer?action&#x3D;connect | Connects the VMware Tools CD installer as a CD-ROM for the guest operating system. On Windows guest operating systems with autorun, this should cause the installer to initiate the Tools installation which will need user input to complete. On other (non-Windows) guest operating systems this will make the Tools installation available, and a a user will need to do guest-specific actions. On Linux, this includes opening an archive and running the installer. To monitor the status of the Tools install, clients should check the Tools.Info.version-status and Tools.Info.run-state from Tools.get
`VSphereAutomation::VCenter::VmToolsInstallerApi` | [**disconnect**](docs/VmToolsInstallerApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/tools/installer?action&#x3D;disconnect | Disconnect the VMware Tools installer CD image.
`VSphereAutomation::VCenter::VmToolsInstallerApi` | [**get**](docs/VmToolsInstallerApi.md#get) | **GET** /rest/vcenter/vm/{vm}/tools/installer | Get information about the VMware Tools installer.
`VSphereAutomation::VCenter::VmwportalAccountsApi` | [**check**](docs/VmwportalAccountsApi.md#check) | **POST** /api/vcenter/vmwportal/accounts/{account}?action&#x3D;check | Checks if given user account is entitled to download product binaries from the my.vmware.com portal. Call Accounts::list() to get all the entitlement accounts linked to given my.vmware.com user. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmwportalAccountsApi` | [**list**](docs/VmwportalAccountsApi.md#list) | **GET** /api/vcenter/vmwportal/accounts | Gets the list of Entitlement Accounts (EA) attached to the user account on the my.vmware.com portal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::VCenter::VmwportalAuthenticationApi` | [**create**](docs/VmwportalAuthenticationApi.md#create) | **POST** /api/vcenter/vmwportal/authentication | Create API authenticates the user on the my.vmware.com portal using the username password passed in the spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


## Documentation for Models

 - [VSphereAutomation::VCenter::CisTaskProgress](docs/CisTaskProgress.md)
 - [VSphereAutomation::VCenter::CisTaskStatus](docs/CisTaskStatus.md)
 - [VSphereAutomation::VCenter::VapiStdDynamicID](docs/VapiStdDynamicID.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsAlreadyExists](docs/VapiStdErrorsAlreadyExists.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsAlreadyExistsError](docs/VapiStdErrorsAlreadyExistsError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsAlreadyInDesiredState](docs/VapiStdErrorsAlreadyInDesiredState.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsAlreadyInDesiredStateError](docs/VapiStdErrorsAlreadyInDesiredStateError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsError](docs/VapiStdErrorsError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsErrorError](docs/VapiStdErrorsErrorError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsErrorType](docs/VapiStdErrorsErrorType.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInternalServerError](docs/VapiStdErrorsInternalServerError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInternalServerErrorError](docs/VapiStdErrorsInternalServerErrorError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidArgumentError](docs/VapiStdErrorsInvalidArgumentError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementConfiguration](docs/VapiStdErrorsInvalidElementConfiguration.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementConfigurationError](docs/VapiStdErrorsInvalidElementConfigurationError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementType](docs/VapiStdErrorsInvalidElementType.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementTypeError](docs/VapiStdErrorsInvalidElementTypeError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidRequest](docs/VapiStdErrorsInvalidRequest.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidRequestError](docs/VapiStdErrorsInvalidRequestError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsNotAllowedInCurrentState](docs/VapiStdErrorsNotAllowedInCurrentState.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsNotAllowedInCurrentStateError](docs/VapiStdErrorsNotAllowedInCurrentStateError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsNotFoundError](docs/VapiStdErrorsNotFoundError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsResourceBusy](docs/VapiStdErrorsResourceBusy.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsResourceBusyError](docs/VapiStdErrorsResourceBusyError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsResourceInUse](docs/VapiStdErrorsResourceInUse.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsResourceInUseError](docs/VapiStdErrorsResourceInUseError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsResourceInaccessible](docs/VapiStdErrorsResourceInaccessible.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsResourceInaccessibleError](docs/VapiStdErrorsResourceInaccessibleError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsServiceUnavailable](docs/VapiStdErrorsServiceUnavailable.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsServiceUnavailableError](docs/VapiStdErrorsServiceUnavailableError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsTimedOut](docs/VapiStdErrorsTimedOut.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsTimedOutError](docs/VapiStdErrorsTimedOutError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnableToAllocateResource](docs/VapiStdErrorsUnableToAllocateResource.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnableToAllocateResourceError](docs/VapiStdErrorsUnableToAllocateResourceError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnauthenticated](docs/VapiStdErrorsUnauthenticated.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnauthenticatedError](docs/VapiStdErrorsUnauthenticatedError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnauthorizedError](docs/VapiStdErrorsUnauthorizedError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnsupported](docs/VapiStdErrorsUnsupported.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnsupportedError](docs/VapiStdErrorsUnsupportedError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnverifiedPeer](docs/VapiStdErrorsUnverifiedPeer.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsUnverifiedPeerError](docs/VapiStdErrorsUnverifiedPeerError.md)
 - [VSphereAutomation::VCenter::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)
 - [VSphereAutomation::VCenter::VapiStdLocalizableMessageParams](docs/VapiStdLocalizableMessageParams.md)
 - [VSphereAutomation::VCenter::VapiStdLocalizationParam](docs/VapiStdLocalizationParam.md)
 - [VSphereAutomation::VCenter::VapiStdLocalizationParamDateTimeFormat](docs/VapiStdLocalizationParamDateTimeFormat.md)
 - [VSphereAutomation::VCenter::VapiStdNestedLocalizableMessage](docs/VapiStdNestedLocalizableMessage.md)
 - [VSphereAutomation::VCenter::VcenterActivedirectoryActiveDirectoryDomainSpec](docs/VcenterActivedirectoryActiveDirectoryDomainSpec.md)
 - [VSphereAutomation::VCenter::VcenterActivedirectoryActiveDirectoryJoin](docs/VcenterActivedirectoryActiveDirectoryJoin.md)
 - [VSphereAutomation::VCenter::VcenterActivedirectoryActiveDirectoryLeave](docs/VcenterActivedirectoryActiveDirectoryLeave.md)
 - [VSphereAutomation::VCenter::VcenterActivedirectoryActiveDirectoryState](docs/VcenterActivedirectoryActiveDirectoryState.md)
 - [VSphereAutomation::VCenter::VcenterActivedirectoryActiveDirectoryStatusInfo](docs/VcenterActivedirectoryActiveDirectoryStatusInfo.md)
 - [VSphereAutomation::VCenter::VcenterActivedirectoryActiveDirectoryStatusResp](docs/VcenterActivedirectoryActiveDirectoryStatusResp.md)
 - [VSphereAutomation::VCenter::VcenterActivedirectoryActiveDirectoryUserSpec](docs/VcenterActivedirectoryActiveDirectoryUserSpec.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateCertStatusResp](docs/VcenterCertificateAuthorityCertificateCertStatusResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateCountCertsResp](docs/VcenterCertificateAuthorityCertificateCountCertsResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateEnumCertsResp](docs/VcenterCertificateAuthorityCertificateEnumCertsResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateGenCert](docs/VcenterCertificateAuthorityCertificateGenCert.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateGenCertResp](docs/VcenterCertificateAuthorityCertificateGenCertResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateGenerateKeys](docs/VcenterCertificateAuthorityCertificateGenerateKeys.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateGenerateKeysResp](docs/VcenterCertificateAuthorityCertificateGenerateKeysResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateSpec](docs/VcenterCertificateAuthorityCertificateSpec.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthorityGetRootGetRootResp](docs/VcenterCertificateAuthorityGetRootGetRootResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthoritySignCertSignCertFromCSR](docs/VcenterCertificateAuthoritySignCertSignCertFromCSR.md)
 - [VSphereAutomation::VCenter::VcenterCertificateAuthoritySignCertSignCertFromCSRResp](docs/VcenterCertificateAuthoritySignCertSignCertFromCSRResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsCsrCreate](docs/VcenterCertificateManagementVcenterTlsCsrCreate.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsCsrCreateResp](docs/VcenterCertificateManagementVcenterTlsCsrCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsCsrInfo](docs/VcenterCertificateManagementVcenterTlsCsrInfo.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsCsrSpec](docs/VcenterCertificateManagementVcenterTlsCsrSpec.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsInfo](docs/VcenterCertificateManagementVcenterTlsInfo.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsRenew](docs/VcenterCertificateManagementVcenterTlsRenew.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsReplaceSpec](docs/VcenterCertificateManagementVcenterTlsReplaceSpec.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsReplaceVmcaSigned](docs/VcenterCertificateManagementVcenterTlsReplaceVmcaSigned.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsResp](docs/VcenterCertificateManagementVcenterTlsResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsSet](docs/VcenterCertificateManagementVcenterTlsSet.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTlsSpec](docs/VcenterCertificateManagementVcenterTlsSpec.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsCreate](docs/VcenterCertificateManagementVcenterTrustedRootChainsCreate.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsCreateResp](docs/VcenterCertificateManagementVcenterTrustedRootChainsCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsCreateSpec](docs/VcenterCertificateManagementVcenterTrustedRootChainsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsInfo](docs/VcenterCertificateManagementVcenterTrustedRootChainsInfo.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsListResp](docs/VcenterCertificateManagementVcenterTrustedRootChainsListResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsResp](docs/VcenterCertificateManagementVcenterTrustedRootChainsResp.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterTrustedRootChainsSummary](docs/VcenterCertificateManagementVcenterTrustedRootChainsSummary.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterVmcaRootCreate](docs/VcenterCertificateManagementVcenterVmcaRootCreate.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementVcenterVmcaRootCreateSpec](docs/VcenterCertificateManagementVcenterVmcaRootCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterCertificateManagementX509CertChain](docs/VcenterCertificateManagementX509CertChain.md)
 - [VSphereAutomation::VCenter::VcenterClusterCreate](docs/VcenterClusterCreate.md)
 - [VSphereAutomation::VCenter::VcenterClusterCreateResp](docs/VcenterClusterCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterCreateSpec](docs/VcenterClusterCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsAlgoParameterParam](docs/VcenterClusterEdrsAlgoParameterParam.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsAlgoParameterResp](docs/VcenterClusterEdrsAlgoParameterResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsAlgoParameterSet](docs/VcenterClusterEdrsAlgoParameterSet.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeEnter](docs/VcenterClusterEdrsMaintenanceModeEnter.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeEnterSpec](docs/VcenterClusterEdrsMaintenanceModeEnterSpec.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeEnterTask](docs/VcenterClusterEdrsMaintenanceModeEnterTask.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeEnterTaskResp](docs/VcenterClusterEdrsMaintenanceModeEnterTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeExit](docs/VcenterClusterEdrsMaintenanceModeExit.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeExitSpec](docs/VcenterClusterEdrsMaintenanceModeExitSpec.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeExitTask](docs/VcenterClusterEdrsMaintenanceModeExitTask.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeExitTaskResp](docs/VcenterClusterEdrsMaintenanceModeExitTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeInfo](docs/VcenterClusterEdrsMaintenanceModeInfo.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeResp](docs/VcenterClusterEdrsMaintenanceModeResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsMaintenanceModeStatus](docs/VcenterClusterEdrsMaintenanceModeStatus.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsRecommendationGenerateResp](docs/VcenterClusterEdrsRecommendationGenerateResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsRecommendationRecommendation](docs/VcenterClusterEdrsRecommendationRecommendation.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsRecommendationRecommendationAction](docs/VcenterClusterEdrsRecommendationRecommendationAction.md)
 - [VSphereAutomation::VCenter::VcenterClusterEdrsRecommendationUtilizationInfo](docs/VcenterClusterEdrsRecommendationUtilizationInfo.md)
 - [VSphereAutomation::VCenter::VcenterClusterFilterSpec](docs/VcenterClusterFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterClusterInfo](docs/VcenterClusterInfo.md)
 - [VSphereAutomation::VCenter::VcenterClusterListResp](docs/VcenterClusterListResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesCreate](docs/VcenterClusterModulesCreate.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesCreateResp](docs/VcenterClusterModulesCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesCreateSpec](docs/VcenterClusterModulesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesListResp](docs/VcenterClusterModulesListResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesListResult](docs/VcenterClusterModulesListResult.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesSummary](docs/VcenterClusterModulesSummary.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesVmMembersAdd](docs/VcenterClusterModulesVmMembersAdd.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesVmMembersAddResp](docs/VcenterClusterModulesVmMembersAddResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesVmMembersGetResult](docs/VcenterClusterModulesVmMembersGetResult.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesVmMembersRemove](docs/VcenterClusterModulesVmMembersRemove.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesVmMembersRemoveResp](docs/VcenterClusterModulesVmMembersRemoveResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesVmMembersResp](docs/VcenterClusterModulesVmMembersResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterModulesVmMembersStatus](docs/VcenterClusterModulesVmMembersStatus.md)
 - [VSphereAutomation::VCenter::VcenterClusterResp](docs/VcenterClusterResp.md)
 - [VSphereAutomation::VCenter::VcenterClusterSummary](docs/VcenterClusterSummary.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesCapabilitiesInfo](docs/VcenterComputePoliciesCapabilitiesInfo.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesCapabilitiesSummary](docs/VcenterComputePoliciesCapabilitiesSummary.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesObjectCompliance](docs/VcenterComputePoliciesObjectCompliance.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesPolicyCompliance](docs/VcenterComputePoliciesPolicyCompliance.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesSummary](docs/VcenterComputePoliciesSummary.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesTagUsageFilterSpec](docs/VcenterComputePoliciesTagUsageFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesTagUsageSummary](docs/VcenterComputePoliciesTagUsageSummary.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesVMListResult](docs/VcenterComputePoliciesVMListResult.md)
 - [VSphereAutomation::VCenter::VcenterComputePoliciesVMSummary](docs/VcenterComputePoliciesVMSummary.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesDayOfWeek](docs/VcenterContentRegistriesDayOfWeek.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborCreate](docs/VcenterContentRegistriesHarborCreate.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborCreateResp](docs/VcenterContentRegistriesHarborCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborCreateSpec](docs/VcenterContentRegistriesHarborCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborGarbageCollection](docs/VcenterContentRegistriesHarborGarbageCollection.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborInfo](docs/VcenterContentRegistriesHarborInfo.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborListResp](docs/VcenterContentRegistriesHarborListResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersConfigStatus](docs/VcenterContentRegistriesHarborProjectMembersConfigStatus.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersCreate](docs/VcenterContentRegistriesHarborProjectMembersCreate.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersCreateResp](docs/VcenterContentRegistriesHarborProjectMembersCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersCreateSpec](docs/VcenterContentRegistriesHarborProjectMembersCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersInfo](docs/VcenterContentRegistriesHarborProjectMembersInfo.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersListResp](docs/VcenterContentRegistriesHarborProjectMembersListResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersMemberType](docs/VcenterContentRegistriesHarborProjectMembersMemberType.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersResp](docs/VcenterContentRegistriesHarborProjectMembersResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersRole](docs/VcenterContentRegistriesHarborProjectMembersRole.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersSummary](docs/VcenterContentRegistriesHarborProjectMembersSummary.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersUpdate](docs/VcenterContentRegistriesHarborProjectMembersUpdate.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectMembersUpdateSpec](docs/VcenterContentRegistriesHarborProjectMembersUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsConfigStatus](docs/VcenterContentRegistriesHarborProjectsConfigStatus.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsCreate](docs/VcenterContentRegistriesHarborProjectsCreate.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsCreateResp](docs/VcenterContentRegistriesHarborProjectsCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsCreateSpec](docs/VcenterContentRegistriesHarborProjectsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsInfo](docs/VcenterContentRegistriesHarborProjectsInfo.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsListResp](docs/VcenterContentRegistriesHarborProjectsListResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsResp](docs/VcenterContentRegistriesHarborProjectsResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsScope](docs/VcenterContentRegistriesHarborProjectsScope.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsSummary](docs/VcenterContentRegistriesHarborProjectsSummary.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborResp](docs/VcenterContentRegistriesHarborResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborStorageInfo](docs/VcenterContentRegistriesHarborStorageInfo.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborStorageSpec](docs/VcenterContentRegistriesHarborStorageSpec.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHarborSummary](docs/VcenterContentRegistriesHarborSummary.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHealthInfo](docs/VcenterContentRegistriesHealthInfo.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHealthResp](docs/VcenterContentRegistriesHealthResp.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesHealthStatus](docs/VcenterContentRegistriesHealthStatus.md)
 - [VSphereAutomation::VCenter::VcenterContentRegistriesRecurrence](docs/VcenterContentRegistriesRecurrence.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterCreate](docs/VcenterDatacenterCreate.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterCreateResp](docs/VcenterDatacenterCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterCreateSpec](docs/VcenterDatacenterCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterFilterSpec](docs/VcenterDatacenterFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterInfo](docs/VcenterDatacenterInfo.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterListResp](docs/VcenterDatacenterListResp.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterResp](docs/VcenterDatacenterResp.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterSummary](docs/VcenterDatacenterSummary.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreDefaultPolicyResp](docs/VcenterDatastoreDefaultPolicyResp.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreFilterSpec](docs/VcenterDatastoreFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreInfo](docs/VcenterDatastoreInfo.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreListResp](docs/VcenterDatastoreListResp.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreResp](docs/VcenterDatastoreResp.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreSummary](docs/VcenterDatastoreSummary.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreType](docs/VcenterDatastoreType.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentApplianceSize](docs/VcenterDeploymentApplianceSize.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentApplianceState](docs/VcenterDeploymentApplianceState.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentApplianceType](docs/VcenterDeploymentApplianceType.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentCheckInfo](docs/VcenterDeploymentCheckInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentCheckStatus](docs/VcenterDeploymentCheckStatus.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentDataMigrationEstimate](docs/VcenterDeploymentDataMigrationEstimate.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentDataMigrationInfo](docs/VcenterDeploymentDataMigrationInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentHistoryMigrationOption](docs/VcenterDeploymentHistoryMigrationOption.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentHistoryMigrationSpec](docs/VcenterDeploymentHistoryMigrationSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryCreateSpec](docs/VcenterDeploymentImportHistoryCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryInfo](docs/VcenterDeploymentImportHistoryInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryResp](docs/VcenterDeploymentImportHistoryResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryStart](docs/VcenterDeploymentImportHistoryStart.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInfo](docs/VcenterDeploymentInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInfoSubtasks](docs/VcenterDeploymentInfoSubtasks.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallCheck](docs/VcenterDeploymentInstallCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallCheckResp](docs/VcenterDeploymentInstallCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallInitialConfigRemotePscThumbprintRemoteSpec](docs/VcenterDeploymentInstallInitialConfigRemotePscThumbprintRemoteSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallInitialConfigRemotePscThumbprintResp](docs/VcenterDeploymentInstallInitialConfigRemotePscThumbprintResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallInstallSpec](docs/VcenterDeploymentInstallInstallSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscReplicatedCheck](docs/VcenterDeploymentInstallPscReplicatedCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscReplicatedCheckResp](docs/VcenterDeploymentInstallPscReplicatedCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscStandaloneCheck](docs/VcenterDeploymentInstallPscStandaloneCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscStandaloneCheckResp](docs/VcenterDeploymentInstallPscStandaloneCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallRemotePscCheck](docs/VcenterDeploymentInstallRemotePscCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallRemotePscCheckResp](docs/VcenterDeploymentInstallRemotePscCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallResp](docs/VcenterDeploymentInstallResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallStart](docs/VcenterDeploymentInstallStart.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallVcsaEmbeddedSpec](docs/VcenterDeploymentInstallVcsaEmbeddedSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentLocationSpec](docs/VcenterDeploymentLocationSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateActiveDirectoryCheck](docs/VcenterDeploymentMigrateActiveDirectoryCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateActiveDirectoryCheckResp](docs/VcenterDeploymentMigrateActiveDirectoryCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateActiveDirectoryCheckSpec](docs/VcenterDeploymentMigrateActiveDirectoryCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateActiveDirectorySpec](docs/VcenterDeploymentMigrateActiveDirectorySpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateCheck](docs/VcenterDeploymentMigrateCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateCheckResp](docs/VcenterDeploymentMigrateCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateMigrateSpec](docs/VcenterDeploymentMigrateMigrateSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateMigrationAssistantSpec](docs/VcenterDeploymentMigrateMigrationAssistantSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigratePscSpec](docs/VcenterDeploymentMigratePscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateResp](docs/VcenterDeploymentMigrateResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateSourceVcWindows](docs/VcenterDeploymentMigrateSourceVcWindows.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateStart](docs/VcenterDeploymentMigrateStart.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentMigrateVcsaEmbeddedSpec](docs/VcenterDeploymentMigrateVcsaEmbeddedSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentNotification](docs/VcenterDeploymentNotification.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentNotifications](docs/VcenterDeploymentNotifications.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionAnswer](docs/VcenterDeploymentQuestionAnswer.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionAnswerSpec](docs/VcenterDeploymentQuestionAnswerSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionInfo](docs/VcenterDeploymentQuestionInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionQuestion](docs/VcenterDeploymentQuestionQuestion.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionQuestionType](docs/VcenterDeploymentQuestionQuestionType.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionResp](docs/VcenterDeploymentQuestionResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentRemotePscSpec](docs/VcenterDeploymentRemotePscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentReplicatedPscSpec](docs/VcenterDeploymentReplicatedPscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentReplicatedSpec](docs/VcenterDeploymentReplicatedSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentResp](docs/VcenterDeploymentResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentSourceInfo](docs/VcenterDeploymentSourceInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentStandalonePscSpec](docs/VcenterDeploymentStandalonePscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentStandaloneSpec](docs/VcenterDeploymentStandaloneSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentTask](docs/VcenterDeploymentTask.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeCheck](docs/VcenterDeploymentUpgradeCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeCheckResp](docs/VcenterDeploymentUpgradeCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradePscSpec](docs/VcenterDeploymentUpgradePscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeResp](docs/VcenterDeploymentUpgradeResp.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeSourceApplianceSpec](docs/VcenterDeploymentUpgradeSourceApplianceSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeStart](docs/VcenterDeploymentUpgradeStart.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeUpgradeSpec](docs/VcenterDeploymentUpgradeUpgradeSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeVcsaEmbeddedSpec](docs/VcenterDeploymentUpgradeVcsaEmbeddedSpec.md)
 - [VSphereAutomation::VCenter::VcenterExtensionTasksCreate](docs/VcenterExtensionTasksCreate.md)
 - [VSphereAutomation::VCenter::VcenterExtensionTasksCreateResp](docs/VcenterExtensionTasksCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterExtensionTasksCreateSpec](docs/VcenterExtensionTasksCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterExtensionTasksUpdate](docs/VcenterExtensionTasksUpdate.md)
 - [VSphereAutomation::VCenter::VcenterExtensionTasksUpdateSpec](docs/VcenterExtensionTasksUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterFolderFilterSpec](docs/VcenterFolderFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterFolderListResp](docs/VcenterFolderListResp.md)
 - [VSphereAutomation::VCenter::VcenterFolderSummary](docs/VcenterFolderSummary.md)
 - [VSphereAutomation::VCenter::VcenterFolderType](docs/VcenterFolderType.md)
 - [VSphereAutomation::VCenter::VcenterGuestAdapterMapping](docs/VcenterGuestAdapterMapping.md)
 - [VSphereAutomation::VCenter::VcenterGuestConfigurationSpec](docs/VcenterGuestConfigurationSpec.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpec](docs/VcenterGuestCustomizationSpec.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsCreate](docs/VcenterGuestCustomizationSpecsCreate.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsCreateResp](docs/VcenterGuestCustomizationSpecsCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsCreateSpec](docs/VcenterGuestCustomizationSpecsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsExport](docs/VcenterGuestCustomizationSpecsExport.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsExportResp](docs/VcenterGuestCustomizationSpecsExportResp.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsFilterSpec](docs/VcenterGuestCustomizationSpecsFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsFormat](docs/VcenterGuestCustomizationSpecsFormat.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsImportSpecification](docs/VcenterGuestCustomizationSpecsImportSpecification.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsImportSpecificationResp](docs/VcenterGuestCustomizationSpecsImportSpecificationResp.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsInfo](docs/VcenterGuestCustomizationSpecsInfo.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsListResp](docs/VcenterGuestCustomizationSpecsListResp.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsOsType](docs/VcenterGuestCustomizationSpecsOsType.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsResp](docs/VcenterGuestCustomizationSpecsResp.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsSet](docs/VcenterGuestCustomizationSpecsSet.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsSpec](docs/VcenterGuestCustomizationSpecsSpec.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsSummary](docs/VcenterGuestCustomizationSpecsSummary.md)
 - [VSphereAutomation::VCenter::VcenterGuestDomain](docs/VcenterGuestDomain.md)
 - [VSphereAutomation::VCenter::VcenterGuestDomainType](docs/VcenterGuestDomainType.md)
 - [VSphereAutomation::VCenter::VcenterGuestGlobalDNSSettings](docs/VcenterGuestGlobalDNSSettings.md)
 - [VSphereAutomation::VCenter::VcenterGuestGuiUnattended](docs/VcenterGuestGuiUnattended.md)
 - [VSphereAutomation::VCenter::VcenterGuestHostnameGenerator](docs/VcenterGuestHostnameGenerator.md)
 - [VSphereAutomation::VCenter::VcenterGuestHostnameGeneratorType](docs/VcenterGuestHostnameGeneratorType.md)
 - [VSphereAutomation::VCenter::VcenterGuestIPSettings](docs/VcenterGuestIPSettings.md)
 - [VSphereAutomation::VCenter::VcenterGuestIpv4](docs/VcenterGuestIpv4.md)
 - [VSphereAutomation::VCenter::VcenterGuestIpv4Type](docs/VcenterGuestIpv4Type.md)
 - [VSphereAutomation::VCenter::VcenterGuestIpv6](docs/VcenterGuestIpv6.md)
 - [VSphereAutomation::VCenter::VcenterGuestIpv6Address](docs/VcenterGuestIpv6Address.md)
 - [VSphereAutomation::VCenter::VcenterGuestIpv6Type](docs/VcenterGuestIpv6Type.md)
 - [VSphereAutomation::VCenter::VcenterGuestLinuxConfiguration](docs/VcenterGuestLinuxConfiguration.md)
 - [VSphereAutomation::VCenter::VcenterGuestUserData](docs/VcenterGuestUserData.md)
 - [VSphereAutomation::VCenter::VcenterGuestWindowsConfiguration](docs/VcenterGuestWindowsConfiguration.md)
 - [VSphereAutomation::VCenter::VcenterGuestWindowsConfigurationRebootOption](docs/VcenterGuestWindowsConfigurationRebootOption.md)
 - [VSphereAutomation::VCenter::VcenterGuestWindowsNetworkAdapterSettings](docs/VcenterGuestWindowsNetworkAdapterSettings.md)
 - [VSphereAutomation::VCenter::VcenterGuestWindowsNetworkAdapterSettingsNetBIOSMode](docs/VcenterGuestWindowsNetworkAdapterSettingsNetBIOSMode.md)
 - [VSphereAutomation::VCenter::VcenterGuestWindowsSysprep](docs/VcenterGuestWindowsSysprep.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityAddCheckSpec](docs/VcenterHlmCommunityAddCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityAddSpec](docs/VcenterHlmCommunityAddSpec.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityAddTask](docs/VcenterHlmCommunityAddTask.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityAddTaskResp](docs/VcenterHlmCommunityAddTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityCheck](docs/VcenterHlmCommunityCheck.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityCheckInfo](docs/VcenterHlmCommunityCheckInfo.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityCheckResp](docs/VcenterHlmCommunityCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityCheckTask](docs/VcenterHlmCommunityCheckTask.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityCheckTaskResp](docs/VcenterHlmCommunityCheckTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityInfo](docs/VcenterHlmCommunityInfo.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityMember](docs/VcenterHlmCommunityMember.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityRemoveTask](docs/VcenterHlmCommunityRemoveTask.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityRemoveTaskResp](docs/VcenterHlmCommunityRemoveTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityResp](docs/VcenterHlmCommunityResp.md)
 - [VSphereAutomation::VCenter::VcenterHlmCommunityStatus](docs/VcenterHlmCommunityStatus.md)
 - [VSphereAutomation::VCenter::VcenterHlmConvergenceConvergeTaskResp](docs/VcenterHlmConvergenceConvergeTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterHlmMultiSddcConfigSpec](docs/VcenterHlmMultiSddcConfigSpec.md)
 - [VSphereAutomation::VCenter::VcenterHlmMultiSddcSet](docs/VcenterHlmMultiSddcSet.md)
 - [VSphereAutomation::VCenter::VcenterHlmRemoteWorkerLink](docs/VcenterHlmRemoteWorkerLink.md)
 - [VSphereAutomation::VCenter::VcenterHlmRemoteWorkerLinkInputSpec](docs/VcenterHlmRemoteWorkerLinkInputSpec.md)
 - [VSphereAutomation::VCenter::VcenterHlmRemoteWorkerTrustCreateSpec](docs/VcenterHlmRemoteWorkerTrustCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterHlmRemoteWorkerTrustCreateSpecGroupMap](docs/VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md)
 - [VSphereAutomation::VCenter::VcenterHlmRemoteWorkerX509CertChain](docs/VcenterHlmRemoteWorkerX509CertChain.md)
 - [VSphereAutomation::VCenter::VcenterHlmSddcsFilterSpec](docs/VcenterHlmSddcsFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterHlmSddcsListResp](docs/VcenterHlmSddcsListResp.md)
 - [VSphereAutomation::VCenter::VcenterHlmSddcsSummary](docs/VcenterHlmSddcsSummary.md)
 - [VSphereAutomation::VCenter::VcenterHostConnectionState](docs/VcenterHostConnectionState.md)
 - [VSphereAutomation::VCenter::VcenterHostCreate](docs/VcenterHostCreate.md)
 - [VSphereAutomation::VCenter::VcenterHostCreateResp](docs/VcenterHostCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterHostCreateSpec](docs/VcenterHostCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterHostCreateSpecThumbprintVerification](docs/VcenterHostCreateSpecThumbprintVerification.md)
 - [VSphereAutomation::VCenter::VcenterHostFeaturesTechPreviewResp](docs/VcenterHostFeaturesTechPreviewResp.md)
 - [VSphereAutomation::VCenter::VcenterHostFeaturesTechPreviewRespValue](docs/VcenterHostFeaturesTechPreviewRespValue.md)
 - [VSphereAutomation::VCenter::VcenterHostFeaturesTechPreviewStatus](docs/VcenterHostFeaturesTechPreviewStatus.md)
 - [VSphereAutomation::VCenter::VcenterHostFeaturesTechPreviewUpdate](docs/VcenterHostFeaturesTechPreviewUpdate.md)
 - [VSphereAutomation::VCenter::VcenterHostFilterSpec](docs/VcenterHostFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterHostListResp](docs/VcenterHostListResp.md)
 - [VSphereAutomation::VCenter::VcenterHostMaintenanceRequestsCreate](docs/VcenterHostMaintenanceRequestsCreate.md)
 - [VSphereAutomation::VCenter::VcenterHostMaintenanceRequestsCreateSpec](docs/VcenterHostMaintenanceRequestsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterHostMaintenanceRequestsFilterSpec](docs/VcenterHostMaintenanceRequestsFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterHostMaintenanceRequestsListResult](docs/VcenterHostMaintenanceRequestsListResult.md)
 - [VSphereAutomation::VCenter::VcenterHostMaintenanceRequestsSummary](docs/VcenterHostMaintenanceRequestsSummary.md)
 - [VSphereAutomation::VCenter::VcenterHostPowerState](docs/VcenterHostPowerState.md)
 - [VSphereAutomation::VCenter::VcenterHostSummary](docs/VcenterHostSummary.md)
 - [VSphereAutomation::VCenter::VcenterHostTagsAdd](docs/VcenterHostTagsAdd.md)
 - [VSphereAutomation::VCenter::VcenterHostTagsAddResp](docs/VcenterHostTagsAddResp.md)
 - [VSphereAutomation::VCenter::VcenterHostTagsRemove](docs/VcenterHostTagsRemove.md)
 - [VSphereAutomation::VCenter::VcenterHostTagsRemoveResp](docs/VcenterHostTagsRemoveResp.md)
 - [VSphereAutomation::VCenter::VcenterHostTagsResp](docs/VcenterHostTagsResp.md)
 - [VSphereAutomation::VCenter::VcenterHostTagsStatus](docs/VcenterHostTagsStatus.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksCreate](docs/VcenterHvcLinksCreate.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksCreateResp](docs/VcenterHvcLinksCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksCreateSpec](docs/VcenterHvcLinksCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksCredentials](docs/VcenterHvcLinksCredentials.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksDeleteWithCredentials](docs/VcenterHvcLinksDeleteWithCredentials.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksInfo](docs/VcenterHvcLinksInfo.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksInfoHealthStatus](docs/VcenterHvcLinksInfoHealthStatus.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksListResp](docs/VcenterHvcLinksListResp.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksResp](docs/VcenterHvcLinksResp.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSummary](docs/VcenterHvcLinksSummary.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncCredentials](docs/VcenterHvcLinksSyncCredentials.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersCredentials](docs/VcenterHvcLinksSyncProvidersCredentials.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersInfo](docs/VcenterHvcLinksSyncProvidersInfo.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersListResp](docs/VcenterHvcLinksSyncProvidersListResp.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersResp](docs/VcenterHvcLinksSyncProvidersResp.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersSessionInfo](docs/VcenterHvcLinksSyncProvidersSessionInfo.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersSessionInfoStage](docs/VcenterHvcLinksSyncProvidersSessionInfoStage.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersStart](docs/VcenterHvcLinksSyncProvidersStart.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersStatus](docs/VcenterHvcLinksSyncProvidersStatus.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersSummary](docs/VcenterHvcLinksSyncProvidersSummary.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncRemediate](docs/VcenterHvcLinksSyncRemediate.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncRemediateResp](docs/VcenterHvcLinksSyncRemediateResp.md)
 - [VSphereAutomation::VCenter::VcenterHvcLinksSyncRemediationStatus](docs/VcenterHvcLinksSyncRemediationStatus.md)
 - [VSphereAutomation::VCenter::VcenterHvcManagementAdministratorsAdd](docs/VcenterHvcManagementAdministratorsAdd.md)
 - [VSphereAutomation::VCenter::VcenterHvcManagementAdministratorsRemove](docs/VcenterHvcManagementAdministratorsRemove.md)
 - [VSphereAutomation::VCenter::VcenterHvcManagementAdministratorsResp](docs/VcenterHvcManagementAdministratorsResp.md)
 - [VSphereAutomation::VCenter::VcenterHvcManagementAdministratorsSet](docs/VcenterHvcManagementAdministratorsSet.md)
 - [VSphereAutomation::VCenter::VcenterIdentityForeignSecurityPrincipalsCreate](docs/VcenterIdentityForeignSecurityPrincipalsCreate.md)
 - [VSphereAutomation::VCenter::VcenterIdentityForeignSecurityPrincipalsCreateSpec](docs/VcenterIdentityForeignSecurityPrincipalsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityForeignSecurityPrincipalsInfo](docs/VcenterIdentityForeignSecurityPrincipalsInfo.md)
 - [VSphereAutomation::VCenter::VcenterIdentityForeignSecurityPrincipalsListDomainsResp](docs/VcenterIdentityForeignSecurityPrincipalsListDomainsResp.md)
 - [VSphereAutomation::VCenter::VcenterIdentityForeignSecurityPrincipalsResp](docs/VcenterIdentityForeignSecurityPrincipalsResp.md)
 - [VSphereAutomation::VCenter::VcenterIdentityForeignSecurityPrincipalsUpdate](docs/VcenterIdentityForeignSecurityPrincipalsUpdate.md)
 - [VSphereAutomation::VCenter::VcenterIdentityForeignSecurityPrincipalsUpdateSpec](docs/VcenterIdentityForeignSecurityPrincipalsUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersActiveDirectoryOverLdap](docs/VcenterIdentityProvidersActiveDirectoryOverLdap.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersConfigType](docs/VcenterIdentityProvidersConfigType.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersCreate](docs/VcenterIdentityProvidersCreate.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersCreateResp](docs/VcenterIdentityProvidersCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersCreateSpec](docs/VcenterIdentityProvidersCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersIdmProtocol](docs/VcenterIdentityProvidersIdmProtocol.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersInfo](docs/VcenterIdentityProvidersInfo.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersListResp](docs/VcenterIdentityProvidersListResp.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2AuthenticationMethod](docs/VcenterIdentityProvidersOauth2AuthenticationMethod.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2CreateSpec](docs/VcenterIdentityProvidersOauth2CreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2CreateSpecClaimMap](docs/VcenterIdentityProvidersOauth2CreateSpecClaimMap.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2Info](docs/VcenterIdentityProvidersOauth2Info.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2Summary](docs/VcenterIdentityProvidersOauth2Summary.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2UpdateSpec](docs/VcenterIdentityProvidersOauth2UpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOidcCreateSpec](docs/VcenterIdentityProvidersOidcCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOidcInfo](docs/VcenterIdentityProvidersOidcInfo.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOidcSummary](docs/VcenterIdentityProvidersOidcSummary.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersOidcUpdateSpec](docs/VcenterIdentityProvidersOidcUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersResp](docs/VcenterIdentityProvidersResp.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersSummary](docs/VcenterIdentityProvidersSummary.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersUpdate](docs/VcenterIdentityProvidersUpdate.md)
 - [VSphereAutomation::VCenter::VcenterIdentityProvidersUpdateSpec](docs/VcenterIdentityProvidersUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterIdentityVcIdentityInfo](docs/VcenterIdentityVcIdentityInfo.md)
 - [VSphereAutomation::VCenter::VcenterIdentityVcIdentityResp](docs/VcenterIdentityVcIdentityResp.md)
 - [VSphereAutomation::VCenter::VcenterIdentityVcIdentityUpdate](docs/VcenterIdentityVcIdentityUpdate.md)
 - [VSphereAutomation::VCenter::VcenterIdentityVcIdentityUpdateSpec](docs/VcenterIdentityVcIdentityUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreFind](docs/VcenterInventoryDatastoreFind.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreFindResp](docs/VcenterInventoryDatastoreFindResp.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreFindRespValue](docs/VcenterInventoryDatastoreFindRespValue.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreInfo](docs/VcenterInventoryDatastoreInfo.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkFind](docs/VcenterInventoryNetworkFind.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkFindResp](docs/VcenterInventoryNetworkFindResp.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkFindRespValue](docs/VcenterInventoryNetworkFindRespValue.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkInfo](docs/VcenterInventoryNetworkInfo.md)
 - [VSphereAutomation::VCenter::VcenterIsoImageMount](docs/VcenterIsoImageMount.md)
 - [VSphereAutomation::VCenter::VcenterIsoImageMountResp](docs/VcenterIsoImageMountResp.md)
 - [VSphereAutomation::VCenter::VcenterIsoImageUnmount](docs/VcenterIsoImageUnmount.md)
 - [VSphereAutomation::VCenter::VcenterLcmApplianceSize](docs/VcenterLcmApplianceSize.md)
 - [VSphereAutomation::VCenter::VcenterLcmApplianceType](docs/VcenterLcmApplianceType.md)
 - [VSphereAutomation::VCenter::VcenterLcmConnection](docs/VcenterLcmConnection.md)
 - [VSphereAutomation::VCenter::VcenterLcmDeploymentInfo](docs/VcenterLcmDeploymentInfo.md)
 - [VSphereAutomation::VCenter::VcenterLcmDeploymentOption](docs/VcenterLcmDeploymentOption.md)
 - [VSphereAutomation::VCenter::VcenterLcmDeploymentOptionSkipOptions](docs/VcenterLcmDeploymentOptionSkipOptions.md)
 - [VSphereAutomation::VCenter::VcenterLcmDestinationAppliance](docs/VcenterLcmDestinationAppliance.md)
 - [VSphereAutomation::VCenter::VcenterLcmDestinationApplianceOvftoolArguments](docs/VcenterLcmDestinationApplianceOvftoolArguments.md)
 - [VSphereAutomation::VCenter::VcenterLcmDestinationApplianceService](docs/VcenterLcmDestinationApplianceService.md)
 - [VSphereAutomation::VCenter::VcenterLcmDestinationLocation](docs/VcenterLcmDestinationLocation.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryAssociatedProductsCreate](docs/VcenterLcmDiscoveryAssociatedProductsCreate.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryAssociatedProductsCreateSpec](docs/VcenterLcmDiscoveryAssociatedProductsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryAssociatedProductsUpdate](docs/VcenterLcmDiscoveryAssociatedProductsUpdate.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryAssociatedProductsUpdateSpec](docs/VcenterLcmDiscoveryAssociatedProductsUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryInteropReportCreateTask](docs/VcenterLcmDiscoveryInteropReportCreateTask.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryInteropReportSpec](docs/VcenterLcmDiscoveryInteropReportSpec.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryProduct](docs/VcenterLcmDiscoveryProduct.md)
 - [VSphereAutomation::VCenter::VcenterLcmDiscoveryProductCatalogSummary](docs/VcenterLcmDiscoveryProductCatalogSummary.md)
 - [VSphereAutomation::VCenter::VcenterLcmEmbeddedReplicatedVcsa](docs/VcenterLcmEmbeddedReplicatedVcsa.md)
 - [VSphereAutomation::VCenter::VcenterLcmEmbeddedStandaloneVcsa](docs/VcenterLcmEmbeddedStandaloneVcsa.md)
 - [VSphereAutomation::VCenter::VcenterLcmEsx](docs/VcenterLcmEsx.md)
 - [VSphereAutomation::VCenter::VcenterLcmEsxInventory](docs/VcenterLcmEsxInventory.md)
 - [VSphereAutomation::VCenter::VcenterLcmExternalTool](docs/VcenterLcmExternalTool.md)
 - [VSphereAutomation::VCenter::VcenterLcmExternalVcsa](docs/VcenterLcmExternalVcsa.md)
 - [VSphereAutomation::VCenter::VcenterLcmInstallCheck](docs/VcenterLcmInstallCheck.md)
 - [VSphereAutomation::VCenter::VcenterLcmInstallCheckResp](docs/VcenterLcmInstallCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmInstallScheduledResp](docs/VcenterLcmInstallScheduledResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmInstallScheduledSet](docs/VcenterLcmInstallScheduledSet.md)
 - [VSphereAutomation::VCenter::VcenterLcmInstallSpec](docs/VcenterLcmInstallSpec.md)
 - [VSphereAutomation::VCenter::VcenterLcmInstallStart](docs/VcenterLcmInstallStart.md)
 - [VSphereAutomation::VCenter::VcenterLcmInstallStartResp](docs/VcenterLcmInstallStartResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmNetwork](docs/VcenterLcmNetwork.md)
 - [VSphereAutomation::VCenter::VcenterLcmNotification](docs/VcenterLcmNotification.md)
 - [VSphereAutomation::VCenter::VcenterLcmNotifications](docs/VcenterLcmNotifications.md)
 - [VSphereAutomation::VCenter::VcenterLcmReportsLocation](docs/VcenterLcmReportsLocation.md)
 - [VSphereAutomation::VCenter::VcenterLcmReportsToken](docs/VcenterLcmReportsToken.md)
 - [VSphereAutomation::VCenter::VcenterLcmResult](docs/VcenterLcmResult.md)
 - [VSphereAutomation::VCenter::VcenterLcmReverseProxy](docs/VcenterLcmReverseProxy.md)
 - [VSphereAutomation::VCenter::VcenterLcmSsh](docs/VcenterLcmSsh.md)
 - [VSphereAutomation::VCenter::VcenterLcmStatusManagerCheckResp](docs/VcenterLcmStatusManagerCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmStorageSize](docs/VcenterLcmStorageSize.md)
 - [VSphereAutomation::VCenter::VcenterLcmSubTaskInfo](docs/VcenterLcmSubTaskInfo.md)
 - [VSphereAutomation::VCenter::VcenterLcmTaskInfo](docs/VcenterLcmTaskInfo.md)
 - [VSphereAutomation::VCenter::VcenterLcmTaskInfoSubtasks](docs/VcenterLcmTaskInfoSubtasks.md)
 - [VSphereAutomation::VCenter::VcenterLcmTasksActiveListResp](docs/VcenterLcmTasksActiveListResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmTasksHistoricalListResp](docs/VcenterLcmTasksHistoricalListResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmTasksInfo](docs/VcenterLcmTasksInfo.md)
 - [VSphereAutomation::VCenter::VcenterLcmTasksOperation](docs/VcenterLcmTasksOperation.md)
 - [VSphereAutomation::VCenter::VcenterLcmTasksScheduledListResp](docs/VcenterLcmTasksScheduledListResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmTemporaryNetworkIpType](docs/VcenterLcmTemporaryNetworkIpType.md)
 - [VSphereAutomation::VCenter::VcenterLcmTemporaryNetworkNetworkMode](docs/VcenterLcmTemporaryNetworkNetworkMode.md)
 - [VSphereAutomation::VCenter::VcenterLcmTime](docs/VcenterLcmTime.md)
 - [VSphereAutomation::VCenter::VcenterLcmTopologyNodesVcNode](docs/VcenterLcmTopologyNodesVcNode.md)
 - [VSphereAutomation::VCenter::VcenterLcmUpdatePendingCategory](docs/VcenterLcmUpdatePendingCategory.md)
 - [VSphereAutomation::VCenter::VcenterLcmUpdatePendingInfo](docs/VcenterLcmUpdatePendingInfo.md)
 - [VSphereAutomation::VCenter::VcenterLcmUpdatePendingListResult](docs/VcenterLcmUpdatePendingListResult.md)
 - [VSphereAutomation::VCenter::VcenterLcmUpdatePendingSeverityType](docs/VcenterLcmUpdatePendingSeverityType.md)
 - [VSphereAutomation::VCenter::VcenterLcmUpdatePendingSummary](docs/VcenterLcmUpdatePendingSummary.md)
 - [VSphereAutomation::VCenter::VcenterLcmUpdatePendingUpdateType](docs/VcenterLcmUpdatePendingUpdateType.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationApplianceNameDestinationAppliance](docs/VcenterLcmValidationApplianceNameDestinationAppliance.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationApplianceNameDestinationLocation](docs/VcenterLcmValidationApplianceNameDestinationLocation.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationApplianceNameEsx](docs/VcenterLcmValidationApplianceNameEsx.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationApplianceNameRequest](docs/VcenterLcmValidationApplianceNameRequest.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationApplianceNameVc](docs/VcenterLcmValidationApplianceNameVc.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationApplianceNameVcInventory](docs/VcenterLcmValidationApplianceNameVcInventory.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationCheckApplianceNameTask](docs/VcenterLcmValidationCheckApplianceNameTask.md)
 - [VSphereAutomation::VCenter::VcenterLcmValidationCheckApplianceNameTaskResp](docs/VcenterLcmValidationCheckApplianceNameTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterLcmVc](docs/VcenterLcmVc.md)
 - [VSphereAutomation::VCenter::VcenterLcmVcInventory](docs/VcenterLcmVcInventory.md)
 - [VSphereAutomation::VCenter::VcenterLcmVcsaEmbedded](docs/VcenterLcmVcsaEmbedded.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClusterAvailableVersionsSummary](docs/VcenterNamespaceManagementClusterAvailableVersionsSummary.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClusterCompatibilityFilterSpec](docs/VcenterNamespaceManagementClusterCompatibilityFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClusterCompatibilitySummary](docs/VcenterNamespaceManagementClusterCompatibilitySummary.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClusterSizeInfoInfo](docs/VcenterNamespaceManagementClusterSizeInfoInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClusterSizeInfoVmInfo](docs/VcenterNamespaceManagementClusterSizeInfoVmInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersConfigStatus](docs/VcenterNamespaceManagementClustersConfigStatus.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersEnable](docs/VcenterNamespaceManagementClustersEnable.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersEnableSpec](docs/VcenterNamespaceManagementClustersEnableSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersImageRegistry](docs/VcenterNamespaceManagementClustersImageRegistry.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersImageStorageSpec](docs/VcenterNamespaceManagementClustersImageStorageSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersInfo](docs/VcenterNamespaceManagementClustersInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersIpv4Range](docs/VcenterNamespaceManagementClustersIpv4Range.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersKubernetesStatus](docs/VcenterNamespaceManagementClustersKubernetesStatus.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersMessage](docs/VcenterNamespaceManagementClustersMessage.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersMessageSeverity](docs/VcenterNamespaceManagementClustersMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNCPClusterNetworkEnableSpec](docs/VcenterNamespaceManagementClustersNCPClusterNetworkEnableSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNCPClusterNetworkInfo](docs/VcenterNamespaceManagementClustersNCPClusterNetworkInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNCPClusterNetworkSetSpec](docs/VcenterNamespaceManagementClustersNCPClusterNetworkSetSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNCPClusterNetworkUpdateSpec](docs/VcenterNamespaceManagementClustersNCPClusterNetworkUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNSXDeployment](docs/VcenterNamespaceManagementClustersNSXDeployment.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNetworkProvider](docs/VcenterNamespaceManagementClustersNetworkProvider.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNetworkSpec](docs/VcenterNamespaceManagementClustersNetworkSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNetworkSpecIpv4Mode](docs/VcenterNamespaceManagementClustersNetworkSpecIpv4Mode.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersSet](docs/VcenterNamespaceManagementClustersSet.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersSetSpec](docs/VcenterNamespaceManagementClustersSetSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersStats](docs/VcenterNamespaceManagementClustersStats.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersSummary](docs/VcenterNamespaceManagementClustersSummary.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersUpdate](docs/VcenterNamespaceManagementClustersUpdate.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementClustersUpdateSpec](docs/VcenterNamespaceManagementClustersUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementDistributedSwitchCompatibilityFilterSpec](docs/VcenterNamespaceManagementDistributedSwitchCompatibilityFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementDistributedSwitchCompatibilitySummary](docs/VcenterNamespaceManagementDistributedSwitchCompatibilitySummary.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementEdgeClusterCompatibilityFilterSpec](docs/VcenterNamespaceManagementEdgeClusterCompatibilityFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementEdgeClusterCompatibilitySummary](docs/VcenterNamespaceManagementEdgeClusterCompatibilitySummary.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementEventsEventsEvent](docs/VcenterNamespaceManagementEventsEventsEvent.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementEventsEventsResp](docs/VcenterNamespaceManagementEventsEventsResp.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementHostsConfigInfo](docs/VcenterNamespaceManagementHostsConfigInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementIpv4Cidr](docs/VcenterNamespaceManagementIpv4Cidr.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementNamespaceResourceOptionsInfo](docs/VcenterNamespaceManagementNamespaceResourceOptionsInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementNodesEnterMaintenanceMode](docs/VcenterNamespaceManagementNodesEnterMaintenanceMode.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementNodesEnterMaintenanceModeResp](docs/VcenterNamespaceManagementNodesEnterMaintenanceModeResp.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementNodesExitMaintenanceMode](docs/VcenterNamespaceManagementNodesExitMaintenanceMode.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementNodesExitMaintenanceModeResp](docs/VcenterNamespaceManagementNodesExitMaintenanceModeResp.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementNodesMaintenanceActionType](docs/VcenterNamespaceManagementNodesMaintenanceActionType.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementNodesNodeIdentity](docs/VcenterNamespaceManagementNodesNodeIdentity.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSizingHint](docs/VcenterNamespaceManagementSizingHint.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersInfo](docs/VcenterNamespaceManagementSoftwareClustersInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersMessage](docs/VcenterNamespaceManagementSoftwareClustersMessage.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersMessageSeverity](docs/VcenterNamespaceManagementSoftwareClustersMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersResult](docs/VcenterNamespaceManagementSoftwareClustersResult.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersResultRes](docs/VcenterNamespaceManagementSoftwareClustersResultRes.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersState](docs/VcenterNamespaceManagementSoftwareClustersState.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersSummary](docs/VcenterNamespaceManagementSoftwareClustersSummary.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersUpgrade](docs/VcenterNamespaceManagementSoftwareClustersUpgrade.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersUpgradeProgress](docs/VcenterNamespaceManagementSoftwareClustersUpgradeProgress.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersUpgradeSpec](docs/VcenterNamespaceManagementSoftwareClustersUpgradeSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersUpgradeStatus](docs/VcenterNamespaceManagementSoftwareClustersUpgradeStatus.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementStatsTimeSeriesPodIdentifier](docs/VcenterNamespaceManagementStatsTimeSeriesPodIdentifier.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementStatsTimeSeriesSpec](docs/VcenterNamespaceManagementStatsTimeSeriesSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementStatsTimeSeriesSpecObjType](docs/VcenterNamespaceManagementStatsTimeSeriesSpecObjType.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementStatsTimeSeriesTimeSeries](docs/VcenterNamespaceManagementStatsTimeSeriesTimeSeries.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSupportBundleLocation](docs/VcenterNamespaceManagementSupportBundleLocation.md)
 - [VSphereAutomation::VCenter::VcenterNamespaceManagementSupportBundleToken](docs/VcenterNamespaceManagementSupportBundleToken.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesAccessCreate](docs/VcenterNamespacesAccessCreate.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesAccessCreateSpec](docs/VcenterNamespacesAccessCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesAccessInfo](docs/VcenterNamespacesAccessInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesAccessRole](docs/VcenterNamespacesAccessRole.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesAccessSet](docs/VcenterNamespacesAccessSet.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesAccessSetSpec](docs/VcenterNamespacesAccessSetSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesAccessSubjectType](docs/VcenterNamespacesAccessSubjectType.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesEventsEventsEvent](docs/VcenterNamespacesEventsEventsEvent.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesEventsEventsResp](docs/VcenterNamespacesEventsEventsResp.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesAccess](docs/VcenterNamespacesInstancesAccess.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesConfigStatus](docs/VcenterNamespacesInstancesConfigStatus.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesCreate](docs/VcenterNamespacesInstancesCreate.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesCreateSpec](docs/VcenterNamespacesInstancesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesInfo](docs/VcenterNamespacesInstancesInfo.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesMessage](docs/VcenterNamespacesInstancesMessage.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesMessageMessageSeverity](docs/VcenterNamespacesInstancesMessageMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesSet](docs/VcenterNamespacesInstancesSet.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesSetSpec](docs/VcenterNamespacesInstancesSetSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesStats](docs/VcenterNamespacesInstancesStats.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesStorageSpec](docs/VcenterNamespacesInstancesStorageSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesSummary](docs/VcenterNamespacesInstancesSummary.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesUpdate](docs/VcenterNamespacesInstancesUpdate.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesInstancesUpdateSpec](docs/VcenterNamespacesInstancesUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesSupervisorServicesSet](docs/VcenterNamespacesSupervisorServicesSet.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesSupervisorServicesSetSpec](docs/VcenterNamespacesSupervisorServicesSetSpec.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesSystemregistryInstancesCreate](docs/VcenterNamespacesSystemregistryInstancesCreate.md)
 - [VSphereAutomation::VCenter::VcenterNamespacesUserInstancesSummary](docs/VcenterNamespacesUserInstancesSummary.md)
 - [VSphereAutomation::VCenter::VcenterNetworkDistributedSwitchesFilterSpec](docs/VcenterNetworkDistributedSwitchesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterNetworkDistributedSwitchesListResp](docs/VcenterNetworkDistributedSwitchesListResp.md)
 - [VSphereAutomation::VCenter::VcenterNetworkDistributedSwitchesSummary](docs/VcenterNetworkDistributedSwitchesSummary.md)
 - [VSphereAutomation::VCenter::VcenterNetworkFilterSpec](docs/VcenterNetworkFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterNetworkListResp](docs/VcenterNetworkListResp.md)
 - [VSphereAutomation::VCenter::VcenterNetworkSummary](docs/VcenterNetworkSummary.md)
 - [VSphereAutomation::VCenter::VcenterNetworkType](docs/VcenterNetworkType.md)
 - [VSphereAutomation::VCenter::VcenterNsxClusterEnableSpec](docs/VcenterNsxClusterEnableSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxClusterOverlayNetworkSpec](docs/VcenterNsxClusterOverlayNetworkSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersClusterOverlayNetworkInfo](docs/VcenterNsxClustersClusterOverlayNetworkInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersConfigurationEnable](docs/VcenterNsxClustersConfigurationEnable.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersInfo](docs/VcenterNsxClustersInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusCluster](docs/VcenterNsxClustersNetworkingStatusCluster.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusConfig](docs/VcenterNsxClustersNetworkingStatusConfig.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusConfigStatus](docs/VcenterNsxClustersNetworkingStatusConfigStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusEdgeCluster](docs/VcenterNsxClustersNetworkingStatusEdgeCluster.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusEdgeClusterHealthStatus](docs/VcenterNsxClustersNetworkingStatusEdgeClusterHealthStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusEdgeNode](docs/VcenterNsxClustersNetworkingStatusEdgeNode.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusEsxHost](docs/VcenterNsxClustersNetworkingStatusEsxHost.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusEsxHostCluster](docs/VcenterNsxClustersNetworkingStatusEsxHostCluster.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusHealth](docs/VcenterNsxClustersNetworkingStatusHealth.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusHealthStatus](docs/VcenterNsxClustersNetworkingStatusHealthStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusInfo](docs/VcenterNsxClustersNetworkingStatusInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusLogicalRouter](docs/VcenterNsxClustersNetworkingStatusLogicalRouter.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusMessage](docs/VcenterNsxClustersNetworkingStatusMessage.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusMessageSeverity](docs/VcenterNsxClustersNetworkingStatusMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusUplinkEdge](docs/VcenterNsxClustersNetworkingStatusUplinkEdge.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusUplinkHighAvailability](docs/VcenterNsxClustersNetworkingStatusUplinkHighAvailability.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusUplinkHighAvailabilityState](docs/VcenterNsxClustersNetworkingStatusUplinkHighAvailabilityState.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusVds](docs/VcenterNsxClustersNetworkingStatusVds.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersStatusConfigStatus](docs/VcenterNsxClustersStatusConfigStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersStatusInfo](docs/VcenterNsxClustersStatusInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersValidationCheckEdgeClusterUpdateSpec](docs/VcenterNsxClustersValidationCheckEdgeClusterUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersValidationCheckEnableSpecs](docs/VcenterNsxClustersValidationCheckEnableSpecs.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersValidationCheckMessage](docs/VcenterNsxClustersValidationCheckMessage.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersValidationCheckMessageSeverity](docs/VcenterNsxClustersValidationCheckMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNsxClustersValidationCheckResult](docs/VcenterNsxClustersValidationCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentApplianceSpec](docs/VcenterNsxDeploymentApplianceSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentCompatibilityInfo](docs/VcenterNsxDeploymentCompatibilityInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentCompatibilityState](docs/VcenterNsxDeploymentCompatibilityState.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentCompatibilityVersion](docs/VcenterNsxDeploymentCompatibilityVersion.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentConfigurationInfo](docs/VcenterNsxDeploymentConfigurationInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentConfigurationProductType](docs/VcenterNsxDeploymentConfigurationProductType.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentConfigurationStatus](docs/VcenterNsxDeploymentConfigurationStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallInfo](docs/VcenterNsxDeploymentInstallInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallInstallSpec](docs/VcenterNsxDeploymentInstallInstallSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallMessage](docs/VcenterNsxDeploymentInstallMessage.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallMessageSeverity](docs/VcenterNsxDeploymentInstallMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallOperation](docs/VcenterNsxDeploymentInstallOperation.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallPhase](docs/VcenterNsxDeploymentInstallPhase.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallRecommendationsApplianceSize](docs/VcenterNsxDeploymentInstallRecommendationsApplianceSize.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallRecommendationsInfo](docs/VcenterNsxDeploymentInstallRecommendationsInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallStart](docs/VcenterNsxDeploymentInstallStart.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentInstallStatus](docs/VcenterNsxDeploymentInstallStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseInfo](docs/VcenterNsxDeploymentLicenseInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseUpdate](docs/VcenterNsxDeploymentLicenseUpdate.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseUpdateSpec](docs/VcenterNsxDeploymentLicenseUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseValidate](docs/VcenterNsxDeploymentLicenseValidate.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseValidateSpec](docs/VcenterNsxDeploymentLicenseValidateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseValidationMessage](docs/VcenterNsxDeploymentLicenseValidationMessage.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseValidationMessageSeverity](docs/VcenterNsxDeploymentLicenseValidationMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentNetwork](docs/VcenterNsxDeploymentNetwork.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentPlacementSpec](docs/VcenterNsxDeploymentPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageInfo](docs/VcenterNsxDeploymentSoftwarePackageInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageMessage](docs/VcenterNsxDeploymentSoftwarePackageMessage.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageProgress](docs/VcenterNsxDeploymentSoftwarePackageProgress.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageStatus](docs/VcenterNsxDeploymentSoftwarePackageStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageType](docs/VcenterNsxDeploymentSoftwarePackageType.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageUpload](docs/VcenterNsxDeploymentSoftwarePackageUpload.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageUploadResult](docs/VcenterNsxDeploymentSoftwarePackageUploadResult.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageUploadSpec](docs/VcenterNsxDeploymentSoftwarePackageUploadSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentSupportedVersionInfo](docs/VcenterNsxDeploymentSupportedVersionInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeClusterInfo](docs/VcenterNsxDeploymentUpgradeClusterInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeClusterStatus](docs/VcenterNsxDeploymentUpgradeClusterStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeExecutionMode](docs/VcenterNsxDeploymentUpgradeExecutionMode.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeInfo](docs/VcenterNsxDeploymentUpgradeInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeMessage](docs/VcenterNsxDeploymentUpgradeMessage.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeMessageType](docs/VcenterNsxDeploymentUpgradeMessageType.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeOperation](docs/VcenterNsxDeploymentUpgradeOperation.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeOperationStatus](docs/VcenterNsxDeploymentUpgradeOperationStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeStart](docs/VcenterNsxDeploymentUpgradeStart.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeStatus](docs/VcenterNsxDeploymentUpgradeStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeStatusInfo](docs/VcenterNsxDeploymentUpgradeStatusInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeUnitType](docs/VcenterNsxDeploymentUpgradeUnitType.md)
 - [VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeUpgradeSpec](docs/VcenterNsxDeploymentUpgradeUpgradeSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClusterEnableSpec](docs/VcenterNsxEdgeClusterEnableSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClusterUpdateSpec](docs/VcenterNsxEdgeClusterUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersConfigurationEnable](docs/VcenterNsxEdgeClustersConfigurationEnable.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersEdgeOverlayNetworkInfo](docs/VcenterNsxEdgeClustersEdgeOverlayNetworkInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersInfo](docs/VcenterNsxEdgeClustersInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersManagementNetworkInfo](docs/VcenterNsxEdgeClustersManagementNetworkInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersNodeInfo](docs/VcenterNsxEdgeClustersNodeInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersPlacementInfo](docs/VcenterNsxEdgeClustersPlacementInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersStatusConfigStatus](docs/VcenterNsxEdgeClustersStatusConfigStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersStatusInfo](docs/VcenterNsxEdgeClustersStatusInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersUpdate](docs/VcenterNsxEdgeClustersUpdate.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersUplinkNetworkInfo](docs/VcenterNsxEdgeClustersUplinkNetworkInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeClustersUplinkNodeInfo](docs/VcenterNsxEdgeClustersUplinkNodeInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxEdgeOverlayNetworkSpec](docs/VcenterNsxEdgeOverlayNetworkSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpAllocationMode](docs/VcenterNsxIpAllocationMode.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpPoolCreateSpec](docs/VcenterNsxIpPoolCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpPoolInfo](docs/VcenterNsxIpPoolInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpPoolsInfo](docs/VcenterNsxIpPoolsInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpPoolsSummary](docs/VcenterNsxIpPoolsSummary.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpv4Cidr](docs/VcenterNsxIpv4Cidr.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpv4Range](docs/VcenterNsxIpv4Range.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpv4RangeNotation](docs/VcenterNsxIpv4RangeNotation.md)
 - [VSphereAutomation::VCenter::VcenterNsxIpv4RangeSizeSpecifier](docs/VcenterNsxIpv4RangeSizeSpecifier.md)
 - [VSphereAutomation::VCenter::VcenterNsxManagementNetworkCompatibilityHostVmknicInfo](docs/VcenterNsxManagementNetworkCompatibilityHostVmknicInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxManagementNetworkCompatibilitySummary](docs/VcenterNsxManagementNetworkCompatibilitySummary.md)
 - [VSphereAutomation::VCenter::VcenterNsxManagementNetworkSpec](docs/VcenterNsxManagementNetworkSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxMessage](docs/VcenterNsxMessage.md)
 - [VSphereAutomation::VCenter::VcenterNsxMessageSeverity](docs/VcenterNsxMessageSeverity.md)
 - [VSphereAutomation::VCenter::VcenterNsxNSXEnableSpec](docs/VcenterNsxNSXEnableSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxNodeSpec](docs/VcenterNsxNodeSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxPlacementSpec](docs/VcenterNsxPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxRecoveryExecute](docs/VcenterNsxRecoveryExecute.md)
 - [VSphereAutomation::VCenter::VcenterNsxRecoveryExecuteSpec](docs/VcenterNsxRecoveryExecuteSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxRecoveryExecutionStatus](docs/VcenterNsxRecoveryExecutionStatus.md)
 - [VSphereAutomation::VCenter::VcenterNsxRecoveryInfo](docs/VcenterNsxRecoveryInfo.md)
 - [VSphereAutomation::VCenter::VcenterNsxRecoveryLossType](docs/VcenterNsxRecoveryLossType.md)
 - [VSphereAutomation::VCenter::VcenterNsxRecoveryRecoveryStage](docs/VcenterNsxRecoveryRecoveryStage.md)
 - [VSphereAutomation::VCenter::VcenterNsxUplinkNetworkSpec](docs/VcenterNsxUplinkNetworkSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxUplinkNodeSpec](docs/VcenterNsxUplinkNodeSpec.md)
 - [VSphereAutomation::VCenter::VcenterNsxdPrincipalIdentityCreate](docs/VcenterNsxdPrincipalIdentityCreate.md)
 - [VSphereAutomation::VCenter::VcenterNsxdPrincipalIdentitySpec](docs/VcenterNsxdPrincipalIdentitySpec.md)
 - [VSphereAutomation::VCenter::VcenterOvfDiskProvisioningType](docs/VcenterOvfDiskProvisioningType.md)
 - [VSphereAutomation::VCenter::VcenterOvfExportFlagInfo](docs/VcenterOvfExportFlagInfo.md)
 - [VSphereAutomation::VCenter::VcenterOvfExportFlagListResp](docs/VcenterOvfExportFlagListResp.md)
 - [VSphereAutomation::VCenter::VcenterOvfImportFlagInfo](docs/VcenterOvfImportFlagInfo.md)
 - [VSphereAutomation::VCenter::VcenterOvfImportFlagListResp](docs/VcenterOvfImportFlagListResp.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreate](docs/VcenterOvfLibraryItemCreate.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreateResp](docs/VcenterOvfLibraryItemCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreateResult](docs/VcenterOvfLibraryItemCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreateSpec](docs/VcenterOvfLibraryItemCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreateTarget](docs/VcenterOvfLibraryItemCreateTarget.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeploy](docs/VcenterOvfLibraryItemDeploy.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeployResp](docs/VcenterOvfLibraryItemDeployResp.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeployableIdentity](docs/VcenterOvfLibraryItemDeployableIdentity.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeploymentResult](docs/VcenterOvfLibraryItemDeploymentResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeploymentTarget](docs/VcenterOvfLibraryItemDeploymentTarget.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemFilter](docs/VcenterOvfLibraryItemFilter.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemFilterResp](docs/VcenterOvfLibraryItemFilterResp.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemOvfSummary](docs/VcenterOvfLibraryItemOvfSummary.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemResourcePoolDeploymentSpec](docs/VcenterOvfLibraryItemResourcePoolDeploymentSpec.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemResourcePoolDeploymentSpecStorageMappings](docs/VcenterOvfLibraryItemResourcePoolDeploymentSpecStorageMappings.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemResultInfo](docs/VcenterOvfLibraryItemResultInfo.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemStorageGroupMapping](docs/VcenterOvfLibraryItemStorageGroupMapping.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemStorageGroupMappingType](docs/VcenterOvfLibraryItemStorageGroupMappingType.md)
 - [VSphereAutomation::VCenter::VcenterOvfOvfError](docs/VcenterOvfOvfError.md)
 - [VSphereAutomation::VCenter::VcenterOvfOvfInfo](docs/VcenterOvfOvfInfo.md)
 - [VSphereAutomation::VCenter::VcenterOvfOvfMessageCategory](docs/VcenterOvfOvfMessageCategory.md)
 - [VSphereAutomation::VCenter::VcenterOvfOvfWarning](docs/VcenterOvfOvfWarning.md)
 - [VSphereAutomation::VCenter::VcenterOvfParseIssue](docs/VcenterOvfParseIssue.md)
 - [VSphereAutomation::VCenter::VcenterOvfParseIssueCategory](docs/VcenterOvfParseIssueCategory.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolCreate](docs/VcenterResourcePoolCreate.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolCreateResp](docs/VcenterResourcePoolCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolCreateSpec](docs/VcenterResourcePoolCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolFilterSpec](docs/VcenterResourcePoolFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolInfo](docs/VcenterResourcePoolInfo.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolListResp](docs/VcenterResourcePoolListResp.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolResourceAllocationCreateSpec](docs/VcenterResourcePoolResourceAllocationCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolResourceAllocationInfo](docs/VcenterResourcePoolResourceAllocationInfo.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolResourceAllocationUpdateSpec](docs/VcenterResourcePoolResourceAllocationUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolResp](docs/VcenterResourcePoolResp.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolSharesInfo](docs/VcenterResourcePoolSharesInfo.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolSharesInfoLevel](docs/VcenterResourcePoolSharesInfoLevel.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolSummary](docs/VcenterResourcePoolSummary.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolUpdate](docs/VcenterResourcePoolUpdate.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolUpdateSpec](docs/VcenterResourcePoolUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceHealth](docs/VcenterServicesServiceHealth.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceInfo](docs/VcenterServicesServiceInfo.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceListDetailsResp](docs/VcenterServicesServiceListDetailsResp.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceListDetailsRespValue](docs/VcenterServicesServiceListDetailsRespValue.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceResp](docs/VcenterServicesServiceResp.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceStartupType](docs/VcenterServicesServiceStartupType.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceState](docs/VcenterServicesServiceState.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceUpdate](docs/VcenterServicesServiceUpdate.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceUpdateSpec](docs/VcenterServicesServiceUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesCreate](docs/VcenterSettingsNamespacesCreate.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesCreateSpec](docs/VcenterSettingsNamespacesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesInfo](docs/VcenterSettingsNamespacesInfo.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesItemsListResp](docs/VcenterSettingsNamespacesItemsListResp.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesItemsPut](docs/VcenterSettingsNamespacesItemsPut.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesListResp](docs/VcenterSettingsNamespacesListResp.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesResp](docs/VcenterSettingsNamespacesResp.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesUpdate](docs/VcenterSettingsNamespacesUpdate.md)
 - [VSphereAutomation::VCenter::VcenterSettingsNamespacesUpdateSpec](docs/VcenterSettingsNamespacesUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnDatastoreByDatacenterResp](docs/VcenterStatsTopnDatastoreByDatacenterResp.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnDatastoreByStoragePodResp](docs/VcenterStatsTopnDatastoreByStoragePodResp.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnDatum](docs/VcenterStatsTopnDatum.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnHostByClusterResp](docs/VcenterStatsTopnHostByClusterResp.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnResourcechildByClusterResp](docs/VcenterStatsTopnResourcechildByClusterResp.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnResourcechildByResourcePoolResp](docs/VcenterStatsTopnResourcechildByResourcePoolResp.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnResourcechildByVappResp](docs/VcenterStatsTopnResourcechildByVappResp.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnTopResult](docs/VcenterStatsTopnTopResult.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnTopRow](docs/VcenterStatsTopnTopRow.md)
 - [VSphereAutomation::VCenter::VcenterStatsTopnVmByHostResp](docs/VcenterStatsTopnVmByHostResp.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCheckCompatibility](docs/VcenterStoragePoliciesCheckCompatibility.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCheckCompatibilityResp](docs/VcenterStoragePoliciesCheckCompatibilityResp.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCompatibilityInfo](docs/VcenterStoragePoliciesCompatibilityInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCompatibleDatastoreInfo](docs/VcenterStoragePoliciesCompatibleDatastoreInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceFilterSpec](docs/VcenterStoragePoliciesComplianceFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceListResp](docs/VcenterStoragePoliciesComplianceListResp.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceStatus](docs/VcenterStoragePoliciesComplianceStatus.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceSummary](docs/VcenterStoragePoliciesComplianceSummary.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceSummaryDisks](docs/VcenterStoragePoliciesComplianceSummaryDisks.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMFilterSpec](docs/VcenterStoragePoliciesComplianceVMFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMInfo](docs/VcenterStoragePoliciesComplianceVMInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMInfoDisks](docs/VcenterStoragePoliciesComplianceVMInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMListResp](docs/VcenterStoragePoliciesComplianceVMListResp.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMListRespValue](docs/VcenterStoragePoliciesComplianceVMListRespValue.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMStatus](docs/VcenterStoragePoliciesComplianceVMStatus.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesFilterSpec](docs/VcenterStoragePoliciesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesListResp](docs/VcenterStoragePoliciesListResp.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesSummary](docs/VcenterStoragePoliciesSummary.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesVMInfo](docs/VcenterStoragePoliciesVMInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesVMListResp](docs/VcenterStoragePoliciesVMListResp.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesVMListRespValue](docs/VcenterStoragePoliciesVMListRespValue.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtPasswordChange](docs/VcenterSvcaccountmgmtPasswordChange.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtPasswordChangeResp](docs/VcenterSvcaccountmgmtPasswordChangeResp.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtPasswordChangeSpec](docs/VcenterSvcaccountmgmtPasswordChangeSpec.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtPasswordOutputSpec](docs/VcenterSvcaccountmgmtPasswordOutputSpec.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtPasswordReset](docs/VcenterSvcaccountmgmtPasswordReset.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtPasswordResetResp](docs/VcenterSvcaccountmgmtPasswordResetResp.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtPasswordResetSpec](docs/VcenterSvcaccountmgmtPasswordResetSpec.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtServiceAccountCreate](docs/VcenterSvcaccountmgmtServiceAccountCreate.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtServiceAccountCreateResp](docs/VcenterSvcaccountmgmtServiceAccountCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtServiceAccountCreateSpec](docs/VcenterSvcaccountmgmtServiceAccountCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtServiceAccountDelete](docs/VcenterSvcaccountmgmtServiceAccountDelete.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtServiceAccountDeleteSpec](docs/VcenterSvcaccountmgmtServiceAccountDeleteSpec.md)
 - [VSphereAutomation::VCenter::VcenterSvcaccountmgmtServiceAccountOutputSpec](docs/VcenterSvcaccountmgmtServiceAccountOutputSpec.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsCreate](docs/VcenterSystemAnnouncementsCreate.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsCreateResp](docs/VcenterSystemAnnouncementsCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsInfo](docs/VcenterSystemAnnouncementsInfo.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsListResp](docs/VcenterSystemAnnouncementsListResp.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsListRespValue](docs/VcenterSystemAnnouncementsListRespValue.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsResp](docs/VcenterSystemAnnouncementsResp.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsSet](docs/VcenterSystemAnnouncementsSet.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsSeverity](docs/VcenterSystemAnnouncementsSeverity.md)
 - [VSphereAutomation::VCenter::VcenterSystemAnnouncementsSpec](docs/VcenterSystemAnnouncementsSpec.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigCeipResp](docs/VcenterSystemConfigCeipResp.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigCeipSet](docs/VcenterSystemConfigCeipSet.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeInfo](docs/VcenterSystemConfigDeploymentTypeInfo.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeReconfigure](docs/VcenterSystemConfigDeploymentTypeReconfigure.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeReconfigureSpec](docs/VcenterSystemConfigDeploymentTypeReconfigureSpec.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeResp](docs/VcenterSystemConfigDeploymentTypeResp.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigFeatureStateResp](docs/VcenterSystemConfigFeatureStateResp.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigFeatureStateRespValue](docs/VcenterSystemConfigFeatureStateRespValue.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigFeatureStateStatus](docs/VcenterSystemConfigFeatureStateStatus.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigFeaturesTechPreviewResp](docs/VcenterSystemConfigFeaturesTechPreviewResp.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigFeaturesTechPreviewRespValue](docs/VcenterSystemConfigFeaturesTechPreviewRespValue.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigFeaturesTechPreviewStatus](docs/VcenterSystemConfigFeaturesTechPreviewStatus.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigFeaturesTechPreviewUpdate](docs/VcenterSystemConfigFeaturesTechPreviewUpdate.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigPscRegistrationInfo](docs/VcenterSystemConfigPscRegistrationInfo.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigPscRegistrationRepoint](docs/VcenterSystemConfigPscRegistrationRepoint.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigPscRegistrationResp](docs/VcenterSystemConfigPscRegistrationResp.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsHostFilterSpec](docs/VcenterTagAssociationsHostFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsHostIterationSpec](docs/VcenterTagAssociationsHostIterationSpec.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsHostLastIterationStatus](docs/VcenterTagAssociationsHostLastIterationStatus.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsHostListResp](docs/VcenterTagAssociationsHostListResp.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsHostListResult](docs/VcenterTagAssociationsHostListResult.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsHostSummary](docs/VcenterTagAssociationsHostSummary.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsVMFilterSpec](docs/VcenterTagAssociationsVMFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsVMIterationSpec](docs/VcenterTagAssociationsVMIterationSpec.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsVMLastIterationStatus](docs/VcenterTagAssociationsVMLastIterationStatus.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsVMListResp](docs/VcenterTagAssociationsVMListResp.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsVMListResult](docs/VcenterTagAssociationsVMListResult.md)
 - [VSphereAutomation::VCenter::VcenterTagAssociationsVMSummary](docs/VcenterTagAssociationsVMSummary.md)
 - [VSphereAutomation::VCenter::VcenterTaggingAssociationsIterationSpec](docs/VcenterTaggingAssociationsIterationSpec.md)
 - [VSphereAutomation::VCenter::VcenterTaggingAssociationsLastIterationStatus](docs/VcenterTaggingAssociationsLastIterationStatus.md)
 - [VSphereAutomation::VCenter::VcenterTaggingAssociationsListResult](docs/VcenterTaggingAssociationsListResult.md)
 - [VSphereAutomation::VCenter::VcenterTaggingAssociationsSummary](docs/VcenterTaggingAssociationsSummary.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostAssociationsAdd](docs/VcenterTagsHostAssociationsAdd.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostAssociationsAddResp](docs/VcenterTagsHostAssociationsAddResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostAssociationsRemove](docs/VcenterTagsHostAssociationsRemove.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostAssociationsRemoveResp](docs/VcenterTagsHostAssociationsRemoveResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostAssociationsResp](docs/VcenterTagsHostAssociationsResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostAssociationsStatus](docs/VcenterTagsHostAssociationsStatus.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostFilterSpec](docs/VcenterTagsHostFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostListResp](docs/VcenterTagsHostListResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostListResult](docs/VcenterTagsHostListResult.md)
 - [VSphereAutomation::VCenter::VcenterTagsHostSummary](docs/VcenterTagsHostSummary.md)
 - [VSphereAutomation::VCenter::VcenterTagsVMFilterSpec](docs/VcenterTagsVMFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTagsVMListResp](docs/VcenterTagsVMListResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsVMListResult](docs/VcenterTagsVMListResult.md)
 - [VSphereAutomation::VCenter::VcenterTagsVMSummary](docs/VcenterTagsVMSummary.md)
 - [VSphereAutomation::VCenter::VcenterTagsVmAssociationsAdd](docs/VcenterTagsVmAssociationsAdd.md)
 - [VSphereAutomation::VCenter::VcenterTagsVmAssociationsAddResp](docs/VcenterTagsVmAssociationsAddResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsVmAssociationsRemove](docs/VcenterTagsVmAssociationsRemove.md)
 - [VSphereAutomation::VCenter::VcenterTagsVmAssociationsRemoveResp](docs/VcenterTagsVmAssociationsRemoveResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsVmAssociationsResp](docs/VcenterTagsVmAssociationsResp.md)
 - [VSphereAutomation::VCenter::VcenterTagsVmAssociationsStatus](docs/VcenterTagsVmAssociationsStatus.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceInvalidGrant](docs/VcenterTokenserviceInvalidGrant.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceInvalidGrantError](docs/VcenterTokenserviceInvalidGrantError.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceInvalidRequest](docs/VcenterTokenserviceInvalidRequest.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceInvalidRequestError](docs/VcenterTokenserviceInvalidRequestError.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceInvalidScope](docs/VcenterTokenserviceInvalidScope.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceInvalidScopeError](docs/VcenterTokenserviceInvalidScopeError.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceTokenExchangeExchange](docs/VcenterTokenserviceTokenExchangeExchange.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceTokenExchangeExchangeResp](docs/VcenterTokenserviceTokenExchangeExchangeResp.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceTokenExchangeExchangeSpec](docs/VcenterTokenserviceTokenExchangeExchangeSpec.md)
 - [VSphereAutomation::VCenter::VcenterTokenserviceTokenExchangeInfo](docs/VcenterTokenserviceTokenExchangeInfo.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesApplianceType](docs/VcenterTopologyNodesApplianceType.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesEmbeddedDecommissionSpec](docs/VcenterTopologyNodesEmbeddedDecommissionSpec.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesEmbeddedDecommissionTask](docs/VcenterTopologyNodesEmbeddedDecommissionTask.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesEmbeddedDecommissionTaskResp](docs/VcenterTopologyNodesEmbeddedDecommissionTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesFilterSpec](docs/VcenterTopologyNodesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesInfo](docs/VcenterTopologyNodesInfo.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesListResp](docs/VcenterTopologyNodesListResp.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesResp](docs/VcenterTopologyNodesResp.md)
 - [VSphereAutomation::VCenter::VcenterTopologyNodesSummary](docs/VcenterTopologyNodesSummary.md)
 - [VSphereAutomation::VCenter::VcenterTopologyReplicationStatusFilterSpec](docs/VcenterTopologyReplicationStatusFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTopologyReplicationStatusListResp](docs/VcenterTopologyReplicationStatusListResp.md)
 - [VSphereAutomation::VCenter::VcenterTopologyReplicationStatusSummary](docs/VcenterTopologyReplicationStatusSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsAdd](docs/VcenterTrustSubscriptionsAdd.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsAddResp](docs/VcenterTrustSubscriptionsAddResp.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsCreateSpec](docs/VcenterTrustSubscriptionsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsInfo](docs/VcenterTrustSubscriptionsInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsInfoDetails](docs/VcenterTrustSubscriptionsInfoDetails.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsInfoResp](docs/VcenterTrustSubscriptionsInfoResp.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsListResp](docs/VcenterTrustSubscriptionsListResp.md)
 - [VSphereAutomation::VCenter::VcenterTrustSubscriptionsUpdateResp](docs/VcenterTrustSubscriptionsUpdateResp.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsCreate](docs/VcenterTrustVcTrustsCreate.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsCreateSpec](docs/VcenterTrustVcTrustsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsInfo](docs/VcenterTrustVcTrustsInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsListResp](docs/VcenterTrustVcTrustsListResp.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsResp](docs/VcenterTrustVcTrustsResp.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsSummary](docs/VcenterTrustVcTrustsSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsUpdate](docs/VcenterTrustVcTrustsUpdate.md)
 - [VSphereAutomation::VCenter::VcenterTrustVcTrustsUpdateSpec](docs/VcenterTrustVcTrustsUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesCreate](docs/VcenterTrustedInfrastructureAttestationServicesCreate.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesCreateSpec](docs/VcenterTrustedInfrastructureAttestationServicesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesFilterSpec](docs/VcenterTrustedInfrastructureAttestationServicesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesInfo](docs/VcenterTrustedInfrastructureAttestationServicesInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesList](docs/VcenterTrustedInfrastructureAttestationServicesList.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesSummary](docs/VcenterTrustedInfrastructureAttestationServicesSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureKmsServicesCreate](docs/VcenterTrustedInfrastructureKmsServicesCreate.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureKmsServicesCreateSpec](docs/VcenterTrustedInfrastructureKmsServicesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureKmsServicesFilterSpec](docs/VcenterTrustedInfrastructureKmsServicesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureKmsServicesInfo](docs/VcenterTrustedInfrastructureKmsServicesInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureKmsServicesList](docs/VcenterTrustedInfrastructureKmsServicesList.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureKmsServicesSummary](docs/VcenterTrustedInfrastructureKmsServicesSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureNetworkAddress](docs/VcenterTrustedInfrastructureNetworkAddress.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructurePrincipalInfo](docs/VcenterTrustedInfrastructurePrincipalInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureStsPrincipal](docs/VcenterTrustedInfrastructureStsPrincipal.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureStsPrincipalId](docs/VcenterTrustedInfrastructureStsPrincipalId.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureStsPrincipalType](docs/VcenterTrustedInfrastructureStsPrincipalType.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesFilterSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesHealth](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationOsEsxBaseImagesHealth.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2CaCertificatesCreateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsListTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsListTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersFilterSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersInfo](docs/VcenterTrustedInfrastructureTrustAuthorityClustersInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersClientCertificateUpdateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCreateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCreateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCreateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesFilterSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCurrentPeerCertificatesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpecType](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpecType.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerUpdateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerUpdateSpecType](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerUpdateSpecType.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerCreateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerUpdateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKmipServerUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersServer](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersServer.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesUpdateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesUpdateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersTrustedPeerCertificatesUpdateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersUpdateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersUpdateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersUpdateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersState](docs/VcenterTrustedInfrastructureTrustAuthorityClustersState.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersSummary](docs/VcenterTrustedInfrastructureTrustAuthorityClustersSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersUpdateSpec](docs/VcenterTrustedInfrastructureTrustAuthorityClustersUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersUpdateTask](docs/VcenterTrustedInfrastructureTrustAuthorityClustersUpdateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationFilterSpec](docs/VcenterTrustedInfrastructureTrustAuthorityHostsAttestationFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationInfo](docs/VcenterTrustedInfrastructureTrustAuthorityHostsAttestationInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationList](docs/VcenterTrustedInfrastructureTrustAuthorityHostsAttestationList.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummary](docs/VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummaryType](docs/VcenterTrustedInfrastructureTrustAuthorityHostsAttestationSummaryType.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsFilterSpec](docs/VcenterTrustedInfrastructureTrustAuthorityHostsKmsFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo](docs/VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsList](docs/VcenterTrustedInfrastructureTrustAuthorityHostsKmsList.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary](docs/VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummaryType](docs/VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummaryType.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigFilterSpec](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigHealth](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigHealth.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigListTask](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesAppliedConfigListTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpecSourceType](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpecSourceType.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateTask](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesFilterSpec](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesInfo](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesList](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesList.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesSummary](docs/VcenterTrustedInfrastructureTrustedClustersAttestationServicesSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesAppliedConfigFilterSpec](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesAppliedConfigFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesAppliedConfigHealth](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesAppliedConfigHealth.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesAppliedConfigListTask](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesAppliedConfigListTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateSpec](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateSpecSourceType](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateSpecSourceType.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateTask](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesCreateTask.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesFilterSpec](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesInfo](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesInfo.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesList](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesList.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersKmsServicesSummary](docs/VcenterTrustedInfrastructureTrustedClustersKmsServicesSummary.md)
 - [VSphereAutomation::VCenter::VcenterTrustedInfrastructureX509CertChain](docs/VcenterTrustedInfrastructureX509CertChain.md)
 - [VSphereAutomation::VCenter::VcenterVMClone](docs/VcenterVMClone.md)
 - [VSphereAutomation::VCenter::VcenterVMClonePlacementSpec](docs/VcenterVMClonePlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMCloneResp](docs/VcenterVMCloneResp.md)
 - [VSphereAutomation::VCenter::VcenterVMCloneSpec](docs/VcenterVMCloneSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMCloneSpecDisksToUpdate](docs/VcenterVMCloneSpecDisksToUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVMCloneTask](docs/VcenterVMCloneTask.md)
 - [VSphereAutomation::VCenter::VcenterVMCloneTaskResp](docs/VcenterVMCloneTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVMCreate](docs/VcenterVMCreate.md)
 - [VSphereAutomation::VCenter::VcenterVMCreateResp](docs/VcenterVMCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVMCreateSpec](docs/VcenterVMCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMDiskCloneSpec](docs/VcenterVMDiskCloneSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMDiskRelocateSpec](docs/VcenterVMDiskRelocateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMFilterSpec](docs/VcenterVMFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMGuestCustomizationSpec](docs/VcenterVMGuestCustomizationSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMInfo](docs/VcenterVMInfo.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoCdroms](docs/VcenterVMInfoCdroms.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoDisks](docs/VcenterVMInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoFloppies](docs/VcenterVMInfoFloppies.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoNics](docs/VcenterVMInfoNics.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoNvmeAdapters](docs/VcenterVMInfoNvmeAdapters.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoParallelPorts](docs/VcenterVMInfoParallelPorts.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoSataAdapters](docs/VcenterVMInfoSataAdapters.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoScsiAdapters](docs/VcenterVMInfoScsiAdapters.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoSerialPorts](docs/VcenterVMInfoSerialPorts.md)
 - [VSphereAutomation::VCenter::VcenterVMInstantClone](docs/VcenterVMInstantClone.md)
 - [VSphereAutomation::VCenter::VcenterVMInstantClonePlacementSpec](docs/VcenterVMInstantClonePlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMInstantCloneResp](docs/VcenterVMInstantCloneResp.md)
 - [VSphereAutomation::VCenter::VcenterVMInstantCloneSpec](docs/VcenterVMInstantCloneSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMInstantCloneSpecNicsToUpdate](docs/VcenterVMInstantCloneSpecNicsToUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVMInstantCloneSpecParallelPortsToUpdate](docs/VcenterVMInstantCloneSpecParallelPortsToUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVMInstantCloneSpecSerialPortsToUpdate](docs/VcenterVMInstantCloneSpecSerialPortsToUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVMListResp](docs/VcenterVMListResp.md)
 - [VSphereAutomation::VCenter::VcenterVMPlacementSpec](docs/VcenterVMPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMRegister](docs/VcenterVMRegister.md)
 - [VSphereAutomation::VCenter::VcenterVMRegisterPlacementSpec](docs/VcenterVMRegisterPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMRegisterResp](docs/VcenterVMRegisterResp.md)
 - [VSphereAutomation::VCenter::VcenterVMRegisterSpec](docs/VcenterVMRegisterSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMRelocate](docs/VcenterVMRelocate.md)
 - [VSphereAutomation::VCenter::VcenterVMRelocatePlacementSpec](docs/VcenterVMRelocatePlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMRelocateSpec](docs/VcenterVMRelocateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMRelocateSpecDisks](docs/VcenterVMRelocateSpecDisks.md)
 - [VSphereAutomation::VCenter::VcenterVMRelocateTask](docs/VcenterVMRelocateTask.md)
 - [VSphereAutomation::VCenter::VcenterVMRelocateTaskResp](docs/VcenterVMRelocateTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVMResp](docs/VcenterVMResp.md)
 - [VSphereAutomation::VCenter::VcenterVMStoragePolicySpec](docs/VcenterVMStoragePolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVMSummary](docs/VcenterVMSummary.md)
 - [VSphereAutomation::VCenter::VcenterVchaCapabilitiesInfo](docs/VcenterVchaCapabilitiesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaCapabilitiesResp](docs/VcenterVchaCapabilitiesResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveGet](docs/VcenterVchaClusterActiveGet.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveInfo](docs/VcenterVchaClusterActiveInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveResp](docs/VcenterVchaClusterActiveResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveSpec](docs/VcenterVchaClusterActiveSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterClusterMode](docs/VcenterVchaClusterClusterMode.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterClusterState](docs/VcenterVchaClusterClusterState.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterConfigState](docs/VcenterVchaClusterConfigState.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploySpec](docs/VcenterVchaClusterDeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeployTask](docs/VcenterVchaClusterDeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeployTaskResp](docs/VcenterVchaClusterDeployTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploymentTypeInfo](docs/VcenterVchaClusterDeploymentTypeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploymentTypeResp](docs/VcenterVchaClusterDeploymentTypeResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploymentTypeType](docs/VcenterVchaClusterDeploymentTypeType.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterErrorCondition](docs/VcenterVchaClusterErrorCondition.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterFailoverTask](docs/VcenterVchaClusterFailoverTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterFailoverTaskResp](docs/VcenterVchaClusterFailoverTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterGet](docs/VcenterVchaClusterGet.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterInfo](docs/VcenterVchaClusterInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpFamily](docs/VcenterVchaClusterIpFamily.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpInfo](docs/VcenterVchaClusterIpInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpv4Info](docs/VcenterVchaClusterIpv4Info.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpv6Info](docs/VcenterVchaClusterIpv6Info.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeClusterMode](docs/VcenterVchaClusterModeClusterMode.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeInfo](docs/VcenterVchaClusterModeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeResp](docs/VcenterVchaClusterModeResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeSetTask](docs/VcenterVchaClusterModeSetTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeSetTaskResp](docs/VcenterVchaClusterModeSetTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeInfo](docs/VcenterVchaClusterNodeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeRole](docs/VcenterVchaClusterNodeRole.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeRuntimeInfo](docs/VcenterVchaClusterNodeRuntimeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeState](docs/VcenterVchaClusterNodeState.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeVmInfo](docs/VcenterVchaClusterNodeVmInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveCheck](docs/VcenterVchaClusterPassiveCheck.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveCheckResp](docs/VcenterVchaClusterPassiveCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveCheckResult](docs/VcenterVchaClusterPassiveCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveCheckSpec](docs/VcenterVchaClusterPassiveCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveRedeploySpec](docs/VcenterVchaClusterPassiveRedeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveRedeployTask](docs/VcenterVchaClusterPassiveRedeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveRedeployTaskResp](docs/VcenterVchaClusterPassiveRedeployTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveSpec](docs/VcenterVchaClusterPassiveSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterResp](docs/VcenterVchaClusterResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterType](docs/VcenterVchaClusterType.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterUndeploySpec](docs/VcenterVchaClusterUndeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterUndeployTask](docs/VcenterVchaClusterUndeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterUndeployTaskResp](docs/VcenterVchaClusterUndeployTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterVmInfo](docs/VcenterVchaClusterVmInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessCheck](docs/VcenterVchaClusterWitnessCheck.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessCheckResp](docs/VcenterVchaClusterWitnessCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessCheckResult](docs/VcenterVchaClusterWitnessCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessCheckSpec](docs/VcenterVchaClusterWitnessCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessInfo](docs/VcenterVchaClusterWitnessInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessRedeploySpec](docs/VcenterVchaClusterWitnessRedeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessRedeployTask](docs/VcenterVchaClusterWitnessRedeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessRedeployTaskResp](docs/VcenterVchaClusterWitnessRedeployTaskResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessSpec](docs/VcenterVchaClusterWitnessSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaConnectionSpec](docs/VcenterVchaConnectionSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaCredentialsSpec](docs/VcenterVchaCredentialsSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaDiskInfo](docs/VcenterVchaDiskInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaDiskSpec](docs/VcenterVchaDiskSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpFamily](docs/VcenterVchaIpFamily.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpSpec](docs/VcenterVchaIpSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpv4Spec](docs/VcenterVchaIpv4Spec.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpv6Spec](docs/VcenterVchaIpv6Spec.md)
 - [VSphereAutomation::VCenter::VcenterVchaLicenseInfo](docs/VcenterVchaLicenseInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaLicenseResp](docs/VcenterVchaLicenseResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaNetworkType](docs/VcenterVchaNetworkType.md)
 - [VSphereAutomation::VCenter::VcenterVchaOperationsInfo](docs/VcenterVchaOperationsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaOperationsResp](docs/VcenterVchaOperationsResp.md)
 - [VSphereAutomation::VCenter::VcenterVchaPlacementInfo](docs/VcenterVchaPlacementInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaPlacementSpec](docs/VcenterVchaPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaVcCredentialsValidate](docs/VcenterVchaVcCredentialsValidate.md)
 - [VSphereAutomation::VCenter::VcenterVmComputePoliciesInfo](docs/VcenterVmComputePoliciesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmConsoleTicketsCreate](docs/VcenterVmConsoleTicketsCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmConsoleTicketsCreateResp](docs/VcenterVmConsoleTicketsCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmConsoleTicketsCreateSpec](docs/VcenterVmConsoleTicketsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmConsoleTicketsSummary](docs/VcenterVmConsoleTicketsSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmConsoleTicketsType](docs/VcenterVmConsoleTicketsType.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestCredentials](docs/VcenterVmGuestCredentials.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestCredentialsType](docs/VcenterVmGuestCredentialsType.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestCustomizationInfo](docs/VcenterVmGuestCustomizationInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestCustomizationInfoStatus](docs/VcenterVmGuestCustomizationInfoStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestCustomizationResp](docs/VcenterVmGuestCustomizationResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestCustomizationSet](docs/VcenterVmGuestCustomizationSet.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestCustomizationSetSpec](docs/VcenterVmGuestCustomizationSetSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDataSetsAccess](docs/VcenterVmGuestDataSetsAccess.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDataSetsCreate](docs/VcenterVmGuestDataSetsCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDataSetsCreateSpec](docs/VcenterVmGuestDataSetsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDataSetsInfo](docs/VcenterVmGuestDataSetsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDataSetsSummary](docs/VcenterVmGuestDataSetsSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDataSetsUpdate](docs/VcenterVmGuestDataSetsUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDataSetsUpdateSpec](docs/VcenterVmGuestDataSetsUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDhcpConfigInfo](docs/VcenterVmGuestDhcpConfigInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDnsAssignedValues](docs/VcenterVmGuestDnsAssignedValues.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestDnsConfigInfo](docs/VcenterVmGuestDnsConfigInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestEnvironmentGet](docs/VcenterVmGuestEnvironmentGet.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestEnvironmentList](docs/VcenterVmGuestEnvironmentList.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestEnvironmentListResp](docs/VcenterVmGuestEnvironmentListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestEnvironmentResp](docs/VcenterVmGuestEnvironmentResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesFileAttributesInfo](docs/VcenterVmGuestFilesystemFilesFileAttributesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesFileAttributesUpdateSpec](docs/VcenterVmGuestFilesystemFilesFileAttributesUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesFilesystemFamily](docs/VcenterVmGuestFilesystemFilesFilesystemFamily.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesInfo](docs/VcenterVmGuestFilesystemFilesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesInfoType](docs/VcenterVmGuestFilesystemFilesInfoType.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesListFileInfo](docs/VcenterVmGuestFilesystemFilesListFileInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesPosixFileAttributesInfo](docs/VcenterVmGuestFilesystemFilesPosixFileAttributesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesPosixFileAttributesUpdateSpec](docs/VcenterVmGuestFilesystemFilesPosixFileAttributesUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesWindowsFileAttributesInfo](docs/VcenterVmGuestFilesystemFilesWindowsFileAttributesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesWindowsFileAttributesUpdateSpec](docs/VcenterVmGuestFilesystemFilesWindowsFileAttributesUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemTransfersFileAttributesCreateSpec](docs/VcenterVmGuestFilesystemTransfersFileAttributesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemTransfersPosixFileAttributesCreateSpec](docs/VcenterVmGuestFilesystemTransfersPosixFileAttributesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestFilesystemTransfersWindowsFileAttributesCreateSpec](docs/VcenterVmGuestFilesystemTransfersWindowsFileAttributesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestIdentityInfo](docs/VcenterVmGuestIdentityInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestIdentityResp](docs/VcenterVmGuestIdentityResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemInfo](docs/VcenterVmGuestLocalFilesystemInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemResp](docs/VcenterVmGuestLocalFilesystemResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemRespValue](docs/VcenterVmGuestLocalFilesystemRespValue.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemVirtualDiskMapping](docs/VcenterVmGuestLocalFilesystemVirtualDiskMapping.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingInfo](docs/VcenterVmGuestNetworkingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesInfo](docs/VcenterVmGuestNetworkingInterfacesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesIpAddressInfo](docs/VcenterVmGuestNetworkingInterfacesIpAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesIpAddressOrigin](docs/VcenterVmGuestNetworkingInterfacesIpAddressOrigin.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesIpAddressStatus](docs/VcenterVmGuestNetworkingInterfacesIpAddressStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesIpConfigInfo](docs/VcenterVmGuestNetworkingInterfacesIpConfigInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesListResp](docs/VcenterVmGuestNetworkingInterfacesListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingResp](docs/VcenterVmGuestNetworkingResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingRoutesInfo](docs/VcenterVmGuestNetworkingRoutesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestNetworkingRoutesListResp](docs/VcenterVmGuestNetworkingRoutesListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestOS](docs/VcenterVmGuestOS.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestOSFamily](docs/VcenterVmGuestOSFamily.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestOperationsInfo](docs/VcenterVmGuestOperationsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestOperationsResp](docs/VcenterVmGuestOperationsResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestPowerInfo](docs/VcenterVmGuestPowerInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestPowerResp](docs/VcenterVmGuestPowerResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestPowerState](docs/VcenterVmGuestPowerState.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesCreate](docs/VcenterVmGuestProcessesCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesCreateResp](docs/VcenterVmGuestProcessesCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesCreateSpec](docs/VcenterVmGuestProcessesCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesDelete](docs/VcenterVmGuestProcessesDelete.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesGet](docs/VcenterVmGuestProcessesGet.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesInfo](docs/VcenterVmGuestProcessesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesList](docs/VcenterVmGuestProcessesList.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesListResp](docs/VcenterVmGuestProcessesListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestProcessesResp](docs/VcenterVmGuestProcessesResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeCreate](docs/VcenterVmHardwareAdapterNvmeCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeCreateResp](docs/VcenterVmHardwareAdapterNvmeCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeCreateSpec](docs/VcenterVmHardwareAdapterNvmeCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeInfo](docs/VcenterVmHardwareAdapterNvmeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeListResp](docs/VcenterVmHardwareAdapterNvmeListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeResp](docs/VcenterVmHardwareAdapterNvmeResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeSummary](docs/VcenterVmHardwareAdapterNvmeSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataCreate](docs/VcenterVmHardwareAdapterSataCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataCreateResp](docs/VcenterVmHardwareAdapterSataCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataCreateSpec](docs/VcenterVmHardwareAdapterSataCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataInfo](docs/VcenterVmHardwareAdapterSataInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataListResp](docs/VcenterVmHardwareAdapterSataListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataResp](docs/VcenterVmHardwareAdapterSataResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataSummary](docs/VcenterVmHardwareAdapterSataSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataType](docs/VcenterVmHardwareAdapterSataType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiCreate](docs/VcenterVmHardwareAdapterScsiCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiCreateResp](docs/VcenterVmHardwareAdapterScsiCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiCreateSpec](docs/VcenterVmHardwareAdapterScsiCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiInfo](docs/VcenterVmHardwareAdapterScsiInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiListResp](docs/VcenterVmHardwareAdapterScsiListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiResp](docs/VcenterVmHardwareAdapterScsiResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiSharing](docs/VcenterVmHardwareAdapterScsiSharing.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiSummary](docs/VcenterVmHardwareAdapterScsiSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiType](docs/VcenterVmHardwareAdapterScsiType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiUpdate](docs/VcenterVmHardwareAdapterScsiUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiUpdateSpec](docs/VcenterVmHardwareAdapterScsiUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootCreateSpec](docs/VcenterVmHardwareBootCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceEntry](docs/VcenterVmHardwareBootDeviceEntry.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceEntryCreateSpec](docs/VcenterVmHardwareBootDeviceEntryCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceResp](docs/VcenterVmHardwareBootDeviceResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceSet](docs/VcenterVmHardwareBootDeviceSet.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceType](docs/VcenterVmHardwareBootDeviceType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootInfo](docs/VcenterVmHardwareBootInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootNetworkProtocol](docs/VcenterVmHardwareBootNetworkProtocol.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootResp](docs/VcenterVmHardwareBootResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootType](docs/VcenterVmHardwareBootType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootUpdate](docs/VcenterVmHardwareBootUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootUpdateSpec](docs/VcenterVmHardwareBootUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingInfo](docs/VcenterVmHardwareCdromBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingSpec](docs/VcenterVmHardwareCdromBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingType](docs/VcenterVmHardwareCdromBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromCreate](docs/VcenterVmHardwareCdromCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromCreateResp](docs/VcenterVmHardwareCdromCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromCreateSpec](docs/VcenterVmHardwareCdromCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromDeviceAccessType](docs/VcenterVmHardwareCdromDeviceAccessType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromHostBusAdapterType](docs/VcenterVmHardwareCdromHostBusAdapterType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromInfo](docs/VcenterVmHardwareCdromInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromListResp](docs/VcenterVmHardwareCdromListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromResp](docs/VcenterVmHardwareCdromResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromSummary](docs/VcenterVmHardwareCdromSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromUpdate](docs/VcenterVmHardwareCdromUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromUpdateSpec](docs/VcenterVmHardwareCdromUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareConnectionState](docs/VcenterVmHardwareConnectionState.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuInfo](docs/VcenterVmHardwareCpuInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuResp](docs/VcenterVmHardwareCpuResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuUpdate](docs/VcenterVmHardwareCpuUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuUpdateSpec](docs/VcenterVmHardwareCpuUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskBackingInfo](docs/VcenterVmHardwareDiskBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskBackingSpec](docs/VcenterVmHardwareDiskBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskBackingType](docs/VcenterVmHardwareDiskBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskCreate](docs/VcenterVmHardwareDiskCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskCreateResp](docs/VcenterVmHardwareDiskCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskCreateSpec](docs/VcenterVmHardwareDiskCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskHostBusAdapterType](docs/VcenterVmHardwareDiskHostBusAdapterType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskInfo](docs/VcenterVmHardwareDiskInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskListResp](docs/VcenterVmHardwareDiskListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskResp](docs/VcenterVmHardwareDiskResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskStoragePolicySpec](docs/VcenterVmHardwareDiskStoragePolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskSummary](docs/VcenterVmHardwareDiskSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskUpdate](docs/VcenterVmHardwareDiskUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskUpdateSpec](docs/VcenterVmHardwareDiskUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskVmdkCreateSpec](docs/VcenterVmHardwareDiskVmdkCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingInfo](docs/VcenterVmHardwareEthernetBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingSpec](docs/VcenterVmHardwareEthernetBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingType](docs/VcenterVmHardwareEthernetBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetCreate](docs/VcenterVmHardwareEthernetCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetCreateResp](docs/VcenterVmHardwareEthernetCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetCreateSpec](docs/VcenterVmHardwareEthernetCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetEmulationType](docs/VcenterVmHardwareEthernetEmulationType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetInfo](docs/VcenterVmHardwareEthernetInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetListResp](docs/VcenterVmHardwareEthernetListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetMacAddressType](docs/VcenterVmHardwareEthernetMacAddressType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetResp](docs/VcenterVmHardwareEthernetResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetSummary](docs/VcenterVmHardwareEthernetSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetUpdate](docs/VcenterVmHardwareEthernetUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetUpdateSpec](docs/VcenterVmHardwareEthernetUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingInfo](docs/VcenterVmHardwareFloppyBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingSpec](docs/VcenterVmHardwareFloppyBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingType](docs/VcenterVmHardwareFloppyBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyCreate](docs/VcenterVmHardwareFloppyCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyCreateResp](docs/VcenterVmHardwareFloppyCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyCreateSpec](docs/VcenterVmHardwareFloppyCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyInfo](docs/VcenterVmHardwareFloppyInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyListResp](docs/VcenterVmHardwareFloppyListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyResp](docs/VcenterVmHardwareFloppyResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppySummary](docs/VcenterVmHardwareFloppySummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyUpdate](docs/VcenterVmHardwareFloppyUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyUpdateSpec](docs/VcenterVmHardwareFloppyUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareIdeAddressInfo](docs/VcenterVmHardwareIdeAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareIdeAddressSpec](docs/VcenterVmHardwareIdeAddressSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareInfo](docs/VcenterVmHardwareInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryInfo](docs/VcenterVmHardwareMemoryInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryResp](docs/VcenterVmHardwareMemoryResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryUpdate](docs/VcenterVmHardwareMemoryUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryUpdateSpec](docs/VcenterVmHardwareMemoryUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareNvmeAddressInfo](docs/VcenterVmHardwareNvmeAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareNvmeAddressSpec](docs/VcenterVmHardwareNvmeAddressSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingInfo](docs/VcenterVmHardwareParallelBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingSpec](docs/VcenterVmHardwareParallelBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingType](docs/VcenterVmHardwareParallelBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelCreate](docs/VcenterVmHardwareParallelCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelCreateResp](docs/VcenterVmHardwareParallelCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelCreateSpec](docs/VcenterVmHardwareParallelCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelInfo](docs/VcenterVmHardwareParallelInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelListResp](docs/VcenterVmHardwareParallelListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelResp](docs/VcenterVmHardwareParallelResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelSummary](docs/VcenterVmHardwareParallelSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelUpdate](docs/VcenterVmHardwareParallelUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelUpdateSpec](docs/VcenterVmHardwareParallelUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareResp](docs/VcenterVmHardwareResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSataAddressInfo](docs/VcenterVmHardwareSataAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSataAddressSpec](docs/VcenterVmHardwareSataAddressSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareScsiAddressInfo](docs/VcenterVmHardwareScsiAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareScsiAddressSpec](docs/VcenterVmHardwareScsiAddressSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialBackingInfo](docs/VcenterVmHardwareSerialBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialBackingSpec](docs/VcenterVmHardwareSerialBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialBackingType](docs/VcenterVmHardwareSerialBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialCreate](docs/VcenterVmHardwareSerialCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialCreateResp](docs/VcenterVmHardwareSerialCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialCreateSpec](docs/VcenterVmHardwareSerialCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialInfo](docs/VcenterVmHardwareSerialInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialListResp](docs/VcenterVmHardwareSerialListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialResp](docs/VcenterVmHardwareSerialResp.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialSummary](docs/VcenterVmHardwareSerialSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialUpdate](docs/VcenterVmHardwareSerialUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialUpdateSpec](docs/VcenterVmHardwareSerialUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpdate](docs/VcenterVmHardwareUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpdateSpec](docs/VcenterVmHardwareUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpgrade](docs/VcenterVmHardwareUpgrade.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpgradePolicy](docs/VcenterVmHardwareUpgradePolicy.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpgradeStatus](docs/VcenterVmHardwareUpgradeStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareVersion](docs/VcenterVmHardwareVersion.md)
 - [VSphereAutomation::VCenter::VcenterVmIdentityInfo](docs/VcenterVmIdentityInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmLibraryItemCheckOutInfo](docs/VcenterVmLibraryItemCheckOutInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmLibraryItemInfo](docs/VcenterVmLibraryItemInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmLibraryItemResp](docs/VcenterVmLibraryItemResp.md)
 - [VSphereAutomation::VCenter::VcenterVmPowerInfo](docs/VcenterVmPowerInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmPowerResp](docs/VcenterVmPowerResp.md)
 - [VSphereAutomation::VCenter::VcenterVmPowerState](docs/VcenterVmPowerState.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceCheck](docs/VcenterVmStoragePolicyComplianceCheck.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceCheckResp](docs/VcenterVmStoragePolicyComplianceCheckResp.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceCheckSpec](docs/VcenterVmStoragePolicyComplianceCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceInfo](docs/VcenterVmStoragePolicyComplianceInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceInfoDisks](docs/VcenterVmStoragePolicyComplianceInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceResp](docs/VcenterVmStoragePolicyComplianceResp.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceStatus](docs/VcenterVmStoragePolicyComplianceStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceVmComplianceInfo](docs/VcenterVmStoragePolicyComplianceVmComplianceInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyDiskPolicySpec](docs/VcenterVmStoragePolicyDiskPolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyDiskPolicySpecPolicyType](docs/VcenterVmStoragePolicyDiskPolicySpecPolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyInfo](docs/VcenterVmStoragePolicyInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyResp](docs/VcenterVmStoragePolicyResp.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdate](docs/VcenterVmStoragePolicyUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdateSpec](docs/VcenterVmStoragePolicyUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdateSpecDisks](docs/VcenterVmStoragePolicyUpdateSpecDisks.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyVmHomePolicySpec](docs/VcenterVmStoragePolicyVmHomePolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyVmHomePolicySpecPolicyType](docs/VcenterVmStoragePolicyVmHomePolicySpecPolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmTagsAdd](docs/VcenterVmTagsAdd.md)
 - [VSphereAutomation::VCenter::VcenterVmTagsAddResp](docs/VcenterVmTagsAddResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTagsRemove](docs/VcenterVmTagsRemove.md)
 - [VSphereAutomation::VCenter::VcenterVmTagsRemoveResp](docs/VcenterVmTagsRemoveResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTagsResp](docs/VcenterVmTagsResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTagsStatus](docs/VcenterVmTagsStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckIn](docs/VcenterVmTemplateLibraryItemsCheckOutsCheckIn.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckInResp](docs/VcenterVmTemplateLibraryItemsCheckOutsCheckInResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckInSpec](docs/VcenterVmTemplateLibraryItemsCheckOutsCheckInSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckOut](docs/VcenterVmTemplateLibraryItemsCheckOutsCheckOut.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp](docs/VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckOutSpec](docs/VcenterVmTemplateLibraryItemsCheckOutsCheckOutSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsInfo](docs/VcenterVmTemplateLibraryItemsCheckOutsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsListResp](docs/VcenterVmTemplateLibraryItemsCheckOutsListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsPlacementSpec](docs/VcenterVmTemplateLibraryItemsCheckOutsPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsResp](docs/VcenterVmTemplateLibraryItemsCheckOutsResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCheckOutsSummary](docs/VcenterVmTemplateLibraryItemsCheckOutsSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCpuInfo](docs/VcenterVmTemplateLibraryItemsCpuInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCpuUpdateSpec](docs/VcenterVmTemplateLibraryItemsCpuUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreate](docs/VcenterVmTemplateLibraryItemsCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreatePlacementSpec](docs/VcenterVmTemplateLibraryItemsCreatePlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateResp](docs/VcenterVmTemplateLibraryItemsCreateResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpec](docs/VcenterVmTemplateLibraryItemsCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpecDiskStorage](docs/VcenterVmTemplateLibraryItemsCreateSpecDiskStorage.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpecDiskStorageOverrides](docs/VcenterVmTemplateLibraryItemsCreateSpecDiskStorageOverrides.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicy](docs/VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicy.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicyType](docs/VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage](docs/VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpecVmHomeStoragePolicy](docs/VcenterVmTemplateLibraryItemsCreateSpecVmHomeStoragePolicy.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpecVmHomeStoragePolicyType](docs/VcenterVmTemplateLibraryItemsCreateSpecVmHomeStoragePolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploy](docs/VcenterVmTemplateLibraryItemsDeploy.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeployPlacementSpec](docs/VcenterVmTemplateLibraryItemsDeployPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeployResp](docs/VcenterVmTemplateLibraryItemsDeployResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpec](docs/VcenterVmTemplateLibraryItemsDeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpecDiskStorage](docs/VcenterVmTemplateLibraryItemsDeploySpecDiskStorage.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpecDiskStorageOverrides](docs/VcenterVmTemplateLibraryItemsDeploySpecDiskStorageOverrides.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpecDiskStoragePolicy](docs/VcenterVmTemplateLibraryItemsDeploySpecDiskStoragePolicy.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpecDiskStoragePolicyType](docs/VcenterVmTemplateLibraryItemsDeploySpecDiskStoragePolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage](docs/VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicy](docs/VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicy.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicyType](docs/VcenterVmTemplateLibraryItemsDeploySpecVmHomeStoragePolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDiskInfo](docs/VcenterVmTemplateLibraryItemsDiskInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDiskStorageInfo](docs/VcenterVmTemplateLibraryItemsDiskStorageInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDiskUpdateSpec](docs/VcenterVmTemplateLibraryItemsDiskUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsEthernetInfo](docs/VcenterVmTemplateLibraryItemsEthernetInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsEthernetInfoMacAddressType](docs/VcenterVmTemplateLibraryItemsEthernetInfoMacAddressType.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsEthernetInfoNetworkBackingType](docs/VcenterVmTemplateLibraryItemsEthernetInfoNetworkBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsEthernetUpdateSpec](docs/VcenterVmTemplateLibraryItemsEthernetUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsGuestCustomizationSpec](docs/VcenterVmTemplateLibraryItemsGuestCustomizationSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsHardwareCustomizationSpec](docs/VcenterVmTemplateLibraryItemsHardwareCustomizationSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsHardwareCustomizationSpecDisksToUpdate](docs/VcenterVmTemplateLibraryItemsHardwareCustomizationSpecDisksToUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsHardwareCustomizationSpecNics](docs/VcenterVmTemplateLibraryItemsHardwareCustomizationSpecNics.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsInfo](docs/VcenterVmTemplateLibraryItemsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsInfoDisks](docs/VcenterVmTemplateLibraryItemsInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsInfoNics](docs/VcenterVmTemplateLibraryItemsInfoNics.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsMemoryInfo](docs/VcenterVmTemplateLibraryItemsMemoryInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsMemoryUpdateSpec](docs/VcenterVmTemplateLibraryItemsMemoryUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsResp](docs/VcenterVmTemplateLibraryItemsResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVersionsInfo](docs/VcenterVmTemplateLibraryItemsVersionsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVersionsListResp](docs/VcenterVmTemplateLibraryItemsVersionsListResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVersionsResp](docs/VcenterVmTemplateLibraryItemsVersionsResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVersionsRollback](docs/VcenterVmTemplateLibraryItemsVersionsRollback.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVersionsRollbackResp](docs/VcenterVmTemplateLibraryItemsVersionsRollbackResp.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVersionsRollbackSpec](docs/VcenterVmTemplateLibraryItemsVersionsRollbackSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVersionsSummary](docs/VcenterVmTemplateLibraryItemsVersionsSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVmHomeStorageInfo](docs/VcenterVmTemplateLibraryItemsVmHomeStorageInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsInfo](docs/VcenterVmToolsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsInstallerInfo](docs/VcenterVmToolsInstallerInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsInstallerResp](docs/VcenterVmToolsInstallerResp.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsResp](docs/VcenterVmToolsResp.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsRunState](docs/VcenterVmToolsRunState.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsToolsInstallType](docs/VcenterVmToolsToolsInstallType.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsUpdate](docs/VcenterVmToolsUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsUpdateSpec](docs/VcenterVmToolsUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsUpgrade](docs/VcenterVmToolsUpgrade.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsUpgradePolicy](docs/VcenterVmToolsUpgradePolicy.md)
 - [VSphereAutomation::VCenter::VcenterVmToolsVersionStatus](docs/VcenterVmToolsVersionStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmwportalAccountsCheck](docs/VcenterVmwportalAccountsCheck.md)
 - [VSphereAutomation::VCenter::VcenterVmwportalAccountsCheckSpec](docs/VcenterVmwportalAccountsCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmwportalAccountsSummary](docs/VcenterVmwportalAccountsSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmwportalAuthenticationCreate](docs/VcenterVmwportalAuthenticationCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmwportalAuthenticationCreateSpec](docs/VcenterVmwportalAuthenticationCreateSpec.md)

