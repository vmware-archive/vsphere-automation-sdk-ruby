# VSphereAutomation::CIS::VapiStdDynamicID

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of resource being identified (for example {@code com.acme.Person}). &lt;p&gt; {@term Services} that contain {@term operations} for creating and deleting resources typically contain a {@term constant} specifying the resource type for the resources being created and deleted. The API metamodel metadata {@term services} include a {@term service} that allows retrieving all the known resource types. | 
**id** | **String** | The identifier for a resource whose type is specified by {@link #type}. | 


