# VSphereAutomation::Content::ContentLibraryOptimizationInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**optimize_remote_publishing** | **BOOLEAN** | If set to {@code true} then library would be optimized for remote publishing. &lt;p&gt; Turn it on if remote publishing is dominant use case for this library. Remote publishing means here that publisher and subscribers are not the part of the same {@name Vcenter} SSO domain. &lt;p&gt; Any optimizations could be done as result of turning on this optimization during library creation. For example, library content could be stored in different format but optimizations are not limited to just storage format. &lt;p&gt; Note, that value of this toggle could be set only during creation of the library and you would need to migrate your library in case you need to change this value (optimize the library for different use case). | [optional] 


