# VSphereAutomation::VAPI::VapiMetadataAuthenticationComponentData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | [**VapiMetadataAuthenticationComponentInfo**](VapiMetadataAuthenticationComponentInfo.md) |  | 
**fingerprint** | **String** | Fingerprint of the metadata of the component. &lt;p&gt; Authentication information could change when there is an infrastructure update. Since the data present in {@link ComponentData#info} could be quite large, {@name #fingerprint} provides a convenient way to check if the data for a particular component is updated. &lt;p&gt; You should store the fingerprint associated with a component. After an update, by invoking the {@link vapi.metadata.authentication.Component#fingerprint} {@term operation}, you can retrieve the new fingerprint for the component. If the new fingerprint and the previously stored fingerprint do not match, clients can then use the {@link vapi.metadata.authentication.Component#get} to retrieve the new authentication information for the component. | 


