# VSphereAutomation::VAPI::VapiMetadataAuthenticationPackageInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemes** | [**Array&lt;VapiMetadataAuthenticationAuthenticationInfo&gt;**](VapiMetadataAuthenticationAuthenticationInfo.md) | List of authentication schemes to be used for all the operation elements contained in this package element. If a particular service or operation element has no explicit authentications defined in the authentication defintion file, these authentication schemes are used for authenticating the user. | 
**services** | **Array&lt;Object&gt;** | Information about all service elements contained in this package element that contain authentication information. The key in the {@term map} is the identifier of the service element and the value in the {@term map} is the authentication information for the service element. &lt;p&gt; For an explanation of authentication information containment within service elements, see {@link vapi.metadata.authentication.Service}. | 


