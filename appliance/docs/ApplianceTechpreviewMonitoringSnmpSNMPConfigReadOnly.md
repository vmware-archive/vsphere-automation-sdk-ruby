# VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPConfigReadOnly

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication** | [**ApplianceTechpreviewMonitoringSnmpSNMPAuthProto**](ApplianceTechpreviewMonitoringSnmpSNMPAuthProto.md) |  | 
**communities** | **Array&lt;String&gt;** | Set up to ten communities, each of no more than 64 characters long. The format is: community1[,community2,...]. This setting overwrites any previous settings. | 
**enable** | **BOOLEAN** | Set enable to true/false | 
**engineid** | **String** | Set SNMPv3 engine ID. | 
**loglevel** | **String** | System Agent syslog logging level: debug|info|warning|error. | 
**notraps** | **Array&lt;String&gt;** | Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the agent. Use &#39;reset&#39; to clear the setting. | 
**port** | **Integer** | Set up a UDP port which the SNMP agent uses to listen on for polling requests. The default UDP port is 161. | 
**privacy** | [**ApplianceTechpreviewMonitoringSnmpSNMPPrivProto**](ApplianceTechpreviewMonitoringSnmpSNMPPrivProto.md) |  | 
**syscontact** | **String** | System contact string as presented in sysContact.0. Up to 255 characters long. | 
**syslocation** | **String** | System location string as presented in sysLocation.0. Up to 255 characters long. | 
**targets** | [**Array&lt;ApplianceTechpreviewMonitoringSnmpSNMPv1TrapTarget&gt;**](ApplianceTechpreviewMonitoringSnmpSNMPv1TrapTarget.md) | Set up to three targets to which to send SNMPv1 traps. | 
**users** | [**Array&lt;ApplianceTechpreviewMonitoringSnmpSNMPUser&gt;**](ApplianceTechpreviewMonitoringSnmpSNMPUser.md) | Set up to five local users. | 
**remoteusers** | [**Array&lt;ApplianceTechpreviewMonitoringSnmpSNMPRemoteUser&gt;**](ApplianceTechpreviewMonitoringSnmpSNMPRemoteUser.md) | Set up remote users. | 
**v3targets** | [**Array&lt;ApplianceTechpreviewMonitoringSnmpSNMPv3Target&gt;**](ApplianceTechpreviewMonitoringSnmpSNMPv3Target.md) | Set up to three SNMPv3 notification targets. Format is: ip-or-hostname[@port]/remote-user/security-level/trap|inform[,...]. | 
**pid** | **String** | Set up pid | 


