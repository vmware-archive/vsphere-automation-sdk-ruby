# VSphereAutomation::VAPI::VapiMetadataMetamodelComponentData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | [**VapiMetadataMetamodelComponentInfo**](VapiMetadataMetamodelComponentInfo.md) |  | 
**fingerprint** | **String** | Fingerprint of the metamodel metadata of the component component. &lt;p&gt; Metamodel information could change when there is an infrastructure update and new functionality is added to an existing component. &lt;p&gt; Since the data present in {@link ComponentData#info} could be quite large, {@name #fingerprint} provides a convenient way to check if the data for a particular component is updated. &lt;p&gt; You should store the fingerprint associated with a component. After an update, by invoking the {@link vapi.metadata.metamodel.Component#fingerprint} {@term operation}, you can retrieve the new fingerprint for the component. If the new fingerprint and the previously stored fingerprint do not match, clients can use the {@link vapi.metadata.metamodel.Component#get} to retrieve the new metamodel information for the component. | 


