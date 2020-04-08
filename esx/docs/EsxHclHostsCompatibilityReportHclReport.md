# VSphereAutomation::ESX::EsxHclHostsCompatibilityReportHclReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**devices_hcl** | [**Array&lt;EsxHclHostsCompatibilityReportDeviceHclInfo&gt;**](EsxHclHostsCompatibilityReportDeviceHclInfo.md) | Lists compatibility information for discoverable PCI devices of the host. | [optional] 
**generated_at** | **DateTime** | Specifies the time the report was generated. | 
**host** | **String** | FQDN identifying the ESXi host that the report refers to. | 
**notifications** | [**EsxHclNotifications**](EsxHclNotifications.md) |  | 
**server_hcl** | [**EsxHclHostsCompatibilityReportServerHclInfo**](EsxHclHostsCompatibilityReportServerHclInfo.md) |  | 
**target_release** | **String** | Indicates for which ESXi release the report is generated. | 


