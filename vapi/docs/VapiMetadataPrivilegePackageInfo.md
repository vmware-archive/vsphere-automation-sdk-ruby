# VSphereAutomation::VAPI::VapiMetadataPrivilegePackageInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**privileges** | **Array&lt;String&gt;** | List of default privileges to be used for all the operations present in this package. If a particular operation element has no explicit privileges defined in the privilege definition file, these privileges are used for enforcing authorization. | 
**services** | **Array&lt;Object&gt;** | Information about all service elements contained in this package element that contain privilege information. The key in the {@term map} is the identifier of the service element and the value in the {@term map} is the privilege information for the service element. For an explanation of privilege information containment within service elements, see {@link vapi.metadata.privilege.Service}. | 


