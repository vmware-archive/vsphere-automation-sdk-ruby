# vsphere-automation-appliance

The Ruby gem for the vSphere Appliance API

- API version: 2.0.0
- Package version: 0.1.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vsphere-automation-appliance'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vsphere-automation-appliance

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new

begin
  #Get enabled state of the console-based controlled CLI (TTY1).
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessConsolecliApi->get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::Appliance::AccessConsolecliApi` | [**get**](docs/AccessConsolecliApi.md#get) | **GET** /appliance/access/consolecli | Get enabled state of the console-based controlled CLI (TTY1).
`VSphereAutomation::Appliance::AccessConsolecliApi` | [**set**](docs/AccessConsolecliApi.md#set) | **PUT** /appliance/access/consolecli | Set enabled state of the console-based controlled CLI (TTY1).
`VSphereAutomation::Appliance::AccessDcuiApi` | [**get**](docs/AccessDcuiApi.md#get) | **GET** /appliance/access/dcui | Get enabled state of Direct Console User Interface (DCUI TTY2).
`VSphereAutomation::Appliance::AccessDcuiApi` | [**set**](docs/AccessDcuiApi.md#set) | **PUT** /appliance/access/dcui | Set enabled state of Direct Console User Interface (DCUI TTY2).
`VSphereAutomation::Appliance::AccessShellApi` | [**get**](docs/AccessShellApi.md#get) | **GET** /appliance/access/shell | Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
`VSphereAutomation::Appliance::AccessShellApi` | [**set**](docs/AccessShellApi.md#set) | **PUT** /appliance/access/shell | Set enabled state of BASH, that is, access to BASH from within the controlled CLI.
`VSphereAutomation::Appliance::AccessSshApi` | [**get**](docs/AccessSshApi.md#get) | **GET** /appliance/access/ssh | Get enabled state of the SSH-based controlled CLI.
`VSphereAutomation::Appliance::AccessSshApi` | [**set**](docs/AccessSshApi.md#set) | **PUT** /appliance/access/ssh | Set enabled state of the SSH-based controlled CLI.
`VSphereAutomation::Appliance::HealthApi` | [**messages**](docs/HealthApi.md#messages) | **GET** /appliance/health/{item}/messages | Get health messages.
`VSphereAutomation::Appliance::HealthApplmgmtApi` | [**get**](docs/HealthApplmgmtApi.md#get) | **GET** /appliance/health/applmgmt | Get health status of applmgmt services.
`VSphereAutomation::Appliance::HealthDatabasestorageApi` | [**get**](docs/HealthDatabasestorageApi.md#get) | **GET** /appliance/health/database-storage | Get database storage health.
`VSphereAutomation::Appliance::HealthLoadApi` | [**get**](docs/HealthLoadApi.md#get) | **GET** /appliance/health/load | Get load health.
`VSphereAutomation::Appliance::HealthMemApi` | [**get**](docs/HealthMemApi.md#get) | **GET** /appliance/health/mem | Get memory health.
`VSphereAutomation::Appliance::HealthSoftwarepackagesApi` | [**get**](docs/HealthSoftwarepackagesApi.md#get) | **GET** /appliance/health/software-packages | Get information on available software updates available in the remote vSphere Update Manager repository. Red indicates that security updates are available. Orange indicates that non-security updates are available. Green indicates that there are no updates available. Gray indicates that there was an error retreiving information on software updates.
`VSphereAutomation::Appliance::HealthStorageApi` | [**get**](docs/HealthStorageApi.md#get) | **GET** /appliance/health/storage | Get storage health.
`VSphereAutomation::Appliance::HealthSwapApi` | [**get**](docs/HealthSwapApi.md#get) | **GET** /appliance/health/swap | Get swap health.
`VSphereAutomation::Appliance::HealthSystemApi` | [**get**](docs/HealthSystemApi.md#get) | **GET** /appliance/health/system | Get overall health of system.
`VSphereAutomation::Appliance::HealthSystemApi` | [**lastcheck**](docs/HealthSystemApi.md#lastcheck) | **GET** /appliance/health/system/lastcheck | Get last check timestamp of the health of the system.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**create**](docs/LocalAccountsApi.md#create) | **POST** /appliance/local-accounts/{username} | Create a new local user account.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**delete**](docs/LocalAccountsApi.md#delete) | **DELETE** /appliance/local-accounts/{username} | Delete a local user account.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**get**](docs/LocalAccountsApi.md#get) | **GET** /appliance/local-accounts/{username} | Get the local user account information.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**list**](docs/LocalAccountsApi.md#list) | **GET** /appliance/local-accounts | Get a list of the local user accounts.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**set**](docs/LocalAccountsApi.md#set) | **PUT** /appliance/local-accounts/{username} | Set local user account properties.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**update**](docs/LocalAccountsApi.md#update) | **PATCH** /appliance/local-accounts/{username} | Update selected fields in local user account properties.
`VSphereAutomation::Appliance::LocalAccountsPolicyApi` | [**get**](docs/LocalAccountsPolicyApi.md#get) | **GET** /appliance/local-accounts/global-policy | Get the global password policy.
`VSphereAutomation::Appliance::LocalAccountsPolicyApi` | [**set**](docs/LocalAccountsPolicyApi.md#set) | **PUT** /appliance/local-accounts/global-policy | Set the global password policy.
`VSphereAutomation::Appliance::LoggingForwardingApi` | [**get**](docs/LoggingForwardingApi.md#get) | **GET** /appliance/logging/forwarding | Returns the configuration for forwarding log messages to remote logging servers.
`VSphereAutomation::Appliance::LoggingForwardingApi` | [**set**](docs/LoggingForwardingApi.md#set) | **PUT** /appliance/logging/forwarding | Sets the configuration for forwarding log messages to remote log servers.
`VSphereAutomation::Appliance::LoggingForwardingApi` | [**test**](docs/LoggingForwardingApi.md#test) | **POST** /appliance/logging/forwarding?action&#x3D;test | Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \"This is a diagnostic log test message from vCenter Server.\"
`VSphereAutomation::Appliance::MonitoringApi` | [**get**](docs/MonitoringApi.md#get) | **GET** /appliance/monitoring/{stat_id} | Get monitored item info
`VSphereAutomation::Appliance::MonitoringApi` | [**list**](docs/MonitoringApi.md#list) | **GET** /appliance/monitoring | Get monitored items list
`VSphereAutomation::Appliance::MonitoringApi` | [**query**](docs/MonitoringApi.md#query) | **GET** /appliance/monitoring/query | Get monitoring data.
`VSphereAutomation::Appliance::NetworkingApi` | [**get**](docs/NetworkingApi.md#get) | **GET** /appliance/networking | Get Networking information for all configured interfaces.
`VSphereAutomation::Appliance::NetworkingApi` | [**reset**](docs/NetworkingApi.md#reset) | **POST** /appliance/networking?action&#x3D;reset | Reset and restarts network configuration on all interfaces, also this will renew the DHCP lease for DHCP IP address.
`VSphereAutomation::Appliance::NetworkingApi` | [**update**](docs/NetworkingApi.md#update) | **PATCH** /appliance/networking | Enable or Disable ipv6 on all interfaces
`VSphereAutomation::Appliance::NetworkingDnsDomainsApi` | [**add**](docs/NetworkingDnsDomainsApi.md#add) | **POST** /appliance/networking/dns/domains | Add domain to DNS search domains.
`VSphereAutomation::Appliance::NetworkingDnsDomainsApi` | [**list**](docs/NetworkingDnsDomainsApi.md#list) | **GET** /appliance/networking/dns/domains | Get list of DNS search domains.
`VSphereAutomation::Appliance::NetworkingDnsDomainsApi` | [**set**](docs/NetworkingDnsDomainsApi.md#set) | **PUT** /appliance/networking/dns/domains | Set DNS search domains.
`VSphereAutomation::Appliance::NetworkingDnsHostnameApi` | [**get**](docs/NetworkingDnsHostnameApi.md#get) | **GET** /appliance/networking/dns/hostname | Get the Fully Qualified Doman Name.
`VSphereAutomation::Appliance::NetworkingDnsHostnameApi` | [**set**](docs/NetworkingDnsHostnameApi.md#set) | **PUT** /appliance/networking/dns/hostname | Set the Fully Qualified Domain Name.
`VSphereAutomation::Appliance::NetworkingDnsHostnameApi` | [**test**](docs/NetworkingDnsHostnameApi.md#test) | **POST** /appliance/networking/dns/hostname/test | Test the Fully Qualified Domain Name.
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**add**](docs/NetworkingDnsServersApi.md#add) | **POST** /appliance/networking/dns/servers | Add a DNS server. This method fails if mode argument is \"dhcp\"
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**get**](docs/NetworkingDnsServersApi.md#get) | **GET** /appliance/networking/dns/servers | Get DNS server configuration.
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**set**](docs/NetworkingDnsServersApi.md#set) | **PUT** /appliance/networking/dns/servers | Set the DNS server configuration. If you set the mode argument to \"DHCP\", a DHCP refresh is forced.
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**test**](docs/NetworkingDnsServersApi.md#test) | **POST** /appliance/networking/dns/servers/test | Test if dns servers are reachable.
`VSphereAutomation::Appliance::NetworkingFirewallInboundApi` | [**get**](docs/NetworkingFirewallInboundApi.md#get) | **GET** /appliance/networking/firewall/inbound | Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
`VSphereAutomation::Appliance::NetworkingFirewallInboundApi` | [**set**](docs/NetworkingFirewallInboundApi.md#set) | **PUT** /appliance/networking/firewall/inbound | Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: <ol> <li> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"*\",\"policy\": \"REJECT\"<br> \"address\": \"10.112.0.1\", \"prefix\": 0, \"interface_name\": \"nic0\",\"policy\": \"ACCEPT\"<br> </li> </ol> In the above example, the first rule drops all packets originating from 10.112.0.1 and<br> the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
`VSphereAutomation::Appliance::NetworkingInterfacesApi` | [**get**](docs/NetworkingInterfacesApi.md#get) | **GET** /appliance/networking/interfaces/{interface_name} | Get information about a particular network interface.
`VSphereAutomation::Appliance::NetworkingInterfacesApi` | [**list**](docs/NetworkingInterfacesApi.md#list) | **GET** /appliance/networking/interfaces | Get list of available network interfaces, including those that are not yet configured.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv4Api` | [**get**](docs/NetworkingInterfacesIpv4Api.md#get) | **GET** /appliance/networking/interfaces/{interface_name}/ipv4 | Get IPv4 network configuration for specific NIC.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv4Api` | [**set**](docs/NetworkingInterfacesIpv4Api.md#set) | **PUT** /appliance/networking/interfaces/{interface_name}/ipv4 | Set IPv4 network configuration for specific network interface.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api` | [**get**](docs/NetworkingInterfacesIpv6Api.md#get) | **GET** /appliance/networking/interfaces/{interface_name}/ipv6 | Get IPv6 network configuration for specific interface.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api` | [**set**](docs/NetworkingInterfacesIpv6Api.md#set) | **PUT** /appliance/networking/interfaces/{interface_name}/ipv6 | Set IPv6 network configuration for specific interface.
`VSphereAutomation::Appliance::NetworkingNoProxyApi` | [**get**](docs/NetworkingNoProxyApi.md#get) | **GET** /appliance/networking/noproxy | Returns servers for which no proxy configuration will be applied.
`VSphereAutomation::Appliance::NetworkingNoProxyApi` | [**set**](docs/NetworkingNoProxyApi.md#set) | **PUT** /appliance/networking/noproxy | Sets servers for which no proxy configuration should be applied. This operation sets environment variables. In order for this operation to take effect, a logout from appliance or a service restart is required. If IPv4 is enabled, \"127.0.0.1\" and \"localhost\" will always bypass the proxy (even if they are not explicitly configured).
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**delete**](docs/NetworkingProxyApi.md#delete) | **DELETE** /appliance/networking/proxy/{protocol} | Deletes a proxy configuration for a specific protocol.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**get**](docs/NetworkingProxyApi.md#get) | **GET** /appliance/networking/proxy/{protocol} | Gets the proxy configuration for a specific protocol.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**list**](docs/NetworkingProxyApi.md#list) | **GET** /appliance/networking/proxy | Gets proxy configuration for all configured protocols.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**set**](docs/NetworkingProxyApi.md#set) | **PUT** /appliance/networking/proxy/{protocol} | Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**test**](docs/NetworkingProxyApi.md#test) | **POST** /appliance/networking/proxy/{protocol}?action&#x3D;test | Tests a proxy configuration by testing the connection to the proxy server and test host.
`VSphereAutomation::Appliance::NtpApi` | [**get**](docs/NtpApi.md#get) | **GET** /appliance/ntp | Get the NTP configuration status. If you run the 'timesync.get' command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The 'ntp' command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
`VSphereAutomation::Appliance::NtpApi` | [**set**](docs/NtpApi.md#set) | **PUT** /appliance/ntp | Set NTP servers. This method updates old NTP servers from configuration and sets the input NTP servers in the configuration. If NTP based time synchronization is used internally, the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time synchronization is not used, this method only replaces servers in the NTP configuration.
`VSphereAutomation::Appliance::NtpApi` | [**test**](docs/NtpApi.md#test) | **POST** /appliance/ntp/test | Test the connection to a list of ntp servers.
`VSphereAutomation::Appliance::RecoveryApi` | [**get**](docs/RecoveryApi.md#get) | **GET** /appliance/recovery | Gets the properties of the appliance Recovery subsystem.
`VSphereAutomation::Appliance::RecoveryBackupApi` | [**validate**](docs/RecoveryBackupApi.md#validate) | **POST** /appliance/recovery/backup/validate | Check for backup errors without starting backup.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**cancel**](docs/RecoveryBackupJobApi.md#cancel) | **POST** /appliance/recovery/backup/job/{id}/cancel | Cancel the backup job.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**create**](docs/RecoveryBackupJobApi.md#create) | **POST** /appliance/recovery/backup/job | Initiate backup.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**get**](docs/RecoveryBackupJobApi.md#get) | **GET** /appliance/recovery/backup/job/{id} | See backup job progress/result.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**list**](docs/RecoveryBackupJobApi.md#list) | **GET** /appliance/recovery/backup/job | Get list of backup jobs
`VSphereAutomation::Appliance::RecoveryBackupJobDetailsApi` | [**list**](docs/RecoveryBackupJobDetailsApi.md#list) | **GET** /appliance/recovery/backup/job/details | Returns detailed information about the current and historical backup jobs.
`VSphereAutomation::Appliance::RecoveryBackupPartsApi` | [**get**](docs/RecoveryBackupPartsApi.md#get) | **GET** /appliance/recovery/backup/parts/{id} | Gets the size (in MB) of the part.
`VSphereAutomation::Appliance::RecoveryBackupPartsApi` | [**list**](docs/RecoveryBackupPartsApi.md#list) | **GET** /appliance/recovery/backup/parts | Gets a list of the backup parts.
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**create**](docs/RecoveryBackupSchedulesApi.md#create) | **POST** /appliance/recovery/backup/schedules/{schedule} | Creates a schedule
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**delete**](docs/RecoveryBackupSchedulesApi.md#delete) | **DELETE** /appliance/recovery/backup/schedules/{schedule} | Deletes an existing schedule
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**get**](docs/RecoveryBackupSchedulesApi.md#get) | **GET** /appliance/recovery/backup/schedules/{schedule} | Returns an existing schedule information based on id
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**list**](docs/RecoveryBackupSchedulesApi.md#list) | **GET** /appliance/recovery/backup/schedules | Returns a list of existing schedules with details
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**run**](docs/RecoveryBackupSchedulesApi.md#run) | **POST** /appliance/recovery/backup/schedules/{schedule}?action&#x3D;run | Initiate backup with the specified schedule
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**update**](docs/RecoveryBackupSchedulesApi.md#update) | **PUT** /appliance/recovery/backup/schedules/update/{schedule} | Updates a schedule
`VSphereAutomation::Appliance::RecoveryBackupSystemNameApi` | [**list**](docs/RecoveryBackupSystemNameApi.md#list) | **GET** /appliance/recovery/backup/system-name | Returns a list of system names for which backup archives exist under {@param.name locSpec}.
`VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi` | [**get**](docs/RecoveryBackupSystemNameArchiveApi.md#get) | **GET** /appliance/recovery/backup/system-name/{system_name}/archives/{archive} | Returns the information for backup corresponding to given backup location and system name.
`VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi` | [**list**](docs/RecoveryBackupSystemNameArchiveApi.md#list) | **GET** /appliance/recovery/backup/system-name/{system_name}/archives | Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
`VSphereAutomation::Appliance::RecoveryReconciliationJobApi` | [**create**](docs/RecoveryReconciliationJobApi.md#create) | **POST** /appliance/recovery/reconciliation/job | Initiate reconciliation.
`VSphereAutomation::Appliance::RecoveryReconciliationJobApi` | [**get**](docs/RecoveryReconciliationJobApi.md#get) | **GET** /appliance/recovery/reconciliation/job | Get reconciliation job progress/result.
`VSphereAutomation::Appliance::RecoveryRestoreApi` | [**validate**](docs/RecoveryRestoreApi.md#validate) | **POST** /appliance/recovery/restore/validate | Get metadata before restore
`VSphereAutomation::Appliance::RecoveryRestoreJobApi` | [**cancel**](docs/RecoveryRestoreJobApi.md#cancel) | **POST** /appliance/recovery/restore/job/cancel | Cancel the restore job
`VSphereAutomation::Appliance::RecoveryRestoreJobApi` | [**create**](docs/RecoveryRestoreJobApi.md#create) | **POST** /appliance/recovery/restore/job | Initiate restore.
`VSphereAutomation::Appliance::RecoveryRestoreJobApi` | [**get**](docs/RecoveryRestoreJobApi.md#get) | **GET** /appliance/recovery/restore/job | See restore job progress/result.
`VSphereAutomation::Appliance::ServicesApi` | [**get**](docs/ServicesApi.md#get) | **GET** /appliance/services/{service} | Returns the state of a service.
`VSphereAutomation::Appliance::ServicesApi` | [**list**](docs/ServicesApi.md#list) | **GET** /appliance/services | Lists details of vCenter services.
`VSphereAutomation::Appliance::ServicesApi` | [**restart**](docs/ServicesApi.md#restart) | **POST** /appliance/services/{service}/restart | Restarts a service
`VSphereAutomation::Appliance::ServicesApi` | [**start**](docs/ServicesApi.md#start) | **POST** /appliance/services/{service}/start | Starts a service
`VSphereAutomation::Appliance::ServicesApi` | [**stop**](docs/ServicesApi.md#stop) | **POST** /appliance/services/{service}/stop | Stops a service
`VSphereAutomation::Appliance::ShutdownApi` | [**cancel**](docs/ShutdownApi.md#cancel) | **POST** /appliance/shutdown/cancel | Cancel pending shutdown action.
`VSphereAutomation::Appliance::ShutdownApi` | [**get**](docs/ShutdownApi.md#get) | **GET** /appliance/shutdown | Get details about the pending shutdown action.
`VSphereAutomation::Appliance::ShutdownApi` | [**poweroff**](docs/ShutdownApi.md#poweroff) | **POST** /appliance/shutdown/poweroff | Power off the appliance.
`VSphereAutomation::Appliance::ShutdownApi` | [**reboot**](docs/ShutdownApi.md#reboot) | **POST** /appliance/shutdown/reboot | Reboot the appliance.
`VSphereAutomation::Appliance::SystemStorageApi` | [**list**](docs/SystemStorageApi.md#list) | **GET** /appliance/system/storage | Get disk to partition mapping.
`VSphereAutomation::Appliance::SystemStorageApi` | [**resize**](docs/SystemStorageApi.md#resize) | **POST** /appliance/system/storage/resize | Resize all partitions to 100 percent of disk size.
`VSphereAutomation::Appliance::SystemStorageApi` | [**resize_ex**](docs/SystemStorageApi.md#resize_ex) | **POST** /appliance/system/storage?action&#x3D;resize-ex | Resize all partitions to 100 percent of disk size.
`VSphereAutomation::Appliance::SystemTimeApi` | [**get**](docs/SystemTimeApi.md#get) | **GET** /appliance/system/time | Get system time.
`VSphereAutomation::Appliance::SystemTimeTimezoneApi` | [**get**](docs/SystemTimeTimezoneApi.md#get) | **GET** /appliance/system/time/timezone | Get time zone.
`VSphereAutomation::Appliance::SystemTimeTimezoneApi` | [**set**](docs/SystemTimeTimezoneApi.md#set) | **PUT** /appliance/system/time/timezone | Set time zone.
`VSphereAutomation::Appliance::SystemUptimeApi` | [**get**](docs/SystemUptimeApi.md#get) | **GET** /appliance/system/uptime | Get the system uptime.
`VSphereAutomation::Appliance::SystemVersionApi` | [**get**](docs/SystemVersionApi.md#get) | **GET** /appliance/system/version | Get the version.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**disable**](docs/TechpreviewMonitoringSnmpApi.md#disable) | **POST** /appliance/techpreview/monitoring/snmp/disable | Stop an enabled SNMP agent.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**enable**](docs/TechpreviewMonitoringSnmpApi.md#enable) | **POST** /appliance/techpreview/monitoring/snmp/enable | Start a disabled SNMP agent.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**get**](docs/TechpreviewMonitoringSnmpApi.md#get) | **GET** /appliance/techpreview/monitoring/snmp | Return an SNMP agent configuration.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**hash**](docs/TechpreviewMonitoringSnmpApi.md#hash) | **POST** /appliance/techpreview/monitoring/snmp/hash | Generate localized keys for secure SNMPv3 communications.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**limits**](docs/TechpreviewMonitoringSnmpApi.md#limits) | **GET** /appliance/techpreview/monitoring/snmp/limits | Get SNMP limits information.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**reset**](docs/TechpreviewMonitoringSnmpApi.md#reset) | **POST** /appliance/techpreview/monitoring/snmp/reset | Restore settings to factory defaults.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**set**](docs/TechpreviewMonitoringSnmpApi.md#set) | **PUT** /appliance/techpreview/monitoring/snmp | Set SNMP configuration.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**stats**](docs/TechpreviewMonitoringSnmpApi.md#stats) | **GET** /appliance/techpreview/monitoring/snmp/stats | Generate diagnostics report for snmp agent.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**test**](docs/TechpreviewMonitoringSnmpApi.md#test) | **POST** /appliance/techpreview/monitoring/snmp/test | Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).
`VSphereAutomation::Appliance::TechpreviewServicesStatusApi` | [**get**](docs/TechpreviewServicesStatusApi.md#get) | **POST** /appliance/techpreview/services/status/get | Get status of a service.
`VSphereAutomation::Appliance::TimesyncApi` | [**get**](docs/TimesyncApi.md#get) | **GET** /appliance/timesync | Get time synchronization mode.
`VSphereAutomation::Appliance::TimesyncApi` | [**set**](docs/TimesyncApi.md#set) | **PUT** /appliance/timesync | Set time synchronization mode.
`VSphereAutomation::Appliance::UpdateApi` | [**cancel**](docs/UpdateApi.md#cancel) | **POST** /appliance/update?action&#x3D;cancel | Request the cancellation the update operation that is currently in progress.
`VSphereAutomation::Appliance::UpdateApi` | [**get**](docs/UpdateApi.md#get) | **GET** /appliance/update | Gets the current status of the appliance update.
`VSphereAutomation::Appliance::UpdatePendingApi` | [**get**](docs/UpdatePendingApi.md#get) | **GET** /appliance/update/pending/{version} | Gets update information
`VSphereAutomation::Appliance::UpdatePendingApi` | [**install**](docs/UpdatePendingApi.md#install) | **POST** /appliance/update/pending/{version}?action&#x3D;install | Starts operation of installing the appliance update. Will fail is the update is not staged
`VSphereAutomation::Appliance::UpdatePendingApi` | [**list**](docs/UpdatePendingApi.md#list) | **GET** /appliance/update/pending | Checks if new updates are available.
`VSphereAutomation::Appliance::UpdatePendingApi` | [**precheck**](docs/UpdatePendingApi.md#precheck) | **POST** /appliance/update/pending/{version}?action&#x3D;precheck | Runs update precheck
`VSphereAutomation::Appliance::UpdatePendingApi` | [**stage**](docs/UpdatePendingApi.md#stage) | **POST** /appliance/update/pending/{version}?action&#x3D;stage | Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
`VSphereAutomation::Appliance::UpdatePendingApi` | [**stage_and_install**](docs/UpdatePendingApi.md#stage_and_install) | **POST** /appliance/update/pending/{version}?action&#x3D;stage-and-install | Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
`VSphereAutomation::Appliance::UpdatePendingApi` | [**validate**](docs/UpdatePendingApi.md#validate) | **POST** /appliance/update/pending/{version}?action&#x3D;validate | Validates the user provided data before the update installation.
`VSphereAutomation::Appliance::UpdatePolicyApi` | [**get**](docs/UpdatePolicyApi.md#get) | **GET** /appliance/update/policy | Gets the automatic update checking and staging policy.
`VSphereAutomation::Appliance::UpdatePolicyApi` | [**set**](docs/UpdatePolicyApi.md#set) | **PUT** /appliance/update/policy | Sets the automatic update checking and staging policy.
`VSphereAutomation::Appliance::UpdateStagedApi` | [**delete**](docs/UpdateStagedApi.md#delete) | **DELETE** /appliance/update/staged | Deletes the staged update
`VSphereAutomation::Appliance::UpdateStagedApi` | [**get**](docs/UpdateStagedApi.md#get) | **GET** /appliance/update/staged | Gets the current status of the staged update
`VSphereAutomation::Appliance::VmonServiceApi` | [**get**](docs/VmonServiceApi.md#get) | **GET** /appliance/vmon/service/{service} | Returns the state of a service.
`VSphereAutomation::Appliance::VmonServiceApi` | [**list_details**](docs/VmonServiceApi.md#list_details) | **GET** /appliance/vmon/service | Lists details of services managed by vMon.
`VSphereAutomation::Appliance::VmonServiceApi` | [**restart**](docs/VmonServiceApi.md#restart) | **POST** /appliance/vmon/service/{service}/restart | Restarts a service
`VSphereAutomation::Appliance::VmonServiceApi` | [**start**](docs/VmonServiceApi.md#start) | **POST** /appliance/vmon/service/{service}/start | Starts a service
`VSphereAutomation::Appliance::VmonServiceApi` | [**stop**](docs/VmonServiceApi.md#stop) | **POST** /appliance/vmon/service/{service}/stop | Stops a service
`VSphereAutomation::Appliance::VmonServiceApi` | [**update**](docs/VmonServiceApi.md#update) | **PATCH** /appliance/vmon/service/{service} | Updates the properties of a service.


## Documentation for Models

 - [VSphereAutomation::Appliance::ApplianceAccessConsolecliResult](docs/ApplianceAccessConsolecliResult.md)
 - [VSphereAutomation::Appliance::ApplianceAccessConsolecliSet](docs/ApplianceAccessConsolecliSet.md)
 - [VSphereAutomation::Appliance::ApplianceAccessDcuiResult](docs/ApplianceAccessDcuiResult.md)
 - [VSphereAutomation::Appliance::ApplianceAccessDcuiSet](docs/ApplianceAccessDcuiSet.md)
 - [VSphereAutomation::Appliance::ApplianceAccessShellResult](docs/ApplianceAccessShellResult.md)
 - [VSphereAutomation::Appliance::ApplianceAccessShellSet](docs/ApplianceAccessShellSet.md)
 - [VSphereAutomation::Appliance::ApplianceAccessShellShellConfig](docs/ApplianceAccessShellShellConfig.md)
 - [VSphereAutomation::Appliance::ApplianceAccessSshResult](docs/ApplianceAccessSshResult.md)
 - [VSphereAutomation::Appliance::ApplianceAccessSshSet](docs/ApplianceAccessSshSet.md)
 - [VSphereAutomation::Appliance::ApplianceHealthApplmgmtResult](docs/ApplianceHealthApplmgmtResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabasestorageHealthLevel](docs/ApplianceHealthDatabasestorageHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabasestorageResult](docs/ApplianceHealthDatabasestorageResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthLoadHealthLevel](docs/ApplianceHealthLoadHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthLoadResult](docs/ApplianceHealthLoadResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthMemHealthLevel](docs/ApplianceHealthMemHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthMemResult](docs/ApplianceHealthMemResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthMessagesResult](docs/ApplianceHealthMessagesResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSoftwarepackagesHealthLevel](docs/ApplianceHealthSoftwarepackagesHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSoftwarepackagesResult](docs/ApplianceHealthSoftwarepackagesResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthStorageHealthLevel](docs/ApplianceHealthStorageHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthStorageResult](docs/ApplianceHealthStorageResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSwapHealthLevel](docs/ApplianceHealthSwapHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSwapResult](docs/ApplianceHealthSwapResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSystemHealthLevel](docs/ApplianceHealthSystemHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSystemLastcheckResult](docs/ApplianceHealthSystemLastcheckResult.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSystemResult](docs/ApplianceHealthSystemResult.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsConfig](docs/ApplianceLocalAccountsConfig.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsCreate](docs/ApplianceLocalAccountsCreate.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsInfo](docs/ApplianceLocalAccountsInfo.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsListResult](docs/ApplianceLocalAccountsListResult.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsPolicyInfo](docs/ApplianceLocalAccountsPolicyInfo.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsPolicyResult](docs/ApplianceLocalAccountsPolicyResult.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsPolicySet](docs/ApplianceLocalAccountsPolicySet.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsResult](docs/ApplianceLocalAccountsResult.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsSet](docs/ApplianceLocalAccountsSet.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsUpdate](docs/ApplianceLocalAccountsUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsUpdateConfig](docs/ApplianceLocalAccountsUpdateConfig.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingConfig](docs/ApplianceLoggingForwardingConfig.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingConnectionStatus](docs/ApplianceLoggingForwardingConnectionStatus.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingConnectionStatusState](docs/ApplianceLoggingForwardingConnectionStatusState.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingProtocol](docs/ApplianceLoggingForwardingProtocol.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingResult](docs/ApplianceLoggingForwardingResult.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingSet](docs/ApplianceLoggingForwardingSet.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingTest](docs/ApplianceLoggingForwardingTest.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingTestResult](docs/ApplianceLoggingForwardingTestResult.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringFunctionType](docs/ApplianceMonitoringFunctionType.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringIntervalType](docs/ApplianceMonitoringIntervalType.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringListResult](docs/ApplianceMonitoringListResult.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringMonitoredItem](docs/ApplianceMonitoringMonitoredItem.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringMonitoredItemData](docs/ApplianceMonitoringMonitoredItemData.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringMonitoredItemDataRequest](docs/ApplianceMonitoringMonitoredItemDataRequest.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringQueryResult](docs/ApplianceMonitoringQueryResult.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringResult](docs/ApplianceMonitoringResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDNSInfo](docs/ApplianceNetworkingDNSInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDNSInfoDNSMode](docs/ApplianceNetworkingDNSInfoDNSMode.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsDomainsAdd](docs/ApplianceNetworkingDnsDomainsAdd.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsDomainsListResult](docs/ApplianceNetworkingDnsDomainsListResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsDomainsSet](docs/ApplianceNetworkingDnsDomainsSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameMessage](docs/ApplianceNetworkingDnsHostnameMessage.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameMessageStatus](docs/ApplianceNetworkingDnsHostnameMessageStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameResult](docs/ApplianceNetworkingDnsHostnameResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameSet](docs/ApplianceNetworkingDnsHostnameSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTest](docs/ApplianceNetworkingDnsHostnameTest.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTestResult](docs/ApplianceNetworkingDnsHostnameTestResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTestStatus](docs/ApplianceNetworkingDnsHostnameTestStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTestStatusInfo](docs/ApplianceNetworkingDnsHostnameTestStatusInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersAdd](docs/ApplianceNetworkingDnsServersAdd.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersDNSServerConfig](docs/ApplianceNetworkingDnsServersDNSServerConfig.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersDNSServerMode](docs/ApplianceNetworkingDnsServersDNSServerMode.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersMessage](docs/ApplianceNetworkingDnsServersMessage.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersMessageStatus](docs/ApplianceNetworkingDnsServersMessageStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersResult](docs/ApplianceNetworkingDnsServersResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersSet](docs/ApplianceNetworkingDnsServersSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTest](docs/ApplianceNetworkingDnsServersTest.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTestResult](docs/ApplianceNetworkingDnsServersTestResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTestStatus](docs/ApplianceNetworkingDnsServersTestStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTestStatusInfo](docs/ApplianceNetworkingDnsServersTestStatusInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundPolicy](docs/ApplianceNetworkingFirewallInboundPolicy.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundResult](docs/ApplianceNetworkingFirewallInboundResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundRule](docs/ApplianceNetworkingFirewallInboundRule.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundSet](docs/ApplianceNetworkingFirewallInboundSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInfo](docs/ApplianceNetworkingInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInfoInterfaces](docs/ApplianceNetworkingInfoInterfaces.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesInterfaceInfo](docs/ApplianceNetworkingInterfacesInterfaceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesInterfaceStatus](docs/ApplianceNetworkingInterfacesInterfaceStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Config](docs/ApplianceNetworkingInterfacesIpv4Config.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Info](docs/ApplianceNetworkingInterfacesIpv4Info.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Mode](docs/ApplianceNetworkingInterfacesIpv4Mode.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Result](docs/ApplianceNetworkingInterfacesIpv4Result.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Set](docs/ApplianceNetworkingInterfacesIpv4Set.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Address](docs/ApplianceNetworkingInterfacesIpv6Address.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6AddressInfo](docs/ApplianceNetworkingInterfacesIpv6AddressInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Config](docs/ApplianceNetworkingInterfacesIpv6Config.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Info](docs/ApplianceNetworkingInterfacesIpv6Info.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Origin](docs/ApplianceNetworkingInterfacesIpv6Origin.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Result](docs/ApplianceNetworkingInterfacesIpv6Result.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Set](docs/ApplianceNetworkingInterfacesIpv6Set.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Status](docs/ApplianceNetworkingInterfacesIpv6Status.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesListResult](docs/ApplianceNetworkingInterfacesListResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesResult](docs/ApplianceNetworkingInterfacesResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingNoProxyResult](docs/ApplianceNetworkingNoProxyResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingNoProxySet](docs/ApplianceNetworkingNoProxySet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyConfig](docs/ApplianceNetworkingProxyConfig.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyListResult](docs/ApplianceNetworkingProxyListResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyListResultValue](docs/ApplianceNetworkingProxyListResultValue.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyProtocol](docs/ApplianceNetworkingProxyProtocol.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyResult](docs/ApplianceNetworkingProxyResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyServerStatus](docs/ApplianceNetworkingProxyServerStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxySet](docs/ApplianceNetworkingProxySet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyTest](docs/ApplianceNetworkingProxyTest.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyTestResult](docs/ApplianceNetworkingProxyTestResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingResult](docs/ApplianceNetworkingResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingUpdate](docs/ApplianceNetworkingUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingUpdateSpec](docs/ApplianceNetworkingUpdateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceNotification](docs/ApplianceNotification.md)
 - [VSphereAutomation::Appliance::ApplianceNotifications](docs/ApplianceNotifications.md)
 - [VSphereAutomation::Appliance::ApplianceNtpLocalizableMessage](docs/ApplianceNtpLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceNtpResult](docs/ApplianceNtpResult.md)
 - [VSphereAutomation::Appliance::ApplianceNtpServerStatus](docs/ApplianceNtpServerStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNtpSet](docs/ApplianceNtpSet.md)
 - [VSphereAutomation::Appliance::ApplianceNtpTest](docs/ApplianceNtpTest.md)
 - [VSphereAutomation::Appliance::ApplianceNtpTestResult](docs/ApplianceNtpTestResult.md)
 - [VSphereAutomation::Appliance::ApplianceNtpTestRunStatus](docs/ApplianceNtpTestRunStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupBackupRequest](docs/ApplianceRecoveryBackupBackupRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobBackupJobStatus](docs/ApplianceRecoveryBackupJobBackupJobStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobBackupRequest](docs/ApplianceRecoveryBackupJobBackupRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobBackupRestoreProcessState](docs/ApplianceRecoveryBackupJobBackupRestoreProcessState.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobCancelResult](docs/ApplianceRecoveryBackupJobCancelResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobCreate](docs/ApplianceRecoveryBackupJobCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobCreateResult](docs/ApplianceRecoveryBackupJobCreateResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsFilterSpec](docs/ApplianceRecoveryBackupJobDetailsFilterSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsInfo](docs/ApplianceRecoveryBackupJobDetailsInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsListResult](docs/ApplianceRecoveryBackupJobDetailsListResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsListResultValue](docs/ApplianceRecoveryBackupJobDetailsListResultValue.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsType](docs/ApplianceRecoveryBackupJobDetailsType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobListResult](docs/ApplianceRecoveryBackupJobListResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobLocalizableMessage](docs/ApplianceRecoveryBackupJobLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobLocationType](docs/ApplianceRecoveryBackupJobLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobResult](docs/ApplianceRecoveryBackupJobResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobReturnResult](docs/ApplianceRecoveryBackupJobReturnResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobReturnStatus](docs/ApplianceRecoveryBackupJobReturnStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupLocalizableMessage](docs/ApplianceRecoveryBackupLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupLocationSpec](docs/ApplianceRecoveryBackupLocationSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupLocationType](docs/ApplianceRecoveryBackupLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsListResult](docs/ApplianceRecoveryBackupPartsListResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsLocalizableMessage](docs/ApplianceRecoveryBackupPartsLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsPart](docs/ApplianceRecoveryBackupPartsPart.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsResult](docs/ApplianceRecoveryBackupPartsResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupReturnResult](docs/ApplianceRecoveryBackupReturnResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupReturnStatus](docs/ApplianceRecoveryBackupReturnStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesCreate](docs/ApplianceRecoveryBackupSchedulesCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesCreateSpec](docs/ApplianceRecoveryBackupSchedulesCreateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesDayOfWeek](docs/ApplianceRecoveryBackupSchedulesDayOfWeek.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesInfo](docs/ApplianceRecoveryBackupSchedulesInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesListResult](docs/ApplianceRecoveryBackupSchedulesListResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesListResultValue](docs/ApplianceRecoveryBackupSchedulesListResultValue.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRecurrenceInfo](docs/ApplianceRecoveryBackupSchedulesRecurrenceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesResult](docs/ApplianceRecoveryBackupSchedulesResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRetentionInfo](docs/ApplianceRecoveryBackupSchedulesRetentionInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRun](docs/ApplianceRecoveryBackupSchedulesRun.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRunResult](docs/ApplianceRecoveryBackupSchedulesRunResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesUpdate](docs/ApplianceRecoveryBackupSchedulesUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesUpdateSpec](docs/ApplianceRecoveryBackupSchedulesUpdateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveFilterSpec](docs/ApplianceRecoveryBackupSystemNameArchiveFilterSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveInfo](docs/ApplianceRecoveryBackupSystemNameArchiveInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveListResult](docs/ApplianceRecoveryBackupSystemNameArchiveListResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveResult](docs/ApplianceRecoveryBackupSystemNameArchiveResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveSummary](docs/ApplianceRecoveryBackupSystemNameArchiveSummary.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameListResult](docs/ApplianceRecoveryBackupSystemNameListResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupValidate](docs/ApplianceRecoveryBackupValidate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupValidateResult](docs/ApplianceRecoveryBackupValidateResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryInfo](docs/ApplianceRecoveryInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobCreate](docs/ApplianceRecoveryReconciliationJobCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobCreateResult](docs/ApplianceRecoveryReconciliationJobCreateResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobCreateSpec](docs/ApplianceRecoveryReconciliationJobCreateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobInfo](docs/ApplianceRecoveryReconciliationJobInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobResult](docs/ApplianceRecoveryReconciliationJobResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobStatus](docs/ApplianceRecoveryReconciliationJobStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobBackupRestoreProcessState](docs/ApplianceRecoveryRestoreJobBackupRestoreProcessState.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobCancelResult](docs/ApplianceRecoveryRestoreJobCancelResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobCreate](docs/ApplianceRecoveryRestoreJobCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobCreateResult](docs/ApplianceRecoveryRestoreJobCreateResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobLocalizableMessage](docs/ApplianceRecoveryRestoreJobLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobLocationType](docs/ApplianceRecoveryRestoreJobLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobRestoreJobStatus](docs/ApplianceRecoveryRestoreJobRestoreJobStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobRestoreRequest](docs/ApplianceRecoveryRestoreJobRestoreRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobResult](docs/ApplianceRecoveryRestoreJobResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobReturnResult](docs/ApplianceRecoveryRestoreJobReturnResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobReturnStatus](docs/ApplianceRecoveryRestoreJobReturnStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreLocalizableMessage](docs/ApplianceRecoveryRestoreLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreLocationType](docs/ApplianceRecoveryRestoreLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreMetadata](docs/ApplianceRecoveryRestoreMetadata.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreRestoreRequest](docs/ApplianceRecoveryRestoreRestoreRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreValidate](docs/ApplianceRecoveryRestoreValidate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreValidateResult](docs/ApplianceRecoveryRestoreValidateResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryResult](docs/ApplianceRecoveryResult.md)
 - [VSphereAutomation::Appliance::ApplianceServicesInfo](docs/ApplianceServicesInfo.md)
 - [VSphereAutomation::Appliance::ApplianceServicesListResult](docs/ApplianceServicesListResult.md)
 - [VSphereAutomation::Appliance::ApplianceServicesListResultValue](docs/ApplianceServicesListResultValue.md)
 - [VSphereAutomation::Appliance::ApplianceServicesResult](docs/ApplianceServicesResult.md)
 - [VSphereAutomation::Appliance::ApplianceServicesState](docs/ApplianceServicesState.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownPoweroff](docs/ApplianceShutdownPoweroff.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownReboot](docs/ApplianceShutdownReboot.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownResult](docs/ApplianceShutdownResult.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownShutdownConfig](docs/ApplianceShutdownShutdownConfig.md)
 - [VSphereAutomation::Appliance::ApplianceSubtaskInfo](docs/ApplianceSubtaskInfo.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageListResult](docs/ApplianceSystemStorageListResult.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageResizeExResult](docs/ApplianceSystemStorageResizeExResult.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageResizeExResultValue](docs/ApplianceSystemStorageResizeExResultValue.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageStorageChange](docs/ApplianceSystemStorageStorageChange.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageStorageMapping](docs/ApplianceSystemStorageStorageMapping.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeResult](docs/ApplianceSystemTimeResult.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeSystemTimeStruct](docs/ApplianceSystemTimeSystemTimeStruct.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeTimezoneResult](docs/ApplianceSystemTimeTimezoneResult.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeTimezoneSet](docs/ApplianceSystemTimeTimezoneSet.md)
 - [VSphereAutomation::Appliance::ApplianceSystemUptimeResult](docs/ApplianceSystemUptimeResult.md)
 - [VSphereAutomation::Appliance::ApplianceSystemVersionResult](docs/ApplianceSystemVersionResult.md)
 - [VSphereAutomation::Appliance::ApplianceSystemVersionVersionStruct](docs/ApplianceSystemVersionVersionStruct.md)
 - [VSphereAutomation::Appliance::ApplianceTaskInfo](docs/ApplianceTaskInfo.md)
 - [VSphereAutomation::Appliance::ApplianceTaskInfoSubtasks](docs/ApplianceTaskInfoSubtasks.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpHash](docs/ApplianceTechpreviewMonitoringSnmpHash.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpHashResult](docs/ApplianceTechpreviewMonitoringSnmpHashResult.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpLimitsResult](docs/ApplianceTechpreviewMonitoringSnmpLimitsResult.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpResult](docs/ApplianceTechpreviewMonitoringSnmpResult.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPAuthProto](docs/ApplianceTechpreviewMonitoringSnmpSNMPAuthProto.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPConfig](docs/ApplianceTechpreviewMonitoringSnmpSNMPConfig.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPConfigReadOnly](docs/ApplianceTechpreviewMonitoringSnmpSNMPConfigReadOnly.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPHashConfig](docs/ApplianceTechpreviewMonitoringSnmpSNMPHashConfig.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPHashResults](docs/ApplianceTechpreviewMonitoringSnmpSNMPHashResults.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPLimits](docs/ApplianceTechpreviewMonitoringSnmpSNMPLimits.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPPrivProto](docs/ApplianceTechpreviewMonitoringSnmpSNMPPrivProto.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPRemoteUser](docs/ApplianceTechpreviewMonitoringSnmpSNMPRemoteUser.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPSecLevel](docs/ApplianceTechpreviewMonitoringSnmpSNMPSecLevel.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPStats](docs/ApplianceTechpreviewMonitoringSnmpSNMPStats.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPTestResults](docs/ApplianceTechpreviewMonitoringSnmpSNMPTestResults.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPUser](docs/ApplianceTechpreviewMonitoringSnmpSNMPUser.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPv1TrapTarget](docs/ApplianceTechpreviewMonitoringSnmpSNMPv1TrapTarget.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPv3Notfication](docs/ApplianceTechpreviewMonitoringSnmpSNMPv3Notfication.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSNMPv3Target](docs/ApplianceTechpreviewMonitoringSnmpSNMPv3Target.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpSet](docs/ApplianceTechpreviewMonitoringSnmpSet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpStatsResult](docs/ApplianceTechpreviewMonitoringSnmpStatsResult.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpTestResult](docs/ApplianceTechpreviewMonitoringSnmpTestResult.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesStatusGet](docs/ApplianceTechpreviewServicesStatusGet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesStatusResult](docs/ApplianceTechpreviewServicesStatusResult.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesStatusServiceStatus](docs/ApplianceTechpreviewServicesStatusServiceStatus.md)
 - [VSphereAutomation::Appliance::ApplianceTimesyncResult](docs/ApplianceTimesyncResult.md)
 - [VSphereAutomation::Appliance::ApplianceTimesyncSet](docs/ApplianceTimesyncSet.md)
 - [VSphereAutomation::Appliance::ApplianceTimesyncTimeSyncMode](docs/ApplianceTimesyncTimeSyncMode.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateCommonInfoCategory](docs/ApplianceUpdateCommonInfoCategory.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateCommonInfoPriority](docs/ApplianceUpdateCommonInfoPriority.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateCommonInfoSeverity](docs/ApplianceUpdateCommonInfoSeverity.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateInfo](docs/ApplianceUpdateInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingInfo](docs/ApplianceUpdatePendingInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingInstall](docs/ApplianceUpdatePendingInstall.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingListResult](docs/ApplianceUpdatePendingListResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingPrecheckResult](docs/ApplianceUpdatePendingPrecheckResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingQuestion](docs/ApplianceUpdatePendingQuestion.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingQuestionInputType](docs/ApplianceUpdatePendingQuestionInputType.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingResult](docs/ApplianceUpdatePendingResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingSourceType](docs/ApplianceUpdatePendingSourceType.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingStageAndInstall](docs/ApplianceUpdatePendingStageAndInstall.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingValidate](docs/ApplianceUpdatePendingValidate.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingValidateResult](docs/ApplianceUpdatePendingValidateResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingValidateUserData](docs/ApplianceUpdatePendingValidateUserData.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyConfig](docs/ApplianceUpdatePolicyConfig.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyDayOfWeek](docs/ApplianceUpdatePolicyDayOfWeek.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyInfo](docs/ApplianceUpdatePolicyInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyResult](docs/ApplianceUpdatePolicyResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicySet](docs/ApplianceUpdatePolicySet.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyTime](docs/ApplianceUpdatePolicyTime.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateResult](docs/ApplianceUpdateResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateServiceInfo](docs/ApplianceUpdateServiceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateStagedInfo](docs/ApplianceUpdateStagedInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateStagedResult](docs/ApplianceUpdateStagedResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateState](docs/ApplianceUpdateState.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateSummary](docs/ApplianceUpdateSummary.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceHealth](docs/ApplianceVmonServiceHealth.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceInfo](docs/ApplianceVmonServiceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceListDetailsResult](docs/ApplianceVmonServiceListDetailsResult.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceListDetailsResultValue](docs/ApplianceVmonServiceListDetailsResultValue.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceResult](docs/ApplianceVmonServiceResult.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceStartupType](docs/ApplianceVmonServiceStartupType.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceState](docs/ApplianceVmonServiceState.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceUpdate](docs/ApplianceVmonServiceUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceUpdateSpec](docs/ApplianceVmonServiceUpdateSpec.md)
 - [VSphereAutomation::Appliance::CisTaskProgress](docs/CisTaskProgress.md)
 - [VSphereAutomation::Appliance::CisTaskStatus](docs/CisTaskStatus.md)
 - [VSphereAutomation::Appliance::VapiStdDynamicID](docs/VapiStdDynamicID.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsAlreadyExists](docs/VapiStdErrorsAlreadyExists.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsAlreadyExistsError](docs/VapiStdErrorsAlreadyExistsError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsAlreadyInDesiredState](docs/VapiStdErrorsAlreadyInDesiredState.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsAlreadyInDesiredStateError](docs/VapiStdErrorsAlreadyInDesiredStateError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsError](docs/VapiStdErrorsError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsErrorError](docs/VapiStdErrorsErrorError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsFeatureInUse](docs/VapiStdErrorsFeatureInUse.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsFeatureInUseError](docs/VapiStdErrorsFeatureInUseError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsInvalidArgumentError](docs/VapiStdErrorsInvalidArgumentError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotAllowedInCurrentState](docs/VapiStdErrorsNotAllowedInCurrentState.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotAllowedInCurrentStateError](docs/VapiStdErrorsNotAllowedInCurrentStateError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotFoundError](docs/VapiStdErrorsNotFoundError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsResourceBusy](docs/VapiStdErrorsResourceBusy.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsResourceBusyError](docs/VapiStdErrorsResourceBusyError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsTimedOut](docs/VapiStdErrorsTimedOut.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsTimedOutError](docs/VapiStdErrorsTimedOutError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnableToAllocateResource](docs/VapiStdErrorsUnableToAllocateResource.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnableToAllocateResourceError](docs/VapiStdErrorsUnableToAllocateResourceError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthenticated](docs/VapiStdErrorsUnauthenticated.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthenticatedError](docs/VapiStdErrorsUnauthenticatedError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthorizedError](docs/VapiStdErrorsUnauthorizedError.md)
 - [VSphereAutomation::Appliance::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)

