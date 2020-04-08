# VSphereAutomation::ESX::EsxSettingsHardwareSupportManagersPackagesVersionsFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image_version** | **String** | vSphere release version for the component information in the Hardware Support Package (HSP). Only Hardware Support Packages (HSPs) compatible with the vSphere release version specified in &#39;baseImageVersion&#39; will be returned. The &#39;baseImageVersion&#39; parameter should be a full numeric base image version string (e.g. \&quot;7.1.0-2.3.436234\&quot;). Future implementations may support version specification by prefix (e.g. \&quot;7.1\&quot; to specify all updates and builds of 7.1) or other forms of specification (e.g. \&quot;&gt;&#x3D;7.0\&quot;). Hardware Support Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate the remainder is wildcarded. Matching is on the specified substring only, so a bundle supporting \&quot;7.1.0-2\&quot; would match a &#39;release&#39; parameter of \&quot;7.1.0-2.3.436234\&quot; as well as \&quot;7.1.0-2.1.4133564\&quot; and \&quot;7.1.0-2.0.355667\&quot; but not \&quot;7.1.0-3.0.63445\&quot; or any base image version starting with \&quot;7.2\&quot;. Note that we require compatible base image versions be specified at least down to the update version (i.e. \&quot;7.0\&quot; is insufficiently constrained) | [optional] 


