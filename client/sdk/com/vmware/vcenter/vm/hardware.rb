#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.vm.hardware.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vcenter
            module Vm
                module Hardware
                end
            end
        end
    end
end

# The  ``com.vmware.vcenter.vm.hardware``   package  provides  classs  for managing the virtual hardware configuration and state of a virtual machine. This includes  methods  for reading and manipulating virtual device configuration and for querying the runtime state of the devices.
module Com::Vmware::Vcenter::Vm::Hardware

    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot``   class  provides  methods  for configuring the settings used when booting a virtual machine.
    class BootService < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.boot')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'update' => @@update_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns the boot-related settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Info]
        #     Boot-related settings of the virtual machine.
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
        def get(vm)
            invoke_with_info(@@get_info, {
                'vm' => vm,
            })
        end


        # Updates the boot-related settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec]
        #     Specification for updating the boot-related settings of the virtual machine.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if one of the provided settings is not permitted; for example, specifying a negative value for  ``delay`` .
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
        def update(vm, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Info``   class  contains information about the virtual machine boot process.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Type]
        #     Firmware type used by the virtual machine.
        # @!attribute [rw] efi_legacy_boot
        #     @return [Boolean]
        #     Flag indicating whether to use EFI legacy boot mode.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Type.EFI`  .
        # @!attribute [rw] network_protocol
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol]
        #     Protocol to use when attempting to boot the virtual machine over the network.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Type.EFI`  .
        # @!attribute [rw] delay
        #     @return [Fixnum]
        #     Delay in milliseconds before beginning the firmware boot process when the virtual machine is powered on. This delay may be used to provide a time window for users to connect to the virtual machine console and enter BIOS setup mode.
        # @!attribute [rw] retry_
        #     @return [Boolean]
        #     Flag indicating whether the virtual machine will automatically retry the boot process after a failure.
        # @!attribute [rw] retry_delay
        #     @return [Fixnum]
        #     Delay in milliseconds before retrying the boot process after a failure; applicable only when   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry_`   is true.
        # @!attribute [rw] enter_setup_mode
        #     @return [Boolean]
        #     Flag indicating whether the firmware boot process will automatically enter setup mode the next time the virtual machine boots. Note that this flag will automatically be reset to false once the virtual machine enters setup mode.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.boot.info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Type'),
                            'efi_legacy_boot' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'network_protocol' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol')),
                            'delay' => VAPI::Bindings::IntegerType.instance,
                            'retry' => VAPI::Bindings::BooleanType.instance,
                            'retry_delay' => VAPI::Bindings::IntegerType.instance,
                            'enter_setup_mode' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :efi_legacy_boot,
                          :network_protocol,
                          :delay,
                          :retry_,
                          :retry_delay,
                          :enter_setup_mode

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec``   class  describes settings used when booting a virtual machine.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Type, nil]
        #     Firmware type to be used by the virtual machine.
        #     If  nil , defaults to value that is recommended for the guest OS and is supported for the virtual hardware version.
        # @!attribute [rw] efi_legacy_boot
        #     @return [Boolean, nil]
        #     Flag indicating whether to use EFI legacy boot mode.
        #     If  nil , defaults to value that is recommended for the guest OS and is supported for the virtual hardware version.
        # @!attribute [rw] network_protocol
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol, nil]
        #     Protocol to use when attempting to boot the virtual machine over the network.
        #     If  nil , defaults to a system defined default value.
        # @!attribute [rw] delay
        #     @return [Fixnum, nil]
        #     Delay in milliseconds before beginning the firmware boot process when the virtual machine is powered on. This delay may be used to provide a time window for users to connect to the virtual machine console and enter BIOS setup mode.
        #     If  nil , default value is 0.
        # @!attribute [rw] retry_
        #     @return [Boolean, nil]
        #     Flag indicating whether the virtual machine should automatically retry the boot process after a failure.
        #     If  nil , default value is false.
        # @!attribute [rw] retry_delay
        #     @return [Fixnum, nil]
        #     Delay in milliseconds before retrying the boot process after a failure; applicable only when   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry_`   is true.
        #     If  nil , default value is 10000.
        # @!attribute [rw] enter_setup_mode
        #     @return [Boolean, nil]
        #     Flag indicating whether the firmware boot process should automatically enter setup mode the next time the virtual machine boots. Note that this flag will automatically be reset to false once the virtual machine enters setup mode.
        #     If  nil , the value is unchanged.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.boot.create_spec',
                        {
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Type')),
                            'efi_legacy_boot' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'network_protocol' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol')),
                            'delay' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'retry' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'retry_delay' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'enter_setup_mode' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :efi_legacy_boot,
                          :network_protocol,
                          :delay,
                          :retry_,
                          :retry_delay,
                          :enter_setup_mode

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec``   class  describes the updates to the settings used when booting a virtual machine.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Type, nil]
        #     Firmware type to be used by the virtual machine.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] efi_legacy_boot
        #     @return [Boolean, nil]
        #     Flag indicating whether to use EFI legacy boot mode.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] network_protocol
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol, nil]
        #     Protocol to use when attempting to boot the virtual machine over the network.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] delay
        #     @return [Fixnum, nil]
        #     Delay in milliseconds before beginning the firmware boot process when the virtual machine is powered on. This delay may be used to provide a time window for users to connect to the virtual machine console and enter BIOS setup mode.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] retry_
        #     @return [Boolean, nil]
        #     Flag indicating whether the virtual machine should automatically retry the boot process after a failure.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] retry_delay
        #     @return [Fixnum, nil]
        #     Delay in milliseconds before retrying the boot process after a failure; applicable only when   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry_`   is true.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] enter_setup_mode
        #     @return [Boolean, nil]
        #     Flag indicating whether the firmware boot process should automatically enter setup mode the next time the virtual machine boots. Note that this flag will automatically be reset to false once the virtual machine enters setup mode.
        #     If  nil , the value is unchanged.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.boot.update_spec',
                        {
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Type')),
                            'efi_legacy_boot' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'network_protocol' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol')),
                            'delay' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'retry' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'retry_delay' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'enter_setup_mode' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :efi_legacy_boot,
                          :network_protocol,
                          :delay,
                          :retry_,
                          :retry_delay,
                          :enter_setup_mode

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Type``   enumerated type  defines the valid firmware types for a virtual machine.
        # @!attribute [rw] bios
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Type]
        #     Basic Input/Output System (BIOS) firmware.
        # @!attribute [rw] efi
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Type]
        #     Extensible Firmware Interface (EFI) firmware.
        class Type < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.boot.type',
                        Type)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [Type] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        Type.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] bios
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Type]
            #     Basic Input/Output System (BIOS) firmware.
            BIOS = Type.new('BIOS')

            # @!attribute [rw] efi
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Type]
            #     Extensible Firmware Interface (EFI) firmware.
            EFI = Type.new('EFI')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol``   enumerated type  defines the valid network boot protocols supported when booting a virtual machine with   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Type.EFI`   firmware over the network.
        # @!attribute [rw] ip_v4
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol]
        #     PXE or Apple NetBoot over IPv4.
        # @!attribute [rw] ip_v6
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol]
        #     PXE over IPv6.
        class NetworkProtocol < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.boot.network_protocol',
                        NetworkProtocol)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [NetworkProtocol] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        NetworkProtocol.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] ip_v4
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol]
            #     PXE or Apple NetBoot over IPv4.
            IP_V4 = NetworkProtocol.new('IP_V4')

            # @!attribute [rw] ip_v6
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol]
            #     PXE over IPv6.
            IP_V6 = NetworkProtocol.new('IP_V6')

        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom``   class  provides  methods  for configuring the virtual CD-ROM devices of a virtual machine.
    class Cdrom < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.cdrom')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'cdrom' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Cdrom'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Cdrom'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'cdrom' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Cdrom'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'cdrom' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Cdrom'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@connect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('connect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'cdrom' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Cdrom'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@disconnect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('disconnect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'cdrom' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Cdrom'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
            'create' => @@create_info,
            'update' => @@update_info,
            'delete' => @@delete_info,
            'connect' => @@connect_info,
            'disconnect' => @@disconnect_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.Cdrom'


        # Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary>]
        #     List of commonly used information about virtual CD-ROM devices.
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
            invoke_with_info(@@list_info, {
                'vm' => vm,
            })
        end


        # Returns information about a virtual CD-ROM device.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param cdrom [String]
        #     Virtual CD-ROM device identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info]
        #     Information about the specified virtual CD-ROM device.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual CD-ROM device is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm, cdrom)
            invoke_with_info(@@get_info, {
                'vm' => vm,
                'cdrom' => cdrom,
            })
        end


        # Adds a virtual CD-ROM device to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec]
        #     Specification for the new virtual CD-ROM device.
        # @return [String]
        #     Virtual CD-ROM device identifier.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reported that the CD-ROM device was created but was unable to confirm the creation because the identifier of the new device could not be determined.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is suspended or if the virtual machine is powered on and virtual CD-ROM type is IDE.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if the specified storage address is unavailable; for example, if the SCSI adapter requested does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
        #     if the specified storage address is in use.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the specified storage address is out of bounds.
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
            invoke_with_info(@@create_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end


        # Updates the configuration of a virtual CD-ROM device.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param cdrom [String]
        #     Virtual CD-ROM device identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec]
        #     Specification for updating the virtual CD-ROM device.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual CD-ROM device is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if one or more of the  fields  specified in the  ``spec``   parameter  cannot be modified due to the current power state of the virtual machine or the connection state of the virtual CD-ROM device.
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
        def update(vm, cdrom, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'cdrom' => cdrom,
                'spec' => spec,
            })
        end


        # Removes a virtual CD-ROM device from the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param cdrom [String]
        #     Virtual CD-ROM device identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual CD-ROM device is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is suspended or if the virtual machine is powered on and virtual CD-ROM type is IDE.
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
        def delete(vm, cdrom)
            invoke_with_info(@@delete_info, {
                'vm' => vm,
                'cdrom' => cdrom,
            })
        end


        # Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom.update`    method  may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param cdrom [String]
        #     Virtual CD-ROM device identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual CD-ROM device is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual CD-ROM device is already connected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def connect(vm, cdrom)
            invoke_with_info(@@connect_info, {
                'vm' => vm,
                'cdrom' => cdrom,
            })
        end


        # Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom.update`    method  may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param cdrom [String]
        #     Virtual CD-ROM device identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual CD-ROM device is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual CD-ROM device is already disconnected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def disconnect(vm, cdrom)
            invoke_with_info(@@disconnect_info, {
                'vm' => vm,
                'cdrom' => cdrom,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo``   class  contains information about the physical resource backing a virtual CD-ROM device.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
        #     Backing type for the virtual CD-ROM device.
        # @!attribute [rw] iso_file
        #     @return [String]
        #     Path of the image file backing the virtual CD-ROM device.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType.ISO_FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the host device backing the virtual CD-ROM device.  
        #     This  field  will be  nil  if  ``autoDetect``  is true and the virtual CD-ROM device is not connected or no suitable device is available on the host.
        # @!attribute [rw] auto_detect
        #     @return [Boolean]
        #     Flag indicating whether the virtual CD-ROM device is configured to automatically detect a suitable host device.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType.HOST_DEVICE`  .
        # @!attribute [rw] device_access_type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType]
        #     Access type for the device backing.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType.HOST_DEVICE`   or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType.CLIENT_DEVICE`  .
        class BackingInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.backing_info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType'),
                            'iso_file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'auto_detect' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'device_access_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType')),
                        },
                        BackingInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :iso_file,
                          :host_device,
                          :auto_detect,
                          :device_access_type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec``   class  provides a specification of the physical resource backing a virtual CD-ROM device.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
        #     Backing type for the virtual CD-ROM device.
        # @!attribute [rw] iso_file
        #     @return [String]
        #     Path of the image file that should be used as the virtual CD-ROM device backing.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType.ISO_FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the device that should be used as the virtual CD-ROM device backing.
        #     If  nil , the virtual CD-ROM device will be configured to automatically detect a suitable host device.
        # @!attribute [rw] device_access_type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType, nil]
        #     Access type for the device backing.
        #     If  nil , defaults to   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType.EMULATION`  .
        class BackingSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.backing_spec',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType'),
                            'iso_file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'device_access_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType')),
                        },
                        BackingSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :iso_file,
                          :host_device,
                          :device_access_type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info``   class  contains information about a virtual CD-ROM device.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType]
        #     Type of host bus adapter to which the device is attached.
        # @!attribute [rw] label
        #     @return [String]
        #     Device label.
        # @!attribute [rw] ide
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::IdeAddressInfo]
        #     Address of device attached to a virtual IDE adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType.IDE`  .
        # @!attribute [rw] sata
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::SataAddressInfo]
        #     Address of device attached to a virtual SATA adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType.SATA`  .
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo]
        #     Physical resource backing for the virtual CD-ROM device.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType'),
                            'label' => VAPI::Bindings::StringType.instance,
                            'ide' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::IdeAddressInfo')),
                            'sata' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::SataAddressInfo')),
                            'backing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo'),
                            'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ConnectionState'),
                            'start_connected' => VAPI::Bindings::BooleanType.instance,
                            'allow_guest_control' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :label,
                          :ide,
                          :sata,
                          :backing,
                          :state,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual CD-ROM device.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType, nil]
        #     Type of host bus adapter to which the device should be attached.
        #     If  nil , guest-specific default values will be used
        # @!attribute [rw] ide
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec, nil]
        #     Address for attaching the device to a virtual IDE adapter.
        #     If  nil , the server will choose an available address; if none is available, the request will fail.
        # @!attribute [rw] sata
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec, nil]
        #     Address for attaching the device to a virtual SATA adapter.
        #     If  nil , the server will choose an available address; if none is available, the request will fail.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec, nil]
        #     Physical resource backing for the virtual CD-ROM device.
        #     If  nil , defaults to automatic detection of a suitable host device.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.create_spec',
                        {
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType')),
                            'ide' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec')),
                            'sata' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec')),
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :ide,
                          :sata,
                          :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec``   class  describes the updates to be made to the configuration of a virtual CD-ROM device.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec, nil]
        #     Physical resource backing for the virtual CD-ROM device.  
        #     
        #      This  field  may only be modified if the virtual machine is not powered on or the virtual CD-ROM device is not connected.
        #     If  nil , the value is unchanged.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.update_spec',
                        {
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary``   class  contains commonly used information about a virtual CD-ROM device.
        # @!attribute [rw] cdrom
        #     @return [String]
        #     Identifier of the virtual CD-ROM device.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.summary',
                        {
                            'cdrom' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Cdrom'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :cdrom

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType``   enumerated type  defines the valid types of host bus adapters that may be used for attaching a Cdrom to a virtual machine.
        # @!attribute [rw] ide
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType]
        #     Cdrom is attached to an IDE adapter.
        # @!attribute [rw] sata
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType]
        #     Cdrom is attached to a SATA adapter.
        class HostBusAdapterType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.host_bus_adapter_type',
                        HostBusAdapterType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HostBusAdapterType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HostBusAdapterType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] ide
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType]
            #     Cdrom is attached to an IDE adapter.
            IDE = HostBusAdapterType.new('IDE')

            # @!attribute [rw] sata
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType]
            #     Cdrom is attached to a SATA adapter.
            SATA = HostBusAdapterType.new('SATA')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType``   enumerated type  defines the valid backing types for a virtual CD-ROM device.
        # @!attribute [rw] iso_file
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
        #     Virtual CD-ROM device is backed by an ISO file.
        # @!attribute [rw] host_device
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
        #     Virtual CD-ROM device is backed by a device on the host where the virtual machine is running.
        # @!attribute [rw] client_device
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
        #     Virtual CD-ROM device is backed by a device on the client that is connected to the virtual machine console.
        class BackingType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.backing_type',
                        BackingType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [BackingType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        BackingType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] iso_file
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
            #     Virtual CD-ROM device is backed by an ISO file.
            ISO_FILE = BackingType.new('ISO_FILE')

            # @!attribute [rw] host_device
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
            #     Virtual CD-ROM device is backed by a device on the host where the virtual machine is running.
            HOST_DEVICE = BackingType.new('HOST_DEVICE')

            # @!attribute [rw] client_device
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType]
            #     Virtual CD-ROM device is backed by a device on the client that is connected to the virtual machine console.
            CLIENT_DEVICE = BackingType.new('CLIENT_DEVICE')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType``   enumerated type  defines the valid device access types for a physical device packing of a virtual CD-ROM device.
        # @!attribute [rw] emulation
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType]
        #     ATAPI or SCSI device emulation.
        # @!attribute [rw] passthru
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType]
        #     Raw passthru device access.
        # @!attribute [rw] passthru_exclusive
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType]
        #     Raw passthru device access, with exclusive access to the device.
        class DeviceAccessType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.cdrom.device_access_type',
                        DeviceAccessType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [DeviceAccessType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        DeviceAccessType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] emulation
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType]
            #     ATAPI or SCSI device emulation.
            EMULATION = DeviceAccessType.new('EMULATION')

            # @!attribute [rw] passthru
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType]
            #     Raw passthru device access.
            PASSTHRU = DeviceAccessType.new('PASSTHRU')

            # @!attribute [rw] passthru_exclusive
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType]
            #     Raw passthru device access, with exclusive access to the device.
            PASSTHRU_EXCLUSIVE = DeviceAccessType.new('PASSTHRU_EXCLUSIVE')

        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cpu``   class  provides  methods  for configuring the CPU settings of a virtual machine.
    class Cpu < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.cpu')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'update' => @@update_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns the CPU-related settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info]
        #     CPU-related settings of the virtual machine.
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
        def get(vm)
            invoke_with_info(@@get_info, {
                'vm' => vm,
            })
        end


        # Updates the CPU-related settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec]
        #     Specification for updating the CPU-related settings of the virtual machine.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if one of the provided settings is not permitted; for example, specifying a negative value for  ``count`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if  ``hotAddEnabled``  or  ``hotRemoveEnabled``  is specified and the virtual machine is not powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if  ``count``  is specified and is greater than  ``count`` ,  ``hotAddEnabled``  is false, and the virtual machine is not powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if  ``count``  is specified and is less than  ``count`` ,  ``hotRemoveEnabled``  is false, and the virtual machine is not powered off.
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
        def update(vm, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info``   class  contains CPU-related information about a virtual machine.
        # @!attribute [rw] count
        #     @return [Fixnum]
        #     Number of CPU cores.
        # @!attribute [rw] cores_per_socket
        #     @return [Fixnum]
        #     Number of CPU cores per socket.
        # @!attribute [rw] hot_add_enabled
        #     @return [Boolean]
        #     Flag indicating whether adding CPUs while the virtual machine is running is enabled.
        # @!attribute [rw] hot_remove_enabled
        #     @return [Boolean]
        #     Flag indicating whether removing CPUs while the virtual machine is running is enabled.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cpu.info',
                        {
                            'count' => VAPI::Bindings::IntegerType.instance,
                            'cores_per_socket' => VAPI::Bindings::IntegerType.instance,
                            'hot_add_enabled' => VAPI::Bindings::BooleanType.instance,
                            'hot_remove_enabled' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :count,
                          :cores_per_socket,
                          :hot_add_enabled,
                          :hot_remove_enabled

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec``   class  describes the updates to be made to the CPU-related settings of a virtual machine.
        # @!attribute [rw] count
        #     @return [Fixnum, nil]
        #     New number of CPU cores. The number of CPU cores in the virtual machine must be a multiple of the number of cores per socket.  
        #     
        #      The supported range of CPU counts is constrained by the configured guest operating system and virtual hardware version of the virtual machine.  
        #     
        #      If the virtual machine is running, the number of CPU cores may only be increased if   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info.hot_add_enabled`   is true, and may only be decreased if   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info.hot_remove_enabled`   is true.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] cores_per_socket
        #     @return [Fixnum, nil]
        #     New number of CPU cores per socket. The number of CPU cores in the virtual machine must be a multiple of the number of cores per socket.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] hot_add_enabled
        #     @return [Boolean, nil]
        #     Flag indicating whether adding CPUs while the virtual machine is running is enabled.  
        #     
        #      This  field  may only be modified if the virtual machine is powered off.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] hot_remove_enabled
        #     @return [Boolean, nil]
        #     Flag indicating whether removing CPUs while the virtual machine is running is enabled.  
        #     
        #      This  field  may only be modified if the virtual machine is powered off.
        #     If  nil , the value is unchanged.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.cpu.update_spec',
                        {
                            'count' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'cores_per_socket' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'hot_add_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'hot_remove_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :count,
                          :cores_per_socket,
                          :hot_add_enabled,
                          :hot_remove_enabled

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk``   class  provides  methods  for configuring the virtual disks of a virtual machine. A virtual disk has a backing such as a VMDK file. The backing has an independent lifecycle from the virtual machine when it is detached from the virtual machine. The   :func:`Com::Vmware::Vcenter::Vm::Hardware::Disk.create`    method  provides the ability to create a new virtual disk. When creating a virtual disk, a new VMDK file may be created or an existing VMDK file may used as a backing. Once a VMDK file is associated with a virtual machine, its lifecycle will be bound to the virtual machine. In other words, it will be deleted when the virtual machine is deleted. The   :func:`Com::Vmware::Vcenter::Vm::Hardware::Disk.delete`    method  provides the ability to detach a VMDK file from the virtual machine. The   :func:`Com::Vmware::Vcenter::Vm::Hardware::Disk.delete`    method  does not delete the VMDK file that backs the virtual disk. Once detached, the VMDK file will not be destroyed when the virtual machine to which it was associated is deleted.
    class Disk < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.disk')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'disk' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Disk'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Disk'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'disk' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Disk'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'disk' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Disk'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
            'create' => @@create_info,
            'update' => @@update_info,
            'delete' => @@delete_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.Disk'


        # Returns commonly used information about the virtual disks belonging to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary>]
        #     List of commonly used information about the virtual disks.
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
            invoke_with_info(@@list_info, {
                'vm' => vm,
            })
        end


        # Returns information about a virtual disk.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param disk [String]
        #     Virtual disk identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::Info]
        #     Information about the specified virtual disk.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual disk is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm, disk)
            invoke_with_info(@@get_info, {
                'vm' => vm,
                'disk' => disk,
            })
        end


        # Adds a virtual disk to the virtual machine. While adding the virtual disk, a new VMDK file may be created or an existing VMDK file may be used to back the virtual disk.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec]
        #     Specification for the new virtual disk.
        # @return [String]
        #     Virtual disk identifier.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if system reported that the disk device was created but was unable to confirm the creation because the identifier of the new device could not be determined.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is suspended or if the virtual machine is powered on and virtual disk type is IDE.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if the specified storage address is unavailable; for example, if the SCSI adapter requested does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
        #     if the specified storage address is in use.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the specified storage address is out of bounds.
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
            invoke_with_info(@@create_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end


        # Updates the configuration of a virtual disk. An update  method  can be used to detach the existing VMDK file and attach another VMDK file to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param disk [String]
        #     Virtual disk identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec]
        #     Specification for updating the virtual disk.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual disk is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if one or more of the  fields  specified in the  ``spec``   parameter  cannot be modified due to the current power state of the virtual machine or the connection state of the virtual disk.
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
        def update(vm, disk, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'disk' => disk,
                'spec' => spec,
            })
        end


        # Removes a virtual disk from the virtual machine. This  method  does not destroy the VMDK file that backs the virtual disk. It only detaches the VMDK file from the virtual machine. Once detached, the VMDK file will not be destroyed when the virtual machine to which it was associated is deleted.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param disk [String]
        #     Virtual disk identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual disk is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is suspended or if the virtual machine is powered on and virtual disk type is IDE.
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
        def delete(vm, disk)
            invoke_with_info(@@delete_info, {
                'vm' => vm,
                'disk' => disk,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo``   class  contains information about the physical resource backing a virtual disk.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType]
        #     Backing type for the virtual disk.
        # @!attribute [rw] vmdk_file
        #     @return [String]
        #     Path of the VMDK file backing the virtual disk.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType.VMDK_FILE`  .
        class BackingInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.disk.backing_info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType'),
                            'vmdk_file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        },
                        BackingInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :vmdk_file

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec``   class  provides a specification of the physical resource backing a virtual disk.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType]
        #     Backing type for the virtual disk.
        # @!attribute [rw] vmdk_file
        #     @return [String]
        #     Path of the VMDK file backing the virtual disk.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType.VMDK_FILE`  .
        class BackingSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.disk.backing_spec',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType'),
                            'vmdk_file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        },
                        BackingSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :vmdk_file

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec``   class  provides a specification for creating a new VMDK file to be used as a backing for a virtual disk. The virtual disk will be stored in the same directory as the virtual machine's configuration file.
        # @!attribute [rw] name
        #     @return [String, nil]
        #     Base name of the VMDK file. The name should not include the '.vmdk' file extension.
        #     If  nil , a name (derived from the name of the virtual machine) will be chosen by the server.
        # @!attribute [rw] capacity
        #     @return [Fixnum, nil]
        #     Capacity of the virtual disk backing in bytes.
        #     If  nil , defaults to a guest-specific capacity.
        class VmdkCreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.disk.vmdk_create_spec',
                        {
                            'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'capacity' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        },
                        VmdkCreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :capacity

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::Info``   class  contains information about a virtual disk.
        # @!attribute [rw] label
        #     @return [String]
        #     Device label.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType]
        #     Type of host bus adapter to which the device is attached.
        # @!attribute [rw] ide
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::IdeAddressInfo]
        #     Address of device attached to a virtual IDE adapter.
        #     Workaround for PR1459646
        # @!attribute [rw] scsi
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo]
        #     Address of device attached to a virtual SCSI adapter.
        #     Workaround for PR1459646
        # @!attribute [rw] sata
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::SataAddressInfo]
        #     Address of device attached to a virtual SATA adapter.
        #     Workaround for PR1459646
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo]
        #     Physical resource backing for the virtual disk.
        # @!attribute [rw] capacity
        #     @return [Fixnum, nil]
        #     Capacity of the virtual disk in bytes.
        #     If  nil , virtual disk is inaccessible or disk capacity is 0.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.disk.info',
                        {
                            'label' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType'),
                            'ide' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::IdeAddressInfo')),
                            'scsi' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo')),
                            'sata' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::SataAddressInfo')),
                            'backing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo'),
                            'capacity' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :label,
                          :type,
                          :ide,
                          :scsi,
                          :sata,
                          :backing,
                          :capacity

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual disk.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType, nil]
        #     Type of host bus adapter to which the device should be attached.
        #     If  nil , guest-specific default values will be used
        # @!attribute [rw] ide
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec, nil]
        #     Address for attaching the device to a virtual IDE adapter.
        #     If  nil , the server will choose an available address; if none is available, the request will fail.
        # @!attribute [rw] scsi
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec, nil]
        #     Address for attaching the device to a virtual SCSI adapter.
        #     If  nil , the server will choose an available address; if none is available, the request will fail.
        # @!attribute [rw] sata
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec, nil]
        #     Address for attaching the device to a virtual SATA adapter.
        #     If  nil , the server will choose an available address; if none is available, the request will fail.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec, nil]
        #     Existing physical resource backing for the virtual disk. Exactly one of  ``backing``  or  ``newVmdk``  must be specified.
        #     If  nil , the virtual disk will not be connected to an existing backing.
        # @!attribute [rw] new_vmdk
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec, nil]
        #     Specification for creating a new VMDK backing for the virtual disk. Exactly one of  ``backing``  or  ``newVmdk``  must be specified.
        #     If  nil , a new VMDK backing will not be created.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.disk.create_spec',
                        {
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType')),
                            'ide' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec')),
                            'scsi' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec')),
                            'sata' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec')),
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec')),
                            'new_vmdk' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec')),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :ide,
                          :scsi,
                          :sata,
                          :backing,
                          :new_vmdk

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec``   class  describes the updates to be made to the configuration of a virtual disk.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec, nil]
        #     Physical resource backing for the virtual disk.  
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
                        'com.vmware.vcenter.vm.hardware.disk.update_spec',
                        {
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec')),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :backing

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary``   class  contains commonly used information about a virtual disk.
        # @!attribute [rw] disk
        #     @return [String]
        #     Identifier of the virtual Disk.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.disk.summary',
                        {
                            'disk' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Disk'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :disk

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType``   enumerated type  defines the valid types of host bus adapters that may be used for attaching a virtual storage device to a virtual machine.
        # @!attribute [rw] ide
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType]
        #     Disk is attached to an IDE adapter.
        # @!attribute [rw] scsi
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType]
        #     Disk is attached to a SCSI adapter.
        # @!attribute [rw] sata
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType]
        #     Disk is attached to a SATA adapter.
        class HostBusAdapterType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.disk.host_bus_adapter_type',
                        HostBusAdapterType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HostBusAdapterType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HostBusAdapterType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] ide
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType]
            #     Disk is attached to an IDE adapter.
            IDE = HostBusAdapterType.new('IDE')

            # @!attribute [rw] scsi
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType]
            #     Disk is attached to a SCSI adapter.
            SCSI = HostBusAdapterType.new('SCSI')

            # @!attribute [rw] sata
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType]
            #     Disk is attached to a SATA adapter.
            SATA = HostBusAdapterType.new('SATA')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType``   enumerated type  defines the valid backing types for a virtual disk.
        # @!attribute [rw] vmdk_file
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType]
        #     Virtual disk is backed by a VMDK file.
        class BackingType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.disk.backing_type',
                        BackingType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [BackingType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        BackingType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] vmdk_file
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType]
            #     Virtual disk is backed by a VMDK file.
            VMDK_FILE = BackingType.new('VMDK_FILE')

        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet``   class  provides  methods  for configuring the virtual Ethernet adapters of a virtual machine.
    class Ethernet < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.ethernet')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'nic' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Ethernet'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Ethernet'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'nic' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Ethernet'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'nic' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Ethernet'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@connect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('connect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'nic' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Ethernet'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@disconnect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('disconnect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'nic' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Ethernet'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
            'create' => @@create_info,
            'update' => @@update_info,
            'delete' => @@delete_info,
            'connect' => @@connect_info,
            'disconnect' => @@disconnect_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.Ethernet'


        # Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary>]
        #     List of commonly used information about virtual Ethernet adapters.
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
            invoke_with_info(@@list_info, {
                'vm' => vm,
            })
        end


        # Returns information about a virtual Ethernet adapter.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param nic [String]
        #     Virtual Ethernet adapter identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info]
        #     Information about the specified virtual Ethernet adapter.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual Ethernet adapter is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm, nic)
            invoke_with_info(@@get_info, {
                'vm' => vm,
                'nic' => nic,
            })
        end


        # Adds a virtual Ethernet adapter to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec]
        #     Specification for the new virtual Ethernet adapter.
        # @return [String]
        #     Virtual Ethernet adapter identifier.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reported that the Ethernet adapter was created but was unable to confirm the creation because the identifier of the new adapter could not be determined.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or network backing is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if the virtual machine already has the maximum number of supported Ethernet adapters.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the specified PCI address is out of bounds, HOST_DEVICE is specified as the type, or a backing cannot be found in the case that backing is left  nil .
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
            invoke_with_info(@@create_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end


        # Updates the configuration of a virtual Ethernet adapter.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param nic [String]
        #     Virtual Ethernet adapter identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec]
        #     Specification for updating the virtual Ethernet adapter.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if HOST_DEVICE is specified as the type.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine, virtual Ethernet adapter, or backing network is not found.
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
        def update(vm, nic, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'nic' => nic,
                'spec' => spec,
            })
        end


        # Removes a virtual Ethernet adapter from the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param nic [String]
        #     Virtual Ethernet adapter identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual Ethernet adapter is not found.
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
        def delete(vm, nic)
            invoke_with_info(@@delete_info, {
                'vm' => vm,
                'nic' => nic,
            })
        end


        # Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet.update`    method  may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param nic [String]
        #     Virtual Ethernet adapter identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual Ethernet adapter is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual Ethernet adapter is already connected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def connect(vm, nic)
            invoke_with_info(@@connect_info, {
                'vm' => vm,
                'nic' => nic,
            })
        end


        # Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet.update`    method  may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param nic [String]
        #     Virtual Ethernet adapter identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual Ethernet adapter is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual Ethernet adapter is already disconnected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def disconnect(vm, nic)
            invoke_with_info(@@disconnect_info, {
                'vm' => vm,
                'nic' => nic,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo``   class  contains information about the physical resource backing a virtual Ethernet adapter.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
        #     Backing type for the virtual Ethernet adapter.
        # @!attribute [rw] network
        #     @return [String, nil]
        #     Identifier of the network backing the virtual Ethernet adapter.
        #     If  nil , the identifier of the network backing could not be determined.
        # @!attribute [rw] network_name
        #     @return [String]
        #     Name of the standard portgroup backing the virtual Ethernet adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.STANDARD_PORTGROUP`  .
        # @!attribute [rw] host_device
        #     @return [String]
        #     Name of the device backing the virtual Ethernet adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.HOST_DEVICE`  .
        # @!attribute [rw] distributed_switch_uuid
        #     @return [String]
        #     UUID of the distributed virtual switch that backs the virtual Ethernet adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.DISTRIBUTED_PORTGROUP`  .
        # @!attribute [rw] distributed_port
        #     @return [String, nil]
        #     Key of the distributed virtual port that backs the virtual Ethernet adapter.
        #     This  field  will be  nil  if the virtual Ethernet device is not bound to a distributed virtual port; this can happen if the virtual machine is powered off or the virtual Ethernet device is not connected.
        # @!attribute [rw] connection_cookie
        #     @return [Fixnum, nil]
        #     Server-generated cookie that identifies the connection to the port. This ookie may be used to verify that the virtual machine is the rightful owner of the port.
        #     This  field  will be  nil  if the virtual Ethernet device is not bound to a distributed virtual port; this can happen if the virtual machine is powered off or the virtual Ethernet device is not connected.
        # @!attribute [rw] opaque_network_type
        #     @return [String]
        #     Type of the opaque network that backs the virtual Ethernet adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.OPAQUE_NETWORK`  .
        # @!attribute [rw] opaque_network_id
        #     @return [String]
        #     Identifier of the opaque network that backs the virtual Ethernet adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.OPAQUE_NETWORK`  .
        class BackingInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.backing_info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType'),
                            'network' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'network_name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'distributed_switch_uuid' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'distributed_port' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'connection_cookie' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'opaque_network_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'opaque_network_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        },
                        BackingInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :network,
                          :network_name,
                          :host_device,
                          :distributed_switch_uuid,
                          :distributed_port,
                          :connection_cookie,
                          :opaque_network_type,
                          :opaque_network_id

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec``   class  provides a specification of the physical resource that backs a virtual Ethernet adapter.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
        #     Backing type for the virtual Ethernet adapter.
        # @!attribute [rw] network
        #     @return [String]
        #     Identifier of the network that backs the virtual Ethernet adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.STANDARD_PORTGROUP`  ,   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.DISTRIBUTED_PORTGROUP`  , or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType.OPAQUE_NETWORK`  .
        # @!attribute [rw] distributed_port
        #     @return [String, nil]
        #     Key of the distributed virtual port that backs the virtual Ethernet adapter. Depending on the type of the Portgroup, the port may be specified using this field. If the portgroup type is early-binding (also known as static), a port is assigned when the Ethernet adapter is configured to use the port. The port may be either automatically or specifically assigned based on the value of this  field . If the portgroup type is ephemeral, the port is created and assigned to a virtual machine when it is powered on and the Ethernet adapter is connected. This  field  cannot be specified as no free ports exist before use.
        #     May be used to specify a port when the network specified on the  ``network``   field  is a static or early binding distributed portgroup. If  nil , the port will be automatically assigned to the Ethernet adapter based on the policy embodied by the portgroup type.
        class BackingSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.backing_spec',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType'),
                            'network' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'distributed_port' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        },
                        BackingSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :network,
                          :distributed_port

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info``   class  contains information about a virtual Ethernet adapter.
        # @!attribute [rw] label
        #     @return [String]
        #     Device label.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
        #     Ethernet adapter emulation type.
        # @!attribute [rw] upt_compatibility_enabled
        #     @return [Boolean]
        #     Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this virtual Ethernet adapter.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType.VMXNET3`  .
        # @!attribute [rw] mac_type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType]
        #     MAC address type.
        # @!attribute [rw] mac_address
        #     @return [String, nil]
        #     MAC address.
        #     May be  nil  if   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info.mac_type`   is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType.MANUAL`   and has not been specified, or if   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info.mac_type`   is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType.GENERATED`   and the virtual machine has never been powered on since the Ethernet adapter was created.
        # @!attribute [rw] pci_slot_number
        #     @return [Fixnum, nil]
        #     Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added.
        #     May be  nil  if the virtual machine has never been powered on since the adapter was created.
        # @!attribute [rw] wake_on_lan_enabled
        #     @return [Boolean]
        #     Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo]
        #     Physical resource backing for the virtual Ethernet adapter.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.info',
                        {
                            'label' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType'),
                            'upt_compatibility_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'mac_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType'),
                            'mac_address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'pci_slot_number' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'wake_on_lan_enabled' => VAPI::Bindings::BooleanType.instance,
                            'backing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo'),
                            'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ConnectionState'),
                            'start_connected' => VAPI::Bindings::BooleanType.instance,
                            'allow_guest_control' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :label,
                          :type,
                          :upt_compatibility_enabled,
                          :mac_type,
                          :mac_address,
                          :pci_slot_number,
                          :wake_on_lan_enabled,
                          :backing,
                          :state,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual Ethernet adapter.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType, nil]
        #     Ethernet adapter emulation type.
        #     If  nil , defaults to a guest-specific type.
        # @!attribute [rw] upt_compatibility_enabled
        #     @return [Boolean, nil]
        #     Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this virtual Ethernet adapter.
        #     If  nil , defaults to false.
        # @!attribute [rw] mac_type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType, nil]
        #     MAC address type.
        #     If  nil , defaults to   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType.GENERATED`  .
        # @!attribute [rw] mac_address
        #     @return [String]
        #     MAC address.
        #     Workaround for PR1459647
        # @!attribute [rw] pci_slot_number
        #     @return [Fixnum, nil]
        #     Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid, the server will change when it the VM is started or as the device is hot added.
        #     If  nil , the server will choose an available address when the virtual machine is powered on.
        # @!attribute [rw] wake_on_lan_enabled
        #     @return [Boolean, nil]
        #     Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter.
        #     Defaults to false if  nil .
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec, nil]
        #     Physical resource backing for the virtual Ethernet adapter.
        #     If  nil , the system may try to find an appropriate backing. If one is not found, the request will fail.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.create_spec',
                        {
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType')),
                            'upt_compatibility_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'mac_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType')),
                            'mac_address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'pci_slot_number' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'wake_on_lan_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :upt_compatibility_enabled,
                          :mac_type,
                          :mac_address,
                          :pci_slot_number,
                          :wake_on_lan_enabled,
                          :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec``   class  describes the updates to be made to the configuration of a virtual Ethernet adapter.
        # @!attribute [rw] upt_compatibility_enabled
        #     @return [Boolean, nil]
        #     Flag indicating whether Universal Pass-Through (UPT) compatibility should be enabled on this virtual Ethernet adapter.  
        #     
        #      This  field  may be modified at any time, and changes will be applied the next time the virtual machine is powered on.
        #     If  nil , the value is unchanged. Must be  nil  if the emulation type of the virtual Ethernet adapter is not   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType.VMXNET3`  .
        # @!attribute [rw] mac_type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType, nil]
        #     MAC address type.  
        #     
        #      This  field  may be modified at any time, and changes will be applied the next time the virtual machine is powered on.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] mac_address
        #     @return [String, nil]
        #     MAC address.  
        #     
        #      This  field  may be modified at any time, and changes will be applied the next time the virtual machine is powered on.
        #     If  nil , the value is unchanged. Must be specified if   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec.mac_type`   is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType.MANUAL`  . Must be  nil  if the MAC address type is not   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType.MANUAL`  .
        # @!attribute [rw] wake_on_lan_enabled
        #     @return [Boolean, nil]
        #     Flag indicating whether wake-on-LAN shoud be enabled on this virtual Ethernet adapter.  
        #     
        #      This  field  may be modified at any time, and changes will be applied the next time the virtual machine is powered on.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec, nil]
        #     Physical resource backing for the virtual Ethernet adapter.  
        #     
        #      This  field  may be modified at any time, and changes will be applied the next time the virtual machine is powered on.
        #     If  nil , the value is unchanged.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.update_spec',
                        {
                            'upt_compatibility_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'mac_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType')),
                            'mac_address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'wake_on_lan_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :upt_compatibility_enabled,
                          :mac_type,
                          :mac_address,
                          :wake_on_lan_enabled,
                          :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary``   class  contains commonly used information about a virtual Ethernet adapter.
        # @!attribute [rw] nic
        #     @return [String]
        #     Identifier of the virtual Ethernet adapter.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.summary',
                        {
                            'nic' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Ethernet'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :nic

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType``   enumerated type  defines the valid emulation types for a virtual Ethernet adapter.
        # @!attribute [rw] e1000
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
        #     E1000 ethernet adapter.
        # @!attribute [rw] e1000e
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
        #     E1000e ethernet adapter.
        # @!attribute [rw] pcne_t32
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
        #     AMD Lance PCNet32 Ethernet adapter.
        # @!attribute [rw] vmxnet
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
        #     VMware Vmxnet virtual Ethernet adapter.
        # @!attribute [rw] vmxne_t2
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
        #     VMware Vmxnet2 virtual Ethernet adapter.
        # @!attribute [rw] vmxne_t3
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
        #     VMware Vmxnet3 virtual Ethernet adapter.
        class EmulationType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.emulation_type',
                        EmulationType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [EmulationType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        EmulationType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] e1000
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
            #     E1000 ethernet adapter.
            E1000 = EmulationType.new('E1000')

            # @!attribute [rw] e1000e
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
            #     E1000e ethernet adapter.
            E1000E = EmulationType.new('E1000E')

            # @!attribute [rw] pcne_t32
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
            #     AMD Lance PCNet32 Ethernet adapter.
            PCNE_T32 = EmulationType.new('PCNE_T32')

            # @!attribute [rw] vmxnet
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
            #     VMware Vmxnet virtual Ethernet adapter.
            VMXNET = EmulationType.new('VMXNET')

            # @!attribute [rw] vmxne_t2
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
            #     VMware Vmxnet2 virtual Ethernet adapter.
            VMXNE_T2 = EmulationType.new('VMXNE_T2')

            # @!attribute [rw] vmxne_t3
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType]
            #     VMware Vmxnet3 virtual Ethernet adapter.
            VMXNE_T3 = EmulationType.new('VMXNE_T3')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType``   enumerated type  defines the valid MAC address origins for a virtual Ethernet adapter.
        # @!attribute [rw] manual
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType]
        #     MAC address is assigned statically.
        # @!attribute [rw] generated
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType]
        #     MAC address is generated automatically.
        # @!attribute [rw] assigned
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType]
        #     MAC address is assigned by vCenter Server.
        class MacAddressType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.mac_address_type',
                        MacAddressType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [MacAddressType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        MacAddressType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] manual
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType]
            #     MAC address is assigned statically.
            MANUAL = MacAddressType.new('MANUAL')

            # @!attribute [rw] generated
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType]
            #     MAC address is generated automatically.
            GENERATED = MacAddressType.new('GENERATED')

            # @!attribute [rw] assigned
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType]
            #     MAC address is assigned by vCenter Server.
            ASSIGNED = MacAddressType.new('ASSIGNED')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType``   enumerated type  defines the valid backing types for a virtual Ethernet adapter.
        # @!attribute [rw] standard_portgroup
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
        #     vSphere standard portgroup network backing.
        # @!attribute [rw] host_device
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
        #     Legacy host device network backing. Imported VMs may have virtual Ethernet adapters with this type of backing, but this type of backing cannot be used to create or to update a virtual Ethernet adapter.
        # @!attribute [rw] distributed_portgroup
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
        #     Distributed virtual switch backing.
        # @!attribute [rw] opaque_network
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
        #     Opaque network backing.
        class BackingType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.ethernet.backing_type',
                        BackingType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [BackingType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        BackingType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] standard_portgroup
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
            #     vSphere standard portgroup network backing.
            STANDARD_PORTGROUP = BackingType.new('STANDARD_PORTGROUP')

            # @!attribute [rw] host_device
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
            #     Legacy host device network backing. Imported VMs may have virtual Ethernet adapters with this type of backing, but this type of backing cannot be used to create or to update a virtual Ethernet adapter.
            HOST_DEVICE = BackingType.new('HOST_DEVICE')

            # @!attribute [rw] distributed_portgroup
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
            #     Distributed virtual switch backing.
            DISTRIBUTED_PORTGROUP = BackingType.new('DISTRIBUTED_PORTGROUP')

            # @!attribute [rw] opaque_network
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType]
            #     Opaque network backing.
            OPAQUE_NETWORK = BackingType.new('OPAQUE_NETWORK')

        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy``   class  provides  methods  for configuring the virtual floppy drives of a virtual machine.
    class Floppy < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.floppy')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'floppy' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Floppy'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Floppy'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'floppy' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Floppy'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'floppy' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Floppy'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@connect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('connect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'floppy' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Floppy'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@disconnect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('disconnect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'floppy' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Floppy'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
            'create' => @@create_info,
            'update' => @@update_info,
            'delete' => @@delete_info,
            'connect' => @@connect_info,
            'disconnect' => @@disconnect_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.Floppy'


        # Returns commonly used information about the virtual floppy drives belonging to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary>]
        #     List of commonly used information about virtual floppy drives.
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
            invoke_with_info(@@list_info, {
                'vm' => vm,
            })
        end


        # Returns information about a virtual floppy drive.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param floppy [String]
        #     Virtual floppy drive identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info]
        #     Information about the specified virtual floppy drive.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual floppy drive is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm, floppy)
            invoke_with_info(@@get_info, {
                'vm' => vm,
                'floppy' => floppy,
            })
        end


        # Adds a virtual floppy drive to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec]
        #     Specification for the new virtual floppy drive.
        # @return [String]
        #     Virtual floppy drive identifier.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reported that the floppy device was created but was unable to confirm the creation because the identifier of the new device could not be determined.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if the virtual machine already has the maximum number of supported floppy drives.
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
        def create(vm, spec)
            invoke_with_info(@@create_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end


        # Updates the configuration of a virtual floppy drive.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param floppy [String]
        #     Virtual floppy drive identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec]
        #     Specification for updating the virtual floppy drive.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual floppy drive is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if one or more of the  fields  specified in the  ``spec``   parameter  cannot be modified due to the current power state of the virtual machine or the connection state of the virtual floppy drive.
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
        def update(vm, floppy, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'floppy' => floppy,
                'spec' => spec,
            })
        end


        # Removes a virtual floppy drive from the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param floppy [String]
        #     Virtual floppy drive identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual floppy drive is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered off.
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
        def delete(vm, floppy)
            invoke_with_info(@@delete_info, {
                'vm' => vm,
                'floppy' => floppy,
            })
        end


        # Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Floppy.update`    method  may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param floppy [String]
        #     Virtual floppy drive identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual floppy drive is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual floppy drive is already connected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def connect(vm, floppy)
            invoke_with_info(@@connect_info, {
                'vm' => vm,
                'floppy' => floppy,
            })
        end


        # Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Floppy.update`    method  may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param floppy [String]
        #     Virtual floppy drive identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual floppy drive is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual floppy drive is already disconnected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def disconnect(vm, floppy)
            invoke_with_info(@@disconnect_info, {
                'vm' => vm,
                'floppy' => floppy,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo``   class  contains information about the physical resource backing a virtual floppy drive.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
        #     Backing type for the virtual floppy drive.
        # @!attribute [rw] image_file
        #     @return [String]
        #     Path of the image file backing the virtual floppy drive.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType.IMAGE_FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the host device backing the virtual floppy drive.  
        #     This  field  will be  nil  if  ``autoDetect``  is true and the virtual floppy drive is not connected or no suitable device is available on the host.
        # @!attribute [rw] auto_detect
        #     @return [Boolean]
        #     Flag indicating whether the virtual floppy drive is configured to automatically detect a suitable host device.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType.HOST_DEVICE`  .
        class BackingInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.floppy.backing_info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType'),
                            'image_file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'auto_detect' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        BackingInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :image_file,
                          :host_device,
                          :auto_detect

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec``   class  provides a specification of the physical resource backing a virtual floppy drive.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
        #     Backing type for the virtual floppy drive.
        # @!attribute [rw] image_file
        #     @return [String]
        #     Path of the image file that should be used as the virtual floppy drive backing.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType.IMAGE_FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the device that should be used as the virtual floppy drive backing.
        #     If  nil , the virtual floppy drive will be configured to automatically detect a suitable host device.
        class BackingSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.floppy.backing_spec',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType'),
                            'image_file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        },
                        BackingSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :image_file,
                          :host_device

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info``   class  contains information about a virtual floppy drive.
        # @!attribute [rw] label
        #     @return [String]
        #     Device label.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo]
        #     Physical resource backing for the virtual floppy drive.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.floppy.info',
                        {
                            'label' => VAPI::Bindings::StringType.instance,
                            'backing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo'),
                            'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ConnectionState'),
                            'start_connected' => VAPI::Bindings::BooleanType.instance,
                            'allow_guest_control' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :label,
                          :backing,
                          :state,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual floppy drive.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec, nil]
        #     Physical resource backing for the virtual floppy drive.
        #     If  nil , defaults to automatic detection of a suitable host device.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.floppy.create_spec',
                        {
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec``   class  describes the updates to be made to the configuration of a virtual floppy drive.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec, nil]
        #     Physical resource backing for the virtual floppy drive.  
        #     
        #      This  field  may only be modified if the virtual machine is not powered on or the virtual floppy drive is not connected.
        #     If  nil , the value is unchanged.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.floppy.update_spec',
                        {
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary``   class  contains commonly used information about a virtual floppy drive.
        # @!attribute [rw] floppy
        #     @return [String]
        #     Identifier of the virtual floppy drive.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.floppy.summary',
                        {
                            'floppy' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.Floppy'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :floppy

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType``   enumerated type  defines the valid backing types for a virtual floppy drive.
        # @!attribute [rw] image_file
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
        #     Virtual floppy drive is backed by an image file.
        # @!attribute [rw] host_device
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
        #     Virtual floppy drive is backed by a device on the host where the virtual machine is running.
        # @!attribute [rw] client_device
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
        #     Virtual floppy drive is backed by a device on the client that is connected to the virtual machine console.
        class BackingType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.floppy.backing_type',
                        BackingType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [BackingType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        BackingType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] image_file
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
            #     Virtual floppy drive is backed by an image file.
            IMAGE_FILE = BackingType.new('IMAGE_FILE')

            # @!attribute [rw] host_device
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
            #     Virtual floppy drive is backed by a device on the host where the virtual machine is running.
            HOST_DEVICE = BackingType.new('HOST_DEVICE')

            # @!attribute [rw] client_device
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType]
            #     Virtual floppy drive is backed by a device on the client that is connected to the virtual machine console.
            CLIENT_DEVICE = BackingType.new('CLIENT_DEVICE')

        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Memory``   class  provides  methods  for configuring the memory settings of a virtual machine.
    class Memory < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.memory')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Memory::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'update' => @@update_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns the memory-related settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Memory::Info]
        #     Memory-related settings of the virtual machine.
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
        def get(vm)
            invoke_with_info(@@get_info, {
                'vm' => vm,
            })
        end


        # Updates the memory-related settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec]
        #     Specification for updating the memory-related settings of the virtual machine.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if one of the provided settings is not permitted; for example, specifying a negative value for  ``sizeMiB`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if  ``hotAddEnabled``  is specified and the virtual machine is not powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if  ``sizeMiB``  is specified,  ``hotAddEnabled``  is false, and the virtual machine is not powered off.
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
        def update(vm, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Memory::Info``   class  contains memory-related information about a virtual machine.
        # @!attribute [rw] size_MiB
        #     @return [Fixnum]
        #     Memory size in mebibytes.
        # @!attribute [rw] hot_add_enabled
        #     @return [Boolean]
        #     Flag indicating whether adding memory while the virtual machine is running is enabled.  
        #     
        #      Some guest operating systems may consume more resources or perform less efficiently when they run on hardware that supports adding memory while the machine is running.
        # @!attribute [rw] hot_add_increment_size_MiB
        #     @return [Fixnum, nil]
        #     The granularity, in mebibytes, at which memory can be added to a running virtual machine.  
        #     
        #      When adding memory to a running virtual machine, the amount of memory added must be at least   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_increment_size_MiB`   and the total memory size of the virtual machine must be a multiple of {\@link>hotAddIncrementSize}.
        #     Only set when   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_enabled`   is true and the virtual machine is running.
        # @!attribute [rw] hot_add_limit_MiB
        #     @return [Fixnum, nil]
        #     The maximum amount of memory, in mebibytes, that can be added to a running virtual machine.
        #     Only set when   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_enabled`   is true and the virtual machine is running.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.memory.info',
                        {
                            'size_MiB' => VAPI::Bindings::IntegerType.instance,
                            'hot_add_enabled' => VAPI::Bindings::BooleanType.instance,
                            'hot_add_increment_size_MiB' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'hot_add_limit_MiB' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :size_MiB,
                          :hot_add_enabled,
                          :hot_add_increment_size_MiB,
                          :hot_add_limit_MiB

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec``   class  describes the updates to be made to the memory-related settings of a virtual machine.
        # @!attribute [rw] size_MiB
        #     @return [Fixnum, nil]
        #     New memory size in mebibytes.  
        #     
        #      The supported range of memory sizes is constrained by the configured guest operating system and virtual hardware version of the virtual machine.  
        #     
        #      If the virtual machine is running, this value may only be changed if   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_enabled`   is true, and the new memory size must satisfy the constraints specified by   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_increment_size_MiB`   and   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_limit_MiB`  .
        #     If  nil , the value is unchanged.
        # @!attribute [rw] hot_add_enabled
        #     @return [Boolean, nil]
        #     Flag indicating whether adding memory while the virtual machine is running should be enabled.  
        #     
        #      Some guest operating systems may consume more resources or perform less efficiently when they run on hardware that supports adding memory while the machine is running.  
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
                        'com.vmware.vcenter.vm.hardware.memory.update_spec',
                        {
                            'size_MiB' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'hot_add_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :size_MiB,
                          :hot_add_enabled

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel``   class  provides  methods  for configuring the virtual parallel ports of a virtual machine.
    class Parallel < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.parallel')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::Summary')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.ParallelPort'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.ParallelPort'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.ParallelPort'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.ParallelPort'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@connect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('connect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.ParallelPort'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@disconnect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('disconnect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.ParallelPort'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
            'create' => @@create_info,
            'update' => @@update_info,
            'delete' => @@delete_info,
            'connect' => @@connect_info,
            'disconnect' => @@disconnect_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.ParallelPort'


        # Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Parallel::Summary>]
        #     List of commonly used information about virtual parallel ports.
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
            invoke_with_info(@@list_info, {
                'vm' => vm,
            })
        end


        # Returns information about a virtual parallel port.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual parallel port identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::Info]
        #     Information about the specified virtual parallel port.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual parallel port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm, port)
            invoke_with_info(@@get_info, {
                'vm' => vm,
                'port' => port,
            })
        end


        # Adds a virtual parallel port to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Parallel::CreateSpec]
        #     Specification for the new virtual parallel port.
        # @return [String]
        #     Virtual parallel port identifier.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reported that the parallel port device was created but was unable to confirm the creation because the identifier of the new device could not be determined.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if the virtual machine already has the maximum number of supported parallel ports.
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
        def create(vm, spec)
            invoke_with_info(@@create_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end


        # Updates the configuration of a virtual parallel port.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual parallel port identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Parallel::UpdateSpec]
        #     Specification for updating the virtual parallel port.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual parallel port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if one or more of the  fields  specified in the  ``spec``   parameter  cannot be modified due to the current power state of the virtual machine or the connection state of the virtual parallel port.
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
        def update(vm, port, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'port' => port,
                'spec' => spec,
            })
        end


        # Removes a virtual parallel port from the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual parallel port identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual parallel port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered off.
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
        def delete(vm, port)
            invoke_with_info(@@delete_info, {
                'vm' => vm,
                'port' => port,
            })
        end


        # Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Parallel.update`    method  may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual parallel port identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual parallel port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual parallel port is already connected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def connect(vm, port)
            invoke_with_info(@@connect_info, {
                'vm' => vm,
                'port' => port,
            })
        end


        # Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Parallel.update`    method  may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual parallel port identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual parallel port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual parallel port is already disconnected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def disconnect(vm, port)
            invoke_with_info(@@disconnect_info, {
                'vm' => vm,
                'port' => port,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingInfo``   class  contains information about the physical resource backing a virtual parallel port.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType]
        #     Backing type for the virtual parallel port.
        # @!attribute [rw] file
        #     @return [String]
        #     Path of the file backing the virtual parallel port.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType.FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the device backing the virtual parallel port.  
        #     This  field  will be  nil  if  ``autoDetect``  is true and the virtual parallel port is not connected or no suitable device is available on the host.
        # @!attribute [rw] auto_detect
        #     @return [Boolean]
        #     Flag indicating whether the virtual parallel port is configured to automatically detect a suitable host device.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType.HOST_DEVICE`  .
        class BackingInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.parallel.backing_info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType'),
                            'file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'auto_detect' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        BackingInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :file,
                          :host_device,
                          :auto_detect

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingSpec``   class  provides a specification of the physical resource backing a virtual parallel port.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType]
        #     Backing type for the virtual parallel port.
        # @!attribute [rw] file
        #     @return [String]
        #     Path of the file that should be used as the virtual parallel port backing.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType.FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the device that should be used as the virtual parallel port backing.
        #     If  nil , the virtual parallel port will be configured to automatically detect a suitable host device.
        class BackingSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.parallel.backing_spec',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType'),
                            'file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        },
                        BackingSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :file,
                          :host_device

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel::Info``   class  contains information about a virtual parallel port.
        # @!attribute [rw] label
        #     @return [String]
        #     Device label.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingInfo]
        #     Physical resource backing for the virtual parallel port.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.parallel.info',
                        {
                            'label' => VAPI::Bindings::StringType.instance,
                            'backing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingInfo'),
                            'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ConnectionState'),
                            'start_connected' => VAPI::Bindings::BooleanType.instance,
                            'allow_guest_control' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :label,
                          :backing,
                          :state,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual parallel port.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingSpec, nil]
        #     Physical resource backing for the virtual parallel port.
        #     If  nil , defaults to automatic detection of a suitable host device.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.parallel.create_spec',
                        {
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel::UpdateSpec``   class  describes the updates to be made to the configuration of a virtual parallel port.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingSpec, nil]
        #     Physical resource backing for the virtual parallel port.  
        #     
        #      This  field  may only be modified if the virtual machine is not powered on or the virtual parallel port is not connected.
        #     If  nil , the value is unchanged.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.parallel.update_spec',
                        {
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel::Summary``   class  contains commonly used information about a virtual parallel port.
        # @!attribute [rw] port
        #     @return [String]
        #     Identifier of the virtual parallel port.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.parallel.summary',
                        {
                            'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.ParallelPort'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :port

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType``   enumerated type  defines the valid backing types for a virtual parallel port.
        # @!attribute [rw] file
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType]
        #     Virtual parallel port is backed by a file.
        # @!attribute [rw] host_device
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType]
        #     Virtual parallel port is backed by a device on the host where the virtual machine is running.
        class BackingType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.parallel.backing_type',
                        BackingType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [BackingType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        BackingType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] file
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType]
            #     Virtual parallel port is backed by a file.
            FILE = BackingType.new('FILE')

            # @!attribute [rw] host_device
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType]
            #     Virtual parallel port is backed by a device on the host where the virtual machine is running.
            HOST_DEVICE = BackingType.new('HOST_DEVICE')

        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial``   class  provides  methods  for configuring the virtual serial ports of a virtual machine.
    class Serial < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.serial')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.SerialPort'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.SerialPort'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.SerialPort'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.SerialPort'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@connect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('connect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.SerialPort'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@disconnect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('disconnect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.SerialPort'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
            'create' => @@create_info,
            'update' => @@update_info,
            'delete' => @@delete_info,
            'connect' => @@connect_info,
            'disconnect' => @@disconnect_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vcenter.vm.hardware.SerialPort'


        # Returns commonly used information about the virtual serial ports belonging to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary>]
        #     List of commonly used information about virtual serial ports.
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
            invoke_with_info(@@list_info, {
                'vm' => vm,
            })
        end


        # Returns information about a virtual serial port.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual serial port identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::Info]
        #     Information about the specified virtual serial port.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual serial port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm, port)
            invoke_with_info(@@get_info, {
                'vm' => vm,
                'port' => port,
            })
        end


        # Adds a virtual serial port to the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec]
        #     Specification for the new virtual serial port.
        # @return [String]
        #     Virtual serial port identifier.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reported that the serial port device was created but was unable to confirm the creation because the identifier of the new device could not be determined.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if the virtual machine already has the maximum number of supported serial ports.
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
        def create(vm, spec)
            invoke_with_info(@@create_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end


        # Updates the configuration of a virtual serial port.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual serial port identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec]
        #     Specification for updating the virtual serial port.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual serial port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if one or more of the  fields  specified in the  ``spec``   parameter  cannot be modified due to the current power state of the virtual machine or the connection state of the virtual serial port.
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
        def update(vm, port, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'port' => port,
                'spec' => spec,
            })
        end


        # Removes a virtual serial port from the virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual serial port identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual serial port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered off.
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
        def delete(vm, port)
            invoke_with_info(@@delete_info, {
                'vm' => vm,
                'port' => port,
            })
        end


        # Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Serial.update`    method  may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual serial port identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual serial port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual serial port is already connected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def connect(vm, port)
            invoke_with_info(@@connect_info, {
                'vm' => vm,
                'port' => port,
            })
        end


        # Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.  
        # 
        #  For a powered-off virtual machine, the   :func:`Com::Vmware::Vcenter::Vm::Hardware::Serial.update`    method  may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param port [String]
        #     Virtual serial port identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine or virtual serial port is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual serial port is already disconnected.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered on.
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
        def disconnect(vm, port)
            invoke_with_info(@@disconnect_info, {
                'vm' => vm,
                'port' => port,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo``   class  contains information about the physical resource backing a virtual serial port.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Backing type for the virtual serial port.
        # @!attribute [rw] file
        #     @return [String]
        #     Path of the file backing the virtual serial port.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the device backing the virtual serial port.  
        #     This  field  will be  nil  if  ``autoDetect``  is true and the virtual serial port is not connected or no suitable device is available on the host.
        # @!attribute [rw] auto_detect
        #     @return [Boolean]
        #     Flag indicating whether the virtual serial port is configured to automatically detect a suitable host device.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.HOST_DEVICE`  .
        # @!attribute [rw] pipe
        #     @return [String]
        #     Name of the pipe backing the virtual serial port.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.PIPE_SERVER`   or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.PIPE_CLIENT`  .
        # @!attribute [rw] no_rx_loss
        #     @return [Boolean]
        #     Flag that enables optimized data transfer over the pipe. When the value is true, the host buffers data to prevent data overrun. This allows the virtual machine to read all of the data transferred over the pipe with no data loss.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.PIPE_SERVER`   or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.PIPE_CLIENT`  .
        # @!attribute [rw] network_location
        #     @return [URI]
        #     URI specifying the location of the network service backing the virtual serial port.  
        #     
        #       * If   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo.type`   is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER`  , this  field  is the location used by clients to connect to this server. The hostname part of the URI should either be empty or should specify the address of the host on which the virtual machine is running.
        #        * If   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo.type`   is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT`  , this  field  is the location used by the virtual machine to connect to the remote server.
        #       
        #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER`   or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT`  .
        # @!attribute [rw] proxy
        #     @return [URI, nil]
        #     Proxy service that provides network access to the network backing. If set, the virtual machine initiates a connection with the proxy service and forwards the traffic to the proxy.
        #     If  nil , no proxy service is configured.
        class BackingInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.serial.backing_info',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType'),
                            'file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'auto_detect' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'pipe' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'no_rx_loss' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'network_location' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                            'proxy' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                        },
                        BackingInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :file,
                          :host_device,
                          :auto_detect,
                          :pipe,
                          :no_rx_loss,
                          :network_location,
                          :proxy

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec``   class  provides a specification of the physical resource backing a virtual serial port.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Backing type for the virtual serial port.
        # @!attribute [rw] file
        #     @return [String]
        #     Path of the file backing the virtual serial port.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.FILE`  .
        # @!attribute [rw] host_device
        #     @return [String, nil]
        #     Name of the device backing the virtual serial port.  
        #     If  nil , the virtual serial port will be configured to automatically detect a suitable host device.
        # @!attribute [rw] pipe
        #     @return [String]
        #     Name of the pipe backing the virtual serial port.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.PIPE_SERVER`   or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.PIPE_CLIENT`  .
        # @!attribute [rw] no_rx_loss
        #     @return [Boolean, nil]
        #     Flag that enables optimized data transfer over the pipe. When the value is true, the host buffers data to prevent data overrun. This allows the virtual machine to read all of the data transferred over the pipe with no data loss.
        #     If  nil , defaults to  false .
        # @!attribute [rw] network_location
        #     @return [URI]
        #     URI specifying the location of the network service backing the virtual serial port.  
        #     
        #       * If   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec.type`   is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER`  , this  field  is the location used by clients to connect to this server. The hostname part of the URI should either be empty or should specify the address of the host on which the virtual machine is running.
        #        * If   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec.type`   is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT`  , this  field  is the location used by the virtual machine to connect to the remote server.
        #       
        #     This  field  is optional and it is only relevant when the value of  ``type``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER`   or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT`  .
        # @!attribute [rw] proxy
        #     @return [URI, nil]
        #     Proxy service that provides network access to the network backing. If set, the virtual machine initiates a connection with the proxy service and forwards the traffic to the proxy.
        #     If  nil , no proxy service should be used.
        class BackingSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.serial.backing_spec',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType'),
                            'file' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'host_device' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'pipe' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'no_rx_loss' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'network_location' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                            'proxy' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                        },
                        BackingSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :file,
                          :host_device,
                          :pipe,
                          :no_rx_loss,
                          :network_location,
                          :proxy

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::Info``   class  contains information about a virtual serial port.
        # @!attribute [rw] label
        #     @return [String]
        #     Device label.
        # @!attribute [rw] yield_on_poll
        #     @return [Boolean]
        #     CPU yield behavior. If set to true, the virtual machine will periodically relinquish the processor if its sole task is polling the virtual serial port. The amount of time it takes to regain the processor will depend on the degree of other virtual machine activity on the host.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo]
        #     Physical resource backing for the virtual serial port.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.serial.info',
                        {
                            'label' => VAPI::Bindings::StringType.instance,
                            'yield_on_poll' => VAPI::Bindings::BooleanType.instance,
                            'backing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo'),
                            'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ConnectionState'),
                            'start_connected' => VAPI::Bindings::BooleanType.instance,
                            'allow_guest_control' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :label,
                          :yield_on_poll,
                          :backing,
                          :state,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec``   class  provides a specification for the configuration of a newly-created virtual serial port.
        # @!attribute [rw] yield_on_poll
        #     @return [Boolean, nil]
        #     CPU yield behavior. If set to true, the virtual machine will periodically relinquish the processor if its sole task is polling the virtual serial port. The amount of time it takes to regain the processor will depend on the degree of other virtual machine activity on the host.
        #     If  nil , defaults to false.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec, nil]
        #     Physical resource backing for the virtual serial port.
        #     If  nil , defaults to automatic detection of a suitable host device.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.serial.create_spec',
                        {
                            'yield_on_poll' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :yield_on_poll,
                          :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec``   class  describes the updates to be made to the configuration of a virtual serial port.
        # @!attribute [rw] yield_on_poll
        #     @return [Boolean, nil]
        #     CPU yield behavior. If set to true, the virtual machine will periodically relinquish the processor if its sole task is polling the virtual serial port. The amount of time it takes to regain the processor will depend on the degree of other virtual machine activity on the host.  
        #     
        #      This  field  may be modified at any time, and changes applied to a connected virtual serial port take effect immediately.
        #     If  nil , the value is unchanged.
        # @!attribute [rw] backing
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec, nil]
        #     Physical resource backing for the virtual serial port.  
        #     
        #      This  field  may only be modified if the virtual machine is not powered on or the virtual serial port is not connected.
        #     If  nil , the value is unchanged.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.serial.update_spec',
                        {
                            'yield_on_poll' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'backing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec')),
                            'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :yield_on_poll,
                          :backing,
                          :start_connected,
                          :allow_guest_control

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary``   class  contains commonly used information about a virtual serial port.
        # @!attribute [rw] port
        #     @return [String]
        #     Identifier of the virtual serial port.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.serial.summary',
                        {
                            'port' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vcenter.vm.hardware.SerialPort'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :port

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType``   enumerated type  defines the valid backing types for a virtual serial port.
        # @!attribute [rw] file
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Virtual serial port is backed by a file.
        # @!attribute [rw] host_device
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Virtual serial port is backed by a device on the host where the virtual machine is running.
        # @!attribute [rw] pipe_server
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Virtual serial port is backed by a named pipe server. The virtual machine will accept a connection from a host application or another virtual machine on the same host. This is useful for capturing debugging information sent through the virtual serial port.
        # @!attribute [rw] pipe_client
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Virtual serial port is backed by a named pipe client. The virtual machine will connect to the named pipe provided by a host application or another virtual machine on the same host. This is useful for capturing debugging information sent through the virtual serial port.
        # @!attribute [rw] network_server
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Virtual serial port is backed by a network server. This backing may be used to create a network-accessible serial port on the virtual machine, accepting a connection from a remote system.
        # @!attribute [rw] network_client
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
        #     Virtual serial port is backed by a network client. This backing may be used to create a network-accessible serial port on the virtual machine, initiating a connection to a remote system.
        class BackingType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.serial.backing_type',
                        BackingType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [BackingType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        BackingType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] file
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
            #     Virtual serial port is backed by a file.
            FILE = BackingType.new('FILE')

            # @!attribute [rw] host_device
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
            #     Virtual serial port is backed by a device on the host where the virtual machine is running.
            HOST_DEVICE = BackingType.new('HOST_DEVICE')

            # @!attribute [rw] pipe_server
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
            #     Virtual serial port is backed by a named pipe server. The virtual machine will accept a connection from a host application or another virtual machine on the same host. This is useful for capturing debugging information sent through the virtual serial port.
            PIPE_SERVER = BackingType.new('PIPE_SERVER')

            # @!attribute [rw] pipe_client
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
            #     Virtual serial port is backed by a named pipe client. The virtual machine will connect to the named pipe provided by a host application or another virtual machine on the same host. This is useful for capturing debugging information sent through the virtual serial port.
            PIPE_CLIENT = BackingType.new('PIPE_CLIENT')

            # @!attribute [rw] network_server
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
            #     Virtual serial port is backed by a network server. This backing may be used to create a network-accessible serial port on the virtual machine, accepting a connection from a remote system.
            NETWORK_SERVER = BackingType.new('NETWORK_SERVER')

            # @!attribute [rw] network_client
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType]
            #     Virtual serial port is backed by a network client. This backing may be used to create a network-accessible serial port on the virtual machine, initiating a connection to a remote system.
            NETWORK_CLIENT = BackingType.new('NETWORK_CLIENT')

        end


    end



    # The  ``Com::Vmware::Vcenter::Vm::Hardware::IdeAddressInfo``   class  contains information about the address of a virtual device that is attached to a virtual IDE adapter of a virtual machine.
    # @!attribute [rw] primary
    #     @return [Boolean]
    #     Flag specifying whether the device is attached to the primary or secondary IDE adapter of the virtual machine.
    # @!attribute [rw] master
    #     @return [Boolean]
    #     Flag specifying whether the device is the master or slave device on the IDE adapter.
    class IdeAddressInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.ide_address_info',
                    {
                        'primary' => VAPI::Bindings::BooleanType.instance,
                        'master' => VAPI::Bindings::BooleanType.instance,
                    },
                    IdeAddressInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :primary,
                      :master

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo``   class  contains information about the address of a virtual device that is attached to a virtual SCSI adapter of a virtual machine.
    # @!attribute [rw] bus
    #     @return [Fixnum]
    #     Bus number of the adapter to which the device is attached.
    # @!attribute [rw] unit
    #     @return [Fixnum]
    #     Unit number of the device.
    class ScsiAddressInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.scsi_address_info',
                    {
                        'bus' => VAPI::Bindings::IntegerType.instance,
                        'unit' => VAPI::Bindings::IntegerType.instance,
                    },
                    ScsiAddressInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :bus,
                      :unit

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::SataAddressInfo``   class  contains information about the address of a virtual device that is attached to a virtual SATA adapter of a virtual machine.
    # @!attribute [rw] bus
    #     @return [Fixnum]
    #     Bus number of the adapter to which the device is attached.
    # @!attribute [rw] unit
    #     @return [Fixnum]
    #     Unit number of the device.
    class SataAddressInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.sata_address_info',
                    {
                        'bus' => VAPI::Bindings::IntegerType.instance,
                        'unit' => VAPI::Bindings::IntegerType.instance,
                    },
                    SataAddressInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :bus,
                      :unit

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec``   class  contains information for specifying the address of a virtual device that is attached to a virtual IDE adapter of a virtual machine.
    # @!attribute [rw] primary
    #     @return [Boolean, nil]
    #     Flag specifying whether the device should be attached to the primary or secondary IDE adapter of the virtual machine.
    #     If  nil , the server will choose a adapter with an available connection. If no IDE connections are available, the request will be rejected.
    # @!attribute [rw] master
    #     @return [Boolean, nil]
    #     Flag specifying whether the device should be the master or slave device on the IDE adapter.
    #     If  nil , the server will choose an available connection type. If no IDE connections are available, the request will be rejected.
    class IdeAddressSpec < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.ide_address_spec',
                    {
                        'primary' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'master' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                    },
                    IdeAddressSpec,
                    false,
                    nil)
            end
        end

        attr_accessor :primary,
                      :master

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec``   class  contains information for specifying the address of a virtual device that is attached to a virtual SCSI adapter of a virtual machine.
    # @!attribute [rw] bus
    #     @return [Fixnum]
    #     Bus number of the adapter to which the device should be attached.
    # @!attribute [rw] unit
    #     @return [Fixnum, nil]
    #     Unit number of the device.
    #     If  nil , the server will choose an available unit number on the specified adapter. If there are no available connections on the adapter, the request will be rejected.
    class ScsiAddressSpec < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.scsi_address_spec',
                    {
                        'bus' => VAPI::Bindings::IntegerType.instance,
                        'unit' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                    },
                    ScsiAddressSpec,
                    false,
                    nil)
            end
        end

        attr_accessor :bus,
                      :unit

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec``   class  contains information for specifying the address of a virtual device that is attached to a virtual SATA adapter of a virtual machine.
    # @!attribute [rw] bus
    #     @return [Fixnum]
    #     Bus number of the adapter to which the device should be attached.
    # @!attribute [rw] unit
    #     @return [Fixnum, nil]
    #     Unit number of the device.
    #     If  nil , the server will choose an available unit number on the specified adapter. If there are no available connections on the adapter, the request will be rejected.
    class SataAddressSpec < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.sata_address_spec',
                    {
                        'bus' => VAPI::Bindings::IntegerType.instance,
                        'unit' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                    },
                    SataAddressSpec,
                    false,
                    nil)
            end
        end

        attr_accessor :bus,
                      :unit

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::ConnectionInfo``   class  provides information about the state and configuration of a removable virtual device.
    # @!attribute [rw] state
    #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
    #     Connection status of the virtual device.
    # @!attribute [rw] start_connected
    #     @return [Boolean]
    #     Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on.
    # @!attribute [rw] allow_guest_control
    #     @return [Boolean]
    #     Flag indicating whether the guest can connect and disconnect the device.
    class ConnectionInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.connection_info',
                    {
                        'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::ConnectionState'),
                        'start_connected' => VAPI::Bindings::BooleanType.instance,
                        'allow_guest_control' => VAPI::Bindings::BooleanType.instance,
                    },
                    ConnectionInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :state,
                      :start_connected,
                      :allow_guest_control

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::ConnectionCreateSpec``   class  provides a specification for the configuration of a newly-created removable device.
    # @!attribute [rw] start_connected
    #     @return [Boolean, nil]
    #     Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on.
    #     Defaults to false if  nil .
    # @!attribute [rw] allow_guest_control
    #     @return [Boolean, nil]
    #     Flag indicating whether the guest can connect and disconnect the device.
    #     Defaults to false if  nil .
    class ConnectionCreateSpec < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.connection_create_spec',
                    {
                        'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                    },
                    ConnectionCreateSpec,
                    false,
                    nil)
            end
        end

        attr_accessor :start_connected,
                      :allow_guest_control

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::ConnectionUpdateSpec``   class  describes the updates to be made to the configuration of a removable virtual device.
    # @!attribute [rw] start_connected
    #     @return [Boolean, nil]
    #     Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on.
    #     If  nil , the value is unchanged.
    # @!attribute [rw] allow_guest_control
    #     @return [Boolean, nil]
    #     Flag indicating whether the guest can connect and disconnect the device.
    #     If  nil , the value is unchanged.
    class ConnectionUpdateSpec < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vcenter.vm.hardware.connection_update_spec',
                    {
                        'start_connected' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'allow_guest_control' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                    },
                    ConnectionUpdateSpec,
                    false,
                    nil)
            end
        end

        attr_accessor :start_connected,
                      :allow_guest_control

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vcenter::Vm::Hardware::ConnectionState``   enumerated type  defines the valid states for a removable device that is configured to be connected.
    # @!attribute [rw] connected
    #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
    #     The device is connected and working correctly.
    # @!attribute [rw] recoverable_error
    #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
    #     Device connection failed due to a recoverable error; for example, the virtual device backing is currently in use by another virtual machine.
    # @!attribute [rw] unrecoverable_error
    #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
    #     Device connection failed due to an unrecoverable error; for example, the virtual device backing does not exist.
    # @!attribute [rw] not_connected
    #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
    #     The device is not connected.
    # @!attribute [rw] unknown
    #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
    #     The device status is unknown.
    class ConnectionState < VAPI::Bindings::VapiEnum

        class << self
            # Holds (gets or creates) the binding type metadata for this enumeration type.
            # @scope class
            # @return [VAPI::Bindings::EnumType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::EnumType.new(
                    'com.vmware.vcenter.vm.hardware.connection_state',
                    ConnectionState)
            end

            # Converts from a string value (perhaps off the wire) to an instance
            # of this enum type.
            # @param value [String] the actual value of the enum instance
            # @return [ConnectionState] the instance found for the value, otherwise
            #         an unknown instance will be built for the value
            def from_string(value)
                begin
                    const_get(value)
                rescue NameError
                    ConnectionState.new('UNKNOWN', value)
                end
            end
        end

        private

        # Constructs a new instance.
        # @param value [String] the actual value of the enum instance
        # @param unknown [String] the unknown value when value is 'UKNOWN'
        def initialize(value, unknown=nil)
            super(self.class.binding_type, value, unknown)
        end

        public

        # @!attribute [rw] connected
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
        #     The device is connected and working correctly.
        CONNECTED = ConnectionState.new('CONNECTED')

        # @!attribute [rw] recoverable_error
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
        #     Device connection failed due to a recoverable error; for example, the virtual device backing is currently in use by another virtual machine.
        RECOVERABLE_ERROR = ConnectionState.new('RECOVERABLE_ERROR')

        # @!attribute [rw] unrecoverable_error
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
        #     Device connection failed due to an unrecoverable error; for example, the virtual device backing does not exist.
        UNRECOVERABLE_ERROR = ConnectionState.new('UNRECOVERABLE_ERROR')

        # @!attribute [rw] not_connected
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
        #     The device is not connected.
        NOT_CONNECTED = ConnectionState.new('NOT_CONNECTED')

        # @!attribute [rw] unknown
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::ConnectionState]
        #     The device status is unknown.
        UNKNOWN = ConnectionState.new('UNKNOWN')

    end


end
