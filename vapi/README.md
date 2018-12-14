# vsphere-automation-vapi

The Ruby gem for the vSphere VAPI API

- API version: 2.0.0
- Package version: 0.1.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vsphere-automation-vapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vsphere-automation-vapi

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationComponentApi.new
component_id = 'component_id_example' # String | Identifier of the component element.

begin
  #Retrieves the fingerprint computed from the authentication metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.authentication.Component#get}.
  result = api_instance.fingerprint(component_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationComponentApi->fingerprint: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
`VSphereAutomation::VAPI::MetadataAuthenticationComponentApi` | [**fingerprint**](docs/MetadataAuthenticationComponentApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/authentication/component/id:{component_id}?~action&#x3D;fingerprint | Retrieves the fingerprint computed from the authentication metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.authentication.Component#get}.
`VSphereAutomation::VAPI::MetadataAuthenticationComponentApi` | [**get**](docs/MetadataAuthenticationComponentApi.md#get) | **GET** /com/vmware/vapi/metadata/authentication/component/id:{component_id} | Retrieves authentication information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the authentication information about the component element and it's fingerprint. It contains information about all the package elements that belong to this component element.
`VSphereAutomation::VAPI::MetadataAuthenticationComponentApi` | [**list**](docs/MetadataAuthenticationComponentApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/component | Returns the identifiers for the component elements that have authentication information.
`VSphereAutomation::VAPI::MetadataAuthenticationPackageApi` | [**get**](docs/MetadataAuthenticationPackageApi.md#get) | **GET** /com/vmware/vapi/metadata/authentication/package/id:{package_id} | Retrieves authentication information about the package element corresponding to {@param.name packageId}.
`VSphereAutomation::VAPI::MetadataAuthenticationPackageApi` | [**list**](docs/MetadataAuthenticationPackageApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/package | Returns the identifiers for the package elements that have authentication information.
`VSphereAutomation::VAPI::MetadataAuthenticationServiceApi` | [**get**](docs/MetadataAuthenticationServiceApi.md#get) | **GET** /com/vmware/vapi/metadata/authentication/service/id:{service_id} | Retrieves authentication information about the service element corresponding to {@param.name serviceId}.
`VSphereAutomation::VAPI::MetadataAuthenticationServiceApi` | [**list**](docs/MetadataAuthenticationServiceApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/service | Returns the identifiers for the service elements that have authentication information.
`VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi` | [**get**](docs/MetadataAuthenticationServiceOperationApi.md#get) | **POST** /com/vmware/vapi/metadata/authentication/service/operation/id:{service_id}?~action&#x3D;get | Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
`VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi` | [**list**](docs/MetadataAuthenticationServiceOperationApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/service/operation | Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have authentication information.
`VSphereAutomation::VAPI::MetadataCliCommandApi` | [**fingerprint**](docs/MetadataCliCommandApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/cli/command?~action&#x3D;fingerprint | Returns the aggregate fingerprint of all the command metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
`VSphereAutomation::VAPI::MetadataCliCommandApi` | [**get**](docs/MetadataCliCommandApi.md#get) | **POST** /com/vmware/vapi/metadata/cli/command?~action&#x3D;get | Retrieves information about a command including information about how to execute that command.
`VSphereAutomation::VAPI::MetadataCliCommandApi` | [**list**](docs/MetadataCliCommandApi.md#list) | **GET** /com/vmware/vapi/metadata/cli/command | Returns the identifiers of all commands, or commands in a specific namespace.
`VSphereAutomation::VAPI::MetadataCliNamespaceApi` | [**fingerprint**](docs/MetadataCliNamespaceApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/cli/namespace?~action&#x3D;fingerprint | Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.
`VSphereAutomation::VAPI::MetadataCliNamespaceApi` | [**get**](docs/MetadataCliNamespaceApi.md#get) | **POST** /com/vmware/vapi/metadata/cli/namespace?~action&#x3D;get | Retreives information about a namespace including information about children of that namespace.
`VSphereAutomation::VAPI::MetadataCliNamespaceApi` | [**list**](docs/MetadataCliNamespaceApi.md#list) | **GET** /com/vmware/vapi/metadata/cli/namespace | Returns the identifiers of all namespaces registered with the infrastructure.
`VSphereAutomation::VAPI::MetadataMetamodelComponentApi` | [**fingerprint**](docs/MetadataMetamodelComponentApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/metamodel/component/id:{component_id}?~action&#x3D;fingerprint | Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.metamodel.Component#get}.
`VSphereAutomation::VAPI::MetadataMetamodelComponentApi` | [**get**](docs/MetadataMetamodelComponentApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/component/id:{component_id} | Retrieves metamodel information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the metamodel information about the component and it's fingerprint. It contains information about all the package elements that are contained in this component element.
`VSphereAutomation::VAPI::MetadataMetamodelComponentApi` | [**list**](docs/MetadataMetamodelComponentApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/component | Returns the identifiers for the component elements that are registered with the infrastructure.
`VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi` | [**get**](docs/MetadataMetamodelEnumerationApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/enumeration/id:{enumeration_id} | Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. <p> The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
`VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi` | [**list**](docs/MetadataMetamodelEnumerationApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/enumeration | Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.
`VSphereAutomation::VAPI::MetadataMetamodelPackageApi` | [**get**](docs/MetadataMetamodelPackageApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/package/id:{package_id} | Retrieves information about the package element corresponding to {@param.name packageId}.
`VSphereAutomation::VAPI::MetadataMetamodelPackageApi` | [**list**](docs/MetadataMetamodelPackageApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/package | Returns the identifiers for the packages elements that are contained in all the registered component elements.
`VSphereAutomation::VAPI::MetadataMetamodelResourceApi` | [**list**](docs/MetadataMetamodelResourceApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/resource | Returns the set of resource types present across all the service elements contained in all the package elements.
`VSphereAutomation::VAPI::MetadataMetamodelResourceModelApi` | [**list**](docs/MetadataMetamodelResourceModelApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/resource/model | Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. <p> The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.
`VSphereAutomation::VAPI::MetadataMetamodelServiceApi` | [**get**](docs/MetadataMetamodelServiceApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/service/id:{service_id} | Retrieves information about the service element corresponding to {@param.name serviceId}. <p> The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.
`VSphereAutomation::VAPI::MetadataMetamodelServiceApi` | [**list**](docs/MetadataMetamodelServiceApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/service | Returns the identifiers for the service elements that are currently registered with the infrastructure. <p> The list of service elements is an aggregate list of all the service elements contained in all the package elements.
`VSphereAutomation::VAPI::MetadataMetamodelServiceOperationApi` | [**get**](docs/MetadataMetamodelServiceOperationApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/service/operation/id:{service_id}/id:{operation_id} | Retrieves the metamodel information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
`VSphereAutomation::VAPI::MetadataMetamodelServiceOperationApi` | [**list**](docs/MetadataMetamodelServiceOperationApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/service/operation | Returns the identifiers for the operation elements that are defined in the scope of {@param.name serviceId}.
`VSphereAutomation::VAPI::MetadataMetamodelStructureApi` | [**get**](docs/MetadataMetamodelStructureApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/structure/id:{structure_id} | Retrieves information about the structure element corresponding to {@param.name structureId}. <p> The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.
`VSphereAutomation::VAPI::MetadataMetamodelStructureApi` | [**list**](docs/MetadataMetamodelStructureApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/structure | Returns the identifiers for the structure elements that are contained in all the package elements and service elements.
`VSphereAutomation::VAPI::MetadataPrivilegeComponentApi` | [**fingerprint**](docs/MetadataPrivilegeComponentApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/privilege/component/id:{component_id}?~action&#x3D;fingerprint | Retrieves the fingerprint computed from the privilege metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.privilege.Component#get}.
`VSphereAutomation::VAPI::MetadataPrivilegeComponentApi` | [**get**](docs/MetadataPrivilegeComponentApi.md#get) | **GET** /com/vmware/vapi/metadata/privilege/component/id:{component_id} | Retrieves privilege information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the privilege information about the component element and its fingerprint. It contains information about all the package elements that belong to this component element.
`VSphereAutomation::VAPI::MetadataPrivilegeComponentApi` | [**list**](docs/MetadataPrivilegeComponentApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/component | Returns the identifiers for the component elements that have privilege information.
`VSphereAutomation::VAPI::MetadataPrivilegePackageApi` | [**get**](docs/MetadataPrivilegePackageApi.md#get) | **GET** /com/vmware/vapi/metadata/privilege/package/id:{package_id} | Retrieves privilege information about the package element corresponding to {@param.name packageId}.
`VSphereAutomation::VAPI::MetadataPrivilegePackageApi` | [**list**](docs/MetadataPrivilegePackageApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/package | Returns the identifiers for the package elements that have privilege information.
`VSphereAutomation::VAPI::MetadataPrivilegeServiceApi` | [**get**](docs/MetadataPrivilegeServiceApi.md#get) | **GET** /com/vmware/vapi/metadata/privilege/service/id:{service_id} | Retrieves privilege information about the service element corresponding to {@param.name serviceId}.
`VSphereAutomation::VAPI::MetadataPrivilegeServiceApi` | [**list**](docs/MetadataPrivilegeServiceApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/service | Returns the identifiers for the service elements that have privilege information.
`VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi` | [**get**](docs/MetadataPrivilegeServiceOperationApi.md#get) | **POST** /com/vmware/vapi/metadata/privilege/service/operation/id:{service_id}?~action&#x3D;get | Retrieves the privilege information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
`VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi` | [**list**](docs/MetadataPrivilegeServiceOperationApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/service/operation | Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have privilege information.
`VSphereAutomation::VAPI::RestNavigationComponentApi` | [**list**](docs/RestNavigationComponentApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/component | Gets list of all vAPI REST {@link Component}s.
`VSphereAutomation::VAPI::RestNavigationOptionsApi` | [**get**](docs/RestNavigationOptionsApi.md#get) | **POST** /com/vmware/vapi/rest/navigation/options?~action&#x3D;get | Retrieves operations for specific URL.
`VSphereAutomation::VAPI::RestNavigationResourceApi` | [**get**](docs/RestNavigationResourceApi.md#get) | **GET** /com/vmware/vapi/rest/navigation/resource/id:{type_id}/id:{instance_id} | Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
`VSphereAutomation::VAPI::RestNavigationResourceApi` | [**list**](docs/RestNavigationResourceApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/resource | Gets list of all vAPI REST {@link Resource}s.
`VSphereAutomation::VAPI::RestNavigationRootApi` | [**get**](docs/RestNavigationRootApi.md#get) | **GET** /com/vmware/vapi/rest/navigation/root | Retrieves information about a vAPI REST {@link Root}.
`VSphereAutomation::VAPI::RestNavigationServiceApi` | [**list**](docs/RestNavigationServiceApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/service | Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.
`VSphereAutomation::VAPI::VcenterActivationApi` | [**cancel**](docs/VcenterActivationApi.md#cancel) | **POST** /com/vmware/vapi/vcenter/activation/id:{activation_id}?~action&#x3D;cancel | Sends a request to cancel the task associated with the provided {@param.name activationId}.


## Documentation for Models

 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationAuthenticationInfo](docs/VapiMetadataAuthenticationAuthenticationInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationAuthenticationInfoSchemeType](docs/VapiMetadataAuthenticationAuthenticationInfoSchemeType.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationComponentData](docs/VapiMetadataAuthenticationComponentData.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationComponentFingerprintResult](docs/VapiMetadataAuthenticationComponentFingerprintResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationComponentInfo](docs/VapiMetadataAuthenticationComponentInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationComponentInfoPackages](docs/VapiMetadataAuthenticationComponentInfoPackages.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationComponentListResult](docs/VapiMetadataAuthenticationComponentListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationComponentResult](docs/VapiMetadataAuthenticationComponentResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationOperationInfo](docs/VapiMetadataAuthenticationOperationInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationPackageInfo](docs/VapiMetadataAuthenticationPackageInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationPackageInfoServices](docs/VapiMetadataAuthenticationPackageInfoServices.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationPackageListResult](docs/VapiMetadataAuthenticationPackageListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationPackageResult](docs/VapiMetadataAuthenticationPackageResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceInfo](docs/VapiMetadataAuthenticationServiceInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceInfoOperations](docs/VapiMetadataAuthenticationServiceInfoOperations.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceListResult](docs/VapiMetadataAuthenticationServiceListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceOperationGet](docs/VapiMetadataAuthenticationServiceOperationGet.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceOperationListResult](docs/VapiMetadataAuthenticationServiceOperationListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceOperationResult](docs/VapiMetadataAuthenticationServiceOperationResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataAuthenticationServiceResult](docs/VapiMetadataAuthenticationServiceResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandFingerprintResult](docs/VapiMetadataCliCommandFingerprintResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandFormatterType](docs/VapiMetadataCliCommandFormatterType.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandGenericType](docs/VapiMetadataCliCommandGenericType.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandGet](docs/VapiMetadataCliCommandGet.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandIdentity](docs/VapiMetadataCliCommandIdentity.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandInfo](docs/VapiMetadataCliCommandInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandListResult](docs/VapiMetadataCliCommandListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandOptionInfo](docs/VapiMetadataCliCommandOptionInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandOutputFieldInfo](docs/VapiMetadataCliCommandOutputFieldInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandOutputInfo](docs/VapiMetadataCliCommandOutputInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliCommandResult](docs/VapiMetadataCliCommandResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliNamespaceFingerprintResult](docs/VapiMetadataCliNamespaceFingerprintResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliNamespaceGet](docs/VapiMetadataCliNamespaceGet.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliNamespaceIdentity](docs/VapiMetadataCliNamespaceIdentity.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliNamespaceInfo](docs/VapiMetadataCliNamespaceInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliNamespaceListResult](docs/VapiMetadataCliNamespaceListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataCliNamespaceResult](docs/VapiMetadataCliNamespaceResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelComponentData](docs/VapiMetadataMetamodelComponentData.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelComponentFingerprintResult](docs/VapiMetadataMetamodelComponentFingerprintResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelComponentInfo](docs/VapiMetadataMetamodelComponentInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelComponentInfoPackages](docs/VapiMetadataMetamodelComponentInfoPackages.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelComponentListResult](docs/VapiMetadataMetamodelComponentListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelComponentResult](docs/VapiMetadataMetamodelComponentResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelConstantInfo](docs/VapiMetadataMetamodelConstantInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelConstantValue](docs/VapiMetadataMetamodelConstantValue.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelConstantValueCategory](docs/VapiMetadataMetamodelConstantValueCategory.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelElementMap](docs/VapiMetadataMetamodelElementMap.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelElementMapElements](docs/VapiMetadataMetamodelElementMapElements.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelElementValue](docs/VapiMetadataMetamodelElementValue.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelElementValueType](docs/VapiMetadataMetamodelElementValueType.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelEnumerationInfo](docs/VapiMetadataMetamodelEnumerationInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelEnumerationListResult](docs/VapiMetadataMetamodelEnumerationListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelEnumerationResult](docs/VapiMetadataMetamodelEnumerationResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelEnumerationValueInfo](docs/VapiMetadataMetamodelEnumerationValueInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelEnumerationValueInfoMetadata](docs/VapiMetadataMetamodelEnumerationValueInfoMetadata.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelErrorInfo](docs/VapiMetadataMetamodelErrorInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelFieldInfo](docs/VapiMetadataMetamodelFieldInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelGenericInstantiation](docs/VapiMetadataMetamodelGenericInstantiation.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelGenericInstantiationGenericType](docs/VapiMetadataMetamodelGenericInstantiationGenericType.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelOperationInfo](docs/VapiMetadataMetamodelOperationInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelOperationResultInfo](docs/VapiMetadataMetamodelOperationResultInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPackageInfo](docs/VapiMetadataMetamodelPackageInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPackageInfoEnumerations](docs/VapiMetadataMetamodelPackageInfoEnumerations.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPackageInfoServices](docs/VapiMetadataMetamodelPackageInfoServices.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPackageInfoStructures](docs/VapiMetadataMetamodelPackageInfoStructures.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPackageListResult](docs/VapiMetadataMetamodelPackageListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPackageResult](docs/VapiMetadataMetamodelPackageResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPrimitiveValue](docs/VapiMetadataMetamodelPrimitiveValue.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelPrimitiveValueType](docs/VapiMetadataMetamodelPrimitiveValueType.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelResourceListResult](docs/VapiMetadataMetamodelResourceListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelResourceModelListResult](docs/VapiMetadataMetamodelResourceModelListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelServiceInfo](docs/VapiMetadataMetamodelServiceInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelServiceInfoOperations](docs/VapiMetadataMetamodelServiceInfoOperations.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelServiceListResult](docs/VapiMetadataMetamodelServiceListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelServiceOperationListResult](docs/VapiMetadataMetamodelServiceOperationListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelServiceOperationResult](docs/VapiMetadataMetamodelServiceOperationResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelServiceResult](docs/VapiMetadataMetamodelServiceResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelStructureInfo](docs/VapiMetadataMetamodelStructureInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelStructureInfoConstants](docs/VapiMetadataMetamodelStructureInfoConstants.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelStructureInfoType](docs/VapiMetadataMetamodelStructureInfoType.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelStructureListResult](docs/VapiMetadataMetamodelStructureListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelStructureResult](docs/VapiMetadataMetamodelStructureResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelType](docs/VapiMetadataMetamodelType.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelTypeBuiltinType](docs/VapiMetadataMetamodelTypeBuiltinType.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelTypeCategory](docs/VapiMetadataMetamodelTypeCategory.md)
 - [VSphereAutomation::VAPI::VapiMetadataMetamodelUserDefinedType](docs/VapiMetadataMetamodelUserDefinedType.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeComponentData](docs/VapiMetadataPrivilegeComponentData.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeComponentFingerprintResult](docs/VapiMetadataPrivilegeComponentFingerprintResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeComponentInfo](docs/VapiMetadataPrivilegeComponentInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeComponentInfoPackages](docs/VapiMetadataPrivilegeComponentInfoPackages.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeComponentListResult](docs/VapiMetadataPrivilegeComponentListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeComponentResult](docs/VapiMetadataPrivilegeComponentResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeOperationInfo](docs/VapiMetadataPrivilegeOperationInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegePackageInfo](docs/VapiMetadataPrivilegePackageInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegePackageInfoServices](docs/VapiMetadataPrivilegePackageInfoServices.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegePackageListResult](docs/VapiMetadataPrivilegePackageListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegePackageResult](docs/VapiMetadataPrivilegePackageResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegePrivilegeInfo](docs/VapiMetadataPrivilegePrivilegeInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeServiceInfo](docs/VapiMetadataPrivilegeServiceInfo.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeServiceInfoOperations](docs/VapiMetadataPrivilegeServiceInfoOperations.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeServiceListResult](docs/VapiMetadataPrivilegeServiceListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeServiceOperationGet](docs/VapiMetadataPrivilegeServiceOperationGet.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeServiceOperationListResult](docs/VapiMetadataPrivilegeServiceOperationListResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeServiceOperationResult](docs/VapiMetadataPrivilegeServiceOperationResult.md)
 - [VSphereAutomation::VAPI::VapiMetadataPrivilegeServiceResult](docs/VapiMetadataPrivilegeServiceResult.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationComponentInfo](docs/VapiRestNavigationComponentInfo.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationComponentListResult](docs/VapiRestNavigationComponentListResult.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationHttpMethod](docs/VapiRestNavigationHttpMethod.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationLink](docs/VapiRestNavigationLink.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationOperation](docs/VapiRestNavigationOperation.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationOptionsGet](docs/VapiRestNavigationOptionsGet.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationOptionsResult](docs/VapiRestNavigationOptionsResult.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationReference](docs/VapiRestNavigationReference.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationResourceInfo](docs/VapiRestNavigationResourceInfo.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationResourceListResult](docs/VapiRestNavigationResourceListResult.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationResourceResult](docs/VapiRestNavigationResourceResult.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationRootInfo](docs/VapiRestNavigationRootInfo.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationRootResult](docs/VapiRestNavigationRootResult.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationServiceInfo](docs/VapiRestNavigationServiceInfo.md)
 - [VSphereAutomation::VAPI::VapiRestNavigationServiceListResult](docs/VapiRestNavigationServiceListResult.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsNotAllowedInCurrentState](docs/VapiStdErrorsNotAllowedInCurrentState.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsNotAllowedInCurrentStateError](docs/VapiStdErrorsNotAllowedInCurrentStateError.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsNotFound](docs/VapiStdErrorsNotFound.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsNotFoundError](docs/VapiStdErrorsNotFoundError.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsServiceUnavailable](docs/VapiStdErrorsServiceUnavailable.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsServiceUnavailableError](docs/VapiStdErrorsServiceUnavailableError.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsUnauthenticated](docs/VapiStdErrorsUnauthenticated.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsUnauthenticatedError](docs/VapiStdErrorsUnauthenticatedError.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsUnauthorized](docs/VapiStdErrorsUnauthorized.md)
 - [VSphereAutomation::VAPI::VapiStdErrorsUnauthorizedError](docs/VapiStdErrorsUnauthorizedError.md)
 - [VSphereAutomation::VAPI::VapiStdLocalizableMessage](docs/VapiStdLocalizableMessage.md)

