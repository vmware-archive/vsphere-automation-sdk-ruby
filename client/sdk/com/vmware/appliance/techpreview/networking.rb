#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.networking.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Techpreview
                module Networking
                end
            end
        end
    end
end

module Com::Vmware::Appliance::Techpreview::Networking

    # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4``   class  provides  methods  Performs IPV4 network configuration for interfaces.
    class Ipv4 < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.networking.ipv4')

        @@renew_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('renew', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'interfaces' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config')),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'interfaces' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'renew' => @@renew_info,
            'set' => @@set_info,
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


        # Renew IPv4 network configuration on interfaces. If the interface is configured to use DHCP for IP address assignment, the lease of the interface is renewed.
        #
        # @param interfaces [Array<String>]
        #     Interfaces to renew.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def renew(interfaces)
            invoke_with_info(@@renew_info, {
                'interfaces' => interfaces,
            })
        end


        # Set IPv4 network configuration.
        #
        # @param config [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config>]
        #     List of IPv4 configurations.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # Get IPv4 network configuration for all configured interfaces.
        #
        # @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly>]
        #     IPv4 configuration for each interface.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Get IPv4 network configuration for interfaces.
        #
        # @param interfaces [Array<String>]
        #     Network interfaces to query, for example, "nic0".
        # @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly>]
        #     IPv4 configuration for each queried interface.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get(interfaces)
            invoke_with_info(@@get_info, {
                'interfaces' => interfaces,
            })
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config``   class  Structure that defines the IPv4 configuration state of a network interface.
        # @!attribute [rw] interface_name
        #     @return [String]
        #     Interface name, for example, "nic0", "nic1".
        # @!attribute [rw] mode
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
        #     Address assignment mode.
        # @!attribute [rw] address
        #     @return [String]
        #     IPv4 address, for example, "10.20.80.191". Set this argument to an empty string "", if the mode is "unconfigured" or "dhcp".
        # @!attribute [rw] prefix
        #     @return [Fixnum]
        #     IPv4 CIDR prefix, for example , 24. See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion. Set this argument to 0 if the mode is "unconfigured" or "dhcp".
        # @!attribute [rw] default_gateway
        #     @return [String]
        #     IPv4 address of the default gateway. This default gateway value is used if the mode argument is set to "static" This configures the global default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces.
        class IPv4Config < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.ipv4.I_pv4_config',
                        {
                            'interface_name' => VAPI::Bindings::StringType.instance,
                            'mode' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode'),
                            'address' => VAPI::Bindings::StringType.instance,
                            'prefix' => VAPI::Bindings::IntegerType.instance,
                            'default_gateway' => VAPI::Bindings::StringType.instance,
                        },
                        IPv4Config,
                        false,
                        nil)
                end
            end

            attr_accessor :interface_name,
                          :mode,
                          :address,
                          :prefix,
                          :default_gateway

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly``   class  Structure that defines the IPv4 configuration state of a network interface.
        # @!attribute [rw] interface_name
        #     @return [String]
        #     Interface name, for example, "nic0", "nic1".
        # @!attribute [rw] mode
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
        #     Address assignment mode.
        # @!attribute [rw] address
        #     @return [String]
        #     IPv4 address, for example, "10.20.80.191". Set this argument to an empty string "", if the mode is "unconfigured" or "dhcp".
        # @!attribute [rw] prefix
        #     @return [Fixnum]
        #     IPv4 CIDR prefix, for example , 24. See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion. Set this argument to 0 if the mode is "unconfigured" or "dhcp".
        # @!attribute [rw] default_gateway
        #     @return [String]
        #     IPv4 address of the default gateway. This default gateway value is used if the mode argument is set to "static" This configures the global default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces.
        # @!attribute [rw] updateable
        #     @return [Boolean]
        #     This indicates if the network configuration can be updated for the interface.
        class IPv4ConfigReadOnly < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.ipv4.I_pv4_config_read_only',
                        {
                            'interface_name' => VAPI::Bindings::StringType.instance,
                            'mode' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode'),
                            'address' => VAPI::Bindings::StringType.instance,
                            'prefix' => VAPI::Bindings::IntegerType.instance,
                            'default_gateway' => VAPI::Bindings::StringType.instance,
                            'updateable' => VAPI::Bindings::BooleanType.instance,
                        },
                        IPv4ConfigReadOnly,
                        false,
                        nil)
                end
            end

            attr_accessor :interface_name,
                          :mode,
                          :address,
                          :prefix,
                          :default_gateway,
                          :updateable

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode``   enumerated type  Defines different ipv4 modes
        # @!attribute [rw] dhcp
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
        #     IPv4 address is automatically assigned by a DHCP server.
        # @!attribute [rw] is_static
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
        #     IPv4 address is static.
        # @!attribute [rw] unconfigured
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
        #     The IPv4 protocol is not configured.
        class IPv4Mode < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.ipv4.I_pv4_mode',
                        IPv4Mode)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [IPv4Mode] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        IPv4Mode.new('UNKNOWN', value)
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

            # @!attribute [rw] dhcp
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
            #     IPv4 address is automatically assigned by a DHCP server.
            DHCP = IPv4Mode.new('DHCP')

            # @!attribute [rw] is_static
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
            #     IPv4 address is static.
            IS_STATIC = IPv4Mode.new('IS_STATIC')

            # @!attribute [rw] unconfigured
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode]
            #     The IPv4 protocol is not configured.
            UNCONFIGURED = IPv4Mode.new('UNCONFIGURED')

        end


    end


    # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6``   class  provides  methods  Performs IPV4 network configuration for interfaces.
    class Ipv6 < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.networking.ipv6')

        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config')),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'interfaces' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'set' => @@set_info,
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


        # Set IPv6 network configuration.
        #
        # @param config [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config>]
        #     IPv6 configuration.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # Get IPv6 network configuration for all configured interfaces.
        #
        # @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly>]
        #     IPv6 configuration for each interface.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Get IPv6 network configuration for interfaces.
        #
        # @param interfaces [Array<String>]
        #     Network interfaces to query, for example, "nic0".
        # @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly>]
        #     IPv6 configuration.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get(interfaces)
            invoke_with_info(@@get_info, {
                'interfaces' => interfaces,
            })
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly``   class  Structure that you can use to get information about an IPv6 address along with its origin and status.
        # @!attribute [rw] address
        #     @return [String]
        #     IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a.
        # @!attribute [rw] prefix
        #     @return [Fixnum]
        #     IPv6 CIDR prefix, for example, 64.
        # @!attribute [rw] origin
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
        #     Origin of the IPv6 address. For more information, see RFC 4293.
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     Status of the IPv6 address. For more information, see RFC 4293.
        class IPv6AddressReadOnly < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address_read_only',
                        {
                            'address' => VAPI::Bindings::StringType.instance,
                            'prefix' => VAPI::Bindings::IntegerType.instance,
                            'origin' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin'),
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus'),
                        },
                        IPv6AddressReadOnly,
                        false,
                        nil)
                end
            end

            attr_accessor :address,
                          :prefix,
                          :origin,
                          :status

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly``   class  Structure that defines an existing IPv6 configuration on a particular interface. This structure is read only.
        # @!attribute [rw] interface_name
        #     @return [String]
        #     Network interface, for example, "nic0" queried.
        # @!attribute [rw] dhcp
        #     @return [Boolean]
        #     Address assigned by a DHCP server.
        # @!attribute [rw] autoconf
        #     @return [Boolean]
        #     Address is assigned by Stateless Address Autoconfiguration (SLAAC).
        # @!attribute [rw] addresses
        #     @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly>]
        #     A list of all addresses assigned to this interface. The origin field of each address determines how the address was assigned, for example, statically, by DHCP, SLAAC.
        # @!attribute [rw] default_gateway
        #     @return [String]
        #     Default gateway. This configures the global IPv6 default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces.
        # @!attribute [rw] updateable
        #     @return [Boolean]
        #     This indicates if the network configuration can be updated for the interface.
        class IPv6ConfigReadOnly < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_config_read_only',
                        {
                            'interface_name' => VAPI::Bindings::StringType.instance,
                            'dhcp' => VAPI::Bindings::BooleanType.instance,
                            'autoconf' => VAPI::Bindings::BooleanType.instance,
                            'addresses' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly')),
                            'default_gateway' => VAPI::Bindings::StringType.instance,
                            'updateable' => VAPI::Bindings::BooleanType.instance,
                        },
                        IPv6ConfigReadOnly,
                        false,
                        nil)
                end
            end

            attr_accessor :interface_name,
                          :dhcp,
                          :autoconf,
                          :addresses,
                          :default_gateway,
                          :updateable

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address``   class  Structure used to name an IPv6 address.
        # @!attribute [rw] address
        #     @return [String]
        #     IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a.
        # @!attribute [rw] prefix
        #     @return [Fixnum]
        #     IPv6 CIDR prefix, for example, 64.
        class IPv6Address < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address',
                        {
                            'address' => VAPI::Bindings::StringType.instance,
                            'prefix' => VAPI::Bindings::IntegerType.instance,
                        },
                        IPv6Address,
                        false,
                        nil)
                end
            end

            attr_accessor :address,
                          :prefix

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config``   class  Structure that you can use to configure IPv6 on a particular interface. Because IPv6 permits multiple addresses per interface, addresses can be assigned by DHCP, SLAAC, and can also be statically assigned.
        # @!attribute [rw] interface_name
        #     @return [String]
        #     Network interface, for example, "nic0" to configure.
        # @!attribute [rw] dhcp
        #     @return [Boolean]
        #     Address assigned by a DHCP server.
        # @!attribute [rw] autoconf
        #     @return [Boolean]
        #     Address is assigned by Stateless Address Autoconfiguration (SLAAC).
        # @!attribute [rw] addresses
        #     @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address>]
        #     A list of addresses to be statically assigned.
        # @!attribute [rw] default_gateway
        #     @return [String]
        #     Default gateway for static IP address assignment. This configures the global IPv6 default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces.
        class IPv6Config < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_config',
                        {
                            'interface_name' => VAPI::Bindings::StringType.instance,
                            'dhcp' => VAPI::Bindings::BooleanType.instance,
                            'autoconf' => VAPI::Bindings::BooleanType.instance,
                            'addresses' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address')),
                            'default_gateway' => VAPI::Bindings::StringType.instance,
                        },
                        IPv6Config,
                        false,
                        nil)
                end
            end

            attr_accessor :interface_name,
                          :dhcp,
                          :autoconf,
                          :addresses,
                          :default_gateway

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin``   enumerated type  Defines IPV6 address origin values
        # @!attribute [rw] dhcp
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
        #     The IPv6 address is assigned by a DHCP server. See RFC 4293.
        # @!attribute [rw] random
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
        #     The IPv6 address is assigned randomly by the system. See RFC 4293.
        # @!attribute [rw] manual
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
        #     The IPv6 address was manually configured to a specified address, for, example, by user configuration. See RFC 4293.
        # @!attribute [rw] other
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
        #     The IPv6 address is assigned by a mechanism other than manual, DHCP, SLAAC, or random. See RFC 4293.
        # @!attribute [rw] linklayer
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
        #     The IPv6 address is assigned by IPv6 Stateless Address Auto-configuration (SLAAC). See RFC 4293.
        class IPv6AddressOrigin < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address_origin',
                        IPv6AddressOrigin)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [IPv6AddressOrigin] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        IPv6AddressOrigin.new('UNKNOWN', value)
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

            # @!attribute [rw] dhcp
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
            #     The IPv6 address is assigned by a DHCP server. See RFC 4293.
            DHCP = IPv6AddressOrigin.new('DHCP')

            # @!attribute [rw] random
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
            #     The IPv6 address is assigned randomly by the system. See RFC 4293.
            RANDOM = IPv6AddressOrigin.new('RANDOM')

            # @!attribute [rw] manual
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
            #     The IPv6 address was manually configured to a specified address, for, example, by user configuration. See RFC 4293.
            MANUAL = IPv6AddressOrigin.new('MANUAL')

            # @!attribute [rw] other
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
            #     The IPv6 address is assigned by a mechanism other than manual, DHCP, SLAAC, or random. See RFC 4293.
            OTHER = IPv6AddressOrigin.new('OTHER')

            # @!attribute [rw] linklayer
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin]
            #     The IPv6 address is assigned by IPv6 Stateless Address Auto-configuration (SLAAC). See RFC 4293.
            LINKLAYER = IPv6AddressOrigin.new('LINKLAYER')

        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus``   enumerated type  Defines IPV6 address status values
        # @!attribute [rw] tentative
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     This IPv6 address is in the process of being verified as unique. Do not use addresses in this state for general communication. You can use them to determine the uniqueness of the address. See RFC 4293.
        # @!attribute [rw] unknown
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     The status of this address cannot be determined. See RFC 4293.
        # @!attribute [rw] inaccessible
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     This IPv6 address is inaccessible because the interface to which this address is assigned is not operational. See RFC 4293.
        # @!attribute [rw] invalid
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     This IPv6 address is not a valid address. It should not appear as the destination or source address of a packet. See RFC 4293.
        # @!attribute [rw] duplicate
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     This IPv6 address is not unique on the link. Do use this IPv6 address. See RFC 4293.
        # @!attribute [rw] preferred
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     This is a valid IPv6 address that can appear as the destination or source address of a packet. See RFC 4293.
        # @!attribute [rw] deprecated
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     This is a valid but deprecated IPv6 address. Do not use this IPv6 address as a source address in new communications, although packets addressed to such an address are processed as expected. See RFC 4293.
        # @!attribute [rw] optimistic
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
        #     This IPv6 address is available for use, subject to restrictions, while its uniqueness on a link is being verified. See RFC 4293.
        class IPv6AddressStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address_status',
                        IPv6AddressStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [IPv6AddressStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        IPv6AddressStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] tentative
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     This IPv6 address is in the process of being verified as unique. Do not use addresses in this state for general communication. You can use them to determine the uniqueness of the address. See RFC 4293.
            TENTATIVE = IPv6AddressStatus.new('TENTATIVE')

            # @!attribute [rw] unknown
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     The status of this address cannot be determined. See RFC 4293.
            UNKNOWN = IPv6AddressStatus.new('UNKNOWN')

            # @!attribute [rw] inaccessible
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     This IPv6 address is inaccessible because the interface to which this address is assigned is not operational. See RFC 4293.
            INACCESSIBLE = IPv6AddressStatus.new('INACCESSIBLE')

            # @!attribute [rw] invalid
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     This IPv6 address is not a valid address. It should not appear as the destination or source address of a packet. See RFC 4293.
            INVALID = IPv6AddressStatus.new('INVALID')

            # @!attribute [rw] duplicate
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     This IPv6 address is not unique on the link. Do use this IPv6 address. See RFC 4293.
            DUPLICATE = IPv6AddressStatus.new('DUPLICATE')

            # @!attribute [rw] preferred
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     This is a valid IPv6 address that can appear as the destination or source address of a packet. See RFC 4293.
            PREFERRED = IPv6AddressStatus.new('PREFERRED')

            # @!attribute [rw] deprecated
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     This is a valid but deprecated IPv6 address. Do not use this IPv6 address as a source address in new communications, although packets addressed to such an address are processed as expected. See RFC 4293.
            DEPRECATED = IPv6AddressStatus.new('DEPRECATED')

            # @!attribute [rw] optimistic
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus]
            #     This IPv6 address is available for use, subject to restrictions, while its uniqueness on a link is being verified. See RFC 4293.
            OPTIMISTIC = IPv6AddressStatus.new('OPTIMISTIC')

        end


    end


    # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy``   class  provides  methods  Proxy configuration.
    class Proxy < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.networking.proxy')

        @@test_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('test', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'protocol' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'test' => @@test_info,
            'set' => @@set_info,
            'delete' => @@delete_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Test a Proxy configuration by testing the connection to the proxy server and test host.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest]
        #     Proxy configuration to test
        # @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo]
        #     Status of proxy settings.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def test(config)
            invoke_with_info(@@test_info, {
                'config' => config,
            })
        end


        # Set Proxy configuration. In order for this configuration to take effect a logout is required.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple]
        #     List of Proxy configurations to be set.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # Delete a Proxy configuration for a specific protocol.
        #
        # @param protocol [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
        #     Protocol to delete proxy of.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def delete(protocol)
            invoke_with_info(@@delete_info, {
                'protocol' => protocol,
            })
        end


        # Get proxy configuration for all protocols.
        #
        # @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple]
        #     proxy configuration for all protocols.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message``   class  Test result and message
        # @!attribute [rw] message
        #     @return [String]
        #     message
        # @!attribute [rw] result
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus]
        #     result of the test
        class Message < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.message',
                        {
                            'message' => VAPI::Bindings::StringType.instance,
                            'result' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus'),
                        },
                        Message,
                        false,
                        nil)
                end
            end

            attr_accessor :message,
                          :result

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo``   class  Overall test result
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus]
        #     Overall status of tests run.
        # @!attribute [rw] messages
        #     @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message>]
        #     messages
        class TestStatusInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.test_status_info',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus'),
                            'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message')),
                        },
                        TestStatusInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :status,
                          :messages

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest``   class  Structure that defines proxy configuration.
        # @!attribute [rw] protocol
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
        #     protocol being configured.
        # @!attribute [rw] server
        #     @return [String]
        #     hostname or ip of proxy server
        # @!attribute [rw] port
        #     @return [Fixnum]
        #     port to connect to the proxy server on. A value of -1 indicates that the default port is being used.
        # @!attribute [rw] username
        #     @return [String]
        #     username for proxy server.
        # @!attribute [rw] password
        #     @return [String]
        #     password for proxy server.
        # @!attribute [rw] testhost
        #     @return [String]
        #     Verify that a hostname (www.vmware.com) or IPv4 or Ipv6 address of the testhost is accessible through proxy.
        class ProxyConfigTest < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.proxy_config_test',
                        {
                            'protocol' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol'),
                            'server' => VAPI::Bindings::StringType.instance,
                            'port' => VAPI::Bindings::IntegerType.instance,
                            'username' => VAPI::Bindings::StringType.instance,
                            'password' => VAPI::Bindings::SecretType.instance,
                            'testhost' => VAPI::Bindings::StringType.instance,
                        },
                        ProxyConfigTest,
                        false,
                        nil)
                end
            end

            attr_accessor :protocol,
                          :server,
                          :port,
                          :username,
                          :password,
                          :testhost

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig``   class  Structure that defines proxy configuration.
        # @!attribute [rw] protocol
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
        #     protocol being configured.
        # @!attribute [rw] server
        #     @return [String]
        #     hostname or ip of proxy server
        # @!attribute [rw] port
        #     @return [Fixnum]
        #     port to connect to the proxy server on. A value of -1 indicates that the default port is being used.
        # @!attribute [rw] username
        #     @return [String]
        #     username for proxy server.
        # @!attribute [rw] password
        #     @return [String]
        #     password for proxy server.
        class ProxyConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.proxy_config',
                        {
                            'protocol' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol'),
                            'server' => VAPI::Bindings::StringType.instance,
                            'port' => VAPI::Bindings::IntegerType.instance,
                            'username' => VAPI::Bindings::StringType.instance,
                            'password' => VAPI::Bindings::SecretType.instance,
                        },
                        ProxyConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :protocol,
                          :server,
                          :port,
                          :username,
                          :password

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple``   class  Structure representing multiple proxy configuration.
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus]
        #     proxy enabled or disabled This sets whether the proxy configuration is used.
        # @!attribute [rw] configlist
        #     @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig>]
        #     List of proxy configuration.
        class ProxyConfigMultiple < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.proxy_config_multiple',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus'),
                            'configlist' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig')),
                        },
                        ProxyConfigMultiple,
                        false,
                        nil)
                end
            end

            attr_accessor :status,
                          :configlist

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol``   enumerated type  Defines different proxy protocols
        # @!attribute [rw] ftp
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
        #     proxy configuration for ftp.
        # @!attribute [rw] http
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
        #     proxy configuration for http.
        # @!attribute [rw] https
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
        #     proxy configuration for https.
        class ProxyProtocol < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.proxy_protocol',
                        ProxyProtocol)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [ProxyProtocol] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        ProxyProtocol.new('UNKNOWN', value)
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

            # @!attribute [rw] ftp
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
            #     proxy configuration for ftp.
            FTP = ProxyProtocol.new('FTP')

            # @!attribute [rw] http
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
            #     proxy configuration for http.
            HTTP = ProxyProtocol.new('HTTP')

            # @!attribute [rw] https
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol]
            #     proxy configuration for https.
            HTTPS = ProxyProtocol.new('HTTPS')

        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus``   enumerated type  Health indicator
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus]
        #     In case data has more than one test, this indicates not all tests were successful
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus]
        #     All tests were successful for given data
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus]
        #     All tests failed for given data
        class TestStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.test_status',
                        TestStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [TestStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        TestStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus]
            #     In case data has more than one test, this indicates not all tests were successful
            ORANGE = TestStatus.new('ORANGE')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus]
            #     All tests were successful for given data
            GREEN = TestStatus.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus]
            #     All tests failed for given data
            RED = TestStatus.new('RED')

        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus``   enumerated type  Individual test result
        # @!attribute [rw] failure
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus]
        #     message indicates the test failed.
        # @!attribute [rw] success
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus]
        #     message indicates that the test was successful.
        class MessageStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.message_status',
                        MessageStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [MessageStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        MessageStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] failure
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus]
            #     message indicates the test failed.
            FAILURE = MessageStatus.new('FAILURE')

            # @!attribute [rw] success
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus]
            #     message indicates that the test was successful.
            SUCCESS = MessageStatus.new('SUCCESS')

        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus``   enumerated type  Defines state of proxy
        # @!attribute [rw] disabled
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus]
        #     proxy configuration is disabled
        # @!attribute [rw] enabled
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus]
        #     proxy configuration is enabled
        class ProxyStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.proxy.proxy_status',
                        ProxyStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [ProxyStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        ProxyStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] disabled
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus]
            #     proxy configuration is disabled
            DISABLED = ProxyStatus.new('DISABLED')

            # @!attribute [rw] enabled
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus]
            #     proxy configuration is enabled
            ENABLED = ProxyStatus.new('ENABLED')

        end


    end


    # ``Com::Vmware::Appliance::Techpreview::Networking::Routes``   class  provides  methods  Performs networking routes operations.
    class Routes < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.networking.routes')

        @@test_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('test', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'gateways' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@add_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('add', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'route' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::Route'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'routes' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::Route')),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'route' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::Route'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'test' => @@test_info,
            'add' => @@add_info,
            'set' => @@set_info,
            'list' => @@list_info,
            'delete' => @@delete_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Test connection to a list of gateways
        #
        # @param gateways [Array<String>]
        #     list of gateways.
        # @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo]
        #     connection status
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def test(gateways)
            invoke_with_info(@@test_info, {
                'gateways' => gateways,
            })
        end


        # Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
        #
        # @param route [Com::Vmware::Appliance::Techpreview::Networking::Routes::Route]
        #     Static routing rule.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def add(route)
            invoke_with_info(@@add_info, {
                'route' => route,
            })
        end


        # Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
        #
        # @param routes [Array<Com::Vmware::Appliance::Techpreview::Networking::Routes::Route>]
        #     Static routing rules.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(routes)
            invoke_with_info(@@set_info, {
                'routes' => routes,
            })
        end


        # Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
        #
        # @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly>]
        #     Routing table.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Delete static routing rules.
        #
        # @param route [Com::Vmware::Appliance::Techpreview::Networking::Routes::Route]
        #     Static routing rule.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def delete(route)
            invoke_with_info(@@delete_info, {
                'route' => route,
            })
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly``   class  Structure that describes how routing is performed for a particular destination and prefix. A destination/prefix of 0.0.0.0/0 ( for IPv4) or ::/0 (for IPv6) refers to the default gateway.
        # @!attribute [rw] destination
        #     @return [String]
        #     Destination address that defines this route.
        # @!attribute [rw] prefix
        #     @return [Fixnum]
        #     Destination CIDR prefix that defines this route. See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion.
        # @!attribute [rw] gateway
        #     @return [String]
        #     Gateway address.
        # @!attribute [rw] interface_name
        #     @return [String]
        #     Output device interface, for example, "nic0".
        # @!attribute [rw] is_static
        #     @return [Boolean]
        #     Static provides information about installation of the route. True indicates the route was installed by the administrator. False indicates the route was autoconfigured
        class RouteReadOnly < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.routes.route_read_only',
                        {
                            'destination' => VAPI::Bindings::StringType.instance,
                            'prefix' => VAPI::Bindings::IntegerType.instance,
                            'gateway' => VAPI::Bindings::StringType.instance,
                            'interface_name' => VAPI::Bindings::StringType.instance,
                            'is_static' => VAPI::Bindings::BooleanType.instance,
                        },
                        RouteReadOnly,
                        false,
                        nil)
                end
            end

            attr_accessor :destination,
                          :prefix,
                          :gateway,
                          :interface_name,
                          :is_static

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Routes::Route``   class  Structure that describes how routing is performed for a particular destination and prefix. A destination/prefix of 0.0.0.0/0 ( for IPv4) or ::/0 (for IPv6) refers to the default gateway.
        # @!attribute [rw] destination
        #     @return [String]
        #     Destination address that defines this route.
        # @!attribute [rw] prefix
        #     @return [Fixnum]
        #     Destination CIDR prefix that defines this route. See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion.
        # @!attribute [rw] gateway
        #     @return [String]
        #     Gateway address.
        # @!attribute [rw] interface_name
        #     @return [String]
        #     Output device interface, for example, "nic0".
        class Route < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.routes.route',
                        {
                            'destination' => VAPI::Bindings::StringType.instance,
                            'prefix' => VAPI::Bindings::IntegerType.instance,
                            'gateway' => VAPI::Bindings::StringType.instance,
                            'interface_name' => VAPI::Bindings::StringType.instance,
                        },
                        Route,
                        false,
                        nil)
                end
            end

            attr_accessor :destination,
                          :prefix,
                          :gateway,
                          :interface_name

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Routes::Message``   class  Test result and message
        # @!attribute [rw] message
        #     @return [String]
        #     message
        # @!attribute [rw] result
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus]
        #     result of the test
        class Message < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.routes.message',
                        {
                            'message' => VAPI::Bindings::StringType.instance,
                            'result' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus'),
                        },
                        Message,
                        false,
                        nil)
                end
            end

            attr_accessor :message,
                          :result

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo``   class  Overall test result
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus]
        #     Overall status of tests run.
        # @!attribute [rw] messages
        #     @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Routes::Message>]
        #     messages
        class TestStatusInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.routes.test_status_info',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus'),
                            'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Routes::Message')),
                        },
                        TestStatusInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :status,
                          :messages

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus``   enumerated type  Health indicator
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus]
        #     In case data has more than one test, this indicates not all tests were successful
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus]
        #     All tests were successful for given data
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus]
        #     All tests failed for given data
        class TestStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.routes.test_status',
                        TestStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [TestStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        TestStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus]
            #     In case data has more than one test, this indicates not all tests were successful
            ORANGE = TestStatus.new('ORANGE')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus]
            #     All tests were successful for given data
            GREEN = TestStatus.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus]
            #     All tests failed for given data
            RED = TestStatus.new('RED')

        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus``   enumerated type  Individual test result
        # @!attribute [rw] failure
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus]
        #     message indicates the test failed.
        # @!attribute [rw] success
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus]
        #     message indicates that the test was successful.
        class MessageStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.routes.message_status',
                        MessageStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [MessageStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        MessageStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] failure
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus]
            #     message indicates the test failed.
            FAILURE = MessageStatus.new('FAILURE')

            # @!attribute [rw] success
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus]
            #     message indicates that the test was successful.
            SUCCESS = MessageStatus.new('SUCCESS')

        end


    end


end
