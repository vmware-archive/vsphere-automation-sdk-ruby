# VSphereAutomation::VAPI::VapiMetadataMetamodelServiceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Dot separated name of the service element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention. | 
**operations** | **Array&lt;Object&gt;** | Metamodel information of all the operation elements contained in the service element. The key in the {@term map} is the identifier of the operation element and the value in the {@term map} is the metamodel information for the operation element. | 
**structures** | **Array&lt;Object&gt;** | Metamodel information of all the structure elements contained in the service element. The key in the {@term map} is the identifier of the structure element and the value in the {@term map} is the metamodel information for the structure element. | 
**enumerations** | **Array&lt;Object&gt;** | Metamodel information of all the enumeration elements contained in the service element. The key in the {@term map} is the identifier of the enumeration element and the value in the {@term map} is the metamodel information for the enumeration element. | 
**constants** | **Array&lt;Object&gt;** | Metamodel information of all the constant elements contained in the service element. The key in the {@term map} is the name of the constant element and the value in the {@term map} is the metamodel information for the contant element. | 
**metadata** | **Array&lt;Object&gt;** | Generic metadata elements for the service element. The key in the {@term map} is the name of the metadata element and the value is the data associated with that metadata element. &lt;p&gt; The {@link vapi.metadata.metamodel.MetadataIdentifier} contains possible string values for keys in the {@term map}. | 
**documentation** | **String** | English language documentation for the service element. It can contain HTML markup and Javadoc tags. The first sentence of the service documentation is a complete sentence that identifies the service by name and summarizes the purpose of the service. The remaining part of the documentation provides a summary of how to use the operations defined in the service. | 


