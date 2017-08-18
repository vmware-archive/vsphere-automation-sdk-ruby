#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.metamodel.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Metadata
        module Metamodel
        end
      end
    end
  end
end

# The  ``com.vmware.vapi.metadata.metamodel``   package  provides  classs  that expose all the information present in the interface definition language (IDL) specification.  
# 
#  Metamodel metadata is organized into an hierarchy of elements. The main elements are:  
# 
#   * Enumeration: An enumeration element that has a list of enumeration value elements.
#    * Constant: A constant element has a name and a value.
#    * Structure: A structure element can have field elements, constant elements and enumeration elements. 
#    * Operation: An operation has a list of parameter elements, result element and error elements.
#    * Service: A service is a collection of operation elements, structure elements, enumerated elements and constant elements.
#    * Package: A package is a collection of service elements, structure elements and enumeration elements.
#    * Component: A component is a collection of package elements.
#   
#   The  ``com.vmware.vapi.metadata.metamodel``   package  has  classs  that enables two styles of client applications:  
# 
#   * A client can retrieve the exact pieces of information it requires using the various granularities the API supports (that is   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Component`  ,   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Package`  ,   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Service`  ,   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Structure`  ,   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Enumeration`   and   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation`  ). In this case, it doesn't cache any information locally and always invokes  methods  to get the metamodel information it requires.
#    * A client can retrieve all the metamodel information in fewer  method  invocations using the   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Component`    class  and cache the output locally. It can then poll on the fingerprint information exposed by the   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Component`    class  to monitor changes in API definition.
#   
module Com::Vmware::Vapi::Metadata::Metamodel
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Component``   class  providers  methods  to retrieve metamodel information of a component element.  
  # 
  #  A component defines a set of functionality that is deployed together and versioned together. For example, all the  classs  that belong to VMware Content Library are part of a single component. A component element describes a component. A component element contains one or more package elements.  
  # 
  #  The  methods  for package elements are provided by  class    :class:`Com::Vmware::Vapi::Metadata::Metamodel::Package`  .
  class Component < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.component')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'component_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.component')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ComponentData'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    FINGERPRINT_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('fingerprint', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'component_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.component')
      ),
      VAPI::Bindings::StringType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO,
      'fingerprint' => FINGERPRINT_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.component'
    # Returns the identifiers for the component elements that are registered with the infrastructure.
    #
    # @return [Array<String>]
    #     The list of identifiers for the component elements that are registered with the infrastructure.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves metamodel information about the component element corresponding to  ``component_id`` .  
    # 
    #  The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::ComponentData`   contains the metamodel information about the component and it's fingerprint. It contains information about all the package elements that are contained in this component element.
    #
    # @param component_id [String]
    #     Identifier of the component element.
    # @return [Com::Vmware::Vapi::Metadata::Metamodel::ComponentData]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::ComponentData`   instance that corresponds to  ``component_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the component element associated with  ``component_id``  is not registered with the infrastructure.
    def get(component_id)
      invoke_with_info(GET_INFO,
                       'component_id' => component_id)
    end

    # Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to  ``component_id`` .  
    # 
    #  The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of   :func:`Com::Vmware::Vapi::Metadata::Metamodel::Component.get`  .
    #
    # @param component_id [String]
    #     Identifier of the component element.
    # @return [String]
    #     The fingerprint computed from the metamodel metadata of the component element.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the component element associated with  ``component_id``  is not registered with the infrastructure.
    def fingerprint(component_id)
      invoke_with_info(FINGERPRINT_INFO,
                       'component_id' => component_id)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Enumeration``   class  provides  methods  to retrieve metamodel information about an enumeration element in the interface definition language.  
  # 
  #  The  ``Com::Vmware::Vapi::Metadata::Metamodel::Enumeration``  has a list of enumeration value elements.
  class Enumeration < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.enumeration')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'enumeration_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.enumeration')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.enumeration'
    # Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.
    #
    # @return [Array<String>]
    #     The list of identifiers for the enumeration elements.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves information about the enumeration element corresponding to  ``enumeration_id`` .  
    # 
    #  The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo`   contains the metamodel information about the enumeration value element contained in the enumeration element.
    #
    # @param enumeration_id [String]
    #     Identifier of the enumeration element.
    # @return [Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo`   instance that corresponds to  ``enumeration_id``
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the enumeration element associated with  ``enumeration_id``  is not contained in any of the package elements, service elements and structure elements.
    def get(enumeration_id)
      invoke_with_info(GET_INFO,
                       'enumeration_id' => enumeration_id)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier``   class  provides string constants that can be used as identifiers for the metadata elements.  
  # 
  #  Most of the types in   :mod:`com.vmware.vapi.metadata.metamodel`   package has a metadata field whose type is  ``Map<String, ElementMap>`` .   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains the identifiers used in the keys of the above Map type.
  class MetadataIdentifier < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.metadata_identifier')

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(SERVICE_ID, {})

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    CANONICAL_NAME = 'CanonicalName'
    COMPONENT = 'Component'
    CREATE = 'Create'
    CRUD = 'Crud'
    HAS_FIELDS_OF = 'HasFieldsOf'
    INCLUDABLE = 'Includable'
    INCLUDE = 'Include'
    IS_ONE_OF = 'IsOneOf'
    MODEL = 'Model'
    READ = 'Read'
    RESOURCE = 'Resource'
    UNION_CASE = 'UnionCase'
    UNION_TAG = 'UnionTag'
    UPDATE = 'Update'
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Package``   class  provides  methods  to retrieve metamodel information about a package element in the interface definition language.  
  # 
  #  A package is a logical grouping of services, structures and enumerations. A package element describes the package. It contains the service elements, structure elements and enumeration elements that are grouped together.
  class Package < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.package')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'package_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.package')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.package'
    # Returns the identifiers for the packages elements that are contained in all the registered component elements.
    #
    # @return [Array<String>]
    #     The list of identifiers for the package elements that are contained in all the registered component elements.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves information about the package element corresponding to  ``package_id`` .
    #
    # @param package_id [String]
    #     Identifier of the package element.
    # @return [Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo`   instance that corresponds to  ``package_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the package element associated with  ``package_id``  does not exist.
    def get(package_id)
      invoke_with_info(GET_INFO,
                       'package_id' => package_id)
    end

  end
  # The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Resource`    class  provides  methods  to retrieve information about resource types.  
  # 
  #  A service is a logical grouping of operations that operate on an entity. Each entity is identifier by a namespace (or resource type) and an unique identifier.
  class ResourceService < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.resource')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.resource'
    # Returns the set of resource types present across all the service elements contained in all the package elements.
    #
    # @return [Set<String>]
    #     Set of resource types
    def list
      invoke_with_info(LIST_INFO)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Service``   class  provides  methods  to retrieve metamodel information about a service element in the interface definition language.  
  # 
  #  A service is a logical grouping of operations that operate on some entity. A service element describes a service. It contains operation elements that describe the operations grouped in the service. It also contains structure elements and enumeration elements corresponding to the structures and enumerations defined in the service.
  class ServiceService < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.service')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.service')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.service'
    # Returns the identifiers for the service elements that are currently registered with the infrastructure.  
    # 
    #  The list of service elements is an aggregate list of all the service elements contained in all the package elements.
    #
    # @return [Array<String>]
    #     The list of identifiers for the service elements that are currently registered with the infrastructure.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves information about the service element corresponding to  ``service_id`` .  
    # 
    #  The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo`   contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.
    #
    # @param service_id [String]
    #     Identifier of the service element.
    # @return [Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo`   instance that corresponds to  ``service_id``
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service element associated with  ``service_id``  is not registered with the infrastructure.
    def get(service_id)
      invoke_with_info(GET_INFO,
                       'service_id' => service_id)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Source``   class  provides  methods  to manage the sources of metamodel metadata information.  
  # 
  #  The interface definition language infrastructure provides tools to generate various kinds of metadata in JSON format from the interface definition files and additional properties files. One of the generated files contains metamodel information. The generated file can be registered as a source of metadata.  
  # 
  #  The metamodel file contains all the data present in the interface definition files. Each metamodel file contains data about one component element. When a metamodel file is added as a source, each source contributes only one component element's metadata.  
  # 
  #  Metamodel metadata can also be discovered from a remote server that supports the metamodel metadata  classs  (see   :mod:`com.vmware.vapi.metadata.metamodel`  ). Since multiple components can be registered with a single metadata server, when a remote server is registered as a source, that source can contribute more than one component.
  class Source < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.source')

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'source_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.metadata.metamodel.source'),
        'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Source::CreateSpec')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'source_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.metadata.metamodel.source')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'source_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.metadata.metamodel.source')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Source::Info'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    RELOAD_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('reload', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'source_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new)
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    FINGERPRINT_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('fingerprint', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'source_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new)
      ),
      VAPI::Bindings::StringType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'create' => CREATE_INFO,
      'delete' => DELETE_INFO,
      'get' => GET_INFO,
      'list' => LIST_INFO,
      'reload' => RELOAD_INFO,
      'fingerprint' => FINGERPRINT_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.metadata.metamodel.source'
    # Creates a new metadata source. Once the server validates the registration information of the metadata source, the metamodel metadata is retrieved from the source. This populates elements in all the  classs  defined in   :mod:`com.vmware.vapi.metadata.metamodel`    package .
    #
    # @param source_id [String]
    #     metadata source identifier.
    # @param spec [Com::Vmware::Vapi::Metadata::Metamodel::Source::CreateSpec]
    #     create specification.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
    #     if the metadata source identifier is already registered with the infrastructure.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the type of the source specified in  null  is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the file specified in  null  is not a valid JSON file or if the format of the metamodel metadata in the JSON file is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the URI specified in  null  is unreachable or if there is a transport protocol or message protocol mismatch between the client and the server or if the remote server do not have  classs  present in   :mod:`com.vmware.vapi.metadata.metamodel`    package .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the file specified in  null  does not exist.
    def create(source_id, spec)
      invoke_with_info(CREATE_INFO,
                       'source_id' => source_id,
                       'spec' => spec)
    end

    # Deletes an existing metamodel metadata source from the infrastructure.
    #
    # @param source_id [String]
    #     Identifier of the metadata source.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the metadata source associated with  ``source_id``  is not found.
    def delete(source_id)
      invoke_with_info(DELETE_INFO,
                       'source_id' => source_id)
    end

    # Retrieves information about the metadata source corresponding to  ``source_id`` .
    #
    # @param source_id [String]
    #     Identifier of the metadata source.
    # @return [Com::Vmware::Vapi::Metadata::Metamodel::Source::Info]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Source::Info`   instance that corresponds to  ``source_id``
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the metadata source associated with  ``source_id``  is not found.
    def get(source_id)
      invoke_with_info(GET_INFO,
                       'source_id' => source_id)
    end

    # Returns the identifiers of the metadata sources currently registered with the infrastructure.
    #
    # @return [Array<String>]
    #     The list of identifiers for metadata sources currently registered.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Reloads the metamodel metadata from all the metadata sources or of a particular metadata source if  ``source_id``  is specified.
    #
    # @param source_id [String, nil]
    #     Identifier of the metadata source.
    #     If unspecified, all the metadata sources are reloaded.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the metadata source associated with  ``source_id``  is not found.
    def reload(source_id = nil)
      invoke_with_info(RELOAD_INFO,
                       'source_id' => source_id)
    end

    # Returns the aggregate fingerprint of metadata from all the metadata sources or from a particular metadata source if  ``source_id``  is specified.
    #
    # @param source_id [String, nil]
    #     Identifier of the metadata source.
    #     If unspecified, the fingerprint of all the metadata sources is returned.
    # @return [String]
    #     Aggregate fingerprint of all the metadata sources or of a particular metadata source.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the metadata source associated with  ``source_id``  is not found.
    def fingerprint(source_id = nil)
      invoke_with_info(FINGERPRINT_INFO,
                       'source_id' => source_id)
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Source::Info``   class  contains the metadata source information.
    # @!attribute [rw] description
    #     @return [String]
    #     English language human readable description of the source.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vapi::Metadata::SourceType]
    #     Type of the metadata source.
    # @!attribute [rw] filepath
    #     @return [String]
    #     Absolute file path of the metamodel metadata file that has the metamodel information about one component element. The  ``filePath``  is the path to the file in the server's filesystem.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
    # @!attribute [rw] address
    #     @return [URI]
    #     Connection information for the remote server. This must be in the format http(s)://IP:port/namespace.  
    #     
    #      The remote server must support the  classs  in the   :mod:`com.vmware.vapi.metadata.metamodel`    package . It must expose metamodel information of one or more components.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.metadata.metamodel.source.info',
            {
              'description' => VAPI::Bindings::StringType.instance,
              'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::SourceType'),
              'filepath' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance)
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :description,
                    :type,
                    :filepath,
                    :address

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Source::CreateSpec``   class  contains the registration information of a metamodel source.
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.metadata.metamodel.source.create_spec',
            {
              'description' => VAPI::Bindings::StringType.instance,
              'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::SourceType'),
              'filepath' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance)
            },
            CreateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :description,
                    :type,
                    :filepath,
                    :address

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Structure``   class  providers  methods  to retrieve metamodel information about a structure element in the interface definition language.
  class Structure < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.structure')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'structure_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.structure')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.structure'
    # Returns the identifiers for the structure elements that are contained in all the package elements and service elements.
    #
    # @return [Array<String>]
    #     The list of identifiers for the structure elements.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves information about the structure element corresponding to  ``structure_id`` .  
    # 
    #  The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo`   contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.
    #
    # @param structure_id [String]
    #     Identifier of the structure element.
    # @return [Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo`   instance that corresponds to  ``structure_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the structure element associated with  ``structure_id``  is not contained in any of the package elements or service elements.
    def get(structure_id)
      invoke_with_info(GET_INFO,
                       'structure_id' => structure_id)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ComponentData``   class  contains the metamodel metadata information of a component element along with its fingerprint.
  # @!attribute [rw] info
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ComponentInfo]
  #     Metamodel information of the component element. This includes information about all the package elements contained in this component element.  
  #     
  #      The metamodel information about a component could be quite large if there are a lot of package elements contained in this component.
  # @!attribute [rw] fingerprint
  #     @return [String]
  #     Fingerprint of the metamodel metadata of the component component.  
  #     
  #      Metamodel information could change when there is an infrastructure update and new functionality is added to an existing component.  
  #     
  #      Since the data present in   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ComponentData.info`   could be quite large,  ``fingerprint``  provides a convenient way to check if the data for a particular component is updated.  
  #     
  #      You should store the fingerprint associated with a component. After an update, by invoking the   :func:`Com::Vmware::Vapi::Metadata::Metamodel::Component.fingerprint`    method , you can retrieve the new fingerprint for the component. If the new fingerprint and the previously stored fingerprint do not match, clients can use the   :func:`Com::Vmware::Vapi::Metadata::Metamodel::Component.get`   to retrieve the new metamodel information for the component.
  class ComponentData < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.component_data',
          {
            'info' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ComponentInfo'),
            'fingerprint' => VAPI::Bindings::StringType.instance
          },
          ComponentData,
          false,
          nil
        )
      end
    end

    attr_accessor :info,
                  :fingerprint

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ComponentInfo``   class  contains metamodel metadata information about a component element.
  # @!attribute [rw] name
  #     @return [String]
  #     Dot separated name of the component element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
  # @!attribute [rw] packages
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo>]
  #     Metamodel metadata information of all the package elements contained in the component element. The key in the  map  is the identifier of the package element and the value in the  map  is the metamodel information of the package element.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata for the component element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for a component. It can contain HTML markup and documentation tags (similar to Javadoc tags). The first sentence of the package documentation is a complete sentence that identifies the component by name and summarizes the purpose of the component.
  class ComponentInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.component_info',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'packages' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo')),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          ComponentInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :packages,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo``   class  contains metamodel information of the constant elements.
  # @!attribute [rw] type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type]
  #     Type of the constant element.
  # @!attribute [rw] value
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue]
  #     Value of the constant element.
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for the constant element. It can contain HTML markup and documentation tags (similar to Javadoc tags).
  class ConstantInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.constant_info',
          {
            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type'),
            'value' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue'),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          ConstantInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :type,
                  :value,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue``   class  contains the metamodel information of the constant element.
  # @!attribute [rw] category
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category]
  #     Category of the type of constant value.
  # @!attribute [rw] primitive_value
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue]
  #     Primitive value of the constant element.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category.PRIMITIVE`  .
  # @!attribute [rw] list_value
  #     @return [Array<Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue>]
  #     List value of the constant element.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category.LIST`  .
  class ConstantValue < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.constant_value',
          {
            'category' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category'),
            'primitive_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue')),
            'list_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue')))
          },
          ConstantValue,
          false,
          nil
        )
      end
    end

    attr_accessor :category,
                  :primitive_value,
                  :list_value

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category``   enumerated type  defines  enumeration values  for the valid kinds of values.
    # @!attribute [rw] primitive
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category]
    #     Indicates the type of constant value is primitive.
    # @!attribute [rw] list
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category]
    #     Indicates the type of constant value is a list.
    class Category < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.metadata.metamodel.constant_value.category',
            Category
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Category] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Category.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] primitive
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category]
      #     Indicates the type of constant value is primitive.
      PRIMITIVE = Category.send(:new, 'PRIMITIVE')

      # @!attribute [rw] list
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category]
      #     Indicates the type of constant value is a list.
      LIST = Category.send(:new, 'LIST')
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementMap``   class  contains the metadata elements.  
  # 
  #  One of the sources for metadata is the annotations present in the interface definition language. When an annotation is represented in the  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementMap`` ,  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementMap``  describes the data specified in the arguments for the annotation.  
  # 
  #  For example, in  ``\@UnionCase(tag="tag", value="SELECT")`` , ElementMap describes the keyword arguments tag and value.
  # @!attribute [rw] elements
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementValue>]
  #     Metamodel information of the metadata elements. The key parameter of the  map  is the identifier for the element and the value corresponds to the element value.
  class ElementMap < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.element_map',
          {
            'elements' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementValue'))
          },
          ElementMap,
          false,
          nil
        )
      end
    end

    attr_accessor :elements

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementValue``   class  describes the value of the metadata element.
  # @!attribute [rw] type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
  #     Type of the value.
  # @!attribute [rw] long_value
  #     @return [Fixnum]
  #     Long value of the metadata element.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type.LONG`  .
  # @!attribute [rw] string_value
  #     @return [String]
  #     String value of the metadata element.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type.STRING`  .
  # @!attribute [rw] list_value
  #     @return [Array<String>]
  #     List of strings value of the metadata element.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type.STRING_LIST`  .
  # @!attribute [rw] structure_id
  #     @return [String]
  #     Identifier of the structure element.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type.STRUCTURE_REFERENCE`  .
  # @!attribute [rw] structure_ids
  #     @return [Array<String>]
  #     List of identifiers of the structure elements.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type.STRUCTURE_REFERENCE_LIST`  .
  class ElementValue < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.element_value',
          {
            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type'),
            'long_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'string_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'list_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)),
            'structure_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
            'structure_ids' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new))
          },
          ElementValue,
          false,
          nil
        )
      end
    end

    attr_accessor :type,
                  :long_value,
                  :string_value,
                  :list_value,
                  :structure_id,
                  :structure_ids

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type``   enumerated type  defines the valid types for values in metadata elements.
    # @!attribute [rw] long
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
    #     Indicates the type of the value is a long (64 bit signed integer).
    # @!attribute [rw] string
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
    #     Indicates the type of the value is a string (a variable length sequence of characters). The encoding is UTF-8.
    # @!attribute [rw] string_list
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
    #     Indicates the type of the value is a list of strings.
    # @!attribute [rw] structure_reference
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
    #     Indicates the type of the value is an identifier for a structure element.
    # @!attribute [rw] structure_reference_list
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
    #     Indicates the type of the value is a list of identifiers for a structure element.
    class Type < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.metadata.metamodel.element_value.type',
            Type
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Type] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Type.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] long
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
      #     Indicates the type of the value is a long (64 bit signed integer).
      LONG = Type.send(:new, 'LONG')

      # @!attribute [rw] string
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
      #     Indicates the type of the value is a string (a variable length sequence of characters). The encoding is UTF-8.
      STRING = Type.send(:new, 'STRING')

      # @!attribute [rw] string_list
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
      #     Indicates the type of the value is a list of strings.
      STRING_LIST = Type.send(:new, 'STRING_LIST')

      # @!attribute [rw] structure_reference
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
      #     Indicates the type of the value is an identifier for a structure element.
      STRUCTURE_REFERENCE = Type.send(:new, 'STRUCTURE_REFERENCE')

      # @!attribute [rw] structure_reference_list
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type]
      #     Indicates the type of the value is a list of identifiers for a structure element.
      STRUCTURE_REFERENCE_LIST = Type.send(:new, 'STRUCTURE_REFERENCE_LIST')
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo``   class  contains the metamodel information of an enumeration element.
  # @!attribute [rw] name
  #     @return [String]
  #     Dot separated name of the enumeration element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
  # @!attribute [rw] values
  #     @return [Array<Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo>]
  #     Metamodel information of all the enumeration value elements contained in this enumeration element. The order of the enumeration value elements in the list is same as the order in which they are defined in the interface definition file.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata elements for an enumeration element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for an enumeration element. It can contain HTML markup and Javadoc tags. The first sentence of the enumeration documentation is a complete sentence that identifies the enumeration by name and summarizes the purpose of the enumeration. The documentation describes the context in which the enumeration is used.  
  #     
  #      The documentation also contains references to the context in which the enumeration is used. But if the enumeration is used in many contexts, the references may not be present.
  class EnumerationInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.enumeration_info',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'values' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo')),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          EnumerationInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :values,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo``   class  describes the  enumeration value  in the  enumerated type .
  # @!attribute [rw] value
  #     @return [String]
  #     Value in the enumerated type. All the characters in the string are capitalized.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Additional metadata for enumeration value in the enumerated type. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for an enumeration value. It can contain HTML markup and documentation tags (similar to Javadoc tags). The first statement will be a noun or verb phrase that describes the purpose of the enumeration value.
  class EnumerationValueInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.enumeration_value_info',
          {
            'value' => VAPI::Bindings::StringType.instance,
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          EnumerationValueInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :value,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo``   class  contains the metadata information about the error elements contained in an operation element.
  # @!attribute [rw] structure_id
  #     @return [String]
  #     Identifier for the structure element corresponding to the error that is being reported by the operation.
  # @!attribute [rw] documentation
  #     @return [String]
  #     The English language documentation for the service element. It can contain HTML markup and Javadoc tags.
  class ErrorInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.error_info',
          {
            'structure_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.structure'),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          ErrorInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :structure_id,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo``   class  contains metamodel information of a field element contained in a structure element.
  # @!attribute [rw] name
  #     @return [String]
  #     Name of the field element in a canonical format. The format is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
  # @!attribute [rw] type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type]
  #     Type information.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata elements for the field element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for the service element. It can contain HTML markup and Javadoc tags.
  class FieldInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.field_info',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type'),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          FieldInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :type,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation``   class  describes the type information of a typed element when the type is an instantiation of one of the generic types provided by the infrastructure.
  # @!attribute [rw] generic_type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
  #     The generic type that is being instantiated.
  # @!attribute [rw] element_type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type]
  #     Type of the element parameter if the generic type instantiation is a   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.LIST`  ,   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.OPTIONAL`   or   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.SET`  .
  #     This  field  is optional and it is only relevant when the value of  ``genericType``  is one of   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.LIST`  ,   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.OPTIONAL`  , or   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.SET`  .
  # @!attribute [rw] map_key_type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type]
  #     Type of the key parameter of the map generic type instantiation. The map generic type has a key parameter and value parameter. The type of the value parameter is described by   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation.map_value_type`  ..
  #     This  field  is optional and it is only relevant when the value of  ``genericType``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.MAP`  .
  # @!attribute [rw] map_value_type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type]
  #     Type of the value parameter of the map generic type instantiation. The map generic type has a key parameter and value parameter. The type of the key parameter is described by   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation.map_key_type`  ..
  #     This  field  is optional and it is only relevant when the value of  ``genericType``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.MAP`  .
  class GenericInstantiation < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.generic_instantiation',
          {
            'generic_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType'),
            'element_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type')),
            'map_key_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type')),
            'map_value_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type'))
          },
          GenericInstantiation,
          false,
          nil
        )
      end
    end

    attr_accessor :generic_type,
                  :element_type,
                  :map_key_type,
                  :map_value_type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType``   enumerated type  provides  enumeration values  for each of the generic types provided by the infrastructure.
    # @!attribute [rw] list
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
    #     Indicates the generic type is a list.
    # @!attribute [rw] map
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
    #     Indicates the generic type is a map.
    # @!attribute [rw] optional
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
    #     Indicates the generic type is an optional.
    # @!attribute [rw] set
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
    #     Indicates the generic type is a set.
    class GenericType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.metadata.metamodel.generic_instantiation.generic_type',
            GenericType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [GenericType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          GenericType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] list
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
      #     Indicates the generic type is a list.
      LIST = GenericType.send(:new, 'LIST')

      # @!attribute [rw] map
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
      #     Indicates the generic type is a map.
      MAP = GenericType.send(:new, 'MAP')

      # @!attribute [rw] optional
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
      #     Indicates the generic type is an optional.
      OPTIONAL = GenericType.send(:new, 'OPTIONAL')

      # @!attribute [rw] set
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType]
      #     Indicates the generic type is a set.
      SET = GenericType.send(:new, 'SET')
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo``   class  contains metamodel information of an operation element.
  # @!attribute [rw] name
  #     @return [String]
  #     Name of the operation element in a canonical format. The format is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
  # @!attribute [rw] params
  #     @return [Array<Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo>]
  #     Metamodel information for the parameter elements. The order of the parameters elements in the list is same as the order of the parameters declared in the interface definition file.
  # @!attribute [rw] output
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::OperationResultInfo]
  #     Metamodel type for the output element.
  # @!attribute [rw] errors
  #     @return [Array<Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo>]
  #     List of error elements that might be reported by the operation element. If the operation reports the same error for more than one reason, the list contains the error element associated with the error more than once with different documentation elements.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata elements for the operation element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for key in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for the service element. It can contain HTML markup and Javadoc tags.
  class OperationInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.operation_info',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'params' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo')),
            'output' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::OperationResultInfo'),
            'errors' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo')),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          OperationInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :params,
                  :output,
                  :errors,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::OperationResultInfo``   class  contains the metamodel information of an operation result element.  
  # 
  #  An operation accepts a list of parameters and returns a result or an error. The  ``Com::Vmware::Vapi::Metadata::Metamodel::OperationResultInfo``  describes the result element of an operation.
  # @!attribute [rw] type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type]
  #     Type information of the operation result element.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata elements for the service element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for the operation result element. It can contain HTML markup and Javadoc tags.
  class OperationResultInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.operation_result_info',
          {
            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type'),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          OperationResultInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :type,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo``   class  contains the metamodel information of all the service elements, structure elements and enumeration elements contained in the package element.
  # @!attribute [rw] name
  #     @return [String]
  #     Dot separated name of the package element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
  # @!attribute [rw] structures
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo>]
  #     Metamodel information of all the structure elements contained in the package element. The key in the  map  is the identifier of the structure element and the value in the  map  is the metamodel information for the structure element.  
  #     
  #      This does not include the structure elements contained in the service elements that are contained in this package element.
  # @!attribute [rw] enumerations
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo>]
  #     Metamodel information of all the enumeration elements contained in the package element. The key in the  map  is the identifier of the enumeration element and the value in the  map  is the metamodel information for the enumeration element.  
  #     
  #      This does not include the enumeration elements that are contained in the service elements of this package element or structure elements of this package element.
  # @!attribute [rw] services
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo>]
  #     Metamodel information of all the service elements contained in the package element. The key in the  map  is the identifier of the service element and the value in the  map  is the metamodel information for the service element.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata elements for the package element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for a package. It can contain HTML markup and Javadoc tags. The first sentence of the package documentation is a complete sentence that identifies the package by name and summarizes the purpose of the package.  
  #     
  #      The primary purpose of a package documentation is to provide high-level context that will provide a framework in which the users can put the detail about the package contents.
  class PackageInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.package_info',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'structures' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo')),
            'enumerations' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo')),
            'services' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo')),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          PackageInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :structures,
                  :enumerations,
                  :services,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue``   class  contains value of the constant element.
  # @!attribute [rw] type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
  #     Type of the constant value.
  # @!attribute [rw] boolean_value
  #     @return [Boolean]
  #     Boolean value of the constant.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type.BOOLEAN`  .
  # @!attribute [rw] double_value
  #     @return [Float]
  #     Double value of the constant.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type.DOUBLE`  .
  # @!attribute [rw] long_value
  #     @return [Fixnum]
  #     Long value of the constant.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type.LONG`  .
  # @!attribute [rw] string_value
  #     @return [String]
  #     String value of the constant.
  #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type.STRING`  .
  class PrimitiveValue < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.primitive_value',
          {
            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type'),
            'boolean_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            'double_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DoubleType.instance),
            'long_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'string_value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          PrimitiveValue,
          false,
          nil
        )
      end
    end

    attr_accessor :type,
                  :boolean_value,
                  :double_value,
                  :long_value,
                  :string_value

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type``   enumerated type  defines the valid types for values in constant elements.
    # @!attribute [rw] boolean
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
    #     Indicates the value is a boolean (true or false).
    # @!attribute [rw] double
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
    #     Indicates the value is a double (64 bit floating number).
    # @!attribute [rw] long
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
    #     Indicates the value is a long (64 bit signed integer).
    # @!attribute [rw] string
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
    #     Indicates the value is a string (a variable length sequence of characters). The encoding is UTF8.
    class Type < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.metadata.metamodel.primitive_value.type',
            Type
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Type] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Type.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] boolean
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
      #     Indicates the value is a boolean (true or false).
      BOOLEAN = Type.send(:new, 'BOOLEAN')

      # @!attribute [rw] double
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
      #     Indicates the value is a double (64 bit floating number).
      DOUBLE = Type.send(:new, 'DOUBLE')

      # @!attribute [rw] long
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
      #     Indicates the value is a long (64 bit signed integer).
      LONG = Type.send(:new, 'LONG')

      # @!attribute [rw] string
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type]
      #     Indicates the value is a string (a variable length sequence of characters). The encoding is UTF8.
      STRING = Type.send(:new, 'STRING')
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo``   class  contains the metamodel information of all the operation elements, structure elements and enumeration elements containted in a service element.
  # @!attribute [rw] name
  #     @return [String]
  #     Dot separated name of the service element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
  # @!attribute [rw] operations
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo>]
  #     Metamodel information of all the operation elements contained in the service element. The key in the  map  is the identifier of the operation element and the value in the  map  is the metamodel information for the operation element.
  # @!attribute [rw] structures
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo>]
  #     Metamodel information of all the structure elements contained in the service element. The key in the  map  is the identifier of the structure element and the value in the  map  is the metamodel information for the structure element.
  # @!attribute [rw] enumerations
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo>]
  #     Metamodel information of all the enumeration elements contained in the service element. The key in the  map  is the identifier of the enumeration element and the value in the  map  is the metamodel information for the enumeration element.
  # @!attribute [rw] constants
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo>]
  #     Metamodel information of all the constant elements contained in the service element. The key in the  map  is the name of the constant element and the value in the  map  is the metamodel information for the contant element.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata elements for the service element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for the service element. It can contain HTML markup and Javadoc tags. The first sentence of the service documentation is a complete sentence that identifies the service by name and summarizes the purpose of the service. The remaining part of the documentation provides a summary of how to use the operations defined in the service.
  class ServiceInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.service_info',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'operations' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo')),
            'structures' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo')),
            'enumerations' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo')),
            'constants' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo')),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          ServiceInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :operations,
                  :structures,
                  :enumerations,
                  :constants,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo``   class  contains the metamodel information of all the field elements, constant elements and enumeration elements contained in the structure element.  
  # 
  #  In the interface definition language, API designers have the ability to include all the fields from one structure to another structure. This is done by using an annotation  ``\@Include``  on the structure in which we want to add the fields. If this annotation is present, the list of fields in the  ``Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo``  will also contain the fields that are being included. The annotation information is also retained in the   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo.metadata`   element as well.
  # @!attribute [rw] name
  #     @return [String]
  #     Dot separated name of the structure element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
  # @!attribute [rw] type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type]
  #     Type of the structure.
  # @!attribute [rw] enumerations
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo>]
  #     Metamodel information of all the enumeration elements contained in the structure element. The key in the  map  is the identifier of the enumeration element and the value is the metamodel information of the enumeration element.
  # @!attribute [rw] constants
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo>]
  #     Metamodel information of all the constant elements contained in the structure element. The key in the  map  is the name of the constant element and the value in the  map  is the metamodel information for the constant element.
  # @!attribute [rw] fields
  #     @return [Array<Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo>]
  #     Metamodel information of all the field elements. The order of the field elements in the list matches the order in which the fields are defined in the service.
  # @!attribute [rw] metadata
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Metamodel::ElementMap>]
  #     Generic metadata elements for the structure element. The key in the  map  is the name of the metadata element and the value is the data associated with that metadata element.  
  #     
  #      The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier`   contains possible string values for keys in the  map .
  # @!attribute [rw] documentation
  #     @return [String]
  #     English language documentation for a structure element. It can contain HTML markup and Javadoc tags. The first sentence of the structure documentation is a complete sentence that identifies the structure by name and summarizes the purpose of the structure.
  class StructureInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.structure_info',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type'),
            'enumerations' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo')),
            'constants' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo')),
            'fields' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo')),
            'metadata' => VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::ElementMap')),
            'documentation' => VAPI::Bindings::StringType.instance
          },
          StructureInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :type,
                  :enumerations,
                  :constants,
                  :fields,
                  :metadata,
                  :documentation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type``   enumerated type  defines the kind of this structure element. In the interface definition language, structure element and error element have similar characteristics. The difference is that only error elements can be used to describe the  errors  of an operation element.
    # @!attribute [rw] structure
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type]
    #     If the type is a structure element.
    # @!attribute [rw] error
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type]
    #     If the type is an error element.
    class Type < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.metadata.metamodel.structure_info.type',
            Type
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Type] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Type.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] structure
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type]
      #     If the type is a structure element.
      STRUCTURE = Type.send(:new, 'STRUCTURE')

      # @!attribute [rw] error
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type]
      #     If the type is an error element.
      ERROR = Type.send(:new, 'ERROR')
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Type``   class  describes the type information of a typed element in the interface definiton language. The following elements in the metamodel are typed:  
  # 
  #   * Field element in a structure element. See   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo.fields` 
  #    * Parameter element in an operation element. See   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo.params` 
  #    * Result element in an operation element. See   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo.output` 
  #   
  #   The type could be one of the three following categories:  
  # 
  #   * Built-in types: These are types present in the interface definition language type system. They are provided by the infrastructure. 
  #    * User defined named type: API designers can create custom types and use them for the typed elements. These types have a unique identifier.
  #    * Generic type instantiation: The language infrastructure also provides generic types such as list, map, set and so on. An instantiation of one of these generic types could also be used for the typed elements.
  #   
  # @!attribute [rw] category
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::Category]
  #     Category of this type.
  # @!attribute [rw] builtin_type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
  #     Category of the built-in type.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::Type::Category.BUILTIN`  .
  # @!attribute [rw] user_defined_type
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType]
  #     Identifier and type of the user defined type.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::Type::Category.USER_DEFINED`  .
  # @!attribute [rw] generic_instantiation
  #     @return [Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation]
  #     Instantiation of one of the generic types available in the interface definition language.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vapi::Metadata::Metamodel::Type::Category.GENERIC`  .
  class Type < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.type',
          {
            'category' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type::Category'),
            'builtin_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType')),
            'user_defined_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType')),
            'generic_instantiation' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation'))
          },
          Type,
          false,
          nil
        )
      end
    end

    attr_accessor :category,
                  :builtin_type,
                  :user_defined_type,
                  :generic_instantiation

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Type::Category``   enumerated type  provides  enumeration value  for each category of the type.
    # @!attribute [rw] builtin
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::Category]
    #     The type is one of the built-in types specified in   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType` 
    # @!attribute [rw] user_defined
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::Category]
    #     The type is one of the user defined named types.
    # @!attribute [rw] generic
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::Category]
    #     The type is an instantiation of one of the generic types.
    class Category < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.metadata.metamodel.type.category',
            Category
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Category] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Category.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] builtin
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::Category]
      #     The type is one of the built-in types specified in   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType` 
      BUILTIN = Category.send(:new, 'BUILTIN')

      # @!attribute [rw] user_defined
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::Category]
      #     The type is one of the user defined named types.
      USER_DEFINED = Category.send(:new, 'USER_DEFINED')

      # @!attribute [rw] generic
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::Category]
      #     The type is an instantiation of one of the generic types.
      GENERIC = Category.send(:new, 'GENERIC')
    end

    # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType``   enumerated type  provides  enumeration value  for each of the built-in types present in the interface definition language type system.
    # @!attribute [rw] void
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a void. The value is  nil .
    # @!attribute [rw] boolean
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a boolean. The value is true or false.
    # @!attribute [rw] long
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a long. The value is a 64 bit signed integer.
    # @!attribute [rw] double
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a double. The value is a 64 bit floating point number.
    # @!attribute [rw] string
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a string. The value is a variable-length sequence of zero or more unicode characters.
    # @!attribute [rw] binary
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a binary. The value is a variable-length sequence of zero or more bytes.
    # @!attribute [rw] secret
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a secret. The value is a variable-length sequence of zero or more unicode characters. The value contains sensitive data that should not be printed or displayed anywhere.
    # @!attribute [rw] date_time
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a datetime. The value should be in the UTC timezone and the precision is milliseconds.
    # @!attribute [rw] id
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is an ID. The value represents an identifier for a resource.
    # @!attribute [rw] uri
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is an URI. The value follows the IRI specification in RFC 3987.
    # @!attribute [rw] any_error
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is an arbitrary  error  type. This is used if the value of a typed element can be one of any user defined named type which is an  error .
    # @!attribute [rw] dynamic_structure
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is a dynamic structure. This is used if the value of a typed element can be one of any user defined named type.
    # @!attribute [rw] opaque
    #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
    #     The built-in type is an opaque. This is used if the value of a typed element could be of any type and the actual type will be known only during the execution of the API. This is mostly used in infrastructure  classs .
    class BuiltinType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.metadata.metamodel.type.builtin_type',
            BuiltinType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [BuiltinType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          BuiltinType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] void
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a void. The value is  nil .
      VOID = BuiltinType.send(:new, 'VOID')

      # @!attribute [rw] boolean
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a boolean. The value is true or false.
      BOOLEAN = BuiltinType.send(:new, 'BOOLEAN')

      # @!attribute [rw] long
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a long. The value is a 64 bit signed integer.
      LONG = BuiltinType.send(:new, 'LONG')

      # @!attribute [rw] double
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a double. The value is a 64 bit floating point number.
      DOUBLE = BuiltinType.send(:new, 'DOUBLE')

      # @!attribute [rw] string
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a string. The value is a variable-length sequence of zero or more unicode characters.
      STRING = BuiltinType.send(:new, 'STRING')

      # @!attribute [rw] binary
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a binary. The value is a variable-length sequence of zero or more bytes.
      BINARY = BuiltinType.send(:new, 'BINARY')

      # @!attribute [rw] secret
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a secret. The value is a variable-length sequence of zero or more unicode characters. The value contains sensitive data that should not be printed or displayed anywhere.
      SECRET = BuiltinType.send(:new, 'SECRET')

      # @!attribute [rw] date_time
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a datetime. The value should be in the UTC timezone and the precision is milliseconds.
      DATE_TIME = BuiltinType.send(:new, 'DATE_TIME')

      # @!attribute [rw] id
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is an ID. The value represents an identifier for a resource.
      ID = BuiltinType.send(:new, 'ID')

      # @!attribute [rw] uri
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is an URI. The value follows the IRI specification in RFC 3987.
      URI = BuiltinType.send(:new, 'URI')

      # @!attribute [rw] any_error
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is an arbitrary  error  type. This is used if the value of a typed element can be one of any user defined named type which is an  error .
      ANY_ERROR = BuiltinType.send(:new, 'ANY_ERROR')

      # @!attribute [rw] dynamic_structure
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is a dynamic structure. This is used if the value of a typed element can be one of any user defined named type.
      DYNAMIC_STRUCTURE = BuiltinType.send(:new, 'DYNAMIC_STRUCTURE')

      # @!attribute [rw] opaque
      #     @return [Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType]
      #     The built-in type is an opaque. This is used if the value of a typed element could be of any type and the actual type will be known only during the execution of the API. This is mostly used in infrastructure  classs .
      OPAQUE = BuiltinType.send(:new, 'OPAQUE')
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType``   class  contains the metamodel type information of a typed element whose type is a user defined named type.
  # @!attribute [rw] resource_type
  #     @return [String]
  #     Category of the user defined named type. The named type could be a structure element or an enumeration element.
  # @!attribute [rw] resource_id
  #     @return [String]
  #     Identifier of the user defined named type.
  class UserDefinedType < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.metamodel.user_defined_type',
          {
            'resource_type' => VAPI::Bindings::StringType.instance,
            'resource_id' => VAPI::Bindings::IdType.new(["com.vmware.vapi.structure", "com.vmware.vapi.enumeration"], "resource_type")
          },
          UserDefinedType,
          false,
          nil
        )
      end
    end

    attr_accessor :resource_type,
                  :resource_id

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
end
