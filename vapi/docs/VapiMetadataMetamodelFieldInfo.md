# VSphereAutomation::VAPI::VapiMetadataMetamodelFieldInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the field element in a canonical format. The format is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention. | 
**type** | [**VapiMetadataMetamodelType**](VapiMetadataMetamodelType.md) |  | 
**metadata** | **Array&lt;Object&gt;** | Generic metadata elements for the field element. The key in the {@term map} is the name of the metadata element and the value is the data associated with that metadata element. &lt;p&gt; The {@link vapi.metadata.metamodel.MetadataIdentifier} contains possible string values for keys in the {@term map}. | 
**documentation** | **String** | English language documentation for the service element. It can contain HTML markup and Javadoc tags. | 


