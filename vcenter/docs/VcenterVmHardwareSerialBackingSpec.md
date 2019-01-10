# VSphereAutomation::VCenter::VcenterVmHardwareSerialBackingSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareSerialBackingType**](VcenterVmHardwareSerialBackingType.md) |  | 
**file** | **String** | Path of the file backing the virtual serial port. This field is optional and it is only relevant when the value of Serial.BackingSpec.type is FILE. | [optional] 
**host_device** | **String** | Name of the device backing the virtual serial port.    If unset, the virtual serial port will be configured to automatically detect a suitable host device. | [optional] 
**pipe** | **String** | Name of the pipe backing the virtual serial port. This field is optional and it is only relevant when the value of Serial.BackingSpec.type is one of PIPE_SERVER or PIPE_CLIENT. | [optional] 
**no_rx_loss** | **BOOLEAN** | Flag that enables optimized data transfer over the pipe. When the value is true, the host buffers data to prevent data overrun. This allows the virtual machine to read all of the data transferred over the pipe with no data loss. If unset, defaults to false. | [optional] 
**network_location** | **String** | URI specifying the location of the network service backing the virtual serial port.     - If Serial.BackingSpec.type is NETWORK_SERVER, this field is the location used by clients to connect to this server. The hostname part of the URI should either be empty or should specify the address of the host on which the virtual machine is running.    - If Serial.BackingSpec.type is NETWORK_CLIENT, this field is the location used by the virtual machine to connect to the remote server.   This field is optional and it is only relevant when the value of Serial.BackingSpec.type is one of NETWORK_SERVER or NETWORK_CLIENT. | [optional] 
**proxy** | **String** | Proxy service that provides network access to the network backing. If set, the virtual machine initiates a connection with the proxy service and forwards the traffic to the proxy. If unset, no proxy service should be used. | [optional] 


