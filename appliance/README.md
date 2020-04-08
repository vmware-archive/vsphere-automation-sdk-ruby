# vsphere-automation-appliance

The Ruby gem for the vSphere Appliance API

- API version: 2.0.0
- Package version: 0.5.0

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

# Setup authorization
VSphereAutomation.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

All URIs are relative to *https://&lt;vcenter&gt;*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::Appliance::AccessConsolecliApi` | [**get**](docs/AccessConsolecliApi.md#get) | **GET** /rest/appliance/access/consolecli | Get enabled state of the console-based controlled CLI (TTY1).
`VSphereAutomation::Appliance::AccessConsolecliApi` | [**set**](docs/AccessConsolecliApi.md#set) | **PUT** /rest/appliance/access/consolecli | Set enabled state of the console-based controlled CLI (TTY1).
`VSphereAutomation::Appliance::AccessDcuiApi` | [**get**](docs/AccessDcuiApi.md#get) | **GET** /rest/appliance/access/dcui | Get enabled state of Direct Console User Interface (DCUI TTY2).
`VSphereAutomation::Appliance::AccessDcuiApi` | [**set**](docs/AccessDcuiApi.md#set) | **PUT** /rest/appliance/access/dcui | Set enabled state of Direct Console User Interface (DCUI TTY2).
`VSphereAutomation::Appliance::AccessShellApi` | [**get**](docs/AccessShellApi.md#get) | **GET** /rest/appliance/access/shell | Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
`VSphereAutomation::Appliance::AccessShellApi` | [**set**](docs/AccessShellApi.md#set) | **PUT** /rest/appliance/access/shell | Set enabled state of BASH, that is, access to BASH from within the controlled CLI.
`VSphereAutomation::Appliance::AccessSshApi` | [**get**](docs/AccessSshApi.md#get) | **GET** /rest/appliance/access/ssh | Get enabled state of the SSH-based controlled CLI.
`VSphereAutomation::Appliance::AccessSshApi` | [**set**](docs/AccessSshApi.md#set) | **PUT** /rest/appliance/access/ssh | Set enabled state of the SSH-based controlled CLI.
`VSphereAutomation::Appliance::EnvironmentApi` | [**get**](docs/EnvironmentApi.md#get) | **GET** /rest/appliance/environment | Gets the properties of the appliance environment.
`VSphereAutomation::Appliance::EnvironmentApi` | [**set**](docs/EnvironmentApi.md#set) | **PUT** /rest/appliance/environment | Sets the properties of the appliance environment.
`VSphereAutomation::Appliance::HealthApi` | [**messages**](docs/HealthApi.md#messages) | **GET** /rest/appliance/health/{item}/messages | Get health messages.
`VSphereAutomation::Appliance::HealthApplmgmtApi` | [**get**](docs/HealthApplmgmtApi.md#get) | **GET** /rest/appliance/health/applmgmt | Get health status of applmgmt services.
`VSphereAutomation::Appliance::HealthCheckSettingsApi` | [**get**](docs/HealthCheckSettingsApi.md#get) | **GET** /rest/appliance/health/settings | Get health settings for vCenter Server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::HealthCheckSettingsApi` | [**update**](docs/HealthCheckSettingsApi.md#update) | **PATCH** /rest/appliance/health/settings | Set health settings based on provided healthSpec Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::HealthDatabaseApi` | [**get**](docs/HealthDatabaseApi.md#get) | **GET** /rest/appliance/health/database | Returns the health status of the database. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::HealthDatabasestorageApi` | [**get**](docs/HealthDatabasestorageApi.md#get) | **GET** /rest/appliance/health/database-storage | Get database storage health.
`VSphereAutomation::Appliance::HealthLoadApi` | [**get**](docs/HealthLoadApi.md#get) | **GET** /rest/appliance/health/load | Get load health.
`VSphereAutomation::Appliance::HealthMemApi` | [**get**](docs/HealthMemApi.md#get) | **GET** /rest/appliance/health/mem | Get memory health.
`VSphereAutomation::Appliance::HealthSoftwarepackagesApi` | [**get**](docs/HealthSoftwarepackagesApi.md#get) | **GET** /rest/appliance/health/software-packages | Get information on available software updates available in the remote vSphere Update Manager repository. Red indicates that security updates are available. Orange indicates that non-security updates are available. Green indicates that there are no updates available. Gray indicates that there was an error retreiving information on software updates.
`VSphereAutomation::Appliance::HealthStorageApi` | [**get**](docs/HealthStorageApi.md#get) | **GET** /rest/appliance/health/storage | Get storage health.
`VSphereAutomation::Appliance::HealthSwapApi` | [**get**](docs/HealthSwapApi.md#get) | **GET** /rest/appliance/health/swap | Get swap health.
`VSphereAutomation::Appliance::HealthSystemApi` | [**get**](docs/HealthSystemApi.md#get) | **GET** /rest/appliance/health/system | Get overall health of system.
`VSphereAutomation::Appliance::HealthSystemApi` | [**lastcheck**](docs/HealthSystemApi.md#lastcheck) | **GET** /rest/appliance/health/system/lastcheck | Get last check timestamp of the health of the system.
`VSphereAutomation::Appliance::InfraprofileConfigsApi` | [**export**](docs/InfraprofileConfigsApi.md#export) | **POST** /api/appliance/infraprofile/configs?action&#x3D;export | Exports the desired profile specification. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
`VSphereAutomation::Appliance::InfraprofileConfigsApi` | [**import_profile_task**](docs/InfraprofileConfigsApi.md#import_profile_task) | **POST** /api/appliance/infraprofile/configs?action&#x3D;import&amp;vmw-task&#x3D;true | Imports the desired profile specification.
`VSphereAutomation::Appliance::InfraprofileConfigsApi` | [**list**](docs/InfraprofileConfigsApi.md#list) | **GET** /api/appliance/infraprofile/configs | List all the profiles which are registered. if you do not have all of the privileges described as follows:     -  Operation execution requires Infraprofile.Read.  
`VSphereAutomation::Appliance::InfraprofileConfigsApi` | [**validate_task**](docs/InfraprofileConfigsApi.md#validate_task) | **POST** /api/appliance/infraprofile/configs?action&#x3D;validate&amp;vmw-task&#x3D;true | Validates the desired profile specification.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**create**](docs/LocalAccountsApi.md#create) | **POST** /rest/appliance/local-accounts/{username} | Create a new local user account.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**delete**](docs/LocalAccountsApi.md#delete) | **DELETE** /rest/appliance/local-accounts/{username} | Delete a local user account.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**get**](docs/LocalAccountsApi.md#get) | **GET** /rest/appliance/local-accounts/{username} | Get the local user account information.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**list**](docs/LocalAccountsApi.md#list) | **GET** /rest/appliance/local-accounts | Get a list of the local user accounts.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**set**](docs/LocalAccountsApi.md#set) | **PUT** /rest/appliance/local-accounts/{username} | Set local user account properties.
`VSphereAutomation::Appliance::LocalAccountsApi` | [**update**](docs/LocalAccountsApi.md#update) | **PATCH** /rest/appliance/local-accounts/{username} | Update selected fields in local user account properties.
`VSphereAutomation::Appliance::LocalAccountsPolicyApi` | [**get**](docs/LocalAccountsPolicyApi.md#get) | **GET** /rest/appliance/local-accounts/global-policy | Get the global password policy.
`VSphereAutomation::Appliance::LocalAccountsPolicyApi` | [**set**](docs/LocalAccountsPolicyApi.md#set) | **PUT** /rest/appliance/local-accounts/global-policy | Set the global password policy.
`VSphereAutomation::Appliance::LoggingForwardingApi` | [**get**](docs/LoggingForwardingApi.md#get) | **GET** /rest/appliance/logging/forwarding | Returns the configuration for forwarding log messages to remote logging servers.
`VSphereAutomation::Appliance::LoggingForwardingApi` | [**set**](docs/LoggingForwardingApi.md#set) | **PUT** /rest/appliance/logging/forwarding | Sets the configuration for forwarding log messages to remote log servers.
`VSphereAutomation::Appliance::LoggingForwardingApi` | [**test**](docs/LoggingForwardingApi.md#test) | **POST** /rest/appliance/logging/forwarding?action&#x3D;test | Validates the current log forwarding configuration by checking the liveness of the remote machine and optionally sending a test diagnostic log message from the appliance to all configured logging servers to allow manual end-to-end validation. The message that is sent is: \"This is a diagnostic log test message from vCenter Server.\"
`VSphereAutomation::Appliance::MonitoringApi` | [**get**](docs/MonitoringApi.md#get) | **GET** /rest/appliance/monitoring/{stat_id} | Get monitored item info
`VSphereAutomation::Appliance::MonitoringApi` | [**list**](docs/MonitoringApi.md#list) | **GET** /rest/appliance/monitoring | Get monitored items list
`VSphereAutomation::Appliance::MonitoringApi` | [**query**](docs/MonitoringApi.md#query) | **GET** /rest/appliance/monitoring/query | Get monitoring data.
`VSphereAutomation::Appliance::NetworkingApi` | [**change_task**](docs/NetworkingApi.md#change_task) | **POST** /rest/appliance/networking?action&#x3D;change&amp;vmw-task&#x3D;true | Changes the Hostname/IP of the management network of vCenter appliance. The Hostname/IP change invokes the PNID change process which involves LDAP entry modification, updating registry entries, configuration files modification and network configuration changes. vCenter server is expected to be down for few minutes during these changes
`VSphereAutomation::Appliance::NetworkingApi` | [**get**](docs/NetworkingApi.md#get) | **GET** /rest/appliance/networking | Get Networking information for all configured interfaces.
`VSphereAutomation::Appliance::NetworkingApi` | [**reset**](docs/NetworkingApi.md#reset) | **POST** /rest/appliance/networking?action&#x3D;reset | Reset and restarts network configuration on all interfaces, also this will renew the DHCP lease for DHCP IP address.
`VSphereAutomation::Appliance::NetworkingApi` | [**update**](docs/NetworkingApi.md#update) | **PATCH** /rest/appliance/networking | Enable or Disable ipv6 on all interfaces
`VSphereAutomation::Appliance::NetworkingDnsDomainsApi` | [**add**](docs/NetworkingDnsDomainsApi.md#add) | **POST** /rest/appliance/networking/dns/domains | Add domain to DNS search domains.
`VSphereAutomation::Appliance::NetworkingDnsDomainsApi` | [**list**](docs/NetworkingDnsDomainsApi.md#list) | **GET** /rest/appliance/networking/dns/domains | Get list of DNS search domains.
`VSphereAutomation::Appliance::NetworkingDnsDomainsApi` | [**set**](docs/NetworkingDnsDomainsApi.md#set) | **PUT** /rest/appliance/networking/dns/domains | Set DNS search domains.
`VSphereAutomation::Appliance::NetworkingDnsHostnameApi` | [**get**](docs/NetworkingDnsHostnameApi.md#get) | **GET** /rest/appliance/networking/dns/hostname | Get the Fully Qualified Doman Name.
`VSphereAutomation::Appliance::NetworkingDnsHostnameApi` | [**set**](docs/NetworkingDnsHostnameApi.md#set) | **PUT** /rest/appliance/networking/dns/hostname | Set the Fully Qualified Domain Name.
`VSphereAutomation::Appliance::NetworkingDnsHostnameApi` | [**test**](docs/NetworkingDnsHostnameApi.md#test) | **POST** /rest/appliance/networking/dns/hostname/test | Test the Fully Qualified Domain Name.
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**add**](docs/NetworkingDnsServersApi.md#add) | **POST** /rest/appliance/networking/dns/servers | Add a DNS server. This method fails if mode argument is \"dhcp\"
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**get**](docs/NetworkingDnsServersApi.md#get) | **GET** /rest/appliance/networking/dns/servers | Get DNS server configuration.
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**set**](docs/NetworkingDnsServersApi.md#set) | **PUT** /rest/appliance/networking/dns/servers | Set the DNS server configuration. If you set the mode argument to \"DHCP\", a DHCP refresh is forced.
`VSphereAutomation::Appliance::NetworkingDnsServersApi` | [**test**](docs/NetworkingDnsServersApi.md#test) | **POST** /rest/appliance/networking/dns/servers/test | Test if dns servers are reachable.
`VSphereAutomation::Appliance::NetworkingFirewallInboundApi` | [**get**](docs/NetworkingFirewallInboundApi.md#get) | **GET** /rest/appliance/networking/firewall/inbound | Get the ordered list of firewall rules. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
`VSphereAutomation::Appliance::NetworkingFirewallInboundApi` | [**set**](docs/NetworkingFirewallInboundApi.md#set) | **PUT** /rest/appliance/networking/firewall/inbound | Set the ordered list of firewall rules to allow or deny traffic from one or more incoming IP addresses. This overwrites the existing firewall rules and creates a new rule list. Within the list of traffic rules, rules are processed in order of appearance, from top to bottom. For example, the list of rules can be as follows: <table> <tr> <th>Address</th><th>Prefix</th><th>Interface Name</th><th>Policy</th> </tr> <tr> <td>10.112.0.1</td><td>0</td><td>*</td><td>REJECT</td> </tr> <tr> <td>10.112.0.1</td><td>0</td><td>nic0</td><td>ACCEPT</td> </tr> </table> In the above example, the first rule drops all packets originating from 10.112.0.1 and<br> the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect, the second rule is always ignored which is not desired, hence the order has to be swapped. When a connection matches a firewall rule, further processing for the connection stops, and the appliance ignores any additional firewall rules you have set.
`VSphereAutomation::Appliance::NetworkingInterfacesApi` | [**get**](docs/NetworkingInterfacesApi.md#get) | **GET** /rest/appliance/networking/interfaces/{interface_name} | Get information about a particular network interface.
`VSphereAutomation::Appliance::NetworkingInterfacesApi` | [**list**](docs/NetworkingInterfacesApi.md#list) | **GET** /rest/appliance/networking/interfaces | Get list of available network interfaces, including those that are not yet configured.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv4Api` | [**get**](docs/NetworkingInterfacesIpv4Api.md#get) | **GET** /rest/appliance/networking/interfaces/{interface_name}/ipv4 | Get IPv4 network configuration for specific NIC.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv4Api` | [**set**](docs/NetworkingInterfacesIpv4Api.md#set) | **PUT** /rest/appliance/networking/interfaces/{interface_name}/ipv4 | Set IPv4 network configuration for specific network interface.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api` | [**get**](docs/NetworkingInterfacesIpv6Api.md#get) | **GET** /rest/appliance/networking/interfaces/{interface_name}/ipv6 | Get IPv6 network configuration for specific interface.
`VSphereAutomation::Appliance::NetworkingInterfacesIpv6Api` | [**set**](docs/NetworkingInterfacesIpv6Api.md#set) | **PUT** /rest/appliance/networking/interfaces/{interface_name}/ipv6 | Set IPv6 network configuration for specific interface.
`VSphereAutomation::Appliance::NetworkingNoProxyApi` | [**get**](docs/NetworkingNoProxyApi.md#get) | **GET** /rest/appliance/networking/noproxy | Returns servers for which no proxy configuration will be applied.
`VSphereAutomation::Appliance::NetworkingNoProxyApi` | [**set**](docs/NetworkingNoProxyApi.md#set) | **PUT** /rest/appliance/networking/noproxy | Sets servers for which no proxy configuration should be applied. This operation sets environment variables. In order for this operation to take effect, a logout from appliance or a service restart is required. If IPv4 is enabled, \"127.0.0.1\" and \"localhost\" will always bypass the proxy (even if they are not explicitly configured).
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**delete**](docs/NetworkingProxyApi.md#delete) | **DELETE** /rest/appliance/networking/proxy/{protocol} | Deletes a proxy configuration for a specific protocol.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**get**](docs/NetworkingProxyApi.md#get) | **GET** /rest/appliance/networking/proxy/{protocol} | Gets the proxy configuration for a specific protocol.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**list**](docs/NetworkingProxyApi.md#list) | **GET** /rest/appliance/networking/proxy | Gets proxy configuration for all configured protocols.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**set**](docs/NetworkingProxyApi.md#set) | **PUT** /rest/appliance/networking/proxy/{protocol} | Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
`VSphereAutomation::Appliance::NetworkingProxyApi` | [**test**](docs/NetworkingProxyApi.md#test) | **POST** /rest/appliance/networking/proxy/{protocol}?action&#x3D;test | Tests a proxy configuration by testing the connection to the proxy server and test host.
`VSphereAutomation::Appliance::NetworkingRoutesApi` | [**get**](docs/NetworkingRoutesApi.md#get) | **GET** /rest/appliance/networking/routes | Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::NetworkingRoutesApi` | [**set**](docs/NetworkingRoutesApi.md#set) | **PUT** /rest/appliance/networking/routes | Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::NetworkingRoutesApi` | [**test**](docs/NetworkingRoutesApi.md#test) | **POST** /rest/appliance/networking/routes?action&#x3D;test | Test connection to a list of gateways Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::NtpApi` | [**get**](docs/NtpApi.md#get) | **GET** /rest/appliance/ntp | Get the NTP configuration status. If you run the 'timesync.get' command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The 'ntp' command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
`VSphereAutomation::Appliance::NtpApi` | [**set**](docs/NtpApi.md#set) | **PUT** /rest/appliance/ntp | Set NTP servers. This method updates old NTP servers from configuration and sets the input NTP servers in the configuration. If NTP based time synchronization is used internally, the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time synchronization is not used, this method only replaces servers in the NTP configuration.
`VSphereAutomation::Appliance::NtpApi` | [**test**](docs/NtpApi.md#test) | **POST** /rest/appliance/ntp/test | Test the connection to a list of ntp servers.
`VSphereAutomation::Appliance::ObservabilityConsumersApi` | [**create**](docs/ObservabilityConsumersApi.md#create) | **POST** /api/appliance/observability/consumers | Adds consumer for subscribing to observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityConsumersApi` | [**delete**](docs/ObservabilityConsumersApi.md#delete) | **DELETE** /api/appliance/observability/consumers/{name} | Removes the consumer from observability data subscription. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityConsumersApi` | [**get**](docs/ObservabilityConsumersApi.md#get) | **GET** /api/appliance/observability/consumers/{name} | Gets subscription enable status and subscribed topics of particular consumer. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityConsumersApi` | [**list**](docs/ObservabilityConsumersApi.md#list) | **GET** /api/appliance/observability/consumers | Lists all the subscribed consumers for Observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityConsumersApi` | [**update**](docs/ObservabilityConsumersApi.md#update) | **PATCH** /api/appliance/observability/consumers/{name} | Updates an observability subscriber details like subscription topics or enablement status (Status) to enable or disable from listening to data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityDefaultMetricsApi` | [**get**](docs/ObservabilityDefaultMetricsApi.md#get) | **GET** /api/appliance/observability/default-metrics/{metric} | Gets detailed info about the metric. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityDefaultMetricsApi` | [**list**](docs/ObservabilityDefaultMetricsApi.md#list) | **GET** /api/appliance/observability/default-metrics | Lists all the default metrics currently collected and published by cloud observability along with their enablement status. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityDefaultMetricsApi` | [**update**](docs/ObservabilityDefaultMetricsApi.md#update) | **PATCH** /api/appliance/observability/default-metrics/{metric} | Updates metric status to enable or disable. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalPluginsApi` | [**create**](docs/ObservabilityInternalPluginsApi.md#create) | **POST** /api/appliance/observability/internal/plugins | Adds plugin into observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalPluginsApi` | [**delete**](docs/ObservabilityInternalPluginsApi.md#delete) | **DELETE** /api/appliance/observability/internal/plugins/{name} | Removes the plugin from observability plugin list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalPluginsApi` | [**get**](docs/ObservabilityInternalPluginsApi.md#get) | **GET** /api/appliance/observability/internal/plugins/{name} | Gets detailed info about the particular plugin. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalPluginsApi` | [**list**](docs/ObservabilityInternalPluginsApi.md#list) | **GET** /api/appliance/observability/internal/plugins | Lists all the plugins in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalPluginsApi` | [**list_names**](docs/ObservabilityInternalPluginsApi.md#list_names) | **GET** /api/appliance/observability/internal/plugins/names | Lists all the plugin names exists in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalPluginsApi` | [**update**](docs/ObservabilityInternalPluginsApi.md#update) | **PATCH** /api/appliance/observability/internal/plugins/{name} | Updates plugin details, expects all the required info of the plugin as part of spec not just the field/s that needs to be updated. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalSettingsApi` | [**get**](docs/ObservabilityInternalSettingsApi.md#get) | **GET** /api/appliance/observability/internal/settings/{key} | Gets values for the particular key from observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalSettingsApi` | [**get_keys**](docs/ObservabilityInternalSettingsApi.md#get_keys) | **GET** /api/appliance/observability/internal/settings/keys | Gets keys of all the existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalSettingsApi` | [**get_settings**](docs/ObservabilityInternalSettingsApi.md#get_settings) | **GET** /api/appliance/observability/internal/settings | Gets all existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityInternalSettingsApi` | [**update**](docs/ObservabilityInternalSettingsApi.md#update) | **PATCH** /api/appliance/observability/internal/settings/{key} | Updates observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityServicesApi` | [**create**](docs/ObservabilityServicesApi.md#create) | **POST** /api/appliance/observability/services | Adds services to observability's monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityServicesApi` | [**delete**](docs/ObservabilityServicesApi.md#delete) | **DELETE** /api/appliance/observability/services/{name} | Removes the service from observability monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityServicesApi` | [**get**](docs/ObservabilityServicesApi.md#get) | **GET** /api/appliance/observability/services/{name} | Gets status of service being monitored by cloud observability or not. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityServicesApi` | [**list**](docs/ObservabilityServicesApi.md#list) | **GET** /api/appliance/observability/services | Lists all the services currently enabled for monitoring and disabled from monitoring by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityServicesApi` | [**update**](docs/ObservabilityServicesApi.md#update) | **PATCH** /api/appliance/observability/services/{name} | Updates service status to enable or disable from being monitored by observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::ObservabilityTopicsApi` | [**list**](docs/ObservabilityTopicsApi.md#list) | **GET** /api/appliance/observability/topics | Lists all the topics currently published by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
`VSphereAutomation::Appliance::RecoveryApi` | [**get**](docs/RecoveryApi.md#get) | **GET** /rest/appliance/recovery | Gets the properties of the appliance Recovery subsystem.
`VSphereAutomation::Appliance::RecoveryBackupApi` | [**validate**](docs/RecoveryBackupApi.md#validate) | **POST** /rest/appliance/recovery/backup/validate | Check for backup errors without starting backup.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**cancel**](docs/RecoveryBackupJobApi.md#cancel) | **POST** /rest/appliance/recovery/backup/job/{id}/cancel | Cancel the backup job.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**create**](docs/RecoveryBackupJobApi.md#create) | **POST** /rest/appliance/recovery/backup/job | Initiate backup.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**get**](docs/RecoveryBackupJobApi.md#get) | **GET** /rest/appliance/recovery/backup/job/{id} | See backup job progress/result.
`VSphereAutomation::Appliance::RecoveryBackupJobApi` | [**list**](docs/RecoveryBackupJobApi.md#list) | **GET** /rest/appliance/recovery/backup/job | Get list of backup jobs
`VSphereAutomation::Appliance::RecoveryBackupJobDetailsApi` | [**list**](docs/RecoveryBackupJobDetailsApi.md#list) | **GET** /rest/appliance/recovery/backup/job/details | Returns detailed information about the current and historical backup jobs.
`VSphereAutomation::Appliance::RecoveryBackupPartsApi` | [**get**](docs/RecoveryBackupPartsApi.md#get) | **GET** /rest/appliance/recovery/backup/parts/{id} | Gets the size (in MB) of the part.
`VSphereAutomation::Appliance::RecoveryBackupPartsApi` | [**list**](docs/RecoveryBackupPartsApi.md#list) | **GET** /rest/appliance/recovery/backup/parts | Gets a list of the backup parts.
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**create**](docs/RecoveryBackupSchedulesApi.md#create) | **POST** /rest/appliance/recovery/backup/schedules/{schedule} | Creates a schedule
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**delete**](docs/RecoveryBackupSchedulesApi.md#delete) | **DELETE** /rest/appliance/recovery/backup/schedules/{schedule} | Deletes an existing schedule
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**get**](docs/RecoveryBackupSchedulesApi.md#get) | **GET** /rest/appliance/recovery/backup/schedules/{schedule} | Returns an existing schedule information based on id
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**list**](docs/RecoveryBackupSchedulesApi.md#list) | **GET** /rest/appliance/recovery/backup/schedules | Returns a list of existing schedules with details
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**run**](docs/RecoveryBackupSchedulesApi.md#run) | **POST** /rest/appliance/recovery/backup/schedules/{schedule}?action&#x3D;run | Initiate backup with the specified schedule
`VSphereAutomation::Appliance::RecoveryBackupSchedulesApi` | [**update**](docs/RecoveryBackupSchedulesApi.md#update) | **PUT** /rest/appliance/recovery/backup/schedules/update/{schedule} | Updates a schedule
`VSphereAutomation::Appliance::RecoveryBackupSystemNameApi` | [**list**](docs/RecoveryBackupSystemNameApi.md#list) | **GET** /rest/appliance/recovery/backup/system-name | Returns a list of system names for which backup archives exist under {@param.name locSpec}.
`VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi` | [**get**](docs/RecoveryBackupSystemNameArchiveApi.md#get) | **GET** /rest/appliance/recovery/backup/system-name/{system_name}/archives/{archive} | Returns the information for backup corresponding to given backup location and system name.
`VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi` | [**list**](docs/RecoveryBackupSystemNameArchiveApi.md#list) | **GET** /rest/appliance/recovery/backup/system-name/{system_name}/archives | Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
`VSphereAutomation::Appliance::RecoveryReconciliationJobApi` | [**create**](docs/RecoveryReconciliationJobApi.md#create) | **POST** /rest/appliance/recovery/reconciliation/job | Initiate reconciliation.
`VSphereAutomation::Appliance::RecoveryReconciliationJobApi` | [**get**](docs/RecoveryReconciliationJobApi.md#get) | **GET** /rest/appliance/recovery/reconciliation/job | Get reconciliation job progress/result.
`VSphereAutomation::Appliance::RecoveryRestoreApi` | [**validate**](docs/RecoveryRestoreApi.md#validate) | **POST** /rest/appliance/recovery/restore/validate | Get metadata before restore
`VSphereAutomation::Appliance::RecoveryRestoreJobApi` | [**cancel**](docs/RecoveryRestoreJobApi.md#cancel) | **POST** /rest/appliance/recovery/restore/job/cancel | Cancel the restore job
`VSphereAutomation::Appliance::RecoveryRestoreJobApi` | [**create**](docs/RecoveryRestoreJobApi.md#create) | **POST** /rest/appliance/recovery/restore/job | Initiate restore.
`VSphereAutomation::Appliance::RecoveryRestoreJobApi` | [**get**](docs/RecoveryRestoreJobApi.md#get) | **GET** /rest/appliance/recovery/restore/job | See restore job progress/result.
`VSphereAutomation::Appliance::ServicesApi` | [**get**](docs/ServicesApi.md#get) | **GET** /rest/appliance/services/{service} | Returns the state of a service.
`VSphereAutomation::Appliance::ServicesApi` | [**list**](docs/ServicesApi.md#list) | **GET** /rest/appliance/services | Lists details of vCenter services.
`VSphereAutomation::Appliance::ServicesApi` | [**restart**](docs/ServicesApi.md#restart) | **POST** /rest/appliance/services/{service}/restart | Restarts a service
`VSphereAutomation::Appliance::ServicesApi` | [**start**](docs/ServicesApi.md#start) | **POST** /rest/appliance/services/{service}/start | Starts a service
`VSphereAutomation::Appliance::ServicesApi` | [**stop**](docs/ServicesApi.md#stop) | **POST** /rest/appliance/services/{service}/stop | Stops a service
`VSphereAutomation::Appliance::ShutdownApi` | [**cancel**](docs/ShutdownApi.md#cancel) | **POST** /rest/appliance/shutdown/cancel | Cancel pending shutdown action.
`VSphereAutomation::Appliance::ShutdownApi` | [**get**](docs/ShutdownApi.md#get) | **GET** /rest/appliance/shutdown | Get details about the pending shutdown action.
`VSphereAutomation::Appliance::ShutdownApi` | [**poweroff**](docs/ShutdownApi.md#poweroff) | **POST** /rest/appliance/shutdown/poweroff | Power off the appliance.
`VSphereAutomation::Appliance::ShutdownApi` | [**reboot**](docs/ShutdownApi.md#reboot) | **POST** /rest/appliance/shutdown/reboot | Reboot the appliance.
`VSphereAutomation::Appliance::SystemSecurityEnhancedSecurityApi` | [**set**](docs/SystemSecurityEnhancedSecurityApi.md#set) | **PUT** /rest/appliance/system/enhanced-security | Enable/Disable advanced security (IL4/IL5).
`VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi` | [**baseline**](docs/SystemSecurityFileIntegrityApi.md#baseline) | **POST** /rest/appliance/system/file-integrity/baseline | Create file integrity baseline for the appliance.
`VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi` | [**get**](docs/SystemSecurityFileIntegrityApi.md#get) | **GET** /rest/appliance/system/file-integrity/check | Get state for scheduled file integrity check.
`VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi` | [**set**](docs/SystemSecurityFileIntegrityApi.md#set) | **PUT** /rest/appliance/system/file-integrity/check | Set enabled state for scheduled file integrity check.
`VSphereAutomation::Appliance::SystemStorageApi` | [**list**](docs/SystemStorageApi.md#list) | **GET** /rest/appliance/system/storage | Get disk to partition mapping.
`VSphereAutomation::Appliance::SystemStorageApi` | [**resize**](docs/SystemStorageApi.md#resize) | **POST** /rest/appliance/system/storage/resize | Resize all partitions to 100 percent of disk size.
`VSphereAutomation::Appliance::SystemStorageApi` | [**resize_ex**](docs/SystemStorageApi.md#resize_ex) | **POST** /rest/appliance/system/storage?action&#x3D;resize-ex | Resize all partitions to 100 percent of disk size.
`VSphereAutomation::Appliance::SystemTimeApi` | [**get**](docs/SystemTimeApi.md#get) | **GET** /rest/appliance/system/time | Get system time.
`VSphereAutomation::Appliance::SystemTimeTimezoneApi` | [**get**](docs/SystemTimeTimezoneApi.md#get) | **GET** /rest/appliance/system/time/timezone | Get time zone.
`VSphereAutomation::Appliance::SystemTimeTimezoneApi` | [**set**](docs/SystemTimeTimezoneApi.md#set) | **PUT** /rest/appliance/system/time/timezone | Set time zone.
`VSphereAutomation::Appliance::SystemUptimeApi` | [**get**](docs/SystemUptimeApi.md#get) | **GET** /rest/appliance/system/uptime | Get the system uptime.
`VSphereAutomation::Appliance::SystemUuidApi` | [**get**](docs/SystemUuidApi.md#get) | **GET** /rest/appliance/system/uuid | Get the vCSA UUID (Unique IDentifier for the appliance). Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::SystemVersionApi` | [**get**](docs/SystemVersionApi.md#get) | **GET** /rest/appliance/system/version | Get the version.
`VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi` | [**add**](docs/TechpreviewLocalaccountsUserApi.md#add) | **POST** /rest/appliance/techpreview/local-accounts/user | Create a new local user account.
`VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi` | [**delete**](docs/TechpreviewLocalaccountsUserApi.md#delete) | **DELETE** /rest/appliance/techpreview/local-accounts/user/{username} | Delete a local user account.
`VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi` | [**get**](docs/TechpreviewLocalaccountsUserApi.md#get) | **GET** /rest/appliance/techpreview/local-accounts/user/{username} | Get the local user account information.
`VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi` | [**list**](docs/TechpreviewLocalaccountsUserApi.md#list) | **GET** /rest/appliance/techpreview/local-accounts/user | List of local accounts
`VSphereAutomation::Appliance::TechpreviewLocalaccountsUserApi` | [**set**](docs/TechpreviewLocalaccountsUserApi.md#set) | **PUT** /rest/appliance/techpreview/local-accounts/user | Update local user account properties role, full name, enabled status and password
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**disable**](docs/TechpreviewMonitoringSnmpApi.md#disable) | **POST** /rest/appliance/techpreview/monitoring/snmp/disable | Stop an enabled SNMP agent.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**enable**](docs/TechpreviewMonitoringSnmpApi.md#enable) | **POST** /rest/appliance/techpreview/monitoring/snmp/enable | Start a disabled SNMP agent.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**get**](docs/TechpreviewMonitoringSnmpApi.md#get) | **GET** /rest/appliance/techpreview/monitoring/snmp | Return an SNMP agent configuration.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**hash**](docs/TechpreviewMonitoringSnmpApi.md#hash) | **POST** /rest/appliance/techpreview/monitoring/snmp/hash | Generate localized keys for secure SNMPv3 communications.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**limits**](docs/TechpreviewMonitoringSnmpApi.md#limits) | **GET** /rest/appliance/techpreview/monitoring/snmp/limits | Get SNMP limits information.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**reset**](docs/TechpreviewMonitoringSnmpApi.md#reset) | **POST** /rest/appliance/techpreview/monitoring/snmp/reset | Restore settings to factory defaults.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**set**](docs/TechpreviewMonitoringSnmpApi.md#set) | **PUT** /rest/appliance/techpreview/monitoring/snmp | Set SNMP configuration.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**stats**](docs/TechpreviewMonitoringSnmpApi.md#stats) | **GET** /rest/appliance/techpreview/monitoring/snmp/stats | Generate diagnostics report for snmp agent.
`VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi` | [**test**](docs/TechpreviewMonitoringSnmpApi.md#test) | **POST** /rest/appliance/techpreview/monitoring/snmp/test | Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).
`VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi` | [**add**](docs/TechpreviewNetworkingFirewallAddrInboundApi.md#add) | **POST** /rest/appliance/techpreview/networking/firewall/addr/inbound | Add a firewall rule to allow or deny traffic from incoming IP address.
`VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi` | [**delete**](docs/TechpreviewNetworkingFirewallAddrInboundApi.md#delete) | **POST** /rest/appliance/techpreview/networking/firewall/addr/inbound/delete | Delete specific rule at a given position or delete all rules.
`VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi` | [**list**](docs/TechpreviewNetworkingFirewallAddrInboundApi.md#list) | **GET** /rest/appliance/techpreview/networking/firewall/addr/inbound | Get ordered list of inbound IP addresses that are allowed or denied by firewall.
`VSphereAutomation::Appliance::TechpreviewNetworkingFirewallAddrInboundApi` | [**set**](docs/TechpreviewNetworkingFirewallAddrInboundApi.md#set) | **PUT** /rest/appliance/techpreview/networking/firewall/addr/inbound | Set list of inbound IP addresses to allow or deny by firewall. This replaces all existing rules. Firewall rules have no impact on closed ports because these ports are closed for all traffic.
`VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api` | [**get**](docs/TechpreviewNetworkingIpv4Api.md#get) | **POST** /rest/appliance/techpreview/networking/ipv4/get | Get IPv4 network configuration for interfaces.
`VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api` | [**list**](docs/TechpreviewNetworkingIpv4Api.md#list) | **GET** /rest/appliance/techpreview/networking/ipv4 | Get IPv4 network configuration for all configured interfaces.
`VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api` | [**renew**](docs/TechpreviewNetworkingIpv4Api.md#renew) | **POST** /rest/appliance/techpreview/networking/ipv4/renew | Renew IPv4 network configuration on interfaces.  If the interface is configured to use DHCP for IP address assignment, the lease of the interface is renewed.
`VSphereAutomation::Appliance::TechpreviewNetworkingIpv4Api` | [**set**](docs/TechpreviewNetworkingIpv4Api.md#set) | **PUT** /rest/appliance/techpreview/networking/ipv4 | Set IPv4 network configuration.
`VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api` | [**get**](docs/TechpreviewNetworkingIpv6Api.md#get) | **POST** /rest/appliance/techpreview/networking/ipv6/get | Get IPv6 network configuration for interfaces.
`VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api` | [**list**](docs/TechpreviewNetworkingIpv6Api.md#list) | **GET** /rest/appliance/techpreview/networking/ipv6 | Get IPv6 network configuration for all configured interfaces.
`VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api` | [**set**](docs/TechpreviewNetworkingIpv6Api.md#set) | **PUT** /rest/appliance/techpreview/networking/ipv6 | Set IPv6 network configuration.
`VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi` | [**add**](docs/TechpreviewNetworkingRoutesApi.md#add) | **POST** /rest/appliance/techpreview/networking/routes | Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
`VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi` | [**delete**](docs/TechpreviewNetworkingRoutesApi.md#delete) | **POST** /rest/appliance/techpreview/networking/routes/delete | Delete static routing rules.
`VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi` | [**list**](docs/TechpreviewNetworkingRoutesApi.md#list) | **GET** /rest/appliance/techpreview/networking/routes | Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
`VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi` | [**set**](docs/TechpreviewNetworkingRoutesApi.md#set) | **PUT** /rest/appliance/techpreview/networking/routes | Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
`VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi` | [**test**](docs/TechpreviewNetworkingRoutesApi.md#test) | **POST** /rest/appliance/techpreview/networking/routes/test | Test connection to a list of gateways
`VSphereAutomation::Appliance::TechpreviewServicesApi` | [**list**](docs/TechpreviewServicesApi.md#list) | **GET** /rest/appliance/techpreview/services | Get a list of all known services.
`VSphereAutomation::Appliance::TechpreviewServicesApi` | [**restart**](docs/TechpreviewServicesApi.md#restart) | **POST** /rest/appliance/techpreview/services/restart | start or restart a service
`VSphereAutomation::Appliance::TechpreviewServicesApi` | [**stop**](docs/TechpreviewServicesApi.md#stop) | **POST** /rest/appliance/techpreview/services/stop | Stop a service
`VSphereAutomation::Appliance::TechpreviewServicesStatusApi` | [**get**](docs/TechpreviewServicesStatusApi.md#get) | **POST** /rest/appliance/techpreview/services/status/get | Get status of a service.
`VSphereAutomation::Appliance::TechpreviewSystemUpdateApi` | [**get**](docs/TechpreviewSystemUpdateApi.md#get) | **GET** /rest/appliance/techpreview/system/update | Get update repository configuration.
`VSphereAutomation::Appliance::TechpreviewSystemUpdateApi` | [**set**](docs/TechpreviewSystemUpdateApi.md#set) | **PUT** /rest/appliance/techpreview/system/update | Set update repository configuration.
`VSphereAutomation::Appliance::TimesyncApi` | [**get**](docs/TimesyncApi.md#get) | **GET** /rest/appliance/timesync | Get time synchronization mode.
`VSphereAutomation::Appliance::TimesyncApi` | [**set**](docs/TimesyncApi.md#set) | **PUT** /rest/appliance/timesync | Set time synchronization mode.
`VSphereAutomation::Appliance::UpdateApi` | [**cancel**](docs/UpdateApi.md#cancel) | **POST** /rest/appliance/update?action&#x3D;cancel | Request the cancellation the update operation that is currently in progress.
`VSphereAutomation::Appliance::UpdateApi` | [**get**](docs/UpdateApi.md#get) | **GET** /rest/appliance/update | Gets the current status of the appliance update.
`VSphereAutomation::Appliance::UpdateHistoryApi` | [**get**](docs/UpdateHistoryApi.md#get) | **GET** /rest/appliance/update/history/{version} | Returns detailed information about a particular installed update. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::UpdateHistoryApi` | [**list**](docs/UpdateHistoryApi.md#list) | **GET** /rest/appliance/update/history | Returns information about the list of updates installed. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
`VSphereAutomation::Appliance::UpdatePendingApi` | [**get**](docs/UpdatePendingApi.md#get) | **GET** /rest/appliance/update/pending/{version} | Gets update information
`VSphereAutomation::Appliance::UpdatePendingApi` | [**install**](docs/UpdatePendingApi.md#install) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;install | Starts operation of installing the appliance update. Will fail is the update is not staged
`VSphereAutomation::Appliance::UpdatePendingApi` | [**list**](docs/UpdatePendingApi.md#list) | **GET** /rest/appliance/update/pending | Checks if new updates are available.
`VSphereAutomation::Appliance::UpdatePendingApi` | [**precheck**](docs/UpdatePendingApi.md#precheck) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;precheck | Runs update precheck
`VSphereAutomation::Appliance::UpdatePendingApi` | [**stage**](docs/UpdatePendingApi.md#stage) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;stage | Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
`VSphereAutomation::Appliance::UpdatePendingApi` | [**stage_and_install**](docs/UpdatePendingApi.md#stage_and_install) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;stage-and-install | Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
`VSphereAutomation::Appliance::UpdatePendingApi` | [**validate**](docs/UpdatePendingApi.md#validate) | **POST** /rest/appliance/update/pending/{version}?action&#x3D;validate | Validates the user provided data before the update installation.
`VSphereAutomation::Appliance::UpdatePolicyApi` | [**get**](docs/UpdatePolicyApi.md#get) | **GET** /rest/appliance/update/policy | Gets the automatic update checking and staging policy.
`VSphereAutomation::Appliance::UpdatePolicyApi` | [**set**](docs/UpdatePolicyApi.md#set) | **PUT** /rest/appliance/update/policy | Sets the automatic update checking and staging policy.
`VSphereAutomation::Appliance::UpdateStagedApi` | [**delete**](docs/UpdateStagedApi.md#delete) | **DELETE** /rest/appliance/update/staged | Deletes the staged update
`VSphereAutomation::Appliance::UpdateStagedApi` | [**get**](docs/UpdateStagedApi.md#get) | **GET** /rest/appliance/update/staged | Gets the current status of the staged update
`VSphereAutomation::Appliance::VmonServiceApi` | [**get**](docs/VmonServiceApi.md#get) | **GET** /rest/appliance/vmon/service/{service} | Returns the state of a service.
`VSphereAutomation::Appliance::VmonServiceApi` | [**list_details**](docs/VmonServiceApi.md#list_details) | **GET** /rest/appliance/vmon/service | Lists details of services managed by vMon.
`VSphereAutomation::Appliance::VmonServiceApi` | [**restart**](docs/VmonServiceApi.md#restart) | **POST** /rest/appliance/vmon/service/{service}/restart | Restarts a service
`VSphereAutomation::Appliance::VmonServiceApi` | [**start**](docs/VmonServiceApi.md#start) | **POST** /rest/appliance/vmon/service/{service}/start | Starts a service
`VSphereAutomation::Appliance::VmonServiceApi` | [**stop**](docs/VmonServiceApi.md#stop) | **POST** /rest/appliance/vmon/service/{service}/stop | Stops a service
`VSphereAutomation::Appliance::VmonServiceApi` | [**update**](docs/VmonServiceApi.md#update) | **PATCH** /rest/appliance/vmon/service/{service} | Updates the properties of a service.


## Documentation for Models

 - [VSphereAutomation::Appliance::ApplianceAccessConsolecliResp](docs/ApplianceAccessConsolecliResp.md)
 - [VSphereAutomation::Appliance::ApplianceAccessConsolecliSet](docs/ApplianceAccessConsolecliSet.md)
 - [VSphereAutomation::Appliance::ApplianceAccessDcuiResp](docs/ApplianceAccessDcuiResp.md)
 - [VSphereAutomation::Appliance::ApplianceAccessDcuiSet](docs/ApplianceAccessDcuiSet.md)
 - [VSphereAutomation::Appliance::ApplianceAccessShellResp](docs/ApplianceAccessShellResp.md)
 - [VSphereAutomation::Appliance::ApplianceAccessShellSet](docs/ApplianceAccessShellSet.md)
 - [VSphereAutomation::Appliance::ApplianceAccessShellShellConfig](docs/ApplianceAccessShellShellConfig.md)
 - [VSphereAutomation::Appliance::ApplianceAccessSshResp](docs/ApplianceAccessSshResp.md)
 - [VSphereAutomation::Appliance::ApplianceAccessSshSet](docs/ApplianceAccessSshSet.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentConfig](docs/ApplianceEnvironmentConfig.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentDeployedBy](docs/ApplianceEnvironmentDeployedBy.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentDisplay](docs/ApplianceEnvironmentDisplay.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentInfo](docs/ApplianceEnvironmentInfo.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentManagedBy](docs/ApplianceEnvironmentManagedBy.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentProvider](docs/ApplianceEnvironmentProvider.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentResp](docs/ApplianceEnvironmentResp.md)
 - [VSphereAutomation::Appliance::ApplianceEnvironmentSet](docs/ApplianceEnvironmentSet.md)
 - [VSphereAutomation::Appliance::ApplianceHealthApplmgmtResp](docs/ApplianceHealthApplmgmtResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthCheckSettingsResp](docs/ApplianceHealthCheckSettingsResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthCheckSettingsSettingSpec](docs/ApplianceHealthCheckSettingsSettingSpec.md)
 - [VSphereAutomation::Appliance::ApplianceHealthCheckSettingsUpdate](docs/ApplianceHealthCheckSettingsUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceHealthCheckSettingsUpdateSpec](docs/ApplianceHealthCheckSettingsUpdateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabaseInfo](docs/ApplianceHealthDatabaseInfo.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabaseInfoStatus](docs/ApplianceHealthDatabaseInfoStatus.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabaseMessage](docs/ApplianceHealthDatabaseMessage.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabaseMessageSeverity](docs/ApplianceHealthDatabaseMessageSeverity.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabaseResp](docs/ApplianceHealthDatabaseResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabasestorageHealthLevel](docs/ApplianceHealthDatabasestorageHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthDatabasestorageResp](docs/ApplianceHealthDatabasestorageResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthLoadHealthLevel](docs/ApplianceHealthLoadHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthLoadResp](docs/ApplianceHealthLoadResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthMemHealthLevel](docs/ApplianceHealthMemHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthMemResp](docs/ApplianceHealthMemResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthMessagesResp](docs/ApplianceHealthMessagesResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSoftwarepackagesHealthLevel](docs/ApplianceHealthSoftwarepackagesHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSoftwarepackagesResp](docs/ApplianceHealthSoftwarepackagesResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthStorageHealthLevel](docs/ApplianceHealthStorageHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthStorageResp](docs/ApplianceHealthStorageResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSwapHealthLevel](docs/ApplianceHealthSwapHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSwapResp](docs/ApplianceHealthSwapResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSystemHealthLevel](docs/ApplianceHealthSystemHealthLevel.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSystemLastcheckResp](docs/ApplianceHealthSystemLastcheckResp.md)
 - [VSphereAutomation::Appliance::ApplianceHealthSystemResp](docs/ApplianceHealthSystemResp.md)
 - [VSphereAutomation::Appliance::ApplianceInfraprofileConfigsExport](docs/ApplianceInfraprofileConfigsExport.md)
 - [VSphereAutomation::Appliance::ApplianceInfraprofileConfigsImportProfileSpec](docs/ApplianceInfraprofileConfigsImportProfileSpec.md)
 - [VSphereAutomation::Appliance::ApplianceInfraprofileConfigsImportProfileTask](docs/ApplianceInfraprofileConfigsImportProfileTask.md)
 - [VSphereAutomation::Appliance::ApplianceInfraprofileConfigsProfileInfo](docs/ApplianceInfraprofileConfigsProfileInfo.md)
 - [VSphereAutomation::Appliance::ApplianceInfraprofileConfigsProfilesSpec](docs/ApplianceInfraprofileConfigsProfilesSpec.md)
 - [VSphereAutomation::Appliance::ApplianceInfraprofileConfigsValidateTask](docs/ApplianceInfraprofileConfigsValidateTask.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsConfig](docs/ApplianceLocalAccountsConfig.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsCreate](docs/ApplianceLocalAccountsCreate.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsInfo](docs/ApplianceLocalAccountsInfo.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsListResp](docs/ApplianceLocalAccountsListResp.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsPolicyInfo](docs/ApplianceLocalAccountsPolicyInfo.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsPolicyResp](docs/ApplianceLocalAccountsPolicyResp.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsPolicySet](docs/ApplianceLocalAccountsPolicySet.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsResp](docs/ApplianceLocalAccountsResp.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsSet](docs/ApplianceLocalAccountsSet.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsUpdate](docs/ApplianceLocalAccountsUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceLocalAccountsUpdateConfig](docs/ApplianceLocalAccountsUpdateConfig.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingConfig](docs/ApplianceLoggingForwardingConfig.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingConnectionStatus](docs/ApplianceLoggingForwardingConnectionStatus.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingConnectionStatusState](docs/ApplianceLoggingForwardingConnectionStatusState.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingProtocol](docs/ApplianceLoggingForwardingProtocol.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingResp](docs/ApplianceLoggingForwardingResp.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingSet](docs/ApplianceLoggingForwardingSet.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingTest](docs/ApplianceLoggingForwardingTest.md)
 - [VSphereAutomation::Appliance::ApplianceLoggingForwardingTestResp](docs/ApplianceLoggingForwardingTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringFunctionType](docs/ApplianceMonitoringFunctionType.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringIntervalType](docs/ApplianceMonitoringIntervalType.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringListResp](docs/ApplianceMonitoringListResp.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringMonitoredItem](docs/ApplianceMonitoringMonitoredItem.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringMonitoredItemData](docs/ApplianceMonitoringMonitoredItemData.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringMonitoredItemDataRequest](docs/ApplianceMonitoringMonitoredItemDataRequest.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringQueryResp](docs/ApplianceMonitoringQueryResp.md)
 - [VSphereAutomation::Appliance::ApplianceMonitoringResp](docs/ApplianceMonitoringResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingChangeSpec](docs/ApplianceNetworkingChangeSpec.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingChangeTask](docs/ApplianceNetworkingChangeTask.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingChangeTaskResp](docs/ApplianceNetworkingChangeTaskResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDNSInfo](docs/ApplianceNetworkingDNSInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDNSInfoDNSMode](docs/ApplianceNetworkingDNSInfoDNSMode.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsDomainsAdd](docs/ApplianceNetworkingDnsDomainsAdd.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsDomainsListResp](docs/ApplianceNetworkingDnsDomainsListResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsDomainsSet](docs/ApplianceNetworkingDnsDomainsSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameMessage](docs/ApplianceNetworkingDnsHostnameMessage.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameMessageStatus](docs/ApplianceNetworkingDnsHostnameMessageStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameResp](docs/ApplianceNetworkingDnsHostnameResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameSet](docs/ApplianceNetworkingDnsHostnameSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTest](docs/ApplianceNetworkingDnsHostnameTest.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTestResp](docs/ApplianceNetworkingDnsHostnameTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTestStatus](docs/ApplianceNetworkingDnsHostnameTestStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsHostnameTestStatusInfo](docs/ApplianceNetworkingDnsHostnameTestStatusInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersAdd](docs/ApplianceNetworkingDnsServersAdd.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersDNSServerConfig](docs/ApplianceNetworkingDnsServersDNSServerConfig.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersDNSServerMode](docs/ApplianceNetworkingDnsServersDNSServerMode.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersMessage](docs/ApplianceNetworkingDnsServersMessage.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersMessageStatus](docs/ApplianceNetworkingDnsServersMessageStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersResp](docs/ApplianceNetworkingDnsServersResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersSet](docs/ApplianceNetworkingDnsServersSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTest](docs/ApplianceNetworkingDnsServersTest.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTestResp](docs/ApplianceNetworkingDnsServersTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTestStatus](docs/ApplianceNetworkingDnsServersTestStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingDnsServersTestStatusInfo](docs/ApplianceNetworkingDnsServersTestStatusInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundPolicy](docs/ApplianceNetworkingFirewallInboundPolicy.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundResp](docs/ApplianceNetworkingFirewallInboundResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundRule](docs/ApplianceNetworkingFirewallInboundRule.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundSet](docs/ApplianceNetworkingFirewallInboundSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInfo](docs/ApplianceNetworkingInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInfoInterfaces](docs/ApplianceNetworkingInfoInterfaces.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesInterfaceInfo](docs/ApplianceNetworkingInterfacesInterfaceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesInterfaceStatus](docs/ApplianceNetworkingInterfacesInterfaceStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Config](docs/ApplianceNetworkingInterfacesIpv4Config.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Info](docs/ApplianceNetworkingInterfacesIpv4Info.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Mode](docs/ApplianceNetworkingInterfacesIpv4Mode.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Resp](docs/ApplianceNetworkingInterfacesIpv4Resp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Set](docs/ApplianceNetworkingInterfacesIpv4Set.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Address](docs/ApplianceNetworkingInterfacesIpv6Address.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6AddressInfo](docs/ApplianceNetworkingInterfacesIpv6AddressInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Config](docs/ApplianceNetworkingInterfacesIpv6Config.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Info](docs/ApplianceNetworkingInterfacesIpv6Info.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Origin](docs/ApplianceNetworkingInterfacesIpv6Origin.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Resp](docs/ApplianceNetworkingInterfacesIpv6Resp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Set](docs/ApplianceNetworkingInterfacesIpv6Set.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Status](docs/ApplianceNetworkingInterfacesIpv6Status.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesListResp](docs/ApplianceNetworkingInterfacesListResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingInterfacesResp](docs/ApplianceNetworkingInterfacesResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingNoProxyResp](docs/ApplianceNetworkingNoProxyResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingNoProxySet](docs/ApplianceNetworkingNoProxySet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyConfig](docs/ApplianceNetworkingProxyConfig.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyListResp](docs/ApplianceNetworkingProxyListResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyListRespValue](docs/ApplianceNetworkingProxyListRespValue.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyProtocol](docs/ApplianceNetworkingProxyProtocol.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyResp](docs/ApplianceNetworkingProxyResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyServerStatus](docs/ApplianceNetworkingProxyServerStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxySet](docs/ApplianceNetworkingProxySet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyTest](docs/ApplianceNetworkingProxyTest.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyTestResp](docs/ApplianceNetworkingProxyTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingProxyTestResult](docs/ApplianceNetworkingProxyTestResult.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingResp](docs/ApplianceNetworkingResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesConfig](docs/ApplianceNetworkingRoutesConfig.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesInfo](docs/ApplianceNetworkingRoutesInfo.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesMode](docs/ApplianceNetworkingRoutesMode.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesOverallStatus](docs/ApplianceNetworkingRoutesOverallStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesResp](docs/ApplianceNetworkingRoutesResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesRouteStatus](docs/ApplianceNetworkingRoutesRouteStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesSet](docs/ApplianceNetworkingRoutesSet.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesStatus](docs/ApplianceNetworkingRoutesStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesTest](docs/ApplianceNetworkingRoutesTest.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesTestResp](docs/ApplianceNetworkingRoutesTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingRoutesTestStatus](docs/ApplianceNetworkingRoutesTestStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingUpdate](docs/ApplianceNetworkingUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceNetworkingUpdateSpec](docs/ApplianceNetworkingUpdateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceNotification](docs/ApplianceNotification.md)
 - [VSphereAutomation::Appliance::ApplianceNotifications](docs/ApplianceNotifications.md)
 - [VSphereAutomation::Appliance::ApplianceNtpLocalizableMessage](docs/ApplianceNtpLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceNtpResp](docs/ApplianceNtpResp.md)
 - [VSphereAutomation::Appliance::ApplianceNtpServerStatus](docs/ApplianceNtpServerStatus.md)
 - [VSphereAutomation::Appliance::ApplianceNtpSet](docs/ApplianceNtpSet.md)
 - [VSphereAutomation::Appliance::ApplianceNtpTest](docs/ApplianceNtpTest.md)
 - [VSphereAutomation::Appliance::ApplianceNtpTestResp](docs/ApplianceNtpTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceNtpTestRunStatus](docs/ApplianceNtpTestRunStatus.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityConsumersCreate](docs/ApplianceObservabilityConsumersCreate.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityConsumersCreateSpec](docs/ApplianceObservabilityConsumersCreateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityConsumersInfo](docs/ApplianceObservabilityConsumersInfo.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityConsumersStatus](docs/ApplianceObservabilityConsumersStatus.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityConsumersSummary](docs/ApplianceObservabilityConsumersSummary.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityConsumersUpdate](docs/ApplianceObservabilityConsumersUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityConsumersUpdateSpec](docs/ApplianceObservabilityConsumersUpdateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityDefaultMetricsInfo](docs/ApplianceObservabilityDefaultMetricsInfo.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityDefaultMetricsStatus](docs/ApplianceObservabilityDefaultMetricsStatus.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityDefaultMetricsSummary](docs/ApplianceObservabilityDefaultMetricsSummary.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityInternalPluginsCreate](docs/ApplianceObservabilityInternalPluginsCreate.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityInternalPluginsCreateSpec](docs/ApplianceObservabilityInternalPluginsCreateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityInternalPluginsInfo](docs/ApplianceObservabilityInternalPluginsInfo.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityInternalPluginsState](docs/ApplianceObservabilityInternalPluginsState.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityInternalPluginsSummary](docs/ApplianceObservabilityInternalPluginsSummary.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityInternalPluginsUpdate](docs/ApplianceObservabilityInternalPluginsUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityInternalPluginsUpdateSpec](docs/ApplianceObservabilityInternalPluginsUpdateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityServicesCreate](docs/ApplianceObservabilityServicesCreate.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityServicesCreateSpec](docs/ApplianceObservabilityServicesCreateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityServicesInfo](docs/ApplianceObservabilityServicesInfo.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityServicesState](docs/ApplianceObservabilityServicesState.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityServicesStatus](docs/ApplianceObservabilityServicesStatus.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityServicesSummary](docs/ApplianceObservabilityServicesSummary.md)
 - [VSphereAutomation::Appliance::ApplianceObservabilityTopicsSummary](docs/ApplianceObservabilityTopicsSummary.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupBackupRequest](docs/ApplianceRecoveryBackupBackupRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobBackupJobStatus](docs/ApplianceRecoveryBackupJobBackupJobStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobBackupRequest](docs/ApplianceRecoveryBackupJobBackupRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobBackupRestoreProcessState](docs/ApplianceRecoveryBackupJobBackupRestoreProcessState.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobCancelResp](docs/ApplianceRecoveryBackupJobCancelResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobCreate](docs/ApplianceRecoveryBackupJobCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobCreateResp](docs/ApplianceRecoveryBackupJobCreateResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsBuildInfo](docs/ApplianceRecoveryBackupJobDetailsBuildInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsFilterSpec](docs/ApplianceRecoveryBackupJobDetailsFilterSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsInfo](docs/ApplianceRecoveryBackupJobDetailsInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsListResp](docs/ApplianceRecoveryBackupJobDetailsListResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsListRespValue](docs/ApplianceRecoveryBackupJobDetailsListRespValue.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsType](docs/ApplianceRecoveryBackupJobDetailsType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobListResp](docs/ApplianceRecoveryBackupJobListResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobLocalizableMessage](docs/ApplianceRecoveryBackupJobLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobLocationType](docs/ApplianceRecoveryBackupJobLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobResp](docs/ApplianceRecoveryBackupJobResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobReturnResult](docs/ApplianceRecoveryBackupJobReturnResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupJobReturnStatus](docs/ApplianceRecoveryBackupJobReturnStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupLocalizableMessage](docs/ApplianceRecoveryBackupLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupLocationSpec](docs/ApplianceRecoveryBackupLocationSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupLocationType](docs/ApplianceRecoveryBackupLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsListResp](docs/ApplianceRecoveryBackupPartsListResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsLocalizableMessage](docs/ApplianceRecoveryBackupPartsLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsPart](docs/ApplianceRecoveryBackupPartsPart.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupPartsResp](docs/ApplianceRecoveryBackupPartsResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupReturnResult](docs/ApplianceRecoveryBackupReturnResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupReturnStatus](docs/ApplianceRecoveryBackupReturnStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesCreate](docs/ApplianceRecoveryBackupSchedulesCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesCreateSpec](docs/ApplianceRecoveryBackupSchedulesCreateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesDayOfWeek](docs/ApplianceRecoveryBackupSchedulesDayOfWeek.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesInfo](docs/ApplianceRecoveryBackupSchedulesInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesListResp](docs/ApplianceRecoveryBackupSchedulesListResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesListRespValue](docs/ApplianceRecoveryBackupSchedulesListRespValue.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRecurrenceInfo](docs/ApplianceRecoveryBackupSchedulesRecurrenceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesResp](docs/ApplianceRecoveryBackupSchedulesResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRetentionInfo](docs/ApplianceRecoveryBackupSchedulesRetentionInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRun](docs/ApplianceRecoveryBackupSchedulesRun.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesRunResp](docs/ApplianceRecoveryBackupSchedulesRunResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesUpdate](docs/ApplianceRecoveryBackupSchedulesUpdate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesUpdateSpec](docs/ApplianceRecoveryBackupSchedulesUpdateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveFilterSpec](docs/ApplianceRecoveryBackupSystemNameArchiveFilterSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveInfo](docs/ApplianceRecoveryBackupSystemNameArchiveInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveListResp](docs/ApplianceRecoveryBackupSystemNameArchiveListResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveResp](docs/ApplianceRecoveryBackupSystemNameArchiveResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveSummary](docs/ApplianceRecoveryBackupSystemNameArchiveSummary.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameListResp](docs/ApplianceRecoveryBackupSystemNameListResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupValidate](docs/ApplianceRecoveryBackupValidate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryBackupValidateResp](docs/ApplianceRecoveryBackupValidateResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryInfo](docs/ApplianceRecoveryInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobCreate](docs/ApplianceRecoveryReconciliationJobCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobCreateResp](docs/ApplianceRecoveryReconciliationJobCreateResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobCreateSpec](docs/ApplianceRecoveryReconciliationJobCreateSpec.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobInfo](docs/ApplianceRecoveryReconciliationJobInfo.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobResp](docs/ApplianceRecoveryReconciliationJobResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobStatus](docs/ApplianceRecoveryReconciliationJobStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryResp](docs/ApplianceRecoveryResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobBackupRestoreProcessState](docs/ApplianceRecoveryRestoreJobBackupRestoreProcessState.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobCancelResp](docs/ApplianceRecoveryRestoreJobCancelResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobCreate](docs/ApplianceRecoveryRestoreJobCreate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobCreateResp](docs/ApplianceRecoveryRestoreJobCreateResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobLocalizableMessage](docs/ApplianceRecoveryRestoreJobLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobLocationType](docs/ApplianceRecoveryRestoreJobLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobResp](docs/ApplianceRecoveryRestoreJobResp.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobRestoreJobStatus](docs/ApplianceRecoveryRestoreJobRestoreJobStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobRestoreRequest](docs/ApplianceRecoveryRestoreJobRestoreRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobReturnResult](docs/ApplianceRecoveryRestoreJobReturnResult.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreJobReturnStatus](docs/ApplianceRecoveryRestoreJobReturnStatus.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreLocalizableMessage](docs/ApplianceRecoveryRestoreLocalizableMessage.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreLocationType](docs/ApplianceRecoveryRestoreLocationType.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreMetadata](docs/ApplianceRecoveryRestoreMetadata.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreRestoreRequest](docs/ApplianceRecoveryRestoreRestoreRequest.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreValidate](docs/ApplianceRecoveryRestoreValidate.md)
 - [VSphereAutomation::Appliance::ApplianceRecoveryRestoreValidateResp](docs/ApplianceRecoveryRestoreValidateResp.md)
 - [VSphereAutomation::Appliance::ApplianceServicesInfo](docs/ApplianceServicesInfo.md)
 - [VSphereAutomation::Appliance::ApplianceServicesListResp](docs/ApplianceServicesListResp.md)
 - [VSphereAutomation::Appliance::ApplianceServicesListRespValue](docs/ApplianceServicesListRespValue.md)
 - [VSphereAutomation::Appliance::ApplianceServicesResp](docs/ApplianceServicesResp.md)
 - [VSphereAutomation::Appliance::ApplianceServicesState](docs/ApplianceServicesState.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownPoweroff](docs/ApplianceShutdownPoweroff.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownReboot](docs/ApplianceShutdownReboot.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownResp](docs/ApplianceShutdownResp.md)
 - [VSphereAutomation::Appliance::ApplianceShutdownShutdownConfig](docs/ApplianceShutdownShutdownConfig.md)
 - [VSphereAutomation::Appliance::ApplianceSubtaskInfo](docs/ApplianceSubtaskInfo.md)
 - [VSphereAutomation::Appliance::ApplianceSystemSecurityEnhancedSecuritySet](docs/ApplianceSystemSecurityEnhancedSecuritySet.md)
 - [VSphereAutomation::Appliance::ApplianceSystemSecurityFileIntegrityResp](docs/ApplianceSystemSecurityFileIntegrityResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemSecurityFileIntegritySet](docs/ApplianceSystemSecurityFileIntegritySet.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageListResp](docs/ApplianceSystemStorageListResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageResizeExResp](docs/ApplianceSystemStorageResizeExResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageResizeExRespValue](docs/ApplianceSystemStorageResizeExRespValue.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageStorageChange](docs/ApplianceSystemStorageStorageChange.md)
 - [VSphereAutomation::Appliance::ApplianceSystemStorageStorageMapping](docs/ApplianceSystemStorageStorageMapping.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeResp](docs/ApplianceSystemTimeResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeSystemTimeStruct](docs/ApplianceSystemTimeSystemTimeStruct.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeTimezoneResp](docs/ApplianceSystemTimeTimezoneResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemTimeTimezoneSet](docs/ApplianceSystemTimeTimezoneSet.md)
 - [VSphereAutomation::Appliance::ApplianceSystemUptimeResp](docs/ApplianceSystemUptimeResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemUuidResp](docs/ApplianceSystemUuidResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemVersionResp](docs/ApplianceSystemVersionResp.md)
 - [VSphereAutomation::Appliance::ApplianceSystemVersionVersionStruct](docs/ApplianceSystemVersionVersionStruct.md)
 - [VSphereAutomation::Appliance::ApplianceTaskInfo](docs/ApplianceTaskInfo.md)
 - [VSphereAutomation::Appliance::ApplianceTaskInfoSubtasks](docs/ApplianceTaskInfoSubtasks.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserAdd](docs/ApplianceTechpreviewLocalaccountsUserAdd.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserListResp](docs/ApplianceTechpreviewLocalaccountsUserListResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserNewUserConfig](docs/ApplianceTechpreviewLocalaccountsUserNewUserConfig.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserResp](docs/ApplianceTechpreviewLocalaccountsUserResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserSet](docs/ApplianceTechpreviewLocalaccountsUserSet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserUserAccountStatus](docs/ApplianceTechpreviewLocalaccountsUserUserAccountStatus.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserUserConfig](docs/ApplianceTechpreviewLocalaccountsUserUserConfig.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserUserConfigGet](docs/ApplianceTechpreviewLocalaccountsUserUserConfigGet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserUserPasswordStatus](docs/ApplianceTechpreviewLocalaccountsUserUserPasswordStatus.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewLocalaccountsUserUserRole](docs/ApplianceTechpreviewLocalaccountsUserUserRole.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpHash](docs/ApplianceTechpreviewMonitoringSnmpHash.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpHashResp](docs/ApplianceTechpreviewMonitoringSnmpHashResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpLimitsResp](docs/ApplianceTechpreviewMonitoringSnmpLimitsResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpResp](docs/ApplianceTechpreviewMonitoringSnmpResp.md)
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
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpStatsResp](docs/ApplianceTechpreviewMonitoringSnmpStatsResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewMonitoringSnmpTestResp](docs/ApplianceTechpreviewMonitoringSnmpTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundAdd](docs/ApplianceTechpreviewNetworkingFirewallAddrInboundAdd.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundDelete](docs/ApplianceTechpreviewNetworkingFirewallAddrInboundDelete.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundDeleteFirewallRule](docs/ApplianceTechpreviewNetworkingFirewallAddrInboundDeleteFirewallRule.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundFirewallAddressRule](docs/ApplianceTechpreviewNetworkingFirewallAddrInboundFirewallAddressRule.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundFirewallRulePolicy](docs/ApplianceTechpreviewNetworkingFirewallAddrInboundFirewallRulePolicy.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundListResp](docs/ApplianceTechpreviewNetworkingFirewallAddrInboundListResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundSet](docs/ApplianceTechpreviewNetworkingFirewallAddrInboundSet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4Get](docs/ApplianceTechpreviewNetworkingIpv4Get.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4IPv4Config](docs/ApplianceTechpreviewNetworkingIpv4IPv4Config.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4IPv4ConfigReadOnly](docs/ApplianceTechpreviewNetworkingIpv4IPv4ConfigReadOnly.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4IPv4Mode](docs/ApplianceTechpreviewNetworkingIpv4IPv4Mode.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4ListResp](docs/ApplianceTechpreviewNetworkingIpv4ListResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4Renew](docs/ApplianceTechpreviewNetworkingIpv4Renew.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4Resp](docs/ApplianceTechpreviewNetworkingIpv4Resp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4Set](docs/ApplianceTechpreviewNetworkingIpv4Set.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6Get](docs/ApplianceTechpreviewNetworkingIpv6Get.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6Address](docs/ApplianceTechpreviewNetworkingIpv6IPv6Address.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6AddressOrigin](docs/ApplianceTechpreviewNetworkingIpv6IPv6AddressOrigin.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6AddressReadOnly](docs/ApplianceTechpreviewNetworkingIpv6IPv6AddressReadOnly.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6AddressStatus](docs/ApplianceTechpreviewNetworkingIpv6IPv6AddressStatus.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6Config](docs/ApplianceTechpreviewNetworkingIpv6IPv6Config.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6ConfigReadOnly](docs/ApplianceTechpreviewNetworkingIpv6IPv6ConfigReadOnly.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6ListResp](docs/ApplianceTechpreviewNetworkingIpv6ListResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6Resp](docs/ApplianceTechpreviewNetworkingIpv6Resp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6Set](docs/ApplianceTechpreviewNetworkingIpv6Set.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesAdd](docs/ApplianceTechpreviewNetworkingRoutesAdd.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesDelete](docs/ApplianceTechpreviewNetworkingRoutesDelete.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesListResp](docs/ApplianceTechpreviewNetworkingRoutesListResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesMessage](docs/ApplianceTechpreviewNetworkingRoutesMessage.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesMessageStatus](docs/ApplianceTechpreviewNetworkingRoutesMessageStatus.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesRoute](docs/ApplianceTechpreviewNetworkingRoutesRoute.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesRouteReadOnly](docs/ApplianceTechpreviewNetworkingRoutesRouteReadOnly.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesSet](docs/ApplianceTechpreviewNetworkingRoutesSet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesTest](docs/ApplianceTechpreviewNetworkingRoutesTest.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesTestResp](docs/ApplianceTechpreviewNetworkingRoutesTestResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesTestStatus](docs/ApplianceTechpreviewNetworkingRoutesTestStatus.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingRoutesTestStatusInfo](docs/ApplianceTechpreviewNetworkingRoutesTestStatusInfo.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesListResp](docs/ApplianceTechpreviewServicesListResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesRestart](docs/ApplianceTechpreviewServicesRestart.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesServiceInfo](docs/ApplianceTechpreviewServicesServiceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesServiceOps](docs/ApplianceTechpreviewServicesServiceOps.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesStatusGet](docs/ApplianceTechpreviewServicesStatusGet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesStatusResp](docs/ApplianceTechpreviewServicesStatusResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesStatusServiceStatus](docs/ApplianceTechpreviewServicesStatusServiceStatus.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewServicesStop](docs/ApplianceTechpreviewServicesStop.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewSystemUpdateAutoUpdateNotification](docs/ApplianceTechpreviewSystemUpdateAutoUpdateNotification.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewSystemUpdateResp](docs/ApplianceTechpreviewSystemUpdateResp.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewSystemUpdateSet](docs/ApplianceTechpreviewSystemUpdateSet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewSystemUpdateUpdateDay](docs/ApplianceTechpreviewSystemUpdateUpdateDay.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewSystemUpdateUpdateStructGet](docs/ApplianceTechpreviewSystemUpdateUpdateStructGet.md)
 - [VSphereAutomation::Appliance::ApplianceTechpreviewSystemUpdateUpdateStructSet](docs/ApplianceTechpreviewSystemUpdateUpdateStructSet.md)
 - [VSphereAutomation::Appliance::ApplianceTimesyncResp](docs/ApplianceTimesyncResp.md)
 - [VSphereAutomation::Appliance::ApplianceTimesyncSet](docs/ApplianceTimesyncSet.md)
 - [VSphereAutomation::Appliance::ApplianceTimesyncTimeSyncMode](docs/ApplianceTimesyncTimeSyncMode.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateCommonInfoCategory](docs/ApplianceUpdateCommonInfoCategory.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateCommonInfoPriority](docs/ApplianceUpdateCommonInfoPriority.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateCommonInfoSeverity](docs/ApplianceUpdateCommonInfoSeverity.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateHistoryCategory](docs/ApplianceUpdateHistoryCategory.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateHistoryInfo](docs/ApplianceUpdateHistoryInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateHistoryListResp](docs/ApplianceUpdateHistoryListResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateHistoryResp](docs/ApplianceUpdateHistoryResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateHistorySeverity](docs/ApplianceUpdateHistorySeverity.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateHistorySummary](docs/ApplianceUpdateHistorySummary.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateInfo](docs/ApplianceUpdateInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingInfo](docs/ApplianceUpdatePendingInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingInstall](docs/ApplianceUpdatePendingInstall.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingInstallUserData](docs/ApplianceUpdatePendingInstallUserData.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingListResp](docs/ApplianceUpdatePendingListResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingPrecheckResp](docs/ApplianceUpdatePendingPrecheckResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingPrecheckResult](docs/ApplianceUpdatePendingPrecheckResult.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingQuestion](docs/ApplianceUpdatePendingQuestion.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingQuestionInputType](docs/ApplianceUpdatePendingQuestionInputType.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingResp](docs/ApplianceUpdatePendingResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingSourceType](docs/ApplianceUpdatePendingSourceType.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingStageAndInstall](docs/ApplianceUpdatePendingStageAndInstall.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingValidate](docs/ApplianceUpdatePendingValidate.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePendingValidateResp](docs/ApplianceUpdatePendingValidateResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyConfig](docs/ApplianceUpdatePolicyConfig.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyDayOfWeek](docs/ApplianceUpdatePolicyDayOfWeek.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyInfo](docs/ApplianceUpdatePolicyInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyResp](docs/ApplianceUpdatePolicyResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicySet](docs/ApplianceUpdatePolicySet.md)
 - [VSphereAutomation::Appliance::ApplianceUpdatePolicyTime](docs/ApplianceUpdatePolicyTime.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateResp](docs/ApplianceUpdateResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateServiceInfo](docs/ApplianceUpdateServiceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateStagedInfo](docs/ApplianceUpdateStagedInfo.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateStagedResp](docs/ApplianceUpdateStagedResp.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateState](docs/ApplianceUpdateState.md)
 - [VSphereAutomation::Appliance::ApplianceUpdateSummary](docs/ApplianceUpdateSummary.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceHealth](docs/ApplianceVmonServiceHealth.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceInfo](docs/ApplianceVmonServiceInfo.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceListDetailsResp](docs/ApplianceVmonServiceListDetailsResp.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceListDetailsRespValue](docs/ApplianceVmonServiceListDetailsRespValue.md)
 - [VSphereAutomation::Appliance::ApplianceVmonServiceResp](docs/ApplianceVmonServiceResp.md)
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
 - [VSphereAutomation::Appliance::VapiStdErrorsErrorType](docs/VapiStdErrorsErrorType.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsFeatureInUse](docs/VapiStdErrorsFeatureInUse.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsFeatureInUseError](docs/VapiStdErrorsFeatureInUseError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsInvalidArgument](docs/VapiStdErrorsInvalidArgument.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsInvalidArgumentError](docs/VapiStdErrorsInvalidArgumentError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsInvalidRequest](docs/VapiStdErrorsInvalidRequest.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotAllowedInCurrentState](docs/VapiStdErrorsNotAllowedInCurrentState.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotAllowedInCurrentStateError](docs/VapiStdErrorsNotAllowedInCurrentStateError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsNotFoundError](docs/VapiStdErrorsNotFoundError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsResourceBusy](docs/VapiStdErrorsResourceBusy.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsResourceBusyError](docs/VapiStdErrorsResourceBusyError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsServiceUnavailable](docs/VapiStdErrorsServiceUnavailable.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsTimedOut](docs/VapiStdErrorsTimedOut.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsTimedOutError](docs/VapiStdErrorsTimedOutError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnableToAllocateResource](docs/VapiStdErrorsUnableToAllocateResource.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnableToAllocateResourceError](docs/VapiStdErrorsUnableToAllocateResourceError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthenticated](docs/VapiStdErrorsUnauthenticated.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthenticatedError](docs/VapiStdErrorsUnauthenticatedError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnauthorizedError](docs/VapiStdErrorsUnauthorizedError.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnsupported](docs/VapiStdErrorsUnsupported.md)
 - [VSphereAutomation::Appliance::VapiStdErrorsUnsupportedError](docs/VapiStdErrorsUnsupportedError.md)
 - [VSphereAutomation::Appliance::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)
 - [VSphereAutomation::Appliance::VapiStdLocalizableMessageParams](docs/VapiStdLocalizableMessageParams.md)
 - [VSphereAutomation::Appliance::VapiStdLocalizationParam](docs/VapiStdLocalizationParam.md)
 - [VSphereAutomation::Appliance::VapiStdLocalizationParamDateTimeFormat](docs/VapiStdLocalizationParamDateTimeFormat.md)
 - [VSphereAutomation::Appliance::VapiStdNestedLocalizableMessage](docs/VapiStdNestedLocalizableMessage.md)

