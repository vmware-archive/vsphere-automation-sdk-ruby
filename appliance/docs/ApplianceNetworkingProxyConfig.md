# VSphereAutomation::Appliance::ApplianceNetworkingProxyConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **String** | Hostname or IP address of the proxy server. | 
**port** | **Integer** | Port to connect to the proxy server. In a &#39;get&#39; call, indicates the port connected to the proxy server. In a &#39;set&#39; call, specifies the port to connect to the proxy server. A value of -1 indicates the default port. | 
**username** | **String** | Username for proxy server. | [optional] 
**password** | **String** | Password for proxy server. | [optional] 
**enabled** | **BOOLEAN** | In the result of the {@name #get} and {@name #list} {@term operations} this {@term field} indicates whether proxying is enabled for a particular protocol. In the input to the {@name test} and {@name set} {@term operations} this {@term field} specifies whether proxying should be enabled for a particular protocol. | 


