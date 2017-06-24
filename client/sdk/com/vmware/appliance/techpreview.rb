#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Techpreview
            end
        end
    end
end

module Com::Vmware::Appliance::Techpreview

    # ``Com::Vmware::Appliance::Techpreview::Ntp``   class  provides  methods  Gets NTP configuration status and tests connection to ntp servers.
    class NtpService < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.ntp')

        @@test_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('test', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'test' => @@test_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Test the connection to a list of ntp servers.
        #
        # @param servers [Array<String>]
        #     List of host names or IP addresses of NTP servers.
        # @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo]
        #     NTP connection status
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def test(servers)
            invoke_with_info(@@test_info, {
                'servers' => servers,
            })
        end


        # Get the NTP configuration status. If you run the 'timesync.get' command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The 'ntp' command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
        #
        # @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig]
        #     NTP config
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig``   class  Structure defining the NTP configuration.
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
        #     NTP daemon running status
        # @!attribute [rw] servers
        #     @return [Array<String>]
        #     List of NTP servers.
        class NTPConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.ntp.NTP_config',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus'),
                            'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
                        },
                        NTPConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :status,
                          :servers

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Ntp::Message``   class  Test result and message
        # @!attribute [rw] message
        #     @return [String]
        #     message
        # @!attribute [rw] result
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus]
        #     result of the test
        class Message < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.ntp.message',
                        {
                            'message' => VAPI::Bindings::StringType.instance,
                            'result' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus'),
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


        # ``Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo``   class  Overall test result
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
        #     Overall status of tests run.
        # @!attribute [rw] messages
        #     @return [Array<Com::Vmware::Appliance::Techpreview::Ntp::Message>]
        #     messages
        class TestStatusInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.ntp.test_status_info',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::TestStatus'),
                            'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::Message')),
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



        # ``Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus``   enumerated type  Defines NTP status
        # @!attribute [rw] down
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
        #     NTP daemon is not running.
        # @!attribute [rw] unknown
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
        #     Cannot retrieve NTP daemon status.
        # @!attribute [rw] up
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
        #     NTP daemon is running.
        class NTPStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.ntp.NTP_status',
                        NTPStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [NTPStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        NTPStatus.new('UNKNOWN', value)
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
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
            #     NTP daemon is not running.
            DOWN = NTPStatus.new('DOWN')

            # @!attribute [rw] unknown
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
            #     Cannot retrieve NTP daemon status.
            UNKNOWN = NTPStatus.new('UNKNOWN')

            # @!attribute [rw] up
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
            #     NTP daemon is running.
            UP = NTPStatus.new('UP')

        end


        # ``Com::Vmware::Appliance::Techpreview::Ntp::TestStatus``   enumerated type  Health indicator
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
        #     In case data has more than one test, this indicates not all tests were successful
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
        #     All tests were successful for given data
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
        #     All tests failed for given data
        class TestStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.ntp.test_status',
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
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
            #     In case data has more than one test, this indicates not all tests were successful
            ORANGE = TestStatus.new('ORANGE')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
            #     All tests were successful for given data
            GREEN = TestStatus.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
            #     All tests failed for given data
            RED = TestStatus.new('RED')

        end


        # ``Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus``   enumerated type  Individual test result
        # @!attribute [rw] failure
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus]
        #     message indicates the test failed.
        # @!attribute [rw] success
        #     @return [Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus]
        #     message indicates that the test was successful.
        class MessageStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.ntp.message_status',
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
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus]
            #     message indicates the test failed.
            FAILURE = MessageStatus.new('FAILURE')

            # @!attribute [rw] success
            #     @return [Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus]
            #     message indicates that the test was successful.
            SUCCESS = MessageStatus.new('SUCCESS')

        end


    end


    # ``Com::Vmware::Appliance::Techpreview::Services``   class  provides  methods  Manages services.
    class ServicesService < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.services')

        @@control_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('control', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'args' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
                'name' => VAPI::Bindings::StringType.instance,
                'timeout' => VAPI::Bindings::IntegerType.instance,
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
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Services::ServiceInfo')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@stop_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('stop', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'name' => VAPI::Bindings::StringType.instance,
                'timeout' => VAPI::Bindings::IntegerType.instance,
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@restart_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('restart', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'name' => VAPI::Bindings::StringType.instance,
                'timeout' => VAPI::Bindings::IntegerType.instance,
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'control' => @@control_info,
            'list' => @@list_info,
            'stop' => @@stop_info,
            'restart' => @@restart_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Manage a service with arbitrary command and arguments.
        #
        # @param args [Array<String>]
        #     Array of arguments.
        # @param name [String]
        #     Name of the service.
        # @param timeout [Fixnum]
        #     Timeout in seconds. Zero (0) means no timeout.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def control(args, name, timeout)
            invoke_with_info(@@control_info, {
                'args' => args,
                'name' => name,
                'timeout' => timeout,
            })
        end


        # Get a list of all known services.
        #
        # @return [Array<Com::Vmware::Appliance::Techpreview::Services::ServiceInfo>]
        #     List of services.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Stop a service
        #
        # @param name [String]
        #     Name of service.
        # @param timeout [Fixnum]
        #     Timeout in seconds. Zero (0) means no timeout.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def stop(name, timeout)
            invoke_with_info(@@stop_info, {
                'name' => name,
                'timeout' => timeout,
            })
        end


        # start or restart a service
        #
        # @param name [String]
        #     Name of the service to start or restart.
        # @param timeout [Fixnum]
        #     Timeout in seconds. Zero (0) means no timeout.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def restart(name, timeout)
            invoke_with_info(@@restart_info, {
                'name' => name,
                'timeout' => timeout,
            })
        end



        # ``Com::Vmware::Appliance::Techpreview::Services::ServiceInfo``   class  Structure that describes a service and the operations you can perform on a service.
        # @!attribute [rw] name
        #     @return [String]
        #     The name of the service, for example, "vmware-vpxd". This name is unique per machine.
        # @!attribute [rw] description
        #     @return [String]
        #     A description of the service. The description can be empty.
        # @!attribute [rw] operations
        #     @return [Array<Com::Vmware::Appliance::Techpreview::Services::ServiceOps>]
        #     The operations encoded in an array, supported by the service.
        class ServiceInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.services.service_info',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'description' => VAPI::Bindings::StringType.instance,
                            'operations' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Services::ServiceOps')),
                        },
                        ServiceInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :description,
                          :operations

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Services::ServiceOps``   enumerated type  Defines service operations
        # @!attribute [rw] control
        #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
        #     The service accepts arbitrary commands and arguments.
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
        #     The service status can be generated.
        # @!attribute [rw] stop
        #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
        #     The service can be stopped.
        # @!attribute [rw] restart
        #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
        #     The service can be started or restarted.
        class ServiceOps < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.services.service_ops',
                        ServiceOps)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [ServiceOps] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        ServiceOps.new('UNKNOWN', value)
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

            # @!attribute [rw] control
            #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
            #     The service accepts arbitrary commands and arguments.
            CONTROL = ServiceOps.new('CONTROL')

            # @!attribute [rw] status
            #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
            #     The service status can be generated.
            STATUS = ServiceOps.new('STATUS')

            # @!attribute [rw] stop
            #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
            #     The service can be stopped.
            STOP = ServiceOps.new('STOP')

            # @!attribute [rw] restart
            #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
            #     The service can be started or restarted.
            RESTART = ServiceOps.new('RESTART')

        end


    end


    # ``Com::Vmware::Appliance::Techpreview::Shutdown``   class  provides  methods  Performs reboot/shutdow operations on appliance.
    class Shutdown < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.shutdown')

        @@cancel_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('cancel', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@poweroff_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('poweroff', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@reboot_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('reboot', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig'),
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
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'cancel' => @@cancel_info,
            'poweroff' => @@poweroff_info,
            'reboot' => @@reboot_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Cancel pending shutdown action.
        #
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def cancel()
            invoke_with_info(@@cancel_info)
        end


        # Power off the appliance.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig]
        #     Configuration of poweroff action
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def poweroff(config)
            invoke_with_info(@@poweroff_info, {
                'config' => config,
            })
        end


        # Reboot the appliance.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig]
        #     Configuration of reboot action
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def reboot(config)
            invoke_with_info(@@reboot_info, {
                'config' => config,
            })
        end


        # Get details about the pending shutdown action.
        #
        # @return [Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig]
        #     Configuration of pending shutdown action.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig``   class  Structure that defines shutdown configuration returned by Shutdown.get operation
        # @!attribute [rw] shutdown_time
        #     @return [String]
        #     (UTC) time of shutdown represented in "YYYY-MM-DD HH:MM:SS" format.
        # @!attribute [rw] action
        #     @return [String]
        #     Contains a string that describes the pending shutdown operation. The string values for pending operations can be 'poweroff', 'reboot' or ''
        # @!attribute [rw] reason
        #     @return [String]
        #     This will contain string explaining the reason behind the shutdown action
        class ShutdownGetConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.shutdown.shutdown_get_config',
                        {
                            'shutdown_time' => VAPI::Bindings::StringType.instance,
                            'action' => VAPI::Bindings::StringType.instance,
                            'reason' => VAPI::Bindings::StringType.instance,
                        },
                        ShutdownGetConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :shutdown_time,
                          :action,
                          :reason

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig``   class  Structure that defines shutdown configuration.
        # @!attribute [rw] delay
        #     @return [Fixnum]
        #     Delay interval in minutes (optional). if you do not specify delay, then the shutdown starts immediately.
        # @!attribute [rw] reason
        #     @return [String]
        #     Reason for performing shutdown (required).
        class ShutdownConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.shutdown.shutdown_config',
                        {
                            'delay' => VAPI::Bindings::IntegerType.instance,
                            'reason' => VAPI::Bindings::StringType.instance,
                        },
                        ShutdownConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :delay,
                          :reason

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # ``Com::Vmware::Appliance::Techpreview::Timesync``   class  provides  methods  Performs time synchronization configuration.
    class Timesync < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.timesync')

        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig'),
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
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
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


        # Set time synchronization configuration.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig]
        #     Time synchronization configuration.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # Get time synchronization configuration.
        #
        # @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig]
        #     Time synchronization configuration.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig``   class  Structure defining time synchronization configuration.
        # @!attribute [rw] mode
        #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
        #     Time synchronization mode. Mode can have one of the TimeSyncMode enumeration values.
        class TimeSyncConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.timesync.time_sync_config',
                        {
                            'mode' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode'),
                        },
                        TimeSyncConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :mode

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode``   enumerated type  Defines different timsync modes
        # @!attribute [rw] disabled
        #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
        #     Time synchronization is disabled.
        # @!attribute [rw] ntp
        #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
        #     NTP-based time synchronization.
        # @!attribute [rw] host
        #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
        #     VMware Tool-based time synchronization.
        class TimeSyncMode < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.timesync.time_sync_mode',
                        TimeSyncMode)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [TimeSyncMode] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        TimeSyncMode.new('UNKNOWN', value)
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
            #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
            #     Time synchronization is disabled.
            DISABLED = TimeSyncMode.new('DISABLED')

            # @!attribute [rw] ntp
            #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
            #     NTP-based time synchronization.
            NTP = TimeSyncMode.new('NTP')

            # @!attribute [rw] host
            #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
            #     VMware Tool-based time synchronization.
            HOST = TimeSyncMode.new('HOST')

        end


    end


end
