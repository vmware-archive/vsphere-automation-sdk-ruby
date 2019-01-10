# VSphereAutomation::VAPI::VapiMetadataMetamodelStructureInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Dot separated name of the structure element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention. | 
**type** | [**VapiMetadataMetamodelStructureInfoType**](VapiMetadataMetamodelStructureInfoType.md) |  | 
**enumerations** | **Array&lt;Object&gt;** | Metamodel information of all the enumeration elements contained in the structure element. The key in the {@term map} is the identifier of the enumeration element and the value is the metamodel information of the enumeration element. | 
**constants** | **Array&lt;Object&gt;** | Metamodel information of all the constant elements contained in the structure element. The key in the {@term map} is the name of the constant element and the value in the {@term map} is the metamodel information for the constant element. | 
**fields** | [**Array&lt;VapiMetadataMetamodelFieldInfo&gt;**](VapiMetadataMetamodelFieldInfo.md) | Metamodel information of all the field elements. The order of the field elements in the list matches the order in which the fields are defined in the service. | 
**metadata** | **Array&lt;Object&gt;** | Generic metadata elements for the structure element. The key in the {@term map} is the name of the metadata element and the value is the data associated with that metadata element. &lt;p&gt; The {@link vapi.metadata.metamodel.MetadataIdentifier} contains possible string values for keys in the {@term map}. | 
**documentation** | **String** | English language documentation for a structure element. It can contain HTML markup and Javadoc tags. The first sentence of the structure documentation is a complete sentence that identifies the structure by name and summarizes the purpose of the structure. | 


