#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.networking.dns.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Networking
                module Dns
                end
            end
        end
    end
end

module Com::Vmware::Appliance::Networking::Dns

    # ``Com::Vmware::Appliance::Networking::Dns::Domains``   class  provides  methods  DNS search domains.
    class Domains < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.networking.dns.domains')

        @@add_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('add', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'domain' => VAPI::Bindings::StringType.instance,
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
                'domains' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
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
            VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'add' => @@add_info,
            'set' => @@set_info,
            'list' => @@list_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Add domain to DNS search domains.
        #
        # @param domain [String]
        #     Domain to add.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def add(domain)
            invoke_with_info(@@add_info, {
                'domain' => domain,
            })
        end


        # Set DNS search domains.
        #
        # @param domains [Array<String>]
        #     List of domains.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(domains)
            invoke_with_info(@@set_info, {
                'domains' => domains,
            })
        end


        # Get list of DNS search domains.
        #
        # @return [Array<String>]
        #     List of domains.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


    end


    # ``Com::Vmware::Appliance::Networking::Dns::Hostname``   class  provides  methods  Performs operations on Fully Qualified Doman Name.
    class Hostname < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.networking.dns.hostname')

        @@test_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('test', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'name' => VAPI::Bindings::StringType.instance,
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'name' => VAPI::Bindings::StringType.instance,
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
            VAPI::Bindings::StringType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'test' => @@test_info,
            'set' => @@set_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Test the Fully Qualified Domain Name.
        #
        # @param name [String]
        #     FQDN.
        # @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo]
        #     FQDN status
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def test(name)
            invoke_with_info(@@test_info, {
                'name' => name,
            })
        end


        # Set the Fully Qualified Domain Name.
        #
        # @param name [String]
        #     FQDN.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(name)
            invoke_with_info(@@set_info, {
                'name' => name,
            })
        end


        # Get the Fully Qualified Doman Name.
        #
        # @return [String]
        #     FQDN.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Networking::Dns::Hostname::Message``   class  Test result and message
        # @!attribute [rw] message
        #     @return [String]
        #     message
        # @!attribute [rw] result
        #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus]
        #     result of the test
        class Message < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.networking.dns.hostname.message',
                        {
                            'message' => VAPI::Bindings::StringType.instance,
                            'result' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus'),
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


        # ``Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo``   class  Overall test result
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus]
        #     Overall status of tests run.
        # @!attribute [rw] messages
        #     @return [Array<Com::Vmware::Appliance::Networking::Dns::Hostname::Message>]
        #     messages
        class TestStatusInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.networking.dns.hostname.test_status_info',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus'),
                            'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Hostname::Message')),
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



        # ``Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus``   enumerated type  Health indicator
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus]
        #     In case data has more than one test, this indicates not all tests were successful
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus]
        #     All tests were successful for given data
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus]
        #     All tests failed for given data
        class TestStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.networking.dns.hostname.test_status',
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
            #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus]
            #     In case data has more than one test, this indicates not all tests were successful
            ORANGE = TestStatus.new('ORANGE')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus]
            #     All tests were successful for given data
            GREEN = TestStatus.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus]
            #     All tests failed for given data
            RED = TestStatus.new('RED')

        end


        # ``Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus``   enumerated type  Individual test result
        # @!attribute [rw] failure
        #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus]
        #     message indicates the test failed.
        # @!attribute [rw] success
        #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus]
        #     message indicates that the test was successful.
        class MessageStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.networking.dns.hostname.message_status',
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
            #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus]
            #     message indicates the test failed.
            FAILURE = MessageStatus.new('FAILURE')

            # @!attribute [rw] success
            #     @return [Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus]
            #     message indicates that the test was successful.
            SUCCESS = MessageStatus.new('SUCCESS')

        end


    end


    # ``Com::Vmware::Appliance::Networking::Dns::Servers``   class  provides  methods  DNS server configuration.
    class Servers < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.networking.dns.servers')

        @@test_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('test', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@add_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('add', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'server' => VAPI::Bindings::StringType.instance,
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
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig'),
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
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'test' => @@test_info,
            'add' => @@add_info,
            'set' => @@set_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Test if dns servers are reachable.
        #
        # @param servers [Array<String>]
        #     DNS servers.
        # @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo]
        #     DNS reacable status
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def test(servers)
            invoke_with_info(@@test_info, {
                'servers' => servers,
            })
        end


        # Add a DNS server. This method fails if mode argument is "dhcp"
        #
        # @param server [String]
        #     DNS server.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def add(server)
            invoke_with_info(@@add_info, {
                'server' => server,
            })
        end


        # Set the DNS server configuration. If you set the mode argument to "DHCP", a DHCP refresh is forced.
        #
        # @param config [Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig]
        #     DNS server configuration.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # Get DNS server configuration.
        #
        # @return [Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig]
        #     DNS server configuration.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig``   class  This structure represents the configuration state used to determine DNS servers.
        # @!attribute [rw] mode
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode]
        #     Define how to determine the DNS servers. Leave the servers argument empty if the mode argument is "DHCP". Set the servers argument to a comma-separated list of DNS servers if the mode argument is "static". The DNS server are assigned from the specified list.
        # @!attribute [rw] servers
        #     @return [Array<String>]
        #     List of the currently used DNS servers.
        class DNSServerConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.networking.dns.servers.DNS_server_config',
                        {
                            'mode' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode'),
                            'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
                        },
                        DNSServerConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :mode,
                          :servers

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Networking::Dns::Servers::Message``   class  Test result and message
        # @!attribute [rw] message
        #     @return [String]
        #     message
        # @!attribute [rw] result
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus]
        #     result of the test
        class Message < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.networking.dns.servers.message',
                        {
                            'message' => VAPI::Bindings::StringType.instance,
                            'result' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus'),
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


        # ``Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo``   class  Overall test result
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus]
        #     Overall status of tests run.
        # @!attribute [rw] messages
        #     @return [Array<Com::Vmware::Appliance::Networking::Dns::Servers::Message>]
        #     messages
        class TestStatusInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.networking.dns.servers.test_status_info',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus'),
                            'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Networking::Dns::Servers::Message')),
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



        # ``Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode``   enumerated type  Describes DNS Server source (DHCP,static)
        # @!attribute [rw] dhcp
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode]
        #     DNS address is automatically assigned by a DHCP server.
        # @!attribute [rw] is_static
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode]
        #     DNS address is static.
        class DNSServerMode < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.networking.dns.servers.DNS_server_mode',
                        DNSServerMode)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [DNSServerMode] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        DNSServerMode.new('UNKNOWN', value)
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
            #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode]
            #     DNS address is automatically assigned by a DHCP server.
            DHCP = DNSServerMode.new('DHCP')

            # @!attribute [rw] is_static
            #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode]
            #     DNS address is static.
            IS_STATIC = DNSServerMode.new('IS_STATIC')

        end


        # ``Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus``   enumerated type  Health indicator
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus]
        #     In case data has more than one test, this indicates not all tests were successful
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus]
        #     All tests were successful for given data
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus]
        #     All tests failed for given data
        class TestStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.networking.dns.servers.test_status',
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
            #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus]
            #     In case data has more than one test, this indicates not all tests were successful
            ORANGE = TestStatus.new('ORANGE')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus]
            #     All tests were successful for given data
            GREEN = TestStatus.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus]
            #     All tests failed for given data
            RED = TestStatus.new('RED')

        end


        # ``Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus``   enumerated type  Individual test result
        # @!attribute [rw] failure
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus]
        #     message indicates the test failed.
        # @!attribute [rw] success
        #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus]
        #     message indicates that the test was successful.
        class MessageStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.networking.dns.servers.message_status',
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
            #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus]
            #     message indicates the test failed.
            FAILURE = MessageStatus.new('FAILURE')

            # @!attribute [rw] success
            #     @return [Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus]
            #     message indicates that the test was successful.
            SUCCESS = MessageStatus.new('SUCCESS')

        end


    end


end
