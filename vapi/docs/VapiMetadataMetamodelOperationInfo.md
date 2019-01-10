# VSphereAutomation::VAPI::VapiMetadataMetamodelOperationInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the operation element in a canonical format. The format is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention. | 
**params** | [**Array&lt;VapiMetadataMetamodelFieldInfo&gt;**](VapiMetadataMetamodelFieldInfo.md) | Metamodel information for the parameter elements. The order of the parameters elements in the list is same as the order of the parameters declared in the interface definition file. | 
**output** | [**VapiMetadataMetamodelOperationResultInfo**](VapiMetadataMetamodelOperationResultInfo.md) |  | 
**errors** | [**Array&lt;VapiMetadataMetamodelErrorInfo&gt;**](VapiMetadataMetamodelErrorInfo.md) | List of error elements that might be reported by the operation element. If the operation reports the same error for more than one reason, the list contains the error element associated with the error more than once with different documentation elements. | 
**metadata** | **Array&lt;Object&gt;** | Generic metadata elements for the operation element. The key in the {@term map} is the name of the metadata element and the value is the data associated with that metadata element. &lt;p&gt; The {@link vapi.metadata.metamodel.MetadataIdentifier} contains possible string values for key in the {@term map}. | 
**documentation** | **String** | English language documentation for the service element. It can contain HTML markup and Javadoc tags. | 


