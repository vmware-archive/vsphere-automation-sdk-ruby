# VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemes** | [**Array&lt;VapiMetadataAuthenticationAuthenticationInfo&gt;**](VapiMetadataAuthenticationAuthenticationInfo.md) | List of authentication schemes to be used for all the operation elements contained in this service element. The authentication scheme specified on the package element corresponding to this service element is ignored. | 
**operations** | **Array&lt;Object&gt;** | Information about all operation elements contained in this service element that contain authentication information. The key in the {@term map} is the identifier of the operation element and the value in the {@term map} is the authentication information for the operation element. &lt;p&gt; For an explanation of containment of authentication information within operation elements, see {@link vapi.metadata.authentication.service.Operation}. | 


