#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.networking.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Networking
            end
        end
    end
end

module Com::Vmware::Appliance::Networking

    # ``Com::Vmware::Appliance::Networking::Interfaces``   class  provides  methods  Provides information about network interface.
    class Interfaces < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.networking.interfaces')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'interface_name' => VAPI::Bindings::IdType.new(resource_types='com.vmware.appliance.networking.interfaces'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get list of available network interfaces, including those that are not yet configured.
        #
        # @return [Array<Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo>]
        #     List of InterfaceInfo structures.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Get information about a particular network interface.
        #
        # @param interface_name [String]
        #     Network interface, for example, "nic0".
        # @return [Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo]
        #     Network interface information.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get(interface_name)
            invoke_with_info(@@get_info, {
                'interface_name' => interface_name,
            })
        end



        # ``Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo``   class  Structure that defines properties and status of a network interface.
        # @!attribute [rw] name
        #     @return [String]
        #     Interface name, for example, "nic0", "nic1".
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus]
        #     Interface status.
        # @!attribute [rw] mac
        #     @return [String]
        #     MAC address. For example 00:0C:29:94:BB:5A.
        class InterfaceInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.networking.interfaces.interface_info',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus'),
                            'mac' => VAPI::Bindings::StringType.instance,
                        },
                        InterfaceInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :status,
                          :mac

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus``   enumerated type  Defines interface status
        # @!attribute [rw] down
        #     @return [Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus]
        #     The interface is down.
        # @!attribute [rw] up
        #     @return [Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus]
        #     The interface is up.
        class InterfaceStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.networking.interfaces.interface_status',
                        InterfaceStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [InterfaceStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        InterfaceStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] down
            #     @return [Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus]
            #     The interface is down.
            DOWN = InterfaceStatus.new('DOWN')

            # @!attribute [rw] up
            #     @return [Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus]
            #     The interface is up.
            UP = InterfaceStatus.new('UP')

        end


    end


end
