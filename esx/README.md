# vsphere-automation-esx

The Ruby gem for the vSphere ESX API

- API version: 2.0.0
- Package version: 0.5.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vsphere-automation-esx'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vsphere-automation-esx

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vsphere-automation-esx'

# Setup authorization
VSphereAutomation.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::HclCompatibilityDataApi.new

begin
  #Provides information about the compatibility data located on the vCenter Appliance.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HclCompatibilityDataApi->get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::ESX::HclCompatibilityDataApi` | [**get**](docs/HclCompatibilityDataApi.md#get) | **GET** /api/esx/hcl/compatibility-data/status | Provides information about the compatibility data located on the vCenter Appliance.
`VSphereAutomation::ESX::HclCompatibilityDataApi` | [**update_task**](docs/HclCompatibilityDataApi.md#update_task) | **POST** /api/esx/hcl/compatibility-data?action&#x3D;download&amp;vmw-task&#x3D;true | Replaces the local compatibility data with the latest version found from VMware official source.
`VSphereAutomation::ESX::HclHostsCompatibilityReleasesApi` | [**list**](docs/HclHostsCompatibilityReleasesApi.md#list) | **GET** /api/esx/hcl/hosts/{host}/compatibility-releases | Lists the locally available ESXi releases for a given host that can be used to generate a compatiblity report. Each host has its own list of supported releases depending on its current release.
`VSphereAutomation::ESX::HclHostsCompatibilityReportApi` | [**create_task**](docs/HclHostsCompatibilityReportApi.md#create_task) | **POST** /api/esx/hcl/hosts/{host}/compatibility-report?vmw-task&#x3D;true | Generates hardware compatibility report for a specified ESXi host against specific ESXi release.<p> The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::HclHostsCompatibilityReportApi` | [**get**](docs/HclHostsCompatibilityReportApi.md#get) | **GET** /api/esx/hcl/hosts/{host}/compatibility-report | Returns the last generated hardware compatibility report for the given host.
`VSphereAutomation::ESX::HclReportsApi` | [**get**](docs/HclReportsApi.md#get) | **GET** /api/esx/hcl/reports/{report} | Returns the location {@link Location} information for downloading a compatibility report.
`VSphereAutomation::ESX::HealthClustersPerspectivesPlannedMaintenanceStatusApi` | [**check**](docs/HealthClustersPerspectivesPlannedMaintenanceStatusApi.md#check) | **POST** /api/esx/health/clusters/{cluster}/perspectives/planned-maintenance/status?action&#x3D;check | Get the current health status of a cluster for planned maintenance.
`VSphereAutomation::ESX::HealthClustersPerspectivesReadyForApplyStatusApi` | [**check**](docs/HealthClustersPerspectivesReadyForApplyStatusApi.md#check) | **POST** /api/esx/health/clusters/{cluster}/perspectives/ready-for-apply/status?action&#x3D;check | Check if the cluster is ready to be applied a new desired configuration.
`VSphereAutomation::ESX::HealthHostsPerspectivesBeforeExitMaintenanceModeStatusApi` | [**check**](docs/HealthHostsPerspectivesBeforeExitMaintenanceModeStatusApi.md#check) | **POST** /api/esx/health/hosts/{host}/perspectives/before-exit-maintenance-mode/status?action&#x3D;check | Check if the given host is ready to exit maintenance mode.
`VSphereAutomation::ESX::HealthHostsPerspectivesInitializationStatusApi` | [**check**](docs/HealthHostsPerspectivesInitializationStatusApi.md#check) | **POST** /api/esx/health/hosts/{host}/perspectives/initialization/status?action&#x3D;check | Check if the given host is ready to accept workloads.
`VSphereAutomation::ESX::HealthHostsPerspectivesPlannedMaintenanceStatusApi` | [**check**](docs/HealthHostsPerspectivesPlannedMaintenanceStatusApi.md#check) | **POST** /api/esx/health/hosts/{host}/perspectives/planned-maintenance/status?action&#x3D;check | Check if the given host can safely enter maintenance mode.
`VSphereAutomation::ESX::HealthPerspectivesChecksDisabledApi` | [**get**](docs/HealthPerspectivesChecksDisabledApi.md#get) | **GET** /api/esx/health/perspectives/{perspective}/checks/disabled | Get the set of checks that are disabled for the given perspective.
`VSphereAutomation::ESX::HealthPerspectivesChecksDisabledApi` | [**set**](docs/HealthPerspectivesChecksDisabledApi.md#set) | **POST** /api/esx/health/perspectives/{perspective}/checks/disabled | Disable the checks with the given IDs for all health status queries. No validation is done on whether the given IDs are valid.
`VSphereAutomation::ESX::HealthPerspectivesCredentialsApi` | [**create**](docs/HealthPerspectivesCredentialsApi.md#create) | **POST** /api/esx/health/perspectives/credentials | Creates server credentials that will be used by the EHP service to perform operations. The credentials are bound to the lifetime of the session of the user which called this method.
`VSphereAutomation::ESX::HostsSoftwareInstalledComponentsApi` | [**list**](docs/HostsSoftwareInstalledComponentsApi.md#list) | **GET** /api/esx/hosts/{host}/software/installed-components | Returns the installed components on the host.
`VSphereAutomation::ESX::SettingsClustersDepotOverridesApi` | [**add**](docs/SettingsClustersDepotOverridesApi.md#add) | **POST** /api/esx/settings/clusters/{cluster}/depot-overrides?action&#x3D;add | Adds a new depot override to the list of currently configured depot overrides for a given cluster.
`VSphereAutomation::ESX::SettingsClustersDepotOverridesApi` | [**get**](docs/SettingsClustersDepotOverridesApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/depot-overrides | Returns the information about  currently configured depot overrides for a given cluster.
`VSphereAutomation::ESX::SettingsClustersDepotOverridesApi` | [**remove**](docs/SettingsClustersDepotOverridesApi.md#remove) | **POST** /api/esx/settings/clusters/{cluster}/depot-overrides?action&#x3D;remove | Removes a depot override from the list of currently configured depot overrides for a given cluster.
`VSphereAutomation::ESX::SettingsClustersEnablementSoftwareApi` | [**check_task**](docs/SettingsClustersEnablementSoftwareApi.md#check_task) | **POST** /api/esx/settings/clusters/{cluster}/enablement/software?action&#x3D;check&amp;vmw-task&#x3D;true | Checks the possibility to manage the cluster with a single software specification.
`VSphereAutomation::ESX::SettingsClustersEnablementSoftwareApi` | [**enable_task**](docs/SettingsClustersEnablementSoftwareApi.md#enable_task) | **PUT** /api/esx/settings/clusters/{cluster}/enablement/software?vmw-task&#x3D;true | Enables the feature which manages the cluster with a single software specification.
`VSphereAutomation::ESX::SettingsClustersEnablementSoftwareApi` | [**get**](docs/SettingsClustersEnablementSoftwareApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/enablement/software | Returns whether the given cluster is managed with a single software specification.
`VSphereAutomation::ESX::SettingsClustersPoliciesApplyApi` | [**get**](docs/SettingsClustersPoliciesApplyApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/policies/apply | Returns the configured policy that has been set for the cluster.
`VSphereAutomation::ESX::SettingsClustersPoliciesApplyApi` | [**set**](docs/SettingsClustersPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/policies/apply | This API will set the configured policy specification for the cluster.
`VSphereAutomation::ESX::SettingsClustersPoliciesApplyEffectiveApi` | [**get**](docs/SettingsClustersPoliciesApplyEffectiveApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/policies/apply/effective | Returns the effective apply policy based on system defaults and what has been configured for the cluster.
`VSphereAutomation::ESX::SettingsClustersPoliciesApplyResetInfoApi` | [**get**](docs/SettingsClustersPoliciesApplyResetInfoApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/policies/apply/reset-info | Returns the information describing the outcome when configured policies are reset.
`VSphereAutomation::ESX::SettingsClustersSoftwareApi` | [**apply_task**](docs/SettingsClustersSoftwareApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;apply&amp;vmw-task&#x3D;true | Applies the desired software document associated with the given cluster to hosts within the cluster. If {@basename ApplySpec#commit} {@term field} is {@term set}, it implies the minimum commit that the {@link esx.settings.clusters.Software#apply} {@term operation} should use, however if subsequent commits have been made to the desired state document the apply {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareApi` | [**check_task**](docs/SettingsClustersSoftwareApi.md#check_task) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;check&amp;vmw-task&#x3D;true | Runs checks on the cluster before applying the desired software document across all hosts in the cluster. Checks if all hosts in the cluster are in a good state to be updated with the desired software document. If {@basename CheckSpec#commit} {@term field} is {@term set} it implies the minimum commit that the check {@term operation} should use, however if subsequent commits have been made to the desired state document the check {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareApi` | [**export**](docs/SettingsClustersSoftwareApi.md#export) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;export | Exports the desired software specification document and/or image. This API will not export the solution section of the desired software specification.
`VSphereAutomation::ESX::SettingsClustersSoftwareApi` | [**get**](docs/SettingsClustersSoftwareApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software | Returns the complete desired software specification.
`VSphereAutomation::ESX::SettingsClustersSoftwareApi` | [**scan_task**](docs/SettingsClustersSoftwareApi.md#scan_task) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans all the hosts in the cluster against the cluster's desired state. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareAddOnApi` | [**get**](docs/SettingsClustersSoftwareAddOnApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/add-on | Returns the desired OEM add-on specification for a given cluster.
`VSphereAutomation::ESX::SettingsClustersSoftwareBaseImageApi` | [**get**](docs/SettingsClustersSoftwareBaseImageApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/base-image | Returns the desired base-image specification set for given cluster
`VSphereAutomation::ESX::SettingsClustersSoftwareCommitsApi` | [**get**](docs/SettingsClustersSoftwareCommitsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/commits/{commit} | Returns the information about a specific commit.
`VSphereAutomation::ESX::SettingsClustersSoftwareComplianceApi` | [**get**](docs/SettingsClustersSoftwareComplianceApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/compliance | Returns the compliance state for the cluster
`VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi` | [**get**](docs/SettingsClustersSoftwareComponentsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/components/{component} | Returns the component version for the given component in the desired software specification.
`VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi` | [**list**](docs/SettingsClustersSoftwareComponentsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/components | Returns a list of components in the desired software specification.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**commit_task**](docs/SettingsClustersSoftwareDraftsApi.md#commit_task) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}?action&#x3D;commit&amp;vmw-task&#x3D;true | Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**create**](docs/SettingsClustersSoftwareDraftsApi.md#create) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts | Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. If a desired document is missing, then this {@term operation} will create an empty draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**delete**](docs/SettingsClustersSoftwareDraftsApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft} | Deletes the software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**get**](docs/SettingsClustersSoftwareDraftsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft} | Returns the information about given software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**import_software_spec**](docs/SettingsClustersSoftwareDraftsApi.md#import_software_spec) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts?action&#x3D;import-software-spec | Imports the desired software specification as a new draft. If a desired document is missing, then this {@term operation} will create an empty draft except when the source type is of either {@link SourceType#LATEST_RECOMMENDATION} or {@link SourceType#CURRENT_SERIES_RECOMMENDATION}, then {@link NotFound} error is reported. In addition, the exisiting draft will be overwritten when the source type is of either {@name SourceType#LATEST_RECOMMENDATION} or {@name SourceType#CURRENT_SERIES_RECOMMENDATION}.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**list**](docs/SettingsClustersSoftwareDraftsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts | Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**scan_task**](docs/SettingsClustersSoftwareDraftsApi.md#scan_task) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans all the hosts in the cluster against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi` | [**validate_task**](docs/SettingsClustersSoftwareDraftsApi.md#validate_task) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}?action&#x3D;validate&amp;vmw-task&#x3D;true | Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi` | [**delete_and_create**](docs/SettingsClustersSoftwareDraftsInternalApi.md#delete_and_create) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts-internal?action&#x3D;delete-and-create | Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi` | [**delete_and_import**](docs/SettingsClustersSoftwareDraftsInternalApi.md#delete_and_import) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts-internal?action&#x3D;delete-and-import | Imports the desired software specification as a new draft. If there is a draft already associated with the user for this cluster, that draft will be deleted before new draft is created.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareAddOnApi` | [**delete**](docs/SettingsClustersSoftwareDraftsSoftwareAddOnApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on | Deletes the desired OEM add-on specification in the software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareAddOnApi` | [**get**](docs/SettingsClustersSoftwareDraftsSoftwareAddOnApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on | Returns the OEM add-on specification in a software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareAddOnApi` | [**set**](docs/SettingsClustersSoftwareDraftsSoftwareAddOnApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on | Sets a new desired OEM add-on specification in the software draft. It will overwrite the existing desired OEM add-on specification if one already exists.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareBaseImageApi` | [**get**](docs/SettingsClustersSoftwareDraftsSoftwareBaseImageApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/base-image | Returns the base-image specification in a software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareBaseImageApi` | [**set**](docs/SettingsClustersSoftwareDraftsSoftwareBaseImageApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/base-image | Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi` | [**delete**](docs/SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component} | Deletes the given component from the software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi` | [**get**](docs/SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component} | Returns the component version for the given component in the software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi` | [**list**](docs/SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components | Returns the components that comprise the software draft.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi` | [**set**](docs/SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component} | Set the component version for a given component in the software draft. This will overwrite any existing version for the given component.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi` | [**update**](docs/SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#update) | **PATCH** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components | Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi` | [**list**](docs/SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/effective-components | Returns the components that comprise the desired software state of the cluster.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi` | [**delete**](docs/SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/hardware-support | Deletes a given cluster's working copy document Hardware Support Package (HSP) configuration.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi` | [**get**](docs/SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/hardware-support | Returns a given cluster's working copy document Hardware Support Package (HSP) configuration.
`VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi` | [**set**](docs/SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/hardware-support | Replaces a given cluster's working copy document Hardware Support Package (HSP) configuration.
`VSphereAutomation::ESX::SettingsClustersSoftwareEffectiveComponentsApi` | [**list**](docs/SettingsClustersSoftwareEffectiveComponentsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/effective-components | Returns the effective components for the cluster.
`VSphereAutomation::ESX::SettingsClustersSoftwareHaInternalApi` | [**apply_task**](docs/SettingsClustersSoftwareHaInternalApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software/ha-internal?action&#x3D;apply&amp;vmw-task&#x3D;true | Applies the HA Component specified in the desired specification document to the hosts in the cluster.
`VSphereAutomation::ESX::SettingsClustersSoftwareHardwareSupportApi` | [**get**](docs/SettingsClustersSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/hardware-support | Returns a given cluster's Hardware Support Package (HSP) configuration.
`VSphereAutomation::ESX::SettingsClustersSoftwareRecommendationsApi` | [**generate_task**](docs/SettingsClustersSoftwareRecommendationsApi.md#generate_task) | **POST** /api/esx/settings/clusters/{cluster}/software/recommendations?action&#x3D;generate&amp;vmw-task&#x3D;true | Generates recommended software image spec(s) based on current desired software spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareRecommendationsApi` | [**get**](docs/SettingsClustersSoftwareRecommendationsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/recommendations | Returns Information about the most recent recommendation generation result.
`VSphereAutomation::ESX::SettingsClustersSoftwareReportsApplyImpactApi` | [**get**](docs/SettingsClustersSoftwareReportsApplyImpactApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/apply-impact | Returns a summary of how hosts within the cluster will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.clusters.software.Compliance#get}
`VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi` | [**check_task**](docs/SettingsClustersSoftwareReportsHardwareCompatibilityApi.md#check_task) | **POST** /api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility?action&#x3D;check&amp;vmw-task&#x3D;true | Initiates a Cluster HCL Validation check for a given cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi` | [**get**](docs/SettingsClustersSoftwareReportsHardwareCompatibilityApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility | Returns the hcl validation check summary.
`VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityDetailsApi` | [**get**](docs/SettingsClustersSoftwareReportsHardwareCompatibilityDetailsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility/details | Returns the hcl validation check detailed results.
`VSphereAutomation::ESX::SettingsClustersSoftwareReportsLastApplyResultApi` | [**get**](docs/SettingsClustersSoftwareReportsLastApplyResultApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/last-apply-result | Returns the most recent available result of applying the desired software document to all hosts within the cluster.
`VSphereAutomation::ESX::SettingsClustersSoftwareReportsLastCheckResultApi` | [**get**](docs/SettingsClustersSoftwareReportsLastCheckResultApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/last-check-result | Returns the most recent available result of checks run on the cluster before the application of the desired software document to all hosts within the cluster.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi` | [**delete_task**](docs/SettingsClustersSoftwareSolutionsApi.md#delete_task) | **DELETE** /api/esx/settings/clusters/{cluster}/software/solutions/{solution}?vmw-task&#x3D;true | Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi` | [**get**](docs/SettingsClustersSoftwareSolutionsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/solutions/{solution} | Returns components registered for the given solution in the desired software specification.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi` | [**list**](docs/SettingsClustersSoftwareSolutionsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/solutions | Returns all solutions in the desired software specification.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi` | [**set_task**](docs/SettingsClustersSoftwareSolutionsApi.md#set_task) | **PUT** /api/esx/settings/clusters/{cluster}/software/solutions/{solution}?vmw-task&#x3D;true | Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsBeingAppliedInternalApi` | [**get**](docs/SettingsClustersSoftwareSolutionsBeingAppliedInternalApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/solutions-being-applied-internal/{solution} | Returns the components registered for the given solution in the software specification that is being considered to be applied.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsNsxNsxInternalApi` | [**apply_task**](docs/SettingsClustersSoftwareSolutionsNsxNsxInternalApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software/solutions/nsx?action&#x3D;apply&amp;vmw-task&#x3D;true | Applies the NSX Component specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsSolutionsInternalApi` | [**apply_task**](docs/SettingsClustersSoftwareSolutionsSolutionsInternalApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software/solutions-internal?action&#x3D;apply&amp;vmw-task&#x3D;true | Apply the solution's components specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsSolutionsInternalApi` | [**remove_task**](docs/SettingsClustersSoftwareSolutionsSolutionsInternalApi.md#remove_task) | **POST** /api/esx/settings/clusters/{cluster}/software/solutions-internal?action&#x3D;remove&amp;vmw-task&#x3D;true | Remove solution's software components associated with the given cluster from hosts within the cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyApi` | [**get**](docs/SettingsDefaultsClustersPoliciesApplyApi.md#get) | **GET** /api/esx/settings/defaults/clusters/policies/apply | Returns the configured policy that has been set.
`VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyApi` | [**set**](docs/SettingsDefaultsClustersPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/defaults/clusters/policies/apply | This API will set the configured policy specification.
`VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyEffectiveApi` | [**get**](docs/SettingsDefaultsClustersPoliciesApplyEffectiveApi.md#get) | **GET** /api/esx/settings/defaults/clusters/policies/apply/effective | Returns the effective apply policy based on system defaults and what has been configured.
`VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyResetInfoApi` | [**get**](docs/SettingsDefaultsClustersPoliciesApplyResetInfoApi.md#get) | **GET** /api/esx/settings/defaults/clusters/policies/apply/reset-info | Returns the information describing the outcome when configured policies are reset.
`VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyApi` | [**get**](docs/SettingsDefaultsHostsPoliciesApplyApi.md#get) | **GET** /api/esx/settings/defaults/hosts/policies/apply | Returns the configured policy that has been set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyApi` | [**set**](docs/SettingsDefaultsHostsPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/defaults/hosts/policies/apply | This API will set the configured policy. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyEffectiveApi` | [**get**](docs/SettingsDefaultsHostsPoliciesApplyEffectiveApi.md#get) | **GET** /api/esx/settings/defaults/hosts/policies/apply/effective | Returns the effective policy based on system defaults and what has been configured. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyResetInfoApi` | [**get**](docs/SettingsDefaultsHostsPoliciesApplyResetInfoApi.md#get) | **GET** /api/esx/settings/defaults/hosts/policies/apply/reset-info | Returns the information describing the outcome when configured policies are reset. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsDepotContentAddOnsApi` | [**list**](docs/SettingsDepotContentAddOnsApi.md#list) | **GET** /api/esx/settings/depot-content/add-ons | Returns a list of currently available OEM add-ons in the depot.
`VSphereAutomation::ESX::SettingsDepotContentAddOnsVersionsApi` | [**get**](docs/SettingsDepotContentAddOnsVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/add-ons/{name}/versions/{version} | Returns information about a given OEM add-on version in the depot.
`VSphereAutomation::ESX::SettingsDepotContentBaseImagesApi` | [**list**](docs/SettingsDepotContentBaseImagesApi.md#list) | **GET** /api/esx/settings/depot-content/base-images | Returns a list of currently available base-images in the depot.
`VSphereAutomation::ESX::SettingsDepotContentBaseImagesVersionsApi` | [**get**](docs/SettingsDepotContentBaseImagesVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/base-images/versions/{version} | Returns information about a given base-image version in the depot.
`VSphereAutomation::ESX::SettingsDepotContentComponentsApi` | [**list**](docs/SettingsDepotContentComponentsApi.md#list) | **GET** /api/esx/settings/depot-content/components | Returns a list of currently available components in the depot.
`VSphereAutomation::ESX::SettingsDepotContentComponentsVersionsApi` | [**get**](docs/SettingsDepotContentComponentsVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/components/{name}/versions/{version} | Returns information about a given component version in the depot.
`VSphereAutomation::ESX::SettingsDepotContentHardwareSupportManifestsApi` | [**list**](docs/SettingsDepotContentHardwareSupportManifestsApi.md#list) | **GET** /api/esx/settings/depot-content/hardware-support/manifests | Returns a list of currently available Hardware Support Package (HSP) manifests in the depot.
`VSphereAutomation::ESX::SettingsDepotContentHardwareSupportManifestsVersionsApi` | [**get**](docs/SettingsDepotContentHardwareSupportManifestsVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/hardware-support/manifests/{manifest}/versions/{version} | Returns a complete description of a Hardware Support Package (HSP) manifest in the depot (including component lists)
`VSphereAutomation::ESX::SettingsDepotsApi` | [**sync_task**](docs/SettingsDepotsApi.md#sync_task) | **POST** /api/esx/settings/depots?action&#x3D;sync&amp;vmw-task&#x3D;true | Syncs the metadata from the currently configured online or umds depots. If any umds depot is set, then metadata is downloaded from that depot else metadata is downloaded from the online depots. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsDepotsOfflineApi` | [**create_task**](docs/SettingsDepotsOfflineApi.md#create_task) | **POST** /api/esx/settings/depots/offline?vmw-task&#x3D;true | Imports a new offline software depot. This will also import the metadata and payloads from this offline depot. The returned task will fail and no Offline Depot would be created if there are any issues during import. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsDepotsOfflineApi` | [**delete**](docs/SettingsDepotsOfflineApi.md#delete) | **DELETE** /api/esx/settings/depots/offline/{depot} | Removes a depot from the list of imported offline software depots.
`VSphereAutomation::ESX::SettingsDepotsOfflineApi` | [**get**](docs/SettingsDepotsOfflineApi.md#get) | **GET** /api/esx/settings/depots/offline/{depot} | Gets the information about an imported offline software depot.
`VSphereAutomation::ESX::SettingsDepotsOfflineApi` | [**list**](docs/SettingsDepotsOfflineApi.md#list) | **GET** /api/esx/settings/depots/offline | Returns currently imported offline software depots.
`VSphereAutomation::ESX::SettingsDepotsOnlineApi` | [**create**](docs/SettingsDepotsOnlineApi.md#create) | **POST** /api/esx/settings/depots/online | Adds a new online software depot to the list of currently configured online software depots.
`VSphereAutomation::ESX::SettingsDepotsOnlineApi` | [**delete**](docs/SettingsDepotsOnlineApi.md#delete) | **DELETE** /api/esx/settings/depots/online/{depot} | Removes a depot from the list of currently configured online software depots. It will not remove the downloaded metadata and payloads from that depot.
`VSphereAutomation::ESX::SettingsDepotsOnlineApi` | [**get**](docs/SettingsDepotsOnlineApi.md#get) | **GET** /api/esx/settings/depots/online/{depot} | Gets the information about a currently configured online software depot.
`VSphereAutomation::ESX::SettingsDepotsOnlineApi` | [**list**](docs/SettingsDepotsOnlineApi.md#list) | **GET** /api/esx/settings/depots/online | Returns a list of currently configured online software depots.
`VSphereAutomation::ESX::SettingsDepotsOnlineApi` | [**update**](docs/SettingsDepotsOnlineApi.md#update) | **PATCH** /api/esx/settings/depots/online/{depot} | Updates the configuration of a currently configured online software depot.
`VSphereAutomation::ESX::SettingsDepotsSyncScheduleApi` | [**get**](docs/SettingsDepotsSyncScheduleApi.md#get) | **GET** /api/esx/settings/depots/sync-schedule | Returns the currently configured software depot sync schedule.
`VSphereAutomation::ESX::SettingsDepotsSyncScheduleApi` | [**set**](docs/SettingsDepotsSyncScheduleApi.md#set) | **PUT** /api/esx/settings/depots/sync-schedule | Sets the software depot sync schedule.
`VSphereAutomation::ESX::SettingsDepotsUmdsApi` | [**delete**](docs/SettingsDepotsUmdsApi.md#delete) | **DELETE** /api/esx/settings/depots/umds | Removes the configured UMDS software depot. It will not remove the downloaded metadata and payloads from that depot.
`VSphereAutomation::ESX::SettingsDepotsUmdsApi` | [**get**](docs/SettingsDepotsUmdsApi.md#get) | **GET** /api/esx/settings/depots/umds | Gets the information about a currently configured UMDS software depot.
`VSphereAutomation::ESX::SettingsDepotsUmdsApi` | [**set**](docs/SettingsDepotsUmdsApi.md#set) | **PUT** /api/esx/settings/depots/umds | Sets or overwrites information about an UMDS software depot.
`VSphereAutomation::ESX::SettingsDepotsUmdsApi` | [**update**](docs/SettingsDepotsUmdsApi.md#update) | **PATCH** /api/esx/settings/depots/umds | Updates the configuration of a currently configured UMDS software depot.
`VSphereAutomation::ESX::SettingsHardwareSupportManagersApi` | [**list**](docs/SettingsHardwareSupportManagersApi.md#list) | **GET** /api/esx/settings/hardware-support/managers | Returns the list of registered Hardware Support Managers (HSMs) in the system.
`VSphereAutomation::ESX::SettingsHardwareSupportManagersPackagesApi` | [**list**](docs/SettingsHardwareSupportManagersPackagesApi.md#list) | **GET** /api/esx/settings/hardware-support/managers/{manager}/packages | Returns the list of available Hardware Support Packages (HSPs) for a particular host, as specified by its Hardware Support Manager (HSM)
`VSphereAutomation::ESX::SettingsHardwareSupportManagersPackagesVersionsApi` | [**get**](docs/SettingsHardwareSupportManagersPackagesVersionsApi.md#get) | **GET** /api/esx/settings/hardware-support/managers/{manager}/packages/{pkg}/versions/{version} | Returns the detailed information for a specific version of an available Hardware Support Packages (HSPs) as specified by the Hardware Support Manager (HSM)
`VSphereAutomation::ESX::SettingsHostsEnablementSoftwareApi` | [**check_task**](docs/SettingsHostsEnablementSoftwareApi.md#check_task) | **POST** /api/esx/settings/hosts/{host}/enablement/software?action&#x3D;check&amp;vmw-task&#x3D;true | Checks the possibility to manage the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsEnablementSoftwareApi` | [**enable_task**](docs/SettingsHostsEnablementSoftwareApi.md#enable_task) | **PUT** /api/esx/settings/hosts/{host}/enablement/software?vmw-task&#x3D;true | Enables the feature which manages the host with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsEnablementSoftwareApi` | [**get**](docs/SettingsHostsEnablementSoftwareApi.md#get) | **GET** /api/esx/settings/hosts/{host}/enablement/software | Returns whether the given standalone host is managed with a single software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi` | [**get**](docs/SettingsHostsPoliciesApplyApi.md#get) | **GET** /api/esx/settings/hosts/{host}/policies/apply | Returns the configured policy that has been set for the ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi` | [**set**](docs/SettingsHostsPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/policies/apply | This API will set the configured policy for an ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsPoliciesApplyEffectiveApi` | [**get**](docs/SettingsHostsPoliciesApplyEffectiveApi.md#get) | **GET** /api/esx/settings/hosts/{host}/policies/apply/effective | Returns the effective policy based on system defaults and what has been configured for the ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsPoliciesApplyResetInfoApi` | [**get**](docs/SettingsHostsPoliciesApplyResetInfoApi.md#get) | **GET** /api/esx/settings/hosts/{host}/policies/apply/reset-info | Returns the information describing the outcome when configured policies are reset. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareApi` | [**scan_task**](docs/SettingsHostsSoftwareApi.md#scan_task) | **POST** /api/esx/settings/hosts/{host}/software?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans the host against the host's desired state.. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
`VSphereAutomation::ESX::SettingsHostsSoftwareAddOnApi` | [**get**](docs/SettingsHostsSoftwareAddOnApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/add-on | Returns the desired OEM add-on specification for a given host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareBaseImageApi` | [**get**](docs/SettingsHostsSoftwareBaseImageApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/base-image | Returns the desired base-image specification set for given host Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareCommitsApi` | [**get**](docs/SettingsHostsSoftwareCommitsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/commits/{commit} | Returns the information about a specific commit. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareComplianceApi` | [**get**](docs/SettingsHostsSoftwareComplianceApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/compliance | Returns the compliance state for the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareComponentsApi` | [**get**](docs/SettingsHostsSoftwareComponentsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/components/{component} | Returns the component version for the given component in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareComponentsApi` | [**list**](docs/SettingsHostsSoftwareComponentsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/components | Returns a list of components in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**commit_task**](docs/SettingsHostsSoftwareDraftsApi.md#commit_task) | **POST** /api/esx/settings/hosts/{host}/software/drafts/{draft}?action&#x3D;commit&amp;vmw-task&#x3D;true | Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. It will also validate the document before committing it. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**create**](docs/SettingsHostsSoftwareDraftsApi.md#create) | **POST** /api/esx/settings/hosts/{host}/software/drafts | Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**delete**](docs/SettingsHostsSoftwareDraftsApi.md#delete) | **DELETE** /api/esx/settings/hosts/{host}/software/drafts/{draft} | Deletes the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**get**](docs/SettingsHostsSoftwareDraftsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft} | Returns the information about given software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**import_software_spec**](docs/SettingsHostsSoftwareDraftsApi.md#import_software_spec) | **POST** /api/esx/settings/hosts/{host}/software/drafts?action&#x3D;import-software-spec | Imports the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**list**](docs/SettingsHostsSoftwareDraftsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/drafts | Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**scan_task**](docs/SettingsHostsSoftwareDraftsApi.md#scan_task) | **POST** /api/esx/settings/hosts/{host}/software/drafts/{draft}?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans the host against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi` | [**validate_task**](docs/SettingsHostsSoftwareDraftsApi.md#validate_task) | **POST** /api/esx/settings/hosts/{host}/software/drafts/{draft}?acion&#x3D;validate&amp;vmw-task&#x3D;true | Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsInternalApi` | [**delete_and_create**](docs/SettingsHostsSoftwareDraftsInternalApi.md#delete_and_create) | **POST** /api/esx/settings/hosts/{host}/software/drafts-internal?action&#x3D;delete-and-create | Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsInternalApi` | [**delete_and_import**](docs/SettingsHostsSoftwareDraftsInternalApi.md#delete_and_import) | **POST** /api/esx/settings/hosts/{host}/software/drafts-internal?action&#x3D;delete-and-import | Imports the desired software specification as a new draft. If there is a draft already associated with the user for this host, that draft will be deleted before new draft is created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareAddOnApi` | [**delete**](docs/SettingsHostsSoftwareDraftsSoftwareAddOnApi.md#delete) | **DELETE** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/add-on | Deletes the desired OEM add-on specification in the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareAddOnApi` | [**get**](docs/SettingsHostsSoftwareDraftsSoftwareAddOnApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/add-on | Returns the OEM add-on specification in a software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareAddOnApi` | [**set**](docs/SettingsHostsSoftwareDraftsSoftwareAddOnApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/add-on | Sets a new desired OEM add-on specification in the software draft. It will overwrite the existing desired OEM add-on specification if one already exists. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareBaseImageApi` | [**get**](docs/SettingsHostsSoftwareDraftsSoftwareBaseImageApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/base-image | Returns the base-image specification in a software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareBaseImageApi` | [**set**](docs/SettingsHostsSoftwareDraftsSoftwareBaseImageApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/base-image | Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi` | [**delete**](docs/SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#delete) | **DELETE** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components/{component} | Deletes the given component from the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi` | [**get**](docs/SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components/{component} | Returns the component version for the given component in the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi` | [**list**](docs/SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components | Returns the components that comprise the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi` | [**set**](docs/SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components/{component} | Set the component version for a given component in the software draft. This will overwrite any existing version for the given component. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi` | [**update**](docs/SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#update) | **PATCH** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components | Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi` | [**list**](docs/SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/effective-components | Returns the components that comprise the desired software state of the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi` | [**delete**](docs/SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.md#delete) | **DELETE** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support | Deletes a given host's working copy document Hardware Support Package configuration.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi` | [**get**](docs/SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support | Returns a given host's working copy document Hardware Support Package (HSP) configuration.
`VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi` | [**set**](docs/SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support | Replaces a given host's working copy document Hardware Support Package (HSP) configured.
`VSphereAutomation::ESX::SettingsHostsSoftwareEffectiveComponentsApi` | [**list**](docs/SettingsHostsSoftwareEffectiveComponentsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/effective-components | Returns the effective components for the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareHardwareSupportApi` | [**get**](docs/SettingsHostsSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/hardware-support | Returns a given host's Hardware Support Package (HSP) configuration.
`VSphereAutomation::ESX::SettingsHostsSoftwareReportsApplyImpactApi` | [**get**](docs/SettingsHostsSoftwareReportsApplyImpactApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/reports/apply-impact | Returns a summary of how a standalone ESXi host will be impacted during an apply {@term operation}. The impact is generated from the compliance information obtained from {@link esx.settings.hosts.software.Compliance#get} Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareReportsLastApplyResultApi` | [**get**](docs/SettingsHostsSoftwareReportsLastApplyResultApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/reports/last-apply-result | Returns the most recent available result of applying the desired software document to the standalone ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareReportsLastCheckResultApi` | [**get**](docs/SettingsHostsSoftwareReportsLastCheckResultApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/reports/last-check-result | Returns the most recent available result of checks run on the standalone host before the application of the desired software document to the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi` | [**delete_task**](docs/SettingsHostsSoftwareSolutionsApi.md#delete_task) | **DELETE** /api/esx/settings/hosts/{host}/software/solutions/{solution}?vmw-task&#x3D;true | Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi` | [**get**](docs/SettingsHostsSoftwareSolutionsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/solutions/{solution} | Returns components registered for the given solution in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi` | [**list**](docs/SettingsHostsSoftwareSolutionsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/solutions | Returns all solutions in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi` | [**set_task**](docs/SettingsHostsSoftwareSolutionsApi.md#set_task) | **PUT** /api/esx/settings/hosts/{host}/software/solutions/{solution}?vmw-task&#x3D;true | Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::ESX::SettingsInternalSoftwareApi` | [**set_task**](docs/SettingsInternalSoftwareApi.md#set_task) | **PUT** /api/esx/settings/internal/software/{cluster}?vmw-task&#x3D;true | Sets the specified software document as the desired state document for the given cluster identifier. It is not verified whether an entity with the given cluster identifier exists or not.
`VSphereAutomation::ESX::SettingsInternalSummaryApi` | [**get**](docs/SettingsInternalSummaryApi.md#get) | **GET** /api/esx/settings/internal/summary | Summarize the compliance result of the clusters. The API will return the cluster summary with an empty compliance result and/or desired software specification if the service failed get this information from the database due to unexpected scenarios.
`VSphereAutomation::ESX::SettingsInternalSummaryApi` | [**scan_task**](docs/SettingsInternalSummaryApi.md#scan_task) | **POST** /api/esx/settings/internal/summary?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans all the clusters to get their compliance information against its respective desired state.


## Documentation for Models

 - [VSphereAutomation::ESX::EsxHclCompatibilityDataStatus](docs/EsxHclCompatibilityDataStatus.md)
 - [VSphereAutomation::ESX::EsxHclCompatibilityStatus](docs/EsxHclCompatibilityStatus.md)
 - [VSphereAutomation::ESX::EsxHclDriver](docs/EsxHclDriver.md)
 - [VSphereAutomation::ESX::EsxHclFirmware](docs/EsxHclFirmware.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReleasesEsxiCompatibilityReleases](docs/EsxHclHostsCompatibilityReleasesEsxiCompatibilityReleases.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportBiosConstraint](docs/EsxHclHostsCompatibilityReportBiosConstraint.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportCreateTask](docs/EsxHclHostsCompatibilityReportCreateTask.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportDeviceConstraint](docs/EsxHclHostsCompatibilityReportDeviceConstraint.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportDeviceHclInfo](docs/EsxHclHostsCompatibilityReportDeviceHclInfo.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportHclReport](docs/EsxHclHostsCompatibilityReportHclReport.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportResult](docs/EsxHclHostsCompatibilityReportResult.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportServerCompatibility](docs/EsxHclHostsCompatibilityReportServerCompatibility.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportServerHclInfo](docs/EsxHclHostsCompatibilityReportServerHclInfo.md)
 - [VSphereAutomation::ESX::EsxHclHostsCompatibilityReportSpec](docs/EsxHclHostsCompatibilityReportSpec.md)
 - [VSphereAutomation::ESX::EsxHclNotification](docs/EsxHclNotification.md)
 - [VSphereAutomation::ESX::EsxHclNotifications](docs/EsxHclNotifications.md)
 - [VSphereAutomation::ESX::EsxHclPCIDevice](docs/EsxHclPCIDevice.md)
 - [VSphereAutomation::ESX::EsxHclReportsLocation](docs/EsxHclReportsLocation.md)
 - [VSphereAutomation::ESX::EsxHclReportsToken](docs/EsxHclReportsToken.md)
 - [VSphereAutomation::ESX::EsxHclServer](docs/EsxHclServer.md)
 - [VSphereAutomation::ESX::EsxHealthCheckInfo](docs/EsxHealthCheckInfo.md)
 - [VSphereAutomation::ESX::EsxHealthCheckStatus](docs/EsxHealthCheckStatus.md)
 - [VSphereAutomation::ESX::EsxHealthPerspective](docs/EsxHealthPerspective.md)
 - [VSphereAutomation::ESX::EsxHealthPerspectivesCredentialsCreate](docs/EsxHealthPerspectivesCredentialsCreate.md)
 - [VSphereAutomation::ESX::EsxHealthPerspectivesCredentialsNsxConnectionSpec](docs/EsxHealthPerspectivesCredentialsNsxConnectionSpec.md)
 - [VSphereAutomation::ESX::EsxHealthStatus](docs/EsxHealthStatus.md)
 - [VSphereAutomation::ESX::EsxHealthStatusInfo](docs/EsxHealthStatusInfo.md)
 - [VSphereAutomation::ESX::EsxHostsSoftwareInstalledComponentsInstalledComponentInfo](docs/EsxHostsSoftwareInstalledComponentsInstalledComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsAddOnCompliance](docs/EsxSettingsAddOnCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsAddOnDetails](docs/EsxSettingsAddOnDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsAddOnInfo](docs/EsxSettingsAddOnInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsAddOnSpec](docs/EsxSettingsAddOnSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsBaseImageCompliance](docs/EsxSettingsBaseImageCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsBaseImageDetails](docs/EsxSettingsBaseImageDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsBaseImageInfo](docs/EsxSettingsBaseImageInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsBaseImageSpec](docs/EsxSettingsBaseImageSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClusterCompliance](docs/EsxSettingsClusterCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersDepotOverridesAdd](docs/EsxSettingsClustersDepotOverridesAdd.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersDepotOverridesDepot](docs/EsxSettingsClustersDepotOverridesDepot.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersDepotOverridesInfo](docs/EsxSettingsClustersDepotOverridesInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersDepotOverridesRemove](docs/EsxSettingsClustersDepotOverridesRemove.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersEnablementSoftwareCheckSpec](docs/EsxSettingsClustersEnablementSoftwareCheckSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersEnablementSoftwareCheckTask](docs/EsxSettingsClustersEnablementSoftwareCheckTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersEnablementSoftwareCheckType](docs/EsxSettingsClustersEnablementSoftwareCheckType.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersEnablementSoftwareEnableSpec](docs/EsxSettingsClustersEnablementSoftwareEnableSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersEnablementSoftwareEnableTask](docs/EsxSettingsClustersEnablementSoftwareEnableTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersEnablementSoftwareInfo](docs/EsxSettingsClustersEnablementSoftwareInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyConfiguredPolicySpec](docs/EsxSettingsClustersPoliciesApplyConfiguredPolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction](docs/EsxSettingsClustersPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyEffectiveEffectivePolicySpec](docs/EsxSettingsClustersPoliciesApplyEffectiveEffectivePolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction](docs/EsxSettingsClustersPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyEffectiveFailureAction](docs/EsxSettingsClustersPoliciesApplyEffectiveFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyEffectiveFailureActionAction](docs/EsxSettingsClustersPoliciesApplyEffectiveFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyFailureAction](docs/EsxSettingsClustersPoliciesApplyFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyFailureActionAction](docs/EsxSettingsClustersPoliciesApplyFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoConfiguredPolicyResetInfo](docs/EsxSettingsClustersPoliciesApplyResetInfoConfiguredPolicyResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoDisableDpmResetInfo](docs/EsxSettingsClustersPoliciesApplyResetInfoDisableDpmResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoDisableHacResetInfo](docs/EsxSettingsClustersPoliciesApplyResetInfoDisableHacResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoEnableQuickBootResetInfo](docs/EsxSettingsClustersPoliciesApplyResetInfoEnableQuickBootResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoEvacuateOfflineVmsResetInfo](docs/EsxSettingsClustersPoliciesApplyResetInfoEvacuateOfflineVmsResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoFailureAction](docs/EsxSettingsClustersPoliciesApplyResetInfoFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoFailureActionAction](docs/EsxSettingsClustersPoliciesApplyResetInfoFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoFailureActionResetInfo](docs/EsxSettingsClustersPoliciesApplyResetInfoFailureActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoPreRemediationPowerAction](docs/EsxSettingsClustersPoliciesApplyResetInfoPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplyResetInfoPreRemediationPowerActionResetInfo](docs/EsxSettingsClustersPoliciesApplyResetInfoPreRemediationPowerActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersPoliciesApplySet](docs/EsxSettingsClustersPoliciesApplySet.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareApplySpec](docs/EsxSettingsClustersSoftwareApplySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareApplyTask](docs/EsxSettingsClustersSoftwareApplyTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareCheckSpec](docs/EsxSettingsClustersSoftwareCheckSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareCheckTask](docs/EsxSettingsClustersSoftwareCheckTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareCommitsInfo](docs/EsxSettingsClustersSoftwareCommitsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareCommitsInfoApplyStatusType](docs/EsxSettingsClustersSoftwareCommitsInfoApplyStatusType.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsCommitSpec](docs/EsxSettingsClustersSoftwareDraftsCommitSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsCommitTask](docs/EsxSettingsClustersSoftwareDraftsCommitTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsFilterSpec](docs/EsxSettingsClustersSoftwareDraftsFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsImportSoftwareSpec](docs/EsxSettingsClustersSoftwareDraftsImportSoftwareSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsImportSpec](docs/EsxSettingsClustersSoftwareDraftsImportSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInfo](docs/EsxSettingsClustersSoftwareDraftsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInternalCreateResult](docs/EsxSettingsClustersSoftwareDraftsInternalCreateResult.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInternalDeleteAndImport](docs/EsxSettingsClustersSoftwareDraftsInternalDeleteAndImport.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInternalImportSpec](docs/EsxSettingsClustersSoftwareDraftsInternalImportSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInternalInfo](docs/EsxSettingsClustersSoftwareDraftsInternalInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInternalMetadata](docs/EsxSettingsClustersSoftwareDraftsInternalMetadata.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInternalSourceType](docs/EsxSettingsClustersSoftwareDraftsInternalSourceType.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsInternalStatusType](docs/EsxSettingsClustersSoftwareDraftsInternalStatusType.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsMetadata](docs/EsxSettingsClustersSoftwareDraftsMetadata.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsSoftwareAddOnSet](docs/EsxSettingsClustersSoftwareDraftsSoftwareAddOnSet.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsSoftwareBaseImageSet](docs/EsxSettingsClustersSoftwareDraftsSoftwareBaseImageSet.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdate](docs/EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdate.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdateSpec](docs/EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdateSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsSoftwareHardwareSupportSet](docs/EsxSettingsClustersSoftwareDraftsSoftwareHardwareSupportSet.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsSourceType](docs/EsxSettingsClustersSoftwareDraftsSourceType.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsStatusType](docs/EsxSettingsClustersSoftwareDraftsStatusType.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareDraftsSummary](docs/EsxSettingsClustersSoftwareDraftsSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareExport](docs/EsxSettingsClustersSoftwareExport.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareExportSpec](docs/EsxSettingsClustersSoftwareExportSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareRecommendationsExplanationDetails](docs/EsxSettingsClustersSoftwareRecommendationsExplanationDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareRecommendationsInfo](docs/EsxSettingsClustersSoftwareRecommendationsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsApplyImpactApplyImpactSpec](docs/EsxSettingsClustersSoftwareReportsApplyImpactApplyImpactSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsApplyImpactClusterImpact](docs/EsxSettingsClustersSoftwareReportsApplyImpactClusterImpact.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsApplyImpactImpact](docs/EsxSettingsClustersSoftwareReportsApplyImpactImpact.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsCheckResult](docs/EsxSettingsClustersSoftwareReportsCheckResult.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsComplianceStatus](docs/EsxSettingsClustersSoftwareReportsComplianceStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsDriverFirmwareVersion](docs/EsxSettingsClustersSoftwareReportsDriverFirmwareVersion.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary](docs/EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsHardwareCompatibilityComplianceStatus](docs/EsxSettingsClustersSoftwareReportsHardwareCompatibilityComplianceStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastApplyResultApplyResult](docs/EsxSettingsClustersSoftwareReportsLastApplyResultApplyResult.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatus](docs/EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatusStatus](docs/EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatusStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultCheckInfo](docs/EsxSettingsClustersSoftwareReportsLastCheckResultCheckInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultCheckResult](docs/EsxSettingsClustersSoftwareReportsLastCheckResultCheckResult.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultCheckStatus](docs/EsxSettingsClustersSoftwareReportsLastCheckResultCheckStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResult](docs/EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResult.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResultEntityType](docs/EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResultEntityType.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultStatus](docs/EsxSettingsClustersSoftwareReportsLastCheckResultStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsPciDevice](docs/EsxSettingsClustersSoftwareReportsPciDevice.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsPciDeviceCompliance](docs/EsxSettingsClustersSoftwareReportsPciDeviceCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo](docs/EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpec](docs/EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpecDeploymentMode](docs/EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpecDeploymentMode.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplyTask](docs/EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplyTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsSetTask](docs/EsxSettingsClustersSoftwareSolutionsSetTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsSolutionsInternalApplySpec](docs/EsxSettingsClustersSoftwareSolutionsSolutionsInternalApplySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsSolutionsInternalApplyTask](docs/EsxSettingsClustersSoftwareSolutionsSolutionsInternalApplyTask.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsSolutionsInternalRemoveSpec](docs/EsxSettingsClustersSoftwareSolutionsSolutionsInternalRemoveSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsSolutionsInternalRemoveTask](docs/EsxSettingsClustersSoftwareSolutionsSolutionsInternalRemoveTask.md)
 - [VSphereAutomation::ESX::EsxSettingsComplianceImpact](docs/EsxSettingsComplianceImpact.md)
 - [VSphereAutomation::ESX::EsxSettingsComplianceStatus](docs/EsxSettingsComplianceStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsComponentCompliance](docs/EsxSettingsComponentCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsComponentDetails](docs/EsxSettingsComponentDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsComponentInfo](docs/EsxSettingsComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsComponentOverrideInfo](docs/EsxSettingsComponentOverrideInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsComponentSource](docs/EsxSettingsComponentSource.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec](docs/EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction](docs/EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyEffectiveEffectivePolicySpec](docs/EsxSettingsDefaultsClustersPoliciesApplyEffectiveEffectivePolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction](docs/EsxSettingsDefaultsClustersPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyEffectiveFailureAction](docs/EsxSettingsDefaultsClustersPoliciesApplyEffectiveFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyEffectiveFailureActionAction](docs/EsxSettingsDefaultsClustersPoliciesApplyEffectiveFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyFailureAction](docs/EsxSettingsDefaultsClustersPoliciesApplyFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyFailureActionAction](docs/EsxSettingsDefaultsClustersPoliciesApplyFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoConfiguredPolicyResetInfo](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoConfiguredPolicyResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoDisableDpmResetInfo](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoDisableDpmResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoDisableHacResetInfo](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoDisableHacResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoEnableQuickBootResetInfo](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoEnableQuickBootResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoEvacuateOfflineVmsResetInfo](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoEvacuateOfflineVmsResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoFailureAction](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoFailureActionAction](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoFailureActionResetInfo](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoFailureActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoPreRemediationPowerAction](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplyResetInfoPreRemediationPowerActionResetInfo](docs/EsxSettingsDefaultsClustersPoliciesApplyResetInfoPreRemediationPowerActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsClustersPoliciesApplySet](docs/EsxSettingsDefaultsClustersPoliciesApplySet.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec](docs/EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction](docs/EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyEffectiveEffectivePolicySpec](docs/EsxSettingsDefaultsHostsPoliciesApplyEffectiveEffectivePolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction](docs/EsxSettingsDefaultsHostsPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyEffectiveFailureAction](docs/EsxSettingsDefaultsHostsPoliciesApplyEffectiveFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyEffectiveFailureActionAction](docs/EsxSettingsDefaultsHostsPoliciesApplyEffectiveFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyFailureAction](docs/EsxSettingsDefaultsHostsPoliciesApplyFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyFailureActionAction](docs/EsxSettingsDefaultsHostsPoliciesApplyFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo](docs/EsxSettingsDefaultsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyResetInfoEnableQuickBootResetInfo](docs/EsxSettingsDefaultsHostsPoliciesApplyResetInfoEnableQuickBootResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyResetInfoFailureAction](docs/EsxSettingsDefaultsHostsPoliciesApplyResetInfoFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyResetInfoFailureActionAction](docs/EsxSettingsDefaultsHostsPoliciesApplyResetInfoFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyResetInfoFailureActionResetInfo](docs/EsxSettingsDefaultsHostsPoliciesApplyResetInfoFailureActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyResetInfoPreRemediationPowerAction](docs/EsxSettingsDefaultsHostsPoliciesApplyResetInfoPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplyResetInfoPreRemediationPowerActionResetInfo](docs/EsxSettingsDefaultsHostsPoliciesApplyResetInfoPreRemediationPowerActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDefaultsHostsPoliciesApplySet](docs/EsxSettingsDefaultsHostsPoliciesApplySet.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsAddOnVersionSummary](docs/EsxSettingsDepotContentAddOnsAddOnVersionSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsCategoryType](docs/EsxSettingsDepotContentAddOnsCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsFilterSpec](docs/EsxSettingsDepotContentAddOnsFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsSummary](docs/EsxSettingsDepotContentAddOnsSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsVersionsCategoryType](docs/EsxSettingsDepotContentAddOnsVersionsCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsVersionsComponentInfo](docs/EsxSettingsDepotContentAddOnsVersionsComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsVersionsInfo](docs/EsxSettingsDepotContentAddOnsVersionsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentAddOnsVersionsRemovedComponentInfo](docs/EsxSettingsDepotContentAddOnsVersionsRemovedComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentBaseImagesCategoryType](docs/EsxSettingsDepotContentBaseImagesCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentBaseImagesFilterSpec](docs/EsxSettingsDepotContentBaseImagesFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentBaseImagesSummary](docs/EsxSettingsDepotContentBaseImagesSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentBaseImagesVersionsCategoryType](docs/EsxSettingsDepotContentBaseImagesVersionsCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentBaseImagesVersionsComponentVersionInfo](docs/EsxSettingsDepotContentBaseImagesVersionsComponentVersionInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentBaseImagesVersionsInfo](docs/EsxSettingsDepotContentBaseImagesVersionsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsCategoryType](docs/EsxSettingsDepotContentComponentsCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsComponentBundleType](docs/EsxSettingsDepotContentComponentsComponentBundleType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsComponentVersionSummary](docs/EsxSettingsDepotContentComponentsComponentVersionSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsFilterSpec](docs/EsxSettingsDepotContentComponentsFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsSummary](docs/EsxSettingsDepotContentComponentsSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsUrgencyType](docs/EsxSettingsDepotContentComponentsUrgencyType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsVersionsCategoryType](docs/EsxSettingsDepotContentComponentsVersionsCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsVersionsInfo](docs/EsxSettingsDepotContentComponentsVersionsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentComponentsVersionsUrgencyType](docs/EsxSettingsDepotContentComponentsVersionsUrgencyType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsCategoryType](docs/EsxSettingsDepotContentHardwareSupportManifestsCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsFilterSpec](docs/EsxSettingsDepotContentHardwareSupportManifestsFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsHardwareSupportSourcePackageSummary](docs/EsxSettingsDepotContentHardwareSupportManifestsHardwareSupportSourcePackageSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsHardwareSupportSourceSummary](docs/EsxSettingsDepotContentHardwareSupportManifestsHardwareSupportSourceSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsManifestVersionSummary](docs/EsxSettingsDepotContentHardwareSupportManifestsManifestVersionSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsSummary](docs/EsxSettingsDepotContentHardwareSupportManifestsSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsCategoryType](docs/EsxSettingsDepotContentHardwareSupportManifestsVersionsCategoryType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsComponentInfo](docs/EsxSettingsDepotContentHardwareSupportManifestsVersionsComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsHardwareSupportSourceInfo](docs/EsxSettingsDepotContentHardwareSupportManifestsVersionsHardwareSupportSourceInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsHardwareSupportSourcePackageInfo](docs/EsxSettingsDepotContentHardwareSupportManifestsVersionsHardwareSupportSourcePackageInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo](docs/EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsRemovedComponentInfo](docs/EsxSettingsDepotContentHardwareSupportManifestsVersionsRemovedComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOfflineCreateSpec](docs/EsxSettingsDepotsOfflineCreateSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOfflineCreateTask](docs/EsxSettingsDepotsOfflineCreateTask.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOfflineInfo](docs/EsxSettingsDepotsOfflineInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOfflineSourceType](docs/EsxSettingsDepotsOfflineSourceType.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOfflineSummary](docs/EsxSettingsDepotsOfflineSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOnlineCreate](docs/EsxSettingsDepotsOnlineCreate.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOnlineCreateSpec](docs/EsxSettingsDepotsOnlineCreateSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOnlineInfo](docs/EsxSettingsDepotsOnlineInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOnlineSummary](docs/EsxSettingsDepotsOnlineSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOnlineUpdate](docs/EsxSettingsDepotsOnlineUpdate.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsOnlineUpdateSpec](docs/EsxSettingsDepotsOnlineUpdateSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsSyncScheduleDayOfWeek](docs/EsxSettingsDepotsSyncScheduleDayOfWeek.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsSyncScheduleRecurrence](docs/EsxSettingsDepotsSyncScheduleRecurrence.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsSyncScheduleSchedule](docs/EsxSettingsDepotsSyncScheduleSchedule.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsSyncScheduleSet](docs/EsxSettingsDepotsSyncScheduleSet.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsSyncScheduleSpec](docs/EsxSettingsDepotsSyncScheduleSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsUmdsInfo](docs/EsxSettingsDepotsUmdsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsUmdsSet](docs/EsxSettingsDepotsUmdsSet.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsUmdsSetSpec](docs/EsxSettingsDepotsUmdsSetSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsUmdsUpdate](docs/EsxSettingsDepotsUmdsUpdate.md)
 - [VSphereAutomation::ESX::EsxSettingsDepotsUmdsUpdateSpec](docs/EsxSettingsDepotsUmdsUpdateSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsEffectiveComponentDetails](docs/EsxSettingsEffectiveComponentDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsEffectiveComponentInfo](docs/EsxSettingsEffectiveComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareModuleClass](docs/EsxSettingsHardwareModuleClass.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareModuleDetails](docs/EsxSettingsHardwareModuleDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareModuleFirmwareCompliance](docs/EsxSettingsHardwareModuleFirmwareCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareModuleFirmwareInfo](docs/EsxSettingsHardwareModuleFirmwareInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportInfo](docs/EsxSettingsHardwareSupportInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersHardwareSupportManagerInfo](docs/EsxSettingsHardwareSupportManagersHardwareSupportManagerInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersPackagesFilterSpec](docs/EsxSettingsHardwareSupportManagersPackagesFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersPackagesHardwareSupportPackageInfo](docs/EsxSettingsHardwareSupportManagersPackagesHardwareSupportPackageInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersPackagesVersionsComponentInfo](docs/EsxSettingsHardwareSupportManagersPackagesVersionsComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersPackagesVersionsFilterSpec](docs/EsxSettingsHardwareSupportManagersPackagesVersionsFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersPackagesVersionsPackageInfo](docs/EsxSettingsHardwareSupportManagersPackagesVersionsPackageInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersPackagesVersionsRemovedComponentInfo](docs/EsxSettingsHardwareSupportManagersPackagesVersionsRemovedComponentInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportPackageCompliance](docs/EsxSettingsHardwareSupportPackageCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportPackageInfo](docs/EsxSettingsHardwareSupportPackageInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportPackageSpec](docs/EsxSettingsHardwareSupportPackageSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHardwareSupportSpec](docs/EsxSettingsHardwareSupportSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostCompliance](docs/EsxSettingsHostCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsHostInfo](docs/EsxSettingsHostInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsEnablementSoftwareCheckSpec](docs/EsxSettingsHostsEnablementSoftwareCheckSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsEnablementSoftwareCheckTask](docs/EsxSettingsHostsEnablementSoftwareCheckTask.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsEnablementSoftwareCheckType](docs/EsxSettingsHostsEnablementSoftwareCheckType.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsEnablementSoftwareEnableSpec](docs/EsxSettingsHostsEnablementSoftwareEnableSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsEnablementSoftwareEnableTask](docs/EsxSettingsHostsEnablementSoftwareEnableTask.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsEnablementSoftwareInfo](docs/EsxSettingsHostsEnablementSoftwareInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyConfiguredPolicySpec](docs/EsxSettingsHostsPoliciesApplyConfiguredPolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction](docs/EsxSettingsHostsPoliciesApplyConfiguredPolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyEffectiveEffectivePolicySpec](docs/EsxSettingsHostsPoliciesApplyEffectiveEffectivePolicySpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction](docs/EsxSettingsHostsPoliciesApplyEffectiveEffectivePolicySpecPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyEffectiveFailureAction](docs/EsxSettingsHostsPoliciesApplyEffectiveFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyEffectiveFailureActionAction](docs/EsxSettingsHostsPoliciesApplyEffectiveFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyFailureAction](docs/EsxSettingsHostsPoliciesApplyFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyFailureActionAction](docs/EsxSettingsHostsPoliciesApplyFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo](docs/EsxSettingsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyResetInfoEnableQuickBootResetInfo](docs/EsxSettingsHostsPoliciesApplyResetInfoEnableQuickBootResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyResetInfoFailureAction](docs/EsxSettingsHostsPoliciesApplyResetInfoFailureAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyResetInfoFailureActionAction](docs/EsxSettingsHostsPoliciesApplyResetInfoFailureActionAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyResetInfoFailureActionResetInfo](docs/EsxSettingsHostsPoliciesApplyResetInfoFailureActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyResetInfoPreRemediationPowerAction](docs/EsxSettingsHostsPoliciesApplyResetInfoPreRemediationPowerAction.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplyResetInfoPreRemediationPowerActionResetInfo](docs/EsxSettingsHostsPoliciesApplyResetInfoPreRemediationPowerActionResetInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsPoliciesApplySet](docs/EsxSettingsHostsPoliciesApplySet.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareCommitsApplyStatusType](docs/EsxSettingsHostsSoftwareCommitsApplyStatusType.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareCommitsInfo](docs/EsxSettingsHostsSoftwareCommitsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsCommitSpec](docs/EsxSettingsHostsSoftwareDraftsCommitSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsCommitTask](docs/EsxSettingsHostsSoftwareDraftsCommitTask.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsFilterSpec](docs/EsxSettingsHostsSoftwareDraftsFilterSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsImportSoftwareSpec](docs/EsxSettingsHostsSoftwareDraftsImportSoftwareSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsImportSpec](docs/EsxSettingsHostsSoftwareDraftsImportSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInfo](docs/EsxSettingsHostsSoftwareDraftsInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInternalCreateResult](docs/EsxSettingsHostsSoftwareDraftsInternalCreateResult.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInternalDeleteAndImport](docs/EsxSettingsHostsSoftwareDraftsInternalDeleteAndImport.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInternalImportSpec](docs/EsxSettingsHostsSoftwareDraftsInternalImportSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInternalInfo](docs/EsxSettingsHostsSoftwareDraftsInternalInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInternalMetadata](docs/EsxSettingsHostsSoftwareDraftsInternalMetadata.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInternalSourceType](docs/EsxSettingsHostsSoftwareDraftsInternalSourceType.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsInternalStatusType](docs/EsxSettingsHostsSoftwareDraftsInternalStatusType.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsMetadata](docs/EsxSettingsHostsSoftwareDraftsMetadata.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSoftwareAddOnSet](docs/EsxSettingsHostsSoftwareDraftsSoftwareAddOnSet.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSoftwareBaseImageSet](docs/EsxSettingsHostsSoftwareDraftsSoftwareBaseImageSet.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdate](docs/EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdate.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdateSpec](docs/EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdateSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSoftwareHardwareSupportSet](docs/EsxSettingsHostsSoftwareDraftsSoftwareHardwareSupportSet.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSourceType](docs/EsxSettingsHostsSoftwareDraftsSourceType.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsStatusType](docs/EsxSettingsHostsSoftwareDraftsStatusType.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSummary](docs/EsxSettingsHostsSoftwareDraftsSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsApplyImpactHostImpact](docs/EsxSettingsHostsSoftwareReportsApplyImpactHostImpact.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsApplyImpactImpact](docs/EsxSettingsHostsSoftwareReportsApplyImpactImpact.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsLastApplyResultApplyResult](docs/EsxSettingsHostsSoftwareReportsLastApplyResultApplyResult.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsLastApplyResultApplyStatus](docs/EsxSettingsHostsSoftwareReportsLastApplyResultApplyStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsLastApplyResultApplyStatusStatus](docs/EsxSettingsHostsSoftwareReportsLastApplyResultApplyStatusStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsLastCheckResultCheckInfo](docs/EsxSettingsHostsSoftwareReportsLastCheckResultCheckInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsLastCheckResultCheckResult](docs/EsxSettingsHostsSoftwareReportsLastCheckResultCheckResult.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsLastCheckResultCheckStatus](docs/EsxSettingsHostsSoftwareReportsLastCheckResultCheckStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareReportsLastCheckResultStatus](docs/EsxSettingsHostsSoftwareReportsLastCheckResultStatus.md)
 - [VSphereAutomation::ESX::EsxSettingsHostsSoftwareSolutionsSetTask](docs/EsxSettingsHostsSoftwareSolutionsSetTask.md)
 - [VSphereAutomation::ESX::EsxSettingsInternalSoftwareSetTask](docs/EsxSettingsInternalSoftwareSetTask.md)
 - [VSphereAutomation::ESX::EsxSettingsInternalSummaryClusterInfo](docs/EsxSettingsInternalSummaryClusterInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsInternalSummaryClusterSummary](docs/EsxSettingsInternalSummaryClusterSummary.md)
 - [VSphereAutomation::ESX::EsxSettingsInternalSummaryComplianceResult](docs/EsxSettingsInternalSummaryComplianceResult.md)
 - [VSphereAutomation::ESX::EsxSettingsInternalSummaryRootEntity](docs/EsxSettingsInternalSummaryRootEntity.md)
 - [VSphereAutomation::ESX::EsxSettingsNotification](docs/EsxSettingsNotification.md)
 - [VSphereAutomation::ESX::EsxSettingsNotifications](docs/EsxSettingsNotifications.md)
 - [VSphereAutomation::ESX::EsxSettingsSoftwareInfo](docs/EsxSettingsSoftwareInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsSoftwareSpec](docs/EsxSettingsSoftwareSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsSolutionCompliance](docs/EsxSettingsSolutionCompliance.md)
 - [VSphereAutomation::ESX::EsxSettingsSolutionComponentDetails](docs/EsxSettingsSolutionComponentDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsSolutionComponentSpec](docs/EsxSettingsSolutionComponentSpec.md)
 - [VSphereAutomation::ESX::EsxSettingsSolutionDetails](docs/EsxSettingsSolutionDetails.md)
 - [VSphereAutomation::ESX::EsxSettingsSolutionInfo](docs/EsxSettingsSolutionInfo.md)
 - [VSphereAutomation::ESX::EsxSettingsSolutionSpec](docs/EsxSettingsSolutionSpec.md)
 - [VSphereAutomation::ESX::VapiStdErrorsAlreadyExists](docs/VapiStdErrorsAlreadyExists.md)
 - [VSphereAutomation::ESX::VapiStdErrorsAlreadyInDesiredState](docs/VapiStdErrorsAlreadyInDesiredState.md)
 - [VSphereAutomation::ESX::VapiStdErrorsConcurrentChange](docs/VapiStdErrorsConcurrentChange.md)
 - [VSphereAutomation::ESX::VapiStdErrorsError](docs/VapiStdErrorsError.md)
 - [VSphereAutomation::ESX::VapiStdErrorsErrorType](docs/VapiStdErrorsErrorType.md)
 - [VSphereAutomation::ESX::VapiStdErrorsInternalServerError](docs/VapiStdErrorsInternalServerError.md)
 - [VSphereAutomation::ESX::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::ESX::VapiStdErrorsNotAllowedInCurrentState](docs/VapiStdErrorsNotAllowedInCurrentState.md)
 - [VSphereAutomation::ESX::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::ESX::VapiStdErrorsResourceInaccessible](docs/VapiStdErrorsResourceInaccessible.md)
 - [VSphereAutomation::ESX::VapiStdErrorsServiceUnavailable](docs/VapiStdErrorsServiceUnavailable.md)
 - [VSphereAutomation::ESX::VapiStdErrorsTimedOut](docs/VapiStdErrorsTimedOut.md)
 - [VSphereAutomation::ESX::VapiStdErrorsUnauthenticated](docs/VapiStdErrorsUnauthenticated.md)
 - [VSphereAutomation::ESX::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::ESX::VapiStdErrorsUnsupported](docs/VapiStdErrorsUnsupported.md)
 - [VSphereAutomation::ESX::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)
 - [VSphereAutomation::ESX::VapiStdLocalizationParam](docs/VapiStdLocalizationParam.md)
 - [VSphereAutomation::ESX::VapiStdLocalizationParamDateTimeFormat](docs/VapiStdLocalizationParamDateTimeFormat.md)
 - [VSphereAutomation::ESX::VapiStdNestedLocalizableMessage](docs/VapiStdNestedLocalizableMessage.md)

