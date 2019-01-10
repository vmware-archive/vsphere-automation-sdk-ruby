# vsphere-automation-vcenter

The Ruby gem for the vSphere VCenter API

- API version: 2.0.0
- Package version: 0.1.0

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

api_instance = VSphereAutomation::VCenter::ClusterApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Retrieves information about the cluster corresponding to cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterApi->get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::VCenter::ClusterApi` | [**get**](docs/ClusterApi.md#get) | **GET** /vcenter/cluster/{cluster} | Retrieves information about the cluster corresponding to cluster.
`VSphereAutomation::VCenter::ClusterApi` | [**list**](docs/ClusterApi.md#list) | **GET** /vcenter/cluster | Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.
`VSphereAutomation::VCenter::DatacenterApi` | [**create**](docs/DatacenterApi.md#create) | **POST** /vcenter/datacenter | Create a new datacenter in the vCenter inventory
`VSphereAutomation::VCenter::DatacenterApi` | [**delete**](docs/DatacenterApi.md#delete) | **DELETE** /vcenter/datacenter/{datacenter} | Delete an empty datacenter from the vCenter Server
`VSphereAutomation::VCenter::DatacenterApi` | [**get**](docs/DatacenterApi.md#get) | **GET** /vcenter/datacenter/{datacenter} | Retrieves information about the datacenter corresponding to datacenter.
`VSphereAutomation::VCenter::DatacenterApi` | [**list**](docs/DatacenterApi.md#list) | **GET** /vcenter/datacenter | Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the Datacenter.FilterSpec.
`VSphereAutomation::VCenter::DatastoreApi` | [**get**](docs/DatastoreApi.md#get) | **GET** /vcenter/datastore/{datastore} | Retrieves information about the datastore indicated by datastore.
`VSphereAutomation::VCenter::DatastoreApi` | [**list**](docs/DatastoreApi.md#list) | **GET** /vcenter/datastore | Returns information about at most 1000 visible (subject to permission checks) datastores in vCenter matching the Datastore.FilterSpec.
`VSphereAutomation::VCenter::DatastoreDefaultPolicyApi` | [**get**](docs/DatastoreDefaultPolicyApi.md#get) | **GET** /vcenter/datastore/{datastore}/default-policy | Returns the identifier of the current default storage policy associated with the specified datastore.
`VSphereAutomation::VCenter::DeploymentApi` | [**get**](docs/DeploymentApi.md#get) | **GET** /vcenter/deployment | Get the current status of the appliance deployment.
`VSphereAutomation::VCenter::DeploymentApi` | [**rollback**](docs/DeploymentApi.md#rollback) | **POST** /vcenter/deployment?action&#x3D;rollback | Rollback a failed appliance so it can be configured once again.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**cancel**](docs/DeploymentImportHistoryApi.md#cancel) | **POST** /vcenter/deployment/history?action&#x3D;cancel | Cancels the task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**get**](docs/DeploymentImportHistoryApi.md#get) | **GET** /vcenter/deployment/history | Get the current status of the vCenter historical data import.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**pause**](docs/DeploymentImportHistoryApi.md#pause) | **POST** /vcenter/deployment/history?action&#x3D;pause | Pauses the task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**resume**](docs/DeploymentImportHistoryApi.md#resume) | **POST** /vcenter/deployment/history?action&#x3D;resume | Resumes the task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentImportHistoryApi` | [**start**](docs/DeploymentImportHistoryApi.md#start) | **POST** /vcenter/deployment/history?action&#x3D;start | Creates and starts task for importing vCenter historical data.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**cancel**](docs/DeploymentInstallApi.md#cancel) | **POST** /vcenter/deployment/install?action&#x3D;cancel | Cancel the appliance installation that is in progress.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**check**](docs/DeploymentInstallApi.md#check) | **POST** /vcenter/deployment/install?action&#x3D;check | Run sanity checks using the InstallSpec parameters passed.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**get**](docs/DeploymentInstallApi.md#get) | **GET** /vcenter/deployment/install | Get the parameters used to configure the ongoing appliance installation.
`VSphereAutomation::VCenter::DeploymentInstallApi` | [**start**](docs/DeploymentInstallApi.md#start) | **POST** /vcenter/deployment/install?action&#x3D;start | Start the appliance installation.
`VSphereAutomation::VCenter::DeploymentInstallInitialConfigRemotePscThumbprintApi` | [**get**](docs/DeploymentInstallInitialConfigRemotePscThumbprintApi.md#get) | **GET** /vcenter/deployment/install/initial-config/remote-psc/thumbprint | Gets the SHA1 thumbprint of the remote PSC.
`VSphereAutomation::VCenter::DeploymentInstallPscReplicatedApi` | [**check**](docs/DeploymentInstallPscReplicatedApi.md#check) | **POST** /vcenter/deployment/install/psc/replicated?action&#x3D;check | Checks whether the provided remote PSC is reachable and can be replicated.
`VSphereAutomation::VCenter::DeploymentInstallPscStandaloneApi` | [**check**](docs/DeploymentInstallPscStandaloneApi.md#check) | **POST** /vcenter/deployment/install/psc/standalone?action&#x3D;check | Checks that the information to configure a non-replicated PSC satisfies the requirements.
`VSphereAutomation::VCenter::DeploymentInstallRemotePscApi` | [**check**](docs/DeploymentInstallRemotePscApi.md#check) | **POST** /vcenter/deployment/install/remote-psc?action&#x3D;check | Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.
`VSphereAutomation::VCenter::DeploymentQuestionApi` | [**answer**](docs/DeploymentQuestionApi.md#answer) | **POST** /vcenter/deployment/question?action&#x3D;answer | Supply answer to the raised question.
`VSphereAutomation::VCenter::DeploymentQuestionApi` | [**get**](docs/DeploymentQuestionApi.md#get) | **GET** /vcenter/deployment/question | Get the question that was raised during the configuration.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**cancel**](docs/DeploymentUpgradeApi.md#cancel) | **POST** /vcenter/deployment/upgrade?action&#x3D;cancel | Cancel the appliance upgrade that is in progress.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**check**](docs/DeploymentUpgradeApi.md#check) | **POST** /vcenter/deployment/upgrade?action&#x3D;check | Run sanity checks using the UpgradeSpec parameters passed.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**get**](docs/DeploymentUpgradeApi.md#get) | **GET** /vcenter/deployment/upgrade | Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
`VSphereAutomation::VCenter::DeploymentUpgradeApi` | [**start**](docs/DeploymentUpgradeApi.md#start) | **POST** /vcenter/deployment/upgrade?action&#x3D;start | Start the appliance installation.
`VSphereAutomation::VCenter::FolderApi` | [**list**](docs/FolderApi.md#list) | **GET** /vcenter/folder | Returns information about at most 1000 visible (subject to permission checks) folders in vCenter matching the Folder.FilterSpec.
`VSphereAutomation::VCenter::GuestCustomizationSpecsApi` | [**list**](docs/GuestCustomizationSpecsApi.md#list) | **GET** /vcenter/guest/customization-specs | Returns information about at most 1000 visible (subject to permission checks) guest customization specifications in vCenter matching the CustomizationSpecs.FilterSpec.
`VSphereAutomation::VCenter::HostApi` | [**connect**](docs/HostApi.md#connect) | **POST** /vcenter/host/{host}/connect | Connect to the host corresponding to host previously added to the vCenter server.
`VSphereAutomation::VCenter::HostApi` | [**create**](docs/HostApi.md#create) | **POST** /vcenter/host | Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.
`VSphereAutomation::VCenter::HostApi` | [**delete**](docs/HostApi.md#delete) | **DELETE** /vcenter/host/{host} | Remove a standalone host from the vCenter Server.
`VSphereAutomation::VCenter::HostApi` | [**disconnect**](docs/HostApi.md#disconnect) | **POST** /vcenter/host/{host}/disconnect | Disconnect the host corresponding to host from the vCenter server
`VSphereAutomation::VCenter::HostApi` | [**list**](docs/HostApi.md#list) | **GET** /vcenter/host | Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.
`VSphereAutomation::VCenter::InventoryDatastoreApi` | [**find**](docs/InventoryDatastoreApi.md#find) | **POST** /com/vmware/vcenter/inventory/datastore?~action&#x3D;find | Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.
`VSphereAutomation::VCenter::InventoryNetworkApi` | [**find**](docs/InventoryNetworkApi.md#find) | **POST** /com/vmware/vcenter/inventory/network?~action&#x3D;find | Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
`VSphereAutomation::VCenter::IsoImageApi` | [**mount**](docs/IsoImageApi.md#mount) | **POST** /com/vmware/vcenter/iso/image/id:{library_item}?~action&#x3D;mount | Mounts an ISO image from a content library on a virtual machine.
`VSphereAutomation::VCenter::IsoImageApi` | [**unmount**](docs/IsoImageApi.md#unmount) | **POST** /com/vmware/vcenter/iso/image/id:{vm}?~action&#x3D;unmount | Unmounts a previously mounted CD-ROM using an ISO image as a backing.
`VSphereAutomation::VCenter::NetworkApi` | [**list**](docs/NetworkApi.md#list) | **GET** /vcenter/network | Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the Network.FilterSpec.
`VSphereAutomation::VCenter::OvfCapabilityApi` | [**get**](docs/OvfCapabilityApi.md#get) | **GET** /com/vmware/vcenter/ovf/capability/id:{server_guid} | Returns information about the capability of the given vCenter server.
`VSphereAutomation::VCenter::OvfExportFlagApi` | [**list**](docs/OvfExportFlagApi.md#list) | **GET** /com/vmware/vcenter/ovf/export-flag | Returns information about the supported export flags by the server. <p> The supported flags are: <dl> <dt>PRESERVE_MAC</dt> <dd>Include MAC addresses for network adapters.</dd> <dt>EXTRA_CONFIG</dt> <dd>Include extra configuration in OVF export.</dd> </dl> <p> Future server versions might support additional flags.
`VSphereAutomation::VCenter::OvfImportFlagApi` | [**list**](docs/OvfImportFlagApi.md#list) | **GET** /com/vmware/vcenter/ovf/import-flag | Returns information about the import flags supported by the deployment platform. <p> The supported flags are: <dl> <dt>LAX</dt> <dd>Lax mode parsing of the OVF descriptor.</dd> </dl> <p> Future server versions might support additional flags.
`VSphereAutomation::VCenter::OvfLibraryItemApi` | [**create**](docs/OvfLibraryItemApi.md#create) | **POST** /com/vmware/vcenter/ovf/library-item | Creates a library item in content library from a virtual machine or virtual appliance. <p> This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. </p>
`VSphereAutomation::VCenter::OvfLibraryItemApi` | [**deploy**](docs/OvfLibraryItemApi.md#deploy) | **POST** /com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action&#x3D;deploy | Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. <p> This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. </p>
`VSphereAutomation::VCenter::OvfLibraryItemApi` | [**filter**](docs/OvfLibraryItemApi.md#filter) | **POST** /com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action&#x3D;filter | Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. <p> This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. </p>
`VSphereAutomation::VCenter::ResourcePoolApi` | [**get**](docs/ResourcePoolApi.md#get) | **GET** /vcenter/resource-pool/{resource_pool} | Retrieves information about the resource pool indicated by resourcePool.
`VSphereAutomation::VCenter::ResourcePoolApi` | [**list**](docs/ResourcePoolApi.md#list) | **GET** /vcenter/resource-pool | Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.
`VSphereAutomation::VCenter::ServicesServiceApi` | [**get**](docs/ServicesServiceApi.md#get) | **GET** /vcenter/services/{service} | Returns the state of a service.
`VSphereAutomation::VCenter::ServicesServiceApi` | [**list_details**](docs/ServicesServiceApi.md#list_details) | **GET** /vcenter/services | Lists details of vCenter services.
`VSphereAutomation::VCenter::ServicesServiceApi` | [**restart**](docs/ServicesServiceApi.md#restart) | **POST** /vcenter/services/{service}/restart | Restarts a service
`VSphereAutomation::VCenter::ServicesServiceApi` | [**start**](docs/ServicesServiceApi.md#start) | **POST** /vcenter/services/{service}/start | Starts a service
`VSphereAutomation::VCenter::ServicesServiceApi` | [**stop**](docs/ServicesServiceApi.md#stop) | **POST** /vcenter/services/{service}/stop | Stops a service
`VSphereAutomation::VCenter::ServicesServiceApi` | [**update**](docs/ServicesServiceApi.md#update) | **PATCH** /vcenter/services/{service} | Updates the properties of a service.
`VSphereAutomation::VCenter::StoragePoliciesApi` | [**check_compatibility**](docs/StoragePoliciesApi.md#check_compatibility) | **POST** /vcenter/storage/policies/{policy}?action&#x3D;check-compatibility | Returns datastore compatibility summary about a specific storage policy.
`VSphereAutomation::VCenter::StoragePoliciesApi` | [**list**](docs/StoragePoliciesApi.md#list) | **GET** /vcenter/storage/policies | Returns information about at most 1024 visible (subject to permission checks) storage solicies availabe in vCenter. These storage policies can be used for provisioning virtual machines or disks.
`VSphereAutomation::VCenter::StoragePoliciesComplianceApi` | [**list**](docs/StoragePoliciesComplianceApi.md#list) | **GET** /vcenter/storage/policies/entities/compliance | Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.
`VSphereAutomation::VCenter::StoragePoliciesComplianceVMApi` | [**list**](docs/StoragePoliciesComplianceVMApi.md#list) | **GET** /vcenter/storage/policies/compliance/vm | Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.
`VSphereAutomation::VCenter::StoragePoliciesVMApi` | [**list**](docs/StoragePoliciesVMApi.md#list) | **GET** /vcenter/storage/policies/{policy}/vm | Returns information about the virtual machines and/or their virtual disks that are associated with the given storage policy.
`VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi` | [**get**](docs/SystemConfigDeploymentTypeApi.md#get) | **GET** /vcenter/system-config/deployment-type | Get the type of the vCenter appliance.
`VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi` | [**reconfigure**](docs/SystemConfigDeploymentTypeApi.md#reconfigure) | **POST** /vcenter/system-config/deployment-type | Reconfigure the type of the vCenter appliance.
`VSphereAutomation::VCenter::SystemConfigPscRegistrationApi` | [**get**](docs/SystemConfigPscRegistrationApi.md#get) | **GET** /vcenter/system-config/psc-registration | Get information of the PSC that this appliance is registered with.
`VSphereAutomation::VCenter::SystemConfigPscRegistrationApi` | [**repoint**](docs/SystemConfigPscRegistrationApi.md#repoint) | **POST** /vcenter/system-config/psc-registration | Repoint this vCenter Server appliance to a different external PSC.
`VSphereAutomation::VCenter::VMApi` | [**create**](docs/VMApi.md#create) | **POST** /vcenter/vm | Creates a virtual machine.
`VSphereAutomation::VCenter::VMApi` | [**delete**](docs/VMApi.md#delete) | **DELETE** /vcenter/vm/{vm} | Deletes a virtual machine.
`VSphereAutomation::VCenter::VMApi` | [**get**](docs/VMApi.md#get) | **GET** /vcenter/vm/{vm} | Returns information about a virtual machine.
`VSphereAutomation::VCenter::VMApi` | [**list**](docs/VMApi.md#list) | **GET** /vcenter/vm | Returns information about at most 1000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.
`VSphereAutomation::VCenter::VchaCapabilitiesApi` | [**get**](docs/VchaCapabilitiesApi.md#get) | **GET** /vcenter/vcha/capabilities | Gets the capabilities of the active node of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterApi` | [**deploytask**](docs/VchaClusterApi.md#deploytask) | **POST** /vcenter/vcha/cluster?action&#x3D;deploy | Prepares, clones, and configures a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterApi` | [**failovertask**](docs/VchaClusterApi.md#failovertask) | **POST** /vcenter/vcha/cluster?action&#x3D;failover | Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster's mode is enabled and all cluster members are present.    2.  Cluster's mode is maintenance and all cluster members are present. 
`VSphereAutomation::VCenter::VchaClusterApi` | [**get**](docs/VchaClusterApi.md#get) | **POST** /vcenter/vcha/cluster?action&#x3D;get | Retrieves the status of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterApi` | [**undeploytask**](docs/VchaClusterApi.md#undeploytask) | **POST** /vcenter/vcha/cluster?action&#x3D;undeploy | Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 
`VSphereAutomation::VCenter::VchaClusterActiveApi` | [**get**](docs/VchaClusterActiveApi.md#get) | **POST** /vcenter/vcha/cluster/active?action&#x3D;get | Retrieves information about the active node of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterDeploymentTypeApi` | [**get**](docs/VchaClusterDeploymentTypeApi.md#get) | **GET** /vcenter/vcha/cluster/deployment-type | Retrieves the deployment type of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterModeApi` | [**get**](docs/VchaClusterModeApi.md#get) | **GET** /vcenter/vcha/cluster/mode | Retrieves the current mode of a VCHA cluster.
`VSphereAutomation::VCenter::VchaClusterModeApi` | [**settask**](docs/VchaClusterModeApi.md#settask) | **PUT** /vcenter/vcha/cluster/mode | Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
`VSphereAutomation::VCenter::VchaClusterPassiveApi` | [**check**](docs/VchaClusterPassiveApi.md#check) | **POST** /vcenter/vcha/cluster/passive?action&#x3D;check | Validates the specified passive node's placement configuration.
`VSphereAutomation::VCenter::VchaClusterPassiveApi` | [**redeploytask**](docs/VchaClusterPassiveApi.md#redeploytask) | **POST** /vcenter/vcha/cluster/passive?action&#x3D;redeploy | Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
`VSphereAutomation::VCenter::VchaClusterWitnessApi` | [**check**](docs/VchaClusterWitnessApi.md#check) | **POST** /vcenter/vcha/cluster/witness?action&#x3D;check | Validates the specified witness node's placement configuration.
`VSphereAutomation::VCenter::VchaClusterWitnessApi` | [**redeploytask**](docs/VchaClusterWitnessApi.md#redeploytask) | **POST** /vcenter/vcha/cluster/witness?action&#x3D;redeploy | Creates the witness node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
`VSphereAutomation::VCenter::VchaOperationsApi` | [**get**](docs/VchaOperationsApi.md#get) | **GET** /vcenter/vcha/operations | Retrieves the current active and disabled operations of a VCHA cluster.
`VSphereAutomation::VCenter::VchaVcCredentialsApi` | [**validate**](docs/VchaVcCredentialsApi.md#validate) | **POST** /vcenter/vcha/vc-credentials?action&#x3D;validate | Validates the credentials of the management vCenter server of the active node of a VCHA cluster.
`VSphereAutomation::VCenter::VmGuestIdentityApi` | [**get**](docs/VmGuestIdentityApi.md#get) | **GET** /vcenter/vm/{vm}/guest/identity | Return information about the guest.
`VSphereAutomation::VCenter::VmGuestLocalFilesystemApi` | [**get**](docs/VmGuestLocalFilesystemApi.md#get) | **GET** /vcenter/vm/{vm}/guest/local-filesystem | Returns details of the local file systems in the guest operating system.
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**get**](docs/VmGuestPowerApi.md#get) | **GET** /vcenter/vm/{vm}/guest/power | Returns information about the guest operating system power state.
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**reboot**](docs/VmGuestPowerApi.md#reboot) | **POST** /vcenter/vm/{vm}/guest/power?action&#x3D;reboot | Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**shutdown**](docs/VmGuestPowerApi.md#shutdown) | **POST** /vcenter/vm/{vm}/guest/power?action&#x3D;shutdown | Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
`VSphereAutomation::VCenter::VmGuestPowerApi` | [**standby**](docs/VmGuestPowerApi.md#standby) | **POST** /vcenter/vm/{vm}/guest/power?action&#x3D;standby | Issues a request to the guest operating system asking it to perform a suspend operation.
`VSphereAutomation::VCenter::VmHardwareApi` | [**get**](docs/VmHardwareApi.md#get) | **GET** /vcenter/vm/{vm}/hardware | Returns the virtual hardware settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareApi` | [**update**](docs/VmHardwareApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware | Updates the virtual hardware settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareApi` | [**upgrade**](docs/VmHardwareApi.md#upgrade) | **POST** /vcenter/vm/{vm}/hardware/action/upgrade | Upgrades the virtual machine to a newer virtual hardware version.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**create**](docs/VmHardwareAdapterSataApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/adapter/sata | Adds a virtual SATA adapter to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**delete**](docs/VmHardwareAdapterSataApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/adapter/sata/{adapter} | Removes a virtual SATA adapter from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**get**](docs/VmHardwareAdapterSataApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/adapter/sata/{adapter} | Returns information about a virtual SATA adapter.
`VSphereAutomation::VCenter::VmHardwareAdapterSataApi` | [**list**](docs/VmHardwareAdapterSataApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/adapter/sata | Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**create**](docs/VmHardwareAdapterScsiApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/adapter/scsi | Adds a virtual SCSI adapter to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**delete**](docs/VmHardwareAdapterScsiApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Removes a virtual SCSI adapter from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**get**](docs/VmHardwareAdapterScsiApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Returns information about a virtual SCSI adapter.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**list**](docs/VmHardwareAdapterScsiApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/adapter/scsi | Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareAdapterScsiApi` | [**update**](docs/VmHardwareAdapterScsiApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Updates the configuration of a virtual SCSI adapter.
`VSphereAutomation::VCenter::VmHardwareBootApi` | [**get**](docs/VmHardwareBootApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/boot | Returns the boot-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareBootApi` | [**update**](docs/VmHardwareBootApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/boot | Updates the boot-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareBootDeviceApi` | [**get**](docs/VmHardwareBootDeviceApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/boot/device | Returns an ordered list of boot devices for the virtual machine. If the list is empty, the virtual machine uses a default boot sequence.
`VSphereAutomation::VCenter::VmHardwareBootDeviceApi` | [**set**](docs/VmHardwareBootDeviceApi.md#set) | **PUT** /vcenter/vm/{vm}/hardware/boot/device | Sets the virtual devices that will be used to boot the virtual machine. The virtual machine will check the devices in order, attempting to boot from each, until the virtual machine boots successfully. If the list is empty, the virtual machine will use a default boot sequence. There should be no more than one instance of Device.Entry for a given device type except ETHERNET in the list.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**connect**](docs/VmHardwareCdromApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/cdrom/{cdrom}/connect | Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**create**](docs/VmHardwareCdromApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/cdrom | Adds a virtual CD-ROM device to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**delete**](docs/VmHardwareCdromApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Removes a virtual CD-ROM device from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**disconnect**](docs/VmHardwareCdromApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/cdrom/{cdrom}/disconnect | Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**get**](docs/VmHardwareCdromApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Returns information about a virtual CD-ROM device.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**list**](docs/VmHardwareCdromApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/cdrom | Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareCdromApi` | [**update**](docs/VmHardwareCdromApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Updates the configuration of a virtual CD-ROM device.
`VSphereAutomation::VCenter::VmHardwareCpuApi` | [**get**](docs/VmHardwareCpuApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/cpu | Returns the CPU-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareCpuApi` | [**update**](docs/VmHardwareCpuApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/cpu | Updates the CPU-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**create**](docs/VmHardwareDiskApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/disk | Adds a virtual disk to the virtual machine. While adding the virtual disk, a new VMDK file may be created or an existing VMDK file may be used to back the virtual disk.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**delete**](docs/VmHardwareDiskApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/disk/{disk} | Removes a virtual disk from the virtual machine. This operation does not destroy the VMDK file that backs the virtual disk. It only detaches the VMDK file from the virtual machine. Once detached, the VMDK file will not be destroyed when the virtual machine to which it was associated is deleted.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**get**](docs/VmHardwareDiskApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/disk/{disk} | Returns information about a virtual disk.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**list**](docs/VmHardwareDiskApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/disk | Returns commonly used information about the virtual disks belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareDiskApi` | [**update**](docs/VmHardwareDiskApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/disk/{disk} | Updates the configuration of a virtual disk. An update operation can be used to detach the existing VMDK file and attach another VMDK file to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**connect**](docs/VmHardwareEthernetApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/ethernet/{nic}/connect | Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**create**](docs/VmHardwareEthernetApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/ethernet | Adds a virtual Ethernet adapter to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**delete**](docs/VmHardwareEthernetApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/ethernet/{nic} | Removes a virtual Ethernet adapter from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**disconnect**](docs/VmHardwareEthernetApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/ethernet/{nic}/disconnect | Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**get**](docs/VmHardwareEthernetApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/ethernet/{nic} | Returns information about a virtual Ethernet adapter.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**list**](docs/VmHardwareEthernetApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/ethernet | Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareEthernetApi` | [**update**](docs/VmHardwareEthernetApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/ethernet/{nic} | Updates the configuration of a virtual Ethernet adapter.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**connect**](docs/VmHardwareFloppyApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/floppy/{floppy}/connect | Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**create**](docs/VmHardwareFloppyApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/floppy | Adds a virtual floppy drive to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**delete**](docs/VmHardwareFloppyApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/floppy/{floppy} | Removes a virtual floppy drive from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**disconnect**](docs/VmHardwareFloppyApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/floppy/{floppy}/disconnect | Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**get**](docs/VmHardwareFloppyApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/floppy/{floppy} | Returns information about a virtual floppy drive.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**list**](docs/VmHardwareFloppyApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/floppy | Returns commonly used information about the virtual floppy drives belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareFloppyApi` | [**update**](docs/VmHardwareFloppyApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/floppy/{floppy} | Updates the configuration of a virtual floppy drive.
`VSphereAutomation::VCenter::VmHardwareMemoryApi` | [**get**](docs/VmHardwareMemoryApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/memory | Returns the memory-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareMemoryApi` | [**update**](docs/VmHardwareMemoryApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/memory | Updates the memory-related settings of a virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**connect**](docs/VmHardwareParallelApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/parallel/{port}/connect | Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**create**](docs/VmHardwareParallelApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/parallel | Adds a virtual parallel port to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**delete**](docs/VmHardwareParallelApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/parallel/{port} | Removes a virtual parallel port from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**disconnect**](docs/VmHardwareParallelApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/parallel/{port}/disconnect | Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**get**](docs/VmHardwareParallelApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/parallel/{port} | Returns information about a virtual parallel port.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**list**](docs/VmHardwareParallelApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/parallel | Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareParallelApi` | [**update**](docs/VmHardwareParallelApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/parallel/{port} | Updates the configuration of a virtual parallel port.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**connect**](docs/VmHardwareSerialApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/serial/{port}/connect | Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**create**](docs/VmHardwareSerialApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/serial | Adds a virtual serial port to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**delete**](docs/VmHardwareSerialApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/serial/{port} | Removes a virtual serial port from the virtual machine.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**disconnect**](docs/VmHardwareSerialApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/serial/{port}/disconnect | Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**get**](docs/VmHardwareSerialApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/serial/{port} | Returns information about a virtual serial port.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**list**](docs/VmHardwareSerialApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/serial | Returns commonly used information about the virtual serial ports belonging to the virtual machine.
`VSphereAutomation::VCenter::VmHardwareSerialApi` | [**update**](docs/VmHardwareSerialApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/serial/{port} | Updates the configuration of a virtual serial port.
`VSphereAutomation::VCenter::VmPowerApi` | [**get**](docs/VmPowerApi.md#get) | **GET** /vcenter/vm/{vm}/power | Returns the power state information of a virtual machine.
`VSphereAutomation::VCenter::VmPowerApi` | [**reset**](docs/VmPowerApi.md#reset) | **POST** /vcenter/vm/{vm}/power/reset | Resets a powered-on virtual machine.
`VSphereAutomation::VCenter::VmPowerApi` | [**start**](docs/VmPowerApi.md#start) | **POST** /vcenter/vm/{vm}/power/start | Powers on a powered-off or suspended virtual machine.
`VSphereAutomation::VCenter::VmPowerApi` | [**stop**](docs/VmPowerApi.md#stop) | **POST** /vcenter/vm/{vm}/power/stop | Powers off a powered-on or suspended virtual machine.
`VSphereAutomation::VCenter::VmPowerApi` | [**suspend**](docs/VmPowerApi.md#suspend) | **POST** /vcenter/vm/{vm}/power/suspend | Suspends a powered-on virtual machine.
`VSphereAutomation::VCenter::VmStoragePolicyApi` | [**get**](docs/VmStoragePolicyApi.md#get) | **GET** /vcenter/vm/{vm}/storage/policy | Returns Information about Storage Policy associated with a virtual machine's home directory and/or its virtual hard disks.
`VSphereAutomation::VCenter::VmStoragePolicyApi` | [**update**](docs/VmStoragePolicyApi.md#update) | **PATCH** /vcenter/vm/{vm}/storage/policy | Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.
`VSphereAutomation::VCenter::VmStoragePolicyComplianceApi` | [**check**](docs/VmStoragePolicyComplianceApi.md#check) | **POST** /vcenter/vm/{vm}/storage/policy/compliance?action&#x3D;check | Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
`VSphereAutomation::VCenter::VmStoragePolicyComplianceApi` | [**get**](docs/VmStoragePolicyComplianceApi.md#get) | **GET** /vcenter/vm/{vm}/storage/policy/compliance | Returns the cached storage policy compliance information of a virtual machine.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsApi` | [**create**](docs/VmTemplateLibraryItemsApi.md#create) | **POST** /vcenter/vm-template/library-items | Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsApi` | [**deploy**](docs/VmTemplateLibraryItemsApi.md#deploy) | **POST** /vcenter/vm-template/library-items/{template_library_item}?action&#x3D;deploy | Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
`VSphereAutomation::VCenter::VmTemplateLibraryItemsApi` | [**get**](docs/VmTemplateLibraryItemsApi.md#get) | **GET** /vcenter/vm-template/library-items/{template_library_item} | Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}


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
 - [VSphereAutomation::VCenter::VapiStdErrorsInternalServerError](docs/VapiStdErrorsInternalServerError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInternalServerErrorError](docs/VapiStdErrorsInternalServerErrorError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidArgumentError](docs/VapiStdErrorsInvalidArgumentError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementConfiguration](docs/VapiStdErrorsInvalidElementConfiguration.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementConfigurationError](docs/VapiStdErrorsInvalidElementConfigurationError.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementType](docs/VapiStdErrorsInvalidElementType.md)
 - [VSphereAutomation::VCenter::VapiStdErrorsInvalidElementTypeError](docs/VapiStdErrorsInvalidElementTypeError.md)
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
 - [VSphereAutomation::VCenter::VcenterClusterFilterSpec](docs/VcenterClusterFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterClusterInfo](docs/VcenterClusterInfo.md)
 - [VSphereAutomation::VCenter::VcenterClusterListResult](docs/VcenterClusterListResult.md)
 - [VSphereAutomation::VCenter::VcenterClusterResult](docs/VcenterClusterResult.md)
 - [VSphereAutomation::VCenter::VcenterClusterSummary](docs/VcenterClusterSummary.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterCreate](docs/VcenterDatacenterCreate.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterCreateResult](docs/VcenterDatacenterCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterCreateSpec](docs/VcenterDatacenterCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterFilterSpec](docs/VcenterDatacenterFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterInfo](docs/VcenterDatacenterInfo.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterListResult](docs/VcenterDatacenterListResult.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterResult](docs/VcenterDatacenterResult.md)
 - [VSphereAutomation::VCenter::VcenterDatacenterSummary](docs/VcenterDatacenterSummary.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreDefaultPolicyResult](docs/VcenterDatastoreDefaultPolicyResult.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreFilterSpec](docs/VcenterDatastoreFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreInfo](docs/VcenterDatastoreInfo.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreListResult](docs/VcenterDatastoreListResult.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreResult](docs/VcenterDatastoreResult.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreSummary](docs/VcenterDatastoreSummary.md)
 - [VSphereAutomation::VCenter::VcenterDatastoreType](docs/VcenterDatastoreType.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentApplianceState](docs/VcenterDeploymentApplianceState.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentApplianceType](docs/VcenterDeploymentApplianceType.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentCheckInfo](docs/VcenterDeploymentCheckInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentCheckStatus](docs/VcenterDeploymentCheckStatus.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentHistoryMigrationOption](docs/VcenterDeploymentHistoryMigrationOption.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentHistoryMigrationSpec](docs/VcenterDeploymentHistoryMigrationSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryCreateSpec](docs/VcenterDeploymentImportHistoryCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryInfo](docs/VcenterDeploymentImportHistoryInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryResult](docs/VcenterDeploymentImportHistoryResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentImportHistoryStart](docs/VcenterDeploymentImportHistoryStart.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInfo](docs/VcenterDeploymentInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInfoSubtasks](docs/VcenterDeploymentInfoSubtasks.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallCheck](docs/VcenterDeploymentInstallCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallCheckResult](docs/VcenterDeploymentInstallCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallInitialConfigRemotePscThumbprintRemoteSpec](docs/VcenterDeploymentInstallInitialConfigRemotePscThumbprintRemoteSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult](docs/VcenterDeploymentInstallInitialConfigRemotePscThumbprintResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallInstallSpec](docs/VcenterDeploymentInstallInstallSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscReplicatedCheck](docs/VcenterDeploymentInstallPscReplicatedCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscReplicatedCheckResult](docs/VcenterDeploymentInstallPscReplicatedCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscSpec](docs/VcenterDeploymentInstallPscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscStandaloneCheck](docs/VcenterDeploymentInstallPscStandaloneCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallPscStandaloneCheckResult](docs/VcenterDeploymentInstallPscStandaloneCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallRemotePscCheck](docs/VcenterDeploymentInstallRemotePscCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallRemotePscCheckResult](docs/VcenterDeploymentInstallRemotePscCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallResult](docs/VcenterDeploymentInstallResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallStart](docs/VcenterDeploymentInstallStart.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentInstallVcsaEmbeddedSpec](docs/VcenterDeploymentInstallVcsaEmbeddedSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentLocationSpec](docs/VcenterDeploymentLocationSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentNotification](docs/VcenterDeploymentNotification.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentNotifications](docs/VcenterDeploymentNotifications.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionAnswer](docs/VcenterDeploymentQuestionAnswer.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionAnswerSpec](docs/VcenterDeploymentQuestionAnswerSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionInfo](docs/VcenterDeploymentQuestionInfo.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionQuestion](docs/VcenterDeploymentQuestionQuestion.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionQuestionType](docs/VcenterDeploymentQuestionQuestionType.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentQuestionResult](docs/VcenterDeploymentQuestionResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentRemotePscSpec](docs/VcenterDeploymentRemotePscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentReplicatedPscSpec](docs/VcenterDeploymentReplicatedPscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentReplicatedSpec](docs/VcenterDeploymentReplicatedSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentResult](docs/VcenterDeploymentResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentStandalonePscSpec](docs/VcenterDeploymentStandalonePscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentStandaloneSpec](docs/VcenterDeploymentStandaloneSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentTask](docs/VcenterDeploymentTask.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeCheck](docs/VcenterDeploymentUpgradeCheck.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeCheckResult](docs/VcenterDeploymentUpgradeCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradePscSpec](docs/VcenterDeploymentUpgradePscSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeResult](docs/VcenterDeploymentUpgradeResult.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeSourceApplianceSpec](docs/VcenterDeploymentUpgradeSourceApplianceSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeStart](docs/VcenterDeploymentUpgradeStart.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeUpgradeSpec](docs/VcenterDeploymentUpgradeUpgradeSpec.md)
 - [VSphereAutomation::VCenter::VcenterDeploymentUpgradeVcsaEmbeddedSpec](docs/VcenterDeploymentUpgradeVcsaEmbeddedSpec.md)
 - [VSphereAutomation::VCenter::VcenterFolderFilterSpec](docs/VcenterFolderFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterFolderListResult](docs/VcenterFolderListResult.md)
 - [VSphereAutomation::VCenter::VcenterFolderSummary](docs/VcenterFolderSummary.md)
 - [VSphereAutomation::VCenter::VcenterFolderType](docs/VcenterFolderType.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsFilterSpec](docs/VcenterGuestCustomizationSpecsFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsListResult](docs/VcenterGuestCustomizationSpecsListResult.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsOsType](docs/VcenterGuestCustomizationSpecsOsType.md)
 - [VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsSummary](docs/VcenterGuestCustomizationSpecsSummary.md)
 - [VSphereAutomation::VCenter::VcenterHostConnectionState](docs/VcenterHostConnectionState.md)
 - [VSphereAutomation::VCenter::VcenterHostCreate](docs/VcenterHostCreate.md)
 - [VSphereAutomation::VCenter::VcenterHostCreateResult](docs/VcenterHostCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterHostCreateSpec](docs/VcenterHostCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterHostCreateSpecThumbprintVerification](docs/VcenterHostCreateSpecThumbprintVerification.md)
 - [VSphereAutomation::VCenter::VcenterHostFilterSpec](docs/VcenterHostFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterHostListResult](docs/VcenterHostListResult.md)
 - [VSphereAutomation::VCenter::VcenterHostPowerState](docs/VcenterHostPowerState.md)
 - [VSphereAutomation::VCenter::VcenterHostSummary](docs/VcenterHostSummary.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreFind](docs/VcenterInventoryDatastoreFind.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreFindResult](docs/VcenterInventoryDatastoreFindResult.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreFindResultValue](docs/VcenterInventoryDatastoreFindResultValue.md)
 - [VSphereAutomation::VCenter::VcenterInventoryDatastoreInfo](docs/VcenterInventoryDatastoreInfo.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkFind](docs/VcenterInventoryNetworkFind.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkFindResult](docs/VcenterInventoryNetworkFindResult.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkFindResultValue](docs/VcenterInventoryNetworkFindResultValue.md)
 - [VSphereAutomation::VCenter::VcenterInventoryNetworkInfo](docs/VcenterInventoryNetworkInfo.md)
 - [VSphereAutomation::VCenter::VcenterIsoImageMount](docs/VcenterIsoImageMount.md)
 - [VSphereAutomation::VCenter::VcenterIsoImageMountResult](docs/VcenterIsoImageMountResult.md)
 - [VSphereAutomation::VCenter::VcenterIsoImageUnmount](docs/VcenterIsoImageUnmount.md)
 - [VSphereAutomation::VCenter::VcenterNetworkFilterSpec](docs/VcenterNetworkFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterNetworkListResult](docs/VcenterNetworkListResult.md)
 - [VSphereAutomation::VCenter::VcenterNetworkSummary](docs/VcenterNetworkSummary.md)
 - [VSphereAutomation::VCenter::VcenterNetworkType](docs/VcenterNetworkType.md)
 - [VSphereAutomation::VCenter::VcenterOvfCapabilityCapabilityInfo](docs/VcenterOvfCapabilityCapabilityInfo.md)
 - [VSphereAutomation::VCenter::VcenterOvfCapabilityResult](docs/VcenterOvfCapabilityResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfDiskProvisioningType](docs/VcenterOvfDiskProvisioningType.md)
 - [VSphereAutomation::VCenter::VcenterOvfExportFlagInfo](docs/VcenterOvfExportFlagInfo.md)
 - [VSphereAutomation::VCenter::VcenterOvfExportFlagListResult](docs/VcenterOvfExportFlagListResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfImportFlagInfo](docs/VcenterOvfImportFlagInfo.md)
 - [VSphereAutomation::VCenter::VcenterOvfImportFlagListResult](docs/VcenterOvfImportFlagListResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreate](docs/VcenterOvfLibraryItemCreate.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreateResult](docs/VcenterOvfLibraryItemCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreateSpec](docs/VcenterOvfLibraryItemCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemCreateTarget](docs/VcenterOvfLibraryItemCreateTarget.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeploy](docs/VcenterOvfLibraryItemDeploy.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeployResult](docs/VcenterOvfLibraryItemDeployResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeployableIdentity](docs/VcenterOvfLibraryItemDeployableIdentity.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeploymentResult](docs/VcenterOvfLibraryItemDeploymentResult.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemDeploymentTarget](docs/VcenterOvfLibraryItemDeploymentTarget.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemFilter](docs/VcenterOvfLibraryItemFilter.md)
 - [VSphereAutomation::VCenter::VcenterOvfLibraryItemFilterResult](docs/VcenterOvfLibraryItemFilterResult.md)
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
 - [VSphereAutomation::VCenter::VcenterResourcePoolFilterSpec](docs/VcenterResourcePoolFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolInfo](docs/VcenterResourcePoolInfo.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolListResult](docs/VcenterResourcePoolListResult.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolResult](docs/VcenterResourcePoolResult.md)
 - [VSphereAutomation::VCenter::VcenterResourcePoolSummary](docs/VcenterResourcePoolSummary.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceHealth](docs/VcenterServicesServiceHealth.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceInfo](docs/VcenterServicesServiceInfo.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceListDetailsResult](docs/VcenterServicesServiceListDetailsResult.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceListDetailsResultValue](docs/VcenterServicesServiceListDetailsResultValue.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceResult](docs/VcenterServicesServiceResult.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceStartupType](docs/VcenterServicesServiceStartupType.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceState](docs/VcenterServicesServiceState.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceUpdate](docs/VcenterServicesServiceUpdate.md)
 - [VSphereAutomation::VCenter::VcenterServicesServiceUpdateSpec](docs/VcenterServicesServiceUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCheckCompatibility](docs/VcenterStoragePoliciesCheckCompatibility.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCheckCompatibilityResult](docs/VcenterStoragePoliciesCheckCompatibilityResult.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCompatibilityInfo](docs/VcenterStoragePoliciesCompatibilityInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesCompatibleDatastoreInfo](docs/VcenterStoragePoliciesCompatibleDatastoreInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceFilterSpec](docs/VcenterStoragePoliciesComplianceFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceListResult](docs/VcenterStoragePoliciesComplianceListResult.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceStatus](docs/VcenterStoragePoliciesComplianceStatus.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceSummary](docs/VcenterStoragePoliciesComplianceSummary.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceSummaryDisks](docs/VcenterStoragePoliciesComplianceSummaryDisks.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMFilterSpec](docs/VcenterStoragePoliciesComplianceVMFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMInfo](docs/VcenterStoragePoliciesComplianceVMInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMInfoDisks](docs/VcenterStoragePoliciesComplianceVMInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMListResult](docs/VcenterStoragePoliciesComplianceVMListResult.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMListResultValue](docs/VcenterStoragePoliciesComplianceVMListResultValue.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMStatus](docs/VcenterStoragePoliciesComplianceVMStatus.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesFilterSpec](docs/VcenterStoragePoliciesFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesListResult](docs/VcenterStoragePoliciesListResult.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesSummary](docs/VcenterStoragePoliciesSummary.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesVMInfo](docs/VcenterStoragePoliciesVMInfo.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesVMListResult](docs/VcenterStoragePoliciesVMListResult.md)
 - [VSphereAutomation::VCenter::VcenterStoragePoliciesVMListResultValue](docs/VcenterStoragePoliciesVMListResultValue.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeInfo](docs/VcenterSystemConfigDeploymentTypeInfo.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeReconfigure](docs/VcenterSystemConfigDeploymentTypeReconfigure.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeReconfigureSpec](docs/VcenterSystemConfigDeploymentTypeReconfigureSpec.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypeResult](docs/VcenterSystemConfigDeploymentTypeResult.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigPscRegistrationInfo](docs/VcenterSystemConfigPscRegistrationInfo.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigPscRegistrationRepoint](docs/VcenterSystemConfigPscRegistrationRepoint.md)
 - [VSphereAutomation::VCenter::VcenterSystemConfigPscRegistrationResult](docs/VcenterSystemConfigPscRegistrationResult.md)
 - [VSphereAutomation::VCenter::VcenterVMCreate](docs/VcenterVMCreate.md)
 - [VSphereAutomation::VCenter::VcenterVMCreateResult](docs/VcenterVMCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVMCreateSpec](docs/VcenterVMCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMFilterSpec](docs/VcenterVMFilterSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMInfo](docs/VcenterVMInfo.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoCdroms](docs/VcenterVMInfoCdroms.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoDisks](docs/VcenterVMInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoFloppies](docs/VcenterVMInfoFloppies.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoNics](docs/VcenterVMInfoNics.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoParallelPorts](docs/VcenterVMInfoParallelPorts.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoSataAdapters](docs/VcenterVMInfoSataAdapters.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoScsiAdapters](docs/VcenterVMInfoScsiAdapters.md)
 - [VSphereAutomation::VCenter::VcenterVMInfoSerialPorts](docs/VcenterVMInfoSerialPorts.md)
 - [VSphereAutomation::VCenter::VcenterVMListResult](docs/VcenterVMListResult.md)
 - [VSphereAutomation::VCenter::VcenterVMPlacementSpec](docs/VcenterVMPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVMResult](docs/VcenterVMResult.md)
 - [VSphereAutomation::VCenter::VcenterVMStoragePolicySpec](docs/VcenterVMStoragePolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVMSummary](docs/VcenterVMSummary.md)
 - [VSphereAutomation::VCenter::VcenterVchaCapabilitiesInfo](docs/VcenterVchaCapabilitiesInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaCapabilitiesResult](docs/VcenterVchaCapabilitiesResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveGet](docs/VcenterVchaClusterActiveGet.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveInfo](docs/VcenterVchaClusterActiveInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveResult](docs/VcenterVchaClusterActiveResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterActiveSpec](docs/VcenterVchaClusterActiveSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterClusterMode](docs/VcenterVchaClusterClusterMode.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterClusterState](docs/VcenterVchaClusterClusterState.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterConfigState](docs/VcenterVchaClusterConfigState.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploySpec](docs/VcenterVchaClusterDeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeployTask](docs/VcenterVchaClusterDeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeployTaskResult](docs/VcenterVchaClusterDeployTaskResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploymentTypeInfo](docs/VcenterVchaClusterDeploymentTypeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploymentTypeResult](docs/VcenterVchaClusterDeploymentTypeResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterDeploymentTypeType](docs/VcenterVchaClusterDeploymentTypeType.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterErrorCondition](docs/VcenterVchaClusterErrorCondition.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterFailoverTask](docs/VcenterVchaClusterFailoverTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterFailoverTaskResult](docs/VcenterVchaClusterFailoverTaskResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterGet](docs/VcenterVchaClusterGet.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterInfo](docs/VcenterVchaClusterInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpFamily](docs/VcenterVchaClusterIpFamily.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpInfo](docs/VcenterVchaClusterIpInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpv4Info](docs/VcenterVchaClusterIpv4Info.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterIpv6Info](docs/VcenterVchaClusterIpv6Info.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeClusterMode](docs/VcenterVchaClusterModeClusterMode.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeInfo](docs/VcenterVchaClusterModeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeResult](docs/VcenterVchaClusterModeResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeSetTask](docs/VcenterVchaClusterModeSetTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterModeSetTaskResult](docs/VcenterVchaClusterModeSetTaskResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeInfo](docs/VcenterVchaClusterNodeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeRole](docs/VcenterVchaClusterNodeRole.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeRuntimeInfo](docs/VcenterVchaClusterNodeRuntimeInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeState](docs/VcenterVchaClusterNodeState.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterNodeVmInfo](docs/VcenterVchaClusterNodeVmInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveCheck](docs/VcenterVchaClusterPassiveCheck.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveCheckResult](docs/VcenterVchaClusterPassiveCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveCheckSpec](docs/VcenterVchaClusterPassiveCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveRedeploySpec](docs/VcenterVchaClusterPassiveRedeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveRedeployTask](docs/VcenterVchaClusterPassiveRedeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveRedeployTaskResult](docs/VcenterVchaClusterPassiveRedeployTaskResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterPassiveSpec](docs/VcenterVchaClusterPassiveSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterResult](docs/VcenterVchaClusterResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterType](docs/VcenterVchaClusterType.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterUndeploySpec](docs/VcenterVchaClusterUndeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterUndeployTask](docs/VcenterVchaClusterUndeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterUndeployTaskResult](docs/VcenterVchaClusterUndeployTaskResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterVmInfo](docs/VcenterVchaClusterVmInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessCheck](docs/VcenterVchaClusterWitnessCheck.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessCheckResult](docs/VcenterVchaClusterWitnessCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessCheckSpec](docs/VcenterVchaClusterWitnessCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessInfo](docs/VcenterVchaClusterWitnessInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessRedeploySpec](docs/VcenterVchaClusterWitnessRedeploySpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessRedeployTask](docs/VcenterVchaClusterWitnessRedeployTask.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessRedeployTaskResult](docs/VcenterVchaClusterWitnessRedeployTaskResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaClusterWitnessSpec](docs/VcenterVchaClusterWitnessSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaConnectionSpec](docs/VcenterVchaConnectionSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaCredentialsSpec](docs/VcenterVchaCredentialsSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaDiskInfo](docs/VcenterVchaDiskInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaDiskSpec](docs/VcenterVchaDiskSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpFamily](docs/VcenterVchaIpFamily.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpSpec](docs/VcenterVchaIpSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpv4Spec](docs/VcenterVchaIpv4Spec.md)
 - [VSphereAutomation::VCenter::VcenterVchaIpv6Spec](docs/VcenterVchaIpv6Spec.md)
 - [VSphereAutomation::VCenter::VcenterVchaNetworkType](docs/VcenterVchaNetworkType.md)
 - [VSphereAutomation::VCenter::VcenterVchaOperationsInfo](docs/VcenterVchaOperationsInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaOperationsResult](docs/VcenterVchaOperationsResult.md)
 - [VSphereAutomation::VCenter::VcenterVchaPlacementInfo](docs/VcenterVchaPlacementInfo.md)
 - [VSphereAutomation::VCenter::VcenterVchaPlacementSpec](docs/VcenterVchaPlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVchaVcCredentialsValidate](docs/VcenterVchaVcCredentialsValidate.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestIdentityInfo](docs/VcenterVmGuestIdentityInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestIdentityResult](docs/VcenterVmGuestIdentityResult.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemInfo](docs/VcenterVmGuestLocalFilesystemInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemResult](docs/VcenterVmGuestLocalFilesystemResult.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemResultValue](docs/VcenterVmGuestLocalFilesystemResultValue.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestOS](docs/VcenterVmGuestOS.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestOSFamily](docs/VcenterVmGuestOSFamily.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestPowerInfo](docs/VcenterVmGuestPowerInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestPowerResult](docs/VcenterVmGuestPowerResult.md)
 - [VSphereAutomation::VCenter::VcenterVmGuestPowerState](docs/VcenterVmGuestPowerState.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataCreate](docs/VcenterVmHardwareAdapterSataCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataCreateResult](docs/VcenterVmHardwareAdapterSataCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataCreateSpec](docs/VcenterVmHardwareAdapterSataCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataInfo](docs/VcenterVmHardwareAdapterSataInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataListResult](docs/VcenterVmHardwareAdapterSataListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataResult](docs/VcenterVmHardwareAdapterSataResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataSummary](docs/VcenterVmHardwareAdapterSataSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataType](docs/VcenterVmHardwareAdapterSataType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiCreate](docs/VcenterVmHardwareAdapterScsiCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiCreateResult](docs/VcenterVmHardwareAdapterScsiCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiCreateSpec](docs/VcenterVmHardwareAdapterScsiCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiInfo](docs/VcenterVmHardwareAdapterScsiInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiListResult](docs/VcenterVmHardwareAdapterScsiListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiResult](docs/VcenterVmHardwareAdapterScsiResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiSharing](docs/VcenterVmHardwareAdapterScsiSharing.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiSummary](docs/VcenterVmHardwareAdapterScsiSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiType](docs/VcenterVmHardwareAdapterScsiType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiUpdate](docs/VcenterVmHardwareAdapterScsiUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiUpdateSpec](docs/VcenterVmHardwareAdapterScsiUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootCreateSpec](docs/VcenterVmHardwareBootCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceEntry](docs/VcenterVmHardwareBootDeviceEntry.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceEntryCreateSpec](docs/VcenterVmHardwareBootDeviceEntryCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceResult](docs/VcenterVmHardwareBootDeviceResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceSet](docs/VcenterVmHardwareBootDeviceSet.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceType](docs/VcenterVmHardwareBootDeviceType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootInfo](docs/VcenterVmHardwareBootInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootNetworkProtocol](docs/VcenterVmHardwareBootNetworkProtocol.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootResult](docs/VcenterVmHardwareBootResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootType](docs/VcenterVmHardwareBootType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootUpdate](docs/VcenterVmHardwareBootUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareBootUpdateSpec](docs/VcenterVmHardwareBootUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingInfo](docs/VcenterVmHardwareCdromBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingSpec](docs/VcenterVmHardwareCdromBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingType](docs/VcenterVmHardwareCdromBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromCreate](docs/VcenterVmHardwareCdromCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromCreateResult](docs/VcenterVmHardwareCdromCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromCreateSpec](docs/VcenterVmHardwareCdromCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromDeviceAccessType](docs/VcenterVmHardwareCdromDeviceAccessType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromHostBusAdapterType](docs/VcenterVmHardwareCdromHostBusAdapterType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromInfo](docs/VcenterVmHardwareCdromInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromListResult](docs/VcenterVmHardwareCdromListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromResult](docs/VcenterVmHardwareCdromResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromSummary](docs/VcenterVmHardwareCdromSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromUpdate](docs/VcenterVmHardwareCdromUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCdromUpdateSpec](docs/VcenterVmHardwareCdromUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareConnectionState](docs/VcenterVmHardwareConnectionState.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuInfo](docs/VcenterVmHardwareCpuInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuResult](docs/VcenterVmHardwareCpuResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuUpdate](docs/VcenterVmHardwareCpuUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareCpuUpdateSpec](docs/VcenterVmHardwareCpuUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskBackingInfo](docs/VcenterVmHardwareDiskBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskBackingSpec](docs/VcenterVmHardwareDiskBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskBackingType](docs/VcenterVmHardwareDiskBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskCreate](docs/VcenterVmHardwareDiskCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskCreateResult](docs/VcenterVmHardwareDiskCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskCreateSpec](docs/VcenterVmHardwareDiskCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskHostBusAdapterType](docs/VcenterVmHardwareDiskHostBusAdapterType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskInfo](docs/VcenterVmHardwareDiskInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskListResult](docs/VcenterVmHardwareDiskListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskResult](docs/VcenterVmHardwareDiskResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskStoragePolicySpec](docs/VcenterVmHardwareDiskStoragePolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskSummary](docs/VcenterVmHardwareDiskSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskUpdate](docs/VcenterVmHardwareDiskUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskUpdateSpec](docs/VcenterVmHardwareDiskUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareDiskVmdkCreateSpec](docs/VcenterVmHardwareDiskVmdkCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingInfo](docs/VcenterVmHardwareEthernetBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingSpec](docs/VcenterVmHardwareEthernetBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingType](docs/VcenterVmHardwareEthernetBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetCreate](docs/VcenterVmHardwareEthernetCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetCreateResult](docs/VcenterVmHardwareEthernetCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetCreateSpec](docs/VcenterVmHardwareEthernetCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetEmulationType](docs/VcenterVmHardwareEthernetEmulationType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetInfo](docs/VcenterVmHardwareEthernetInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetListResult](docs/VcenterVmHardwareEthernetListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetMacAddressType](docs/VcenterVmHardwareEthernetMacAddressType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetResult](docs/VcenterVmHardwareEthernetResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetSummary](docs/VcenterVmHardwareEthernetSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetUpdate](docs/VcenterVmHardwareEthernetUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareEthernetUpdateSpec](docs/VcenterVmHardwareEthernetUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingInfo](docs/VcenterVmHardwareFloppyBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingSpec](docs/VcenterVmHardwareFloppyBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingType](docs/VcenterVmHardwareFloppyBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyCreate](docs/VcenterVmHardwareFloppyCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyCreateResult](docs/VcenterVmHardwareFloppyCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyCreateSpec](docs/VcenterVmHardwareFloppyCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyInfo](docs/VcenterVmHardwareFloppyInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyListResult](docs/VcenterVmHardwareFloppyListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyResult](docs/VcenterVmHardwareFloppyResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppySummary](docs/VcenterVmHardwareFloppySummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyUpdate](docs/VcenterVmHardwareFloppyUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareFloppyUpdateSpec](docs/VcenterVmHardwareFloppyUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareIdeAddressInfo](docs/VcenterVmHardwareIdeAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareIdeAddressSpec](docs/VcenterVmHardwareIdeAddressSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareInfo](docs/VcenterVmHardwareInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryInfo](docs/VcenterVmHardwareMemoryInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryResult](docs/VcenterVmHardwareMemoryResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryUpdate](docs/VcenterVmHardwareMemoryUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareMemoryUpdateSpec](docs/VcenterVmHardwareMemoryUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingInfo](docs/VcenterVmHardwareParallelBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingSpec](docs/VcenterVmHardwareParallelBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingType](docs/VcenterVmHardwareParallelBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelCreate](docs/VcenterVmHardwareParallelCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelCreateResult](docs/VcenterVmHardwareParallelCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelCreateSpec](docs/VcenterVmHardwareParallelCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelInfo](docs/VcenterVmHardwareParallelInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelListResult](docs/VcenterVmHardwareParallelListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelResult](docs/VcenterVmHardwareParallelResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelSummary](docs/VcenterVmHardwareParallelSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelUpdate](docs/VcenterVmHardwareParallelUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareParallelUpdateSpec](docs/VcenterVmHardwareParallelUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareResult](docs/VcenterVmHardwareResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSataAddressInfo](docs/VcenterVmHardwareSataAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSataAddressSpec](docs/VcenterVmHardwareSataAddressSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareScsiAddressInfo](docs/VcenterVmHardwareScsiAddressInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareScsiAddressSpec](docs/VcenterVmHardwareScsiAddressSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialBackingInfo](docs/VcenterVmHardwareSerialBackingInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialBackingSpec](docs/VcenterVmHardwareSerialBackingSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialBackingType](docs/VcenterVmHardwareSerialBackingType.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialCreate](docs/VcenterVmHardwareSerialCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialCreateResult](docs/VcenterVmHardwareSerialCreateResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialCreateSpec](docs/VcenterVmHardwareSerialCreateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialInfo](docs/VcenterVmHardwareSerialInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialListResult](docs/VcenterVmHardwareSerialListResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialResult](docs/VcenterVmHardwareSerialResult.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialSummary](docs/VcenterVmHardwareSerialSummary.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialUpdate](docs/VcenterVmHardwareSerialUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareSerialUpdateSpec](docs/VcenterVmHardwareSerialUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpdate](docs/VcenterVmHardwareUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpdateSpec](docs/VcenterVmHardwareUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpgrade](docs/VcenterVmHardwareUpgrade.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpgradePolicy](docs/VcenterVmHardwareUpgradePolicy.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareUpgradeStatus](docs/VcenterVmHardwareUpgradeStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmHardwareVersion](docs/VcenterVmHardwareVersion.md)
 - [VSphereAutomation::VCenter::VcenterVmPowerInfo](docs/VcenterVmPowerInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmPowerResult](docs/VcenterVmPowerResult.md)
 - [VSphereAutomation::VCenter::VcenterVmPowerState](docs/VcenterVmPowerState.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceCheck](docs/VcenterVmStoragePolicyComplianceCheck.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceCheckResult](docs/VcenterVmStoragePolicyComplianceCheckResult.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceCheckSpec](docs/VcenterVmStoragePolicyComplianceCheckSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceInfo](docs/VcenterVmStoragePolicyComplianceInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceInfoDisks](docs/VcenterVmStoragePolicyComplianceInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceResult](docs/VcenterVmStoragePolicyComplianceResult.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceStatus](docs/VcenterVmStoragePolicyComplianceStatus.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceVmComplianceInfo](docs/VcenterVmStoragePolicyComplianceVmComplianceInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyDiskPolicySpec](docs/VcenterVmStoragePolicyDiskPolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyDiskPolicySpecPolicyType](docs/VcenterVmStoragePolicyDiskPolicySpecPolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyInfo](docs/VcenterVmStoragePolicyInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyInfoDisks](docs/VcenterVmStoragePolicyInfoDisks.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyResult](docs/VcenterVmStoragePolicyResult.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdate](docs/VcenterVmStoragePolicyUpdate.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdateSpec](docs/VcenterVmStoragePolicyUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdateSpecDisks](docs/VcenterVmStoragePolicyUpdateSpecDisks.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyVmHomePolicySpec](docs/VcenterVmStoragePolicyVmHomePolicySpec.md)
 - [VSphereAutomation::VCenter::VcenterVmStoragePolicyVmHomePolicySpecPolicyType](docs/VcenterVmStoragePolicyVmHomePolicySpecPolicyType.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCpuInfo](docs/VcenterVmTemplateLibraryItemsCpuInfo.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCpuUpdateSpec](docs/VcenterVmTemplateLibraryItemsCpuUpdateSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreate](docs/VcenterVmTemplateLibraryItemsCreate.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreatePlacementSpec](docs/VcenterVmTemplateLibraryItemsCreatePlacementSpec.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateResult](docs/VcenterVmTemplateLibraryItemsCreateResult.md)
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
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeployResult](docs/VcenterVmTemplateLibraryItemsDeployResult.md)
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
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsResult](docs/VcenterVmTemplateLibraryItemsResult.md)
 - [VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsVmHomeStorageInfo](docs/VcenterVmTemplateLibraryItemsVmHomeStorageInfo.md)

