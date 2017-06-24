#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.std.introspection.
#---------------------------------------------------------------------------

require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Std
        module Introspection
        end
      end
    end
  end
end

# The   :mod:`com.vmware.vapi.std.introspection`    package  provides  classs  that expose basic information about the vAPI  classs  registered with a vAPI provider.
module Com::Vmware::Vapi::Std::Introspection
  # The   :class:`Com::Vmware::Vapi::Std::Introspection::Operation`   service provides operations to retrieve information about the operations present in a vAPI service.
  class Operation < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.std.introspection.operation')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.service')
      ),
      VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.service'),
        'operation_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.operation')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Operation::Info'),
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

    # Returns the set of operation identifiers for a given vAPI service.
    #
    # @param service_id [String]
    #     service identifier.
    # @return [Set<String>]
    #     set of operation identifiers for a given vAPI service.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     If the service identifier does not exist.
    def list(service_id)
      invoke_with_info(LIST_INFO,
                       'service_id' => service_id)
    end

    # Returns the   :class:`Com::Vmware::Vapi::Std::Introspection::Operation::Info`   for a given vAPI operation.
    #
    # @param service_id [String]
    #     service identifier.
    # @param operation_id [String]
    #     operation identifier.
    # @return [Com::Vmware::Vapi::Std::Introspection::Operation::Info]
    #      :class:`Com::Vmware::Vapi::Std::Introspection::Operation::Info`   for a given vAPI operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     If the operation identifier does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     If the service identifier does not exist.
    def get(service_id, operation_id)
      invoke_with_info(GET_INFO,
                       'service_id' => service_id,
                       'operation_id' => operation_id)
    end

    # The   :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition`   structure describes a vAPI data type.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
    #     Data type of the value.
    # @!attribute [rw] element_definition
    #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition]
    #     Contains the element definition for generic data types like List and Optional.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.OPTIONAL`   or   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.LIST`  .
    # @!attribute [rw] name
    #     @return [String]
    #     Fully qualified name of the structure.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.STRUCTURE`  ,   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.STRUCTURE_REF`  , or   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.ERROR`  .
    # @!attribute [rw] fields
    #     @return [Hash<String, Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition>]
    #     Fields of the structure type. The key of the map is the canonical name of the field and the value is the   :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition`   for the field. The order of the structure fields defined in IDL is not maintained by the   :class:`Com::Vmware::Vapi::Std::Introspection::Operation`   service.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.STRUCTURE`   or   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.ERROR`  .
    class DataDefinition < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.std.introspection.operation.data_definition',
            {
              'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType'),
              'element_definition' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition')),
              'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'fields' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition')))
            },
            DataDefinition,
            false,
            nil
          )
        end
      end

      attr_accessor :type,
                    :element_definition,
                    :name,
                    :fields

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end

      # The   :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType`   enumeration provides values representing the data types supported by the vAPI infrastructure.
      # @!attribute [rw] binary
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a binary type.
      # @!attribute [rw] boolean
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a boolean type. The possible values are True and False equivalent of the language used to invoke this operation.
      # @!attribute [rw] double
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a double type. It is a 64 bit floating point number.
      # @!attribute [rw] dynamic_structure
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a dynamic structure. This means, any data of type   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.STRUCTURE`   can be used.
      # @!attribute [rw] error
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a specific error type.
      # @!attribute [rw] any_error
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is arbitrary error type. This means, any data of type   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.ERROR`   can be used.
      # @!attribute [rw] list
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a list data type. Any value of this type can have zero or more elements in the list.
      # @!attribute [rw] long
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a long data type. It is a 64 bit signed integer number.
      # @!attribute [rw] opaque
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is an opaque type. This means, data of any   :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType`   can be used.
      # @!attribute [rw] optional
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is an optional data type. Any value of this type can be null.
      # @!attribute [rw] secret
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a secret data type. This is used for sensitive information. The server will not log any data of this type and if possible wipe the data from the memory after usage.
      # @!attribute [rw] string
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a string data type. This is a unicode string.
      # @!attribute [rw] structure
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a structure data type. A structure has string identifier and a set of fields with corresponding values.
      # @!attribute [rw] structure_ref
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a structure reference. This is used to break circular dependencies in the type references. This just has a string identifier of the structure. Clients have to maintain a list of structures already visited and use that to resolve this reference.
      # @!attribute [rw] void
      #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
      #     Indicates the value is a void data type.
      class DataType < VAPI::Bindings::VapiEnum
        class << self
          # Holds (gets or creates) the binding type metadata for this enumeration type.
          # @scope class
          # @return [VAPI::Bindings::EnumType] the binding type
          def binding_type
            @binding_type ||= VAPI::Bindings::EnumType.new(
              'com.vmware.vapi.std.introspection.operation.data_definition.data_type',
              DataType
            )
          end

          # Converts from a string value (perhaps off the wire) to an instance
          # of this enum type.
          # @param value [String] the actual value of the enum instance
          # @return [DataType] the instance found for the value, otherwise
          #         an unknown instance will be built for the value
          def from_string(value)
            const_get(value)
          rescue NameError
            DataType.send(:new, 'UNKNOWN', value)
          end
        end

        # Constructs a new instance.
        # @param value [String] the actual value of the enum instance
        # @param unknown [String] the unknown value when value is 'UKNOWN'
        def initialize(value, unknown = nil)
          super(self.class.binding_type, value, unknown)
        end

        private_class_method :new

        # @!attribute [rw] binary
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a binary type.
        BINARY = DataType.send(:new, 'BINARY')

        # @!attribute [rw] boolean
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a boolean type. The possible values are True and False equivalent of the language used to invoke this operation.
        BOOLEAN = DataType.send(:new, 'BOOLEAN')

        # @!attribute [rw] double
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a double type. It is a 64 bit floating point number.
        DOUBLE = DataType.send(:new, 'DOUBLE')

        # @!attribute [rw] dynamic_structure
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a dynamic structure. This means, any data of type   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.STRUCTURE`   can be used.
        DYNAMIC_STRUCTURE = DataType.send(:new, 'DYNAMIC_STRUCTURE')

        # @!attribute [rw] error
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a specific error type.
        ERROR = DataType.send(:new, 'ERROR')

        # @!attribute [rw] any_error
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is arbitrary error type. This means, any data of type   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.ERROR`   can be used.
        ANY_ERROR = DataType.send(:new, 'ANY_ERROR')

        # @!attribute [rw] list
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a list data type. Any value of this type can have zero or more elements in the list.
        LIST = DataType.send(:new, 'LIST')

        # @!attribute [rw] long
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a long data type. It is a 64 bit signed integer number.
        LONG = DataType.send(:new, 'LONG')

        # @!attribute [rw] opaque
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is an opaque type. This means, data of any   :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType`   can be used.
        OPAQUE = DataType.send(:new, 'OPAQUE')

        # @!attribute [rw] optional
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is an optional data type. Any value of this type can be null.
        OPTIONAL = DataType.send(:new, 'OPTIONAL')

        # @!attribute [rw] secret
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a secret data type. This is used for sensitive information. The server will not log any data of this type and if possible wipe the data from the memory after usage.
        SECRET = DataType.send(:new, 'SECRET')

        # @!attribute [rw] string
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a string data type. This is a unicode string.
        STRING = DataType.send(:new, 'STRING')

        # @!attribute [rw] structure
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a structure data type. A structure has string identifier and a set of fields with corresponding values.
        STRUCTURE = DataType.send(:new, 'STRUCTURE')

        # @!attribute [rw] structure_ref
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a structure reference. This is used to break circular dependencies in the type references. This just has a string identifier of the structure. Clients have to maintain a list of structures already visited and use that to resolve this reference.
        STRUCTURE_REF = DataType.send(:new, 'STRUCTURE_REF')

        # @!attribute [rw] void
        #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType]
        #     Indicates the value is a void data type.
        VOID = DataType.send(:new, 'VOID')
      end
    end

    # Information about a vAPI operation.
    # @!attribute [rw] input_definition
    #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition]
    #      :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition`   describing the operation input.  
    #     
    #      The   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition.type`   of this field will be   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.STRUCTURE`  . The keys of   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition.fields`   are the names of the operation parameters, and the values of   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition.fields`   describe the type of the operation parameters.
    # @!attribute [rw] output_definition
    #     @return [Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition]
    #      :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition`   describing the operation output.
    # @!attribute [rw] error_definitions
    #     @return [Array<Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition>]
    #     List of   :class:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition`   describing the errors that the operation might report.  
    #     
    #      The   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition.type`   of every element in this list will be   :attr:`Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition::DataType.ERROR`  .
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.std.introspection.operation.info',
            {
              'input_definition' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition'),
              'output_definition' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition'),
              'error_definitions' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Operation::DataDefinition'))
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :input_definition,
                    :output_definition,
                    :error_definitions

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The   :class:`Com::Vmware::Vapi::Std::Introspection::Provider`   service provides operations to retrieve information about a vAPI Provider. A provider is a container that exposes one or more vAPI services.
  class Provider < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.std.introspection.provider')

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Provider::Info'),
      {},
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Returns a   :class:`Com::Vmware::Vapi::Std::Introspection::Provider::Info`   describing the vAPI provider on which the operation is invoked
    #
    # @return [Com::Vmware::Vapi::Std::Introspection::Provider::Info]
    #      :class:`Com::Vmware::Vapi::Std::Introspection::Provider::Info`   describing the vAPI provider on which the operation is invoked
    def get
      invoke_with_info(GET_INFO)
    end

    # Information about a vAPI provider
    # @!attribute [rw] id
    #     @return [String]
    #     Identifier of the provider
    # @!attribute [rw] checksum
    #     @return [String]
    #     Checksum of the information present in the provider.  
    #     
    #      Clients can use this information to check if the service information has changed. When a new service is added or removed (or) one of the existing service information is modified, the value of the checksum changes.  
    #     
    #      The information used to calculate the checksum includes:  
    #     
    #       * service identifiers
    #        * operation identifiers inside the service
    #        * input, output and error definitions of an operation
    #       
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.std.introspection.provider.info',
            {
              'id' => VAPI::Bindings::IdType.new('com.vmware.vapi.provider'),
              'checksum' => VAPI::Bindings::StringType.instance
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :id,
                    :checksum

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The   :class:`Com::Vmware::Vapi::Std::Introspection::Service`   service provides operations to retrieve information about the services exposed by a vAPI provider. A provider is a container that exposes one or more vAPI services.
  class Service < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.std.introspection.service')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'id' => VAPI::Bindings::IdType.new('com.vmware.vapi.service')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Introspection::Service::Info'),
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

    # Returns the set of service identifiers.
    #
    # @return [Set<String>]
    #     set of service identifiers
    def list
      invoke_with_info(LIST_INFO)
    end

    # Returns the   :class:`Com::Vmware::Vapi::Std::Introspection::Service::Info`   for the specified service
    #
    # @param id [String]
    #     service identifier
    # @return [Com::Vmware::Vapi::Std::Introspection::Service::Info]
    #      :class:`Com::Vmware::Vapi::Std::Introspection::Service::Info`   for the specified service
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     If the service identifier does not exist
    def get(id)
      invoke_with_info(GET_INFO,
                       'id' => id)
    end

    # Information about a vAPI service
    # @!attribute [rw] operations
    #     @return [Set<String>]
    #     Set of identifiers of operations present in the service
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vapi.std.introspection.service.info',
            {
              'operations' => VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)
            },
            Info,
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
end
