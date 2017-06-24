#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.vm.hardware.boot.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vcenter
            module Vm
                module Hardware
                    module Boot
                    end
                end
            end
        end
    end
end

# The  ``com.vmware.vcenter.vm.hardware.boot``   package  provides  classs  for managing the virtual devices used to boot a virtual machine.
module Com::Vmware::Vcenter::Vm::Hardware::Boot

    # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device``   class  provides  methods  for configuring the device order used when booting a virtual machine.  
    # 
    #  The boot order may be specified using a mixture of device classes and device instances, chosen from among the following:  
    # 
    #   *  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.CDROM`  : Boot from a virtual CD-ROM drive; the device instance(s) will be chosen by the BIOS subsystem.
    #    *  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.FLOPPY`  : Boot from a virtual floppy drive; the device instance(s) will be chosen by the BIOS subsystem.
    #    *  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.DISK`  : Boot from a virtual disk device; the device instance is specified explicitly in   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry.disks`   list, and multiple instances may be specified in the list.
    #    *  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.ETHERNET`  : Boot from a virtual Ethernet adapter; the device instance is specified explicitly as   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry.nic`  , and multiple adapters may be specified in the boot order list.
    #   
    class Device < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware.boot.device')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry')),
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
        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'devices' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry')),
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
            'set' => @@set_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns an ordered list of boot devices for the virtual machine. If the  list  is empty, the virtual machine uses a default boot sequence.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry>]
        #     Ordered list of configured boot devices.
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


        # Sets the virtual devices that will be used to boot the virtual machine. The virtual machine will check the devices in order, attempting to boot from each, until the virtual machine boots successfully. If the  list  is empty, the virtual machine will use a default boot sequence. There should be no more than one instance of   :class:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry`   for a given device type except   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.ETHERNET`   in the  list .
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param devices [Array<Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry>]
        #     Ordered list of boot devices.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found, or if any of the specified virtual devices is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if a any of the  ``CDROM``, ``DISK``, ``ETHERNET``, ``FLOPPY``  values appears in more than one  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry``  with the exception of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.ETHERNET`  , which may appear multiple times if the virtual machine has been configured with multiple Ethernet adapters.
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
        def set(vm, devices)
            invoke_with_info(@@set_info, {
                'vm' => vm,
                'devices' => devices,
            })
        end



        # The  class   ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec``  specifies a list of bootable virtual device classes. When a VM is being created and a  list  of  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec``  is specified, the boot order of the specific device instances are not specified in this  class . The boot order of the specific device instance will be the order in which the Ethernet and Disk devices appear in the  ``nics``  and  ``disks``  respectively.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
        #     Virtual Boot device type.
        class EntryCreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.boot.device.entry_create_spec',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type'),
                        },
                        EntryCreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry``   class  specifies a bootable virtual device class or specific bootable virtual device(s).
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
        #     Virtual device type.
        # @!attribute [rw] nic
        #     @return [String]
        #     Virtual Ethernet device. Ethernet device to use as boot device for this entry.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.ETHERNET`  .
        # @!attribute [rw] disks
        #     @return [Array<String>]
        #     Virtual disk device. List of virtual disks in boot order.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.DISK`  .
        class Entry < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.boot.device.entry',
                        {
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type'),
                            'nic' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'disks' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new)),
                        },
                        Entry,
                        false,
                        nil)
                end
            end

            attr_accessor :type,
                          :nic,
                          :disks

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type``   enumerated type  defines the valid device types that may be used as bootable devices.
        # @!attribute [rw] cdrom
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
        #     Virtual CD-ROM device.
        # @!attribute [rw] disk
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
        #     Virtual disk device.
        # @!attribute [rw] ethernet
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
        #     Virtual Ethernet adapter.
        # @!attribute [rw] floppy
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
        #     Virtual floppy drive.
        class Type < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.boot.device.type',
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

            # @!attribute [rw] cdrom
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
            #     Virtual CD-ROM device.
            CDROM = Type.new('CDROM')

            # @!attribute [rw] disk
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
            #     Virtual disk device.
            DISK = Type.new('DISK')

            # @!attribute [rw] ethernet
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
            #     Virtual Ethernet adapter.
            ETHERNET = Type.new('ETHERNET')

            # @!attribute [rw] floppy
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type]
            #     Virtual floppy drive.
            FLOPPY = Type.new('FLOPPY')

        end


    end


end
