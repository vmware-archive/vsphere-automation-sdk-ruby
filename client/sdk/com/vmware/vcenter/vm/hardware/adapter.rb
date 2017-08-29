#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.vm.hardware.adapter.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vcenter
      module Vm
        module Hardware
          module Adapter
          end
        end
      end
    end
  end
end

# The  ``com.vmware.vcenter.vm.hardware.adapter``   package  provides  classs  for managing the configuration and state of the virtual adapters belonging to a virtual machine. This includes  methods  for reading and manipulating the conifguration of USB adapters and host bus adapters.  
# 
#  Note that  classs  for adapters with no configurable properties or runtime state, such as IDE and PCI adapters, are omitted.
module Com::Vmware::Vcenter::Vm::Hardware::Adapter
  # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata``   class  provides  methods  for configuring the virtual SATA adapters of a virtual machine.
  class Sata < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.adapter.sata')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Summary')),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'adapter' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.SataAdapter')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Info'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::CreateSpec')
      ),
      VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.SataAdapter'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
        'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
        'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'adapter' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.SataAdapter')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO,
      'create' => CREATE_INFO,
      'delete' => DELETE_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.SataAdapter'
    # Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @return [Array<Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Summary>]
    #     List of commonly used information about virtual SATA adapters.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    def list(vm)
      invoke_with_info(LIST_INFO,
                       'vm' => vm)
    end

    # Returns information about a virtual SATA adapter.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @param adapter [String]
    #     Virtual SATA adapter identifier.
    # @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Info]
    #     Information about the specified virtual SATA adapter.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine or virtual SATA adapter is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    def get(vm, adapter)
      invoke_with_info(GET_INFO,
                       'vm' => vm,
                       'adapter' => adapter)
    end

    # Adds a virtual SATA adapter to the virtual machine.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @param spec [Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::CreateSpec]
    #     Specification for the new virtual SATA adapter.
    # @return [String]
    #     Virtual SATA adapter identifier.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reported that the SATA adapter was created but was unable to confirm the creation because the identifier of the new adapter could not be determined.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the virtual machine is suspended
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
    #     if there are no more available SATA buses on the virtual machine.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
    #     if the specified SATA bus or PCI address is in use.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the specified SATA bus or PCI address is out of bounds.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
    #     if the virtual machine is busy performing another operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
    #     if the guest operating system of the virtual machine is not supported and  spec  includes  nil   fields  that default to guest-specific values.
    def create(vm, spec)
      invoke_with_info(CREATE_INFO,
                       'vm' => vm,
                       'spec' => spec)
    end

    # Removes a virtual SATA adapter from the virtual machine.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @param adapter [String]
    #     Virtual SATA adapter identifier.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the virtual machine is suspended
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine or virtual SATA adapter is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
    #     if the virtual machine is busy performing another operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    def delete(vm, adapter)
      invoke_with_info(DELETE_INFO,
                       'vm' => vm,
                       'adapter' => adapter)
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Info``   class  contains information about a virtual SATA adapter.
    # @!attribute [rw] label
    #     @return [String]
    #     Device label.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Type]
    #     Adapter type.
    # @!attribute [rw] bus
    #     @return [Fixnum]
    #     SATA bus number.
    # @!attribute [rw] pci_slot_number
    #     @return [Fixnum, nil]
    #     Address of the SATA adapter on the PCI bus.
    #     May be  nil  if the virtual machine has never been powered on since the adapter was created.
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.vm.hardware.adapter.sata.info',
            {
              'label' => VAPI::Bindings::StringType.instance,
              'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Type'),
              'bus' => VAPI::Bindings::IntegerType.instance,
              'pci_slot_number' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance)
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :label,
                    :type,
                    :bus,
                    :pci_slot_number

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual SATA adapter.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Type, nil]
    #     Adapter type.
    #     If  nil , a guest-specific default value will be used.
    # @!attribute [rw] bus
    #     @return [Fixnum, nil]
    #     SATA bus number.
    #     If  nil , the server will choose an available bus number; if none is available, the request will fail.
    # @!attribute [rw] pci_slot_number
    #     @return [Fixnum, nil]
    #     Address of the SATA adapter on the PCI bus.
    #     If  nil , the server will choose an available address when the virtual machine is powered on.
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.vm.hardware.adapter.sata.create_spec',
            {
              'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Type')),
              'bus' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
              'pci_slot_number' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance)
            },
            CreateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :type,
                    :bus,
                    :pci_slot_number

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Summary``   class  contains commonly used information about a Virtual SATA adapter.
    # @!attribute [rw] adapter
    #     @return [String]
    #     Identifier of the virtual SATA adapter.
    class Summary < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.vm.hardware.adapter.sata.summary',
            {
              'adapter' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.SataAdapter')
            },
            Summary,
            false,
            nil
          )
        end
      end

      attr_accessor :adapter

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Type``   enumerated type  defines the valid emulation types for a virtual SATA adapter.
    # @!attribute [rw] ahci
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Type]
    #     AHCI host bus adapter.
    class Type < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.vm.hardware.adapter.sata.type',
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

      # @!attribute [rw] ahci
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Sata::Type]
      #     AHCI host bus adapter.
      AHCI = Type.send(:new, 'AHCI')
    end
  end
  # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi``   class  provides  methods  for configuring the virtual SCSI adapters of a virtual machine.
  class Scsi < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.adapter.scsi')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Summary')),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'adapter' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.ScsiAdapter')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Info'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::CreateSpec')
      ),
      VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.ScsiAdapter'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
        'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
        'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported')
      },
      [],
      []
    )

    UPDATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('update', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'adapter' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.ScsiAdapter'),
        'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::UpdateSpec')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'adapter' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.ScsiAdapter')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
        'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO,
      'create' => CREATE_INFO,
      'update' => UPDATE_INFO,
      'delete' => DELETE_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.ScsiAdapter'
    # Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @return [Array<Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Summary>]
    #     List of commonly used information about virtual SCSI adapters.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    def list(vm)
      invoke_with_info(LIST_INFO,
                       'vm' => vm)
    end

    # Returns information about a virtual SCSI adapter.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @param adapter [String]
    #     Virtual SCSI adapter identifier.
    # @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Info]
    #     Information about the specified virtual SCSI adapter.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine or virtual SCSI adapter is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    def get(vm, adapter)
      invoke_with_info(GET_INFO,
                       'vm' => vm,
                       'adapter' => adapter)
    end

    # Adds a virtual SCSI adapter to the virtual machine.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @param spec [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::CreateSpec]
    #     Specification for the new virtual SCSI adapter.
    # @return [String]
    #     Virtual SCSI adapter identifier.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reported that the SCSI adapter was created but was unable to confirm the creation because the identifier of the new adapter could not be determined.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the virtual machine is suspended
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
    #     if there are no more available SCSI buses on the virtual machine.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
    #     if the specified SCSI bus is in use.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     if the specified SATA bus or PCI address is out of bounds.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
    #     if the virtual machine is busy performing another operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
    #     if the guest operating system of the virtual machine is not supported and  spec  includes  nil   fields  that default to guest-specific values.
    def create(vm, spec)
      invoke_with_info(CREATE_INFO,
                       'vm' => vm,
                       'spec' => spec)
    end

    # Updates the configuration of a virtual SCSI adapter.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @param adapter [String]
    #     Virtual SCSI adapter identifier.
    # @param spec [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::UpdateSpec]
    #     Specification for updating the virtual SCSI adapter.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine or virtual SCSI adapter is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if one or more of the  fields  specified in the  ``spec``   parameter  cannot be modified due to the current power state of the virtual machine or the connection state of the virtual SCSI adapter.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
    #     if the virtual machine is busy performing another operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    def update(vm, adapter, spec)
      invoke_with_info(UPDATE_INFO,
                       'vm' => vm,
                       'adapter' => adapter,
                       'spec' => spec)
    end

    # Removes a virtual SCSI adapter from the virtual machine.
    #
    # @param vm [String]
    #     Virtual machine identifier.
    # @param adapter [String]
    #     Virtual SCSI adapter identifier.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the virtual machine is suspended
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the virtual machine or virtual SCSI adapter is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
    #     if the virtual machine is busy performing another operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #     if the virtual machine's configuration state cannot be accessed.
    # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
    #     if the system is unable to communicate with a service to complete the request.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
    #     if the user can not be authenticated.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     if the user doesn't have the required privileges.
    def delete(vm, adapter)
      invoke_with_info(DELETE_INFO,
                       'vm' => vm,
                       'adapter' => adapter)
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Info``   class  contains information about a virtual SCSI adapter.
    # @!attribute [rw] label
    #     @return [String]
    #     Device label.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
    #     Adapter type.
    # @!attribute [rw] scsi
    #     @return [Com::Vmware::Vcenter::VM::Hardware::ScsiAddressInfo]
    #     Address of the SCSI adapter on the SCSI bus.
    # @!attribute [rw] pci_slot_number
    #     @return [Fixnum, nil]
    #     Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added.
    #     May be  nil  if the virtual machine has never been powered on since the adapter was created.
    # @!attribute [rw] sharing
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing]
    #     Bus sharing mode.
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.vm.hardware.adapter.scsi.info',
            {
              'label' => VAPI::Bindings::StringType.instance,
              'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type'),
              'scsi' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::ScsiAddressInfo'),
              'pci_slot_number' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
              'sharing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing')
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :label,
                    :type,
                    :scsi,
                    :pci_slot_number,
                    :sharing

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual SCSI adapter.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type, nil]
    #     Adapter type.
    #     If  nil , a guest-specific default value will be used.
    # @!attribute [rw] bus
    #     @return [Fixnum, nil]
    #     SCSI bus number.
    #     If  nil , the server will choose an available bus number; if none is available, the request will fail.
    # @!attribute [rw] pci_slot_number
    #     @return [Fixnum, nil]
    #     Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added.
    #     If  nil , the server will choose an available address when the virtual machine is powered on.
    # @!attribute [rw] sharing
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing, nil]
    #     Bus sharing mode.
    #     If  nil , the adapter will default to   :attr:`Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing.NONE`  .
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.vm.hardware.adapter.scsi.create_spec',
            {
              'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type')),
              'bus' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
              'pci_slot_number' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
              'sharing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing'))
            },
            CreateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :type,
                    :bus,
                    :pci_slot_number,
                    :sharing

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::UpdateSpec``   class  describes the updates to be made to the configuration of a virtual SCSI adapter.
    # @!attribute [rw] sharing
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing, nil]
    #     Bus sharing mode.  
    #     
    #      This  field  may only be modified if the virtual machine is not powered on.
    #     If  nil , the value is unchanged.
    class UpdateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.vm.hardware.adapter.scsi.update_spec',
            {
              'sharing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing'))
            },
            UpdateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :sharing

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Summary``   class  contains commonly used information about a Virtual SCSI adapter.
    # @!attribute [rw] adapter
    #     @return [String]
    #     Identifier of the virtual SCSI adapter.
    class Summary < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.vm.hardware.adapter.scsi.summary',
            {
              'adapter' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.ScsiAdapter')
            },
            Summary,
            false,
            nil
          )
        end
      end

      attr_accessor :adapter

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type``   enumerated type  defines the valid emulation types for a virtual SCSI adapter.
    # @!attribute [rw] buslogic
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
    #     BusLogic host bus adapter.
    # @!attribute [rw] lsilogic
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
    #     LSI Logic host bus adapter.
    # @!attribute [rw] lsilogicsas
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
    #     LSI Logic SAS 1068 host bus adapter.
    # @!attribute [rw] pvscsi
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
    #     Paravirtualized host bus adapter.
    class Type < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.vm.hardware.adapter.scsi.type',
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

      # @!attribute [rw] buslogic
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
      #     BusLogic host bus adapter.
      BUSLOGIC = Type.send(:new, 'BUSLOGIC')

      # @!attribute [rw] lsilogic
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
      #     LSI Logic host bus adapter.
      LSILOGIC = Type.send(:new, 'LSILOGIC')

      # @!attribute [rw] lsilogicsas
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
      #     LSI Logic SAS 1068 host bus adapter.
      LSILOGICSAS = Type.send(:new, 'LSILOGICSAS')

      # @!attribute [rw] pvscsi
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Type]
      #     Paravirtualized host bus adapter.
      PVSCSI = Type.send(:new, 'PVSCSI')
    end
    # The  ``Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing``   enumerated type  defines the valid bus sharing modes for a virtual SCSI adapter.
    # @!attribute [rw] none
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing]
    #     The virtual SCSI bus is not shared.
    # @!attribute [rw] virtual
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing]
    #     The virtual SCSI bus is shared between two or more virtual machines. In this case, no physical machine is involved.
    # @!attribute [rw] physical
    #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing]
    #     The virtual SCSI bus is shared between two or more virtual machines residing on different physical hosts.
    class Sharing < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.vm.hardware.adapter.scsi.sharing',
            Sharing
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Sharing] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Sharing.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] none
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing]
      #     The virtual SCSI bus is not shared.
      NONE = Sharing.send(:new, 'NONE')

      # @!attribute [rw] virtual
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing]
      #     The virtual SCSI bus is shared between two or more virtual machines. In this case, no physical machine is involved.
      VIRTUAL = Sharing.send(:new, 'VIRTUAL')

      # @!attribute [rw] physical
      #     @return [Com::Vmware::Vcenter::VM::Hardware::Adapter::Scsi::Sharing]
      #     The virtual SCSI bus is shared between two or more virtual machines residing on different physical hosts.
      PHYSICAL = Sharing.send(:new, 'PHYSICAL')
    end
  end
end
