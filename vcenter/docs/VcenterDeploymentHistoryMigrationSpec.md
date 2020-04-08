# VSphereAutomation::VCenter::VcenterDeploymentHistoryMigrationSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_set** | [**VcenterDeploymentHistoryMigrationOption**](VcenterDeploymentHistoryMigrationOption.md) |  | 
**defer_import** | **Boolean** | Defines how vCenter history will be migrated. If set to true, vCenter history will be migrated separately after successful upgrade(supported scenarios are upgrade from 6.0 or 6.5 to 6.7) or migration, otherwise it will be migrated along with core data during the upgrade or migration process. vCSA upgrade with deferred import is no longer supported for target version 7.0 and later. | [optional] 


