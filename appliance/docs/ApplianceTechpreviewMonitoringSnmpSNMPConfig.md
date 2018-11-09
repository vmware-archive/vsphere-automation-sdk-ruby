# VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication** | [**ApplianceTechpreviewMonitoringSnmpSNMPAuthProto**](ApplianceTechpreviewMonitoringSnmpSNMPAuthProto.md) |  | 
**communities** | **Array&lt;String&gt;** | Set up to ten communities, each of no more than 64 characters long. The format is: community1[,community2,...]. This setting overwrites any previous settings. | 
**engineid** | **String** | Set SNMPv3 engine ID. The engine ID must contain 5 to 32 hexadecimal characters. \&quot;0x\&quot; and colon (:) are removed from the ID. | 
**loglevel** | **String** | System Agent syslog logging level: debug|info|warning|error. | 
**notraps** | **Array&lt;String&gt;** | Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the agent. Use &#39;reset&#39; to clear the setting. | 
**port** | **Integer** | Set up a UDP port which the SNMP agent uses to listen on for polling requests. The default UDP port is 161. | 
**privacy** | [**ApplianceTechpreviewMonitoringSnmpSNMPPrivProto**](ApplianceTechpreviewMonitoringSnmpSNMPPrivProto.md) |  | 
**remoteusers** | **Array&lt;String&gt;** | Set up to five inform user IDs. The format is: user/auth-proto/-|auth-hash/priv-proto/-|priv-hash/engine-id[,...]. Here, user must be maximum 32 characters long; auth-proto is none, MD5 or SHA1; priv-proto is none or AES; &#39;-&#39; indicates no hash; engine-id is a hexadecimal string &#39;0x0-9a-f&#39; and must be up to 32 characters long. | 
**syscontact** | **String** | System contact string as presented in sysContact.0. Up to 255 characters long. | 
**syslocation** | **String** | System location string as presented in sysLocation.0. Up to 255 characters long. | 
**targets** | **Array&lt;String&gt;** | Set up to three targets to which to send SNMPv1 traps. The format is: ip-or-hostname[@port]/community[,...]. The default port is UDP 162. This setting overwrites any previous settings. | 
**users** | **Array&lt;String&gt;** | Set up to five local users. The format is: user/-|auth-hash/-|priv-hash/model[,...]. Here user is maximum 32 characters long; &#39;-&#39; indicates no hash; model is one of none, auth or priv. | 
**v3targets** | **Array&lt;String&gt;** | Set up to three SNMPv3 notification targets. Format is: ip-or-hostname[@port]/remote-user/security-level/trap|inform[,...]. | 


