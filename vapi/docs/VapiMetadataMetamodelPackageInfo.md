# VSphereAutomation::VAPI::VapiMetadataMetamodelPackageInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Dot separated name of the package element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention. | 
**structures** | **Array&lt;Object&gt;** | Metamodel information of all the structure elements contained in the package element. The key in the {@term map} is the identifier of the structure element and the value in the {@term map} is the metamodel information for the structure element. &lt;p&gt; This does not include the structure elements contained in the service elements that are contained in this package element. | 
**enumerations** | **Array&lt;Object&gt;** | Metamodel information of all the enumeration elements contained in the package element. The key in the {@term map} is the identifier of the enumeration element and the value in the {@term map} is the metamodel information for the enumeration element. &lt;p&gt; This does not include the enumeration elements that are contained in the service elements of this package element or structure elements of this package element. | 
**services** | **Array&lt;Object&gt;** | Metamodel information of all the service elements contained in the package element. The key in the {@term map} is the identifier of the service element and the value in the {@term map} is the metamodel information for the service element. | 
**metadata** | **Array&lt;Object&gt;** | Generic metadata elements for the package element. The key in the {@term map} is the name of the metadata element and the value is the data associated with that metadata element. &lt;p&gt; The {@link vapi.metadata.metamodel.MetadataIdentifier} contains possible string values for keys in the {@term map}. | 
**documentation** | **String** | English language documentation for a package. It can contain HTML markup and Javadoc tags. The first sentence of the package documentation is a complete sentence that identifies the package by name and summarizes the purpose of the package. &lt;p&gt; The primary purpose of a package documentation is to provide high-level context that will provide a framework in which the users can put the detail about the package contents. | 


