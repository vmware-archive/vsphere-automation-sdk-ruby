# VSphereAutomation::Appliance::ApplianceNetworkingProxyConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Boolean** | In the result of the {@name #get} and {@name #list} {@term operations} this {@term field} indicates whether proxying is enabled for a particular protocol. In the input to the {@name test} and {@name set} {@term operations} this {@term field} specifies whether proxying should be enabled for a particular protocol. | 
**password** | **String** | Password for proxy server. | [optional] 
**port** | **Integer** | Port to connect to the proxy server. In a &#39;get&#39; call, indicates the port connected to the proxy server. In a &#39;set&#39; call, specifies the port to connect to the proxy server. A value of -1 indicates the default port. | 
**server** | **String** | URL of the proxy server | 
**username** | **String** | Username for proxy server. | [optional] 


