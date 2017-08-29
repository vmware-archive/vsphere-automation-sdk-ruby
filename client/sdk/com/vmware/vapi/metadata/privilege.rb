#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.privilege.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Metadata
        module Privilege
        end
      end
    end
  end
end

# The  ``com.vmware.vapi.metadata.privilege``   package  provides  classs  that expose privilege information for operation elements across all the service elements.  
# 
#  An entity has a unique identifier and a resource type. An entity can either be present in one of the parameter elements or if a parameter is a structure element, it could also be present in one of the field elements.  
# 
#  Privileges can be assigned to either operation elements or entities used in the operation element. A list of privileges can also be applied on a package element. This list of privileges would be used as a default for all the operation elements and the entities that do not have any defined privileges.
module Com::Vmware::Vapi::Metadata::Privilege
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::Component``   class  provides  methods  to retrieve privilege information of a component element.  
  # 
  #  A component element is said to contain privilege information if any one of package elements in it contains privilege information.
  class Component < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.privilege.component')

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
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::ComponentData'),
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
    # Returns the identifiers for the component elements that have privilege information.
    #
    # @return [Array<String>]
    #     The list of identifiers for the component elements that have privilege information.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves privilege information about the component element corresponding to  ``component_id`` .  
    # 
    #  The   :class:`Com::Vmware::Vapi::Metadata::Privilege::ComponentData`   contains the privilege information about the component element and its fingerprint. It contains information about all the package elements that belong to this component element.
    #
    # @param component_id [String]
    #     Identifier of the component element.
    # @return [Com::Vmware::Vapi::Metadata::Privilege::ComponentData]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Privilege::ComponentData`   instance that corresponds to  ``component_id``
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the component element associated with  ``component_id``  does not have any privilege information.
    def get(component_id)
      invoke_with_info(GET_INFO,
                       'component_id' => component_id)
    end

    # Retrieves the fingerprint computed from the privilege metadata of the component element corresponding to  ``component_id`` .  
    # 
    #  The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of   :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.get`  .
    #
    # @param component_id [String]
    #     Identifier of the component element.
    # @return [String]
    #     The fingerprint computed from the privilege metadata of the component.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the component element associated with  ``component_id``  does not have any privilege information.
    def fingerprint(component_id)
      invoke_with_info(FINGERPRINT_INFO,
                       'component_id' => component_id)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::Package``   class  provides  methods  to retrieve privilege information of a package element.  
  # 
  #  A package element is said to contain privilege information if there is a default privilege assigned to all service elements contained in the package element or if one of the operation elements contained in one of the service elements in this package element has privilege information.
  class Package < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.privilege.package')

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
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::PackageInfo'),
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
    # Returns the identifiers for the package elements that have privilege information.
    #
    # @return [Array<String>]
    #     The list of identifiers for the package elements that have privilege information.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves privilege information about the package element corresponding to  ``package_id`` .
    #
    # @param package_id [String]
    #     Identifier of the package element.
    # @return [Com::Vmware::Vapi::Metadata::Privilege::PackageInfo]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Privilege::PackageInfo`   instance that corresponds to  ``package_id``
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the package element associated with  ``package_id``  does not have any privilege information.
    def get(package_id)
      invoke_with_info(GET_INFO,
                       'package_id' => package_id)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::Service``   class  provides  methods  to retrieve privilege information of a service element.  
  # 
  #  A service element is said to contain privilege information if one of the operation elements contained in this service element has privilege information.
  class ServiceService < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.privilege.service')

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
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo'),
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
    # Returns the identifiers for the service elements that have privilege information.
    #
    # @return [Array<String>]
    #     The list of identifiers for the service elements that have privilege information.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Retrieves privilege information about the service element corresponding to  ``service_id`` .
    #
    # @param service_id [String]
    #     Identifier of the service element.
    # @return [Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo`   instance that corresponds to  ``service_id``
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service element associated with  ``service_id``  does not have any privilege information.
    def get(service_id)
      invoke_with_info(GET_INFO,
                       'service_id' => service_id)
    end

  end
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::Source``   class  provides  methods  to manage the sources of privilege metadata information.  
  # 
  #  The interface definition language infrastructure provides tools to generate various kinds of metadata in JSON format from the interface definition files and additional properties files. One of the generated files contains privilege information. The generated file can be registered as a source of metadata.  
  # 
  #  The privilege file contains all the data present in the interface definition files. Each privilege file contains data about one component element. When a privilege file is added as a source, each source contributes only one component element's metadata.  
  # 
  #  Privilege metadata can also be discovered from a remote server that supports the privilege metadata  classs  (see   :mod:`com.vmware.vapi.metadata.privilege`  ). Since multiple components can be registered with a single metadata server, when a remote server is registered as a source, that source can contribute more than one component.
  class Source < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.privilege.source')

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'source_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.metadata.privilege.source'),
        'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec')
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
        'source_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.metadata.privilege.source')
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
        'source_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.metadata.privilege.source')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::Source::Info'),
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

    RESOURCE_TYPE = 'com.vmware.vapi.metadata.privilege.source'
    # Creates a new metadata source. Once the server validates the registration information of the metadata source, the privilege metadata is retrieved from the source. This populates elements in all the  classs  defined in   :mod:`com.vmware.vapi.metadata.privilege`    package .
    #
    # @param source_id [String]
    #     metadata source identifier.
    # @param spec [Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec]
    #     create specification.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
    #     if the metadata source identifier is already registered with the infrastructure.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the type of the source specified in  null  is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the file specified in  null  is not a valid JSON file or if the format of the privilege metadata in the JSON file is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the URI specified in  null  is unreachable or if there is a transport protocol or message protocol mismatch between the client and the server or if the remote server do not have  classs  present in   :mod:`com.vmware.vapi.metadata.privilege`    package .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the file specified in  null  does not exist.
    def create(source_id, spec)
      invoke_with_info(CREATE_INFO,
                       'source_id' => source_id,
                       'spec' => spec)
    end

    # Deletes an existing privilege metadata source from the infrastructure.
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
    # @return [Com::Vmware::Vapi::Metadata::Privilege::Source::Info]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Privilege::Source::Info`   instance that corresponds to  ``source_id``
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

    # Reloads the privilege metadata from all the metadata sources or of a particular metadata source if  ``source_id``  is specified.
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

    # The  ``Com::Vmware::Vapi::Metadata::Privilege::Source::Info``   class  contains the metadata source information.
    # @!attribute [rw] description
    #     @return [String]
    #     English language human readable description of the source.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vapi::Metadata::SourceType]
    #     Type of the metadata source.
    # @!attribute [rw] filepath
    #     @return [String]
    #     Absolute file path of the privilege metadata file that has the privilege information about one component element. The  ``filePath``  is the path to the file in the server's filesystem.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
    # @!attribute [rw] address
    #     @return [URI]
    #     Connection information for the remote server. This must be in the format http(s)://IP:port/namespace.  
    #     
    #      The remote server must support the  classs  in the   :mod:`com.vmware.vapi.metadata.privilege`    package . It must expose privilege information of one or more components.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.metadata.privilege.source.info',
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

    # The  ``Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec``   class  contains the registration information of a privilege source.
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.metadata.privilege.source.create_spec',
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
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::ComponentData``   class  contains the privilege information of the component along with its fingerprint.
  # @!attribute [rw] info
  #     @return [Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo]
  #     Privilege information of the component. This includes information about all the  packages  in the component.
  # @!attribute [rw] fingerprint
  #     @return [String]
  #     Fingerprint of the metadata of the component.  
  #     
  #      Privilege information could change when there is an infrastructure update. Since the data present in   :attr:`Com::Vmware::Vapi::Metadata::Privilege::ComponentData.info`   could be quite large,  ``fingerprint``  provides a convenient way to check if the data for a particular component is updated.  
  #     
  #      You should store the fingerprint associated with a component. After an update, by invoking the   :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.fingerprint`    method , you can retrieve the new fingerprint for the component. If the new fingerprint and the previously stored fingerprint do not match, clients can then use the   :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.get`   to retrieve the new privilege information for the component.
  class ComponentData < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.privilege.component_data',
          {
            'info' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo'),
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
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo``   class  contains the privilege information of a component element.  
  # 
  #  For an explanation of privilege information contained within component elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::Component`  .
  # @!attribute [rw] packages
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Privilege::PackageInfo>]
  #     Privilege information of all the package elements. The key in the  map  is the identifier of the package element and the value in the  map  is the privilege information for the package element.  
  #     
  #      For an explanation of privilege information containment within package elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::Package`  .
  class ComponentInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.privilege.component_info',
          {
            'packages' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::PackageInfo'))
          },
          ComponentInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :packages

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::OperationInfo``   class  contains privilege information of an operation element.  
  # 
  #  For an explanation of containment within operation elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::Service::Operation`  .
  # @!attribute [rw] privileges
  #     @return [Array<String>]
  #     List of all privileges assigned to the operation element.
  # @!attribute [rw] privilege_info
  #     @return [Array<Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo>]
  #     Privilege information of all the parameter elements of the operation element. For an explanation of containment of privilege information within parameter elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo`  .
  class OperationInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.privilege.operation_info',
          {
            'privileges' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            'privilege_info' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo'))
          },
          OperationInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :privileges,
                  :privilege_info

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::PackageInfo``   class  contains the privilege information of a package element.  
  # 
  #  For an explanation of privilege information contained within package elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::Package`  .
  # @!attribute [rw] privileges
  #     @return [Array<String>]
  #     List of default privileges to be used for all the operations present in this package. If a particular operation element has no explicit privileges defined in the privilege definition file, these privileges are used for enforcing authorization.
  # @!attribute [rw] services
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo>]
  #     Information about all service elements contained in this package element that contain privilege information. The key in the  map  is the identifier of the service element and the value in the  map  is the privilege information for the service element. For an explanation of privilege information containment within service elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::Service`  .
  class PackageInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.privilege.package_info',
          {
            'privileges' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            'services' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo'))
          },
          PackageInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :privileges,
                  :services

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo``   class  contains the privilege information for a parameter element in an operation element.
  # @!attribute [rw] property_path
  #     @return [String]
  #     The  ``propertyPath``  points to an entity that is used in the operation element. An entity can either be present in one of the parameter elements or if a parameter is a structure element, it could also be present in one of the field elements.  
  #     
  #      If the privilege is assigned to an entity used in the parameter,  ``propertyPath``  will just contain the name of the parameter field. If the privilege is assigned to an entity in one of the field elements of a parameter element that is a structure element, then  ``propertyPath``  will contain a path to the field element starting from the parameter name.
  # @!attribute [rw] privileges
  #     @return [Array<String>]
  #     List of privileges assigned to the entity that is being referred by   :attr:`Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo.property_path`  .
  class PrivilegeInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.privilege.privilege_info',
          {
            'property_path' => VAPI::Bindings::StringType.instance,
            'privileges' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
          },
          PrivilegeInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :property_path,
                  :privileges

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo``   class  contains privilege information of a service element.  
  # 
  #  For an explanation of privilege information contained within service elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::Service`  .
  # @!attribute [rw] operations
  #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Privilege::OperationInfo>]
  #     Information about all operation elements contained in this service element that contain privilege information. The key in the  map  is the identifier of the operation element and the value in the  map  is the privilege information for the operation element.  
  #     
  #      For an explanation of containment of privilege information within operation elements, see   :class:`Com::Vmware::Vapi::Metadata::Privilege::Service::Operation`  .
  class ServiceInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.metadata.privilege.service_info',
          {
            'operations' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::OperationInfo'))
          },
          ServiceInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :operations

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
end
