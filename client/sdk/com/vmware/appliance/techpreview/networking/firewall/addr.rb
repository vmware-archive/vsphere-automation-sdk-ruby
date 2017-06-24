#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.networking.firewall.addr.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Techpreview
                module Networking
                    module Firewall
                        module Addr
                        end
                    end
                end
            end
        end
    end
end

module Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr

    # ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound``   class  provides  methods  Operations for Firewall rules.
    class Inbound < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.networking.firewall.addr.inbound')

        @@add_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('add', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'pos' => VAPI::Bindings::IntegerType.instance,
                'rule' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule'),
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
                'rules' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule')),
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
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
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


        # Add a firewall rule to allow or deny traffic from incoming IP address.
        #
        # @param pos [Fixnum]
        #     Position before which to insert the rule (zero-based). If you try to insert the rule in a position whose number is greater than the number of rules, the firewall rule is inserted at the end of the list.
        # @param rule [Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule]
        #     Firewall IP-based rule.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def add(pos, rule)
            invoke_with_info(@@add_info, {
                'pos' => pos,
                'rule' => rule,
            })
        end


        # Set list of inbound IP addresses to allow or deny by firewall. This replaces all existing rules. Firewall rules have no impact on closed ports because these ports are closed for all traffic.
        #
        # @param rules [Array<Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule>]
        #     List of address-based firewall rules.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(rules)
            invoke_with_info(@@set_info, {
                'rules' => rules,
            })
        end


        # Get ordered list of inbound IP addresses that are allowed or denied by firewall.
        #
        # @return [Array<Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule>]
        #     List of address-based firewall rules.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Delete specific rule at a given position or delete all rules.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule]
        #     Delete a firewall rule
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def delete(config)
            invoke_with_info(@@delete_info, {
                'config' => config,
            })
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule``   class  Structure that defines a single address-based firewall rule.
        # @!attribute [rw] address
        #     @return [String]
        #     IPv4 or IPv6 address.
        # @!attribute [rw] prefix
        #     @return [Fixnum]
        #     CIDR prefix used to mask address. For example, an IPv4 prefix of 24 ignores the low-order 8 bits of address.
        # @!attribute [rw] policy
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy]
        #     The allow or deny policy of this rule.
        # @!attribute [rw] interface_name
        #     @return [String]
        #     The interface to which this rule applies. An empty string or "\*" indicates that the rule applies to all interfaces.
        class FirewallAddressRule < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.firewall.addr.inbound.firewall_address_rule',
                        {
                            'address' => VAPI::Bindings::StringType.instance,
                            'prefix' => VAPI::Bindings::IntegerType.instance,
                            'policy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy'),
                            'interface_name' => VAPI::Bindings::StringType.instance,
                        },
                        FirewallAddressRule,
                        false,
                        nil)
                end
            end

            attr_accessor :address,
                          :prefix,
                          :policy,
                          :interface_name

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule``   class  Structure that defines networking.firewall.addr.inbound.delete api input argument
        # @!attribute [rw] position
        #     @return [Fixnum]
        #     Position before which to insert the rule (zero-based). If you try to insert the rule in a position whose number is greater than the number of rules, the firewall rule is inserted at the end of the list.
        # @!attribute [rw] all
        #     @return [Boolean]
        #     Delete all firewall rules. Set all argument to "true" to delete all rules or set the all argument to "false" to delete a single rule.
        class DeleteFirewallRule < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.networking.firewall.addr.inbound.delete_firewall_rule',
                        {
                            'position' => VAPI::Bindings::IntegerType.instance,
                            'all' => VAPI::Bindings::BooleanType.instance,
                        },
                        DeleteFirewallRule,
                        false,
                        nil)
                end
            end

            attr_accessor :position,
                          :all

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy``   enumerated type  Defines firewall rule policies
        # @!attribute [rw] deny
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy]
        #     Deny packet with correpsonding address.
        # @!attribute [rw] allow
        #     @return [Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy]
        #     Allow packet with corresponding address.
        class FirewallRulePolicy < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.networking.firewall.addr.inbound.firewall_rule_policy',
                        FirewallRulePolicy)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [FirewallRulePolicy] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        FirewallRulePolicy.new('UNKNOWN', value)
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

            # @!attribute [rw] deny
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy]
            #     Deny packet with correpsonding address.
            DENY = FirewallRulePolicy.new('DENY')

            # @!attribute [rw] allow
            #     @return [Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy]
            #     Allow packet with corresponding address.
            ALLOW = FirewallRulePolicy.new('ALLOW')

        end


    end


end
