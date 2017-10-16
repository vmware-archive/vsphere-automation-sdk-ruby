#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
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
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.ntp')

    TEST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('test', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'test' => TEST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
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
      invoke_with_info(TEST_INFO,
                       'servers' => servers)
    end

    # Get the NTP configuration status. If you run the 'timesync.get' command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The 'ntp' command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
    #
    # @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig]
    #     NTP config
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def get
      invoke_with_info(GET_INFO)
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
              'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
            },
            NTPConfig,
            false,
            nil
          )
        end
      end

      attr_accessor :status,
                    :servers

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
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
              'result' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus')
            },
            Message,
            false,
            nil
          )
        end
      end

      attr_accessor :message,
                    :result

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
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
              'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Ntp::Message'))
            },
            TestStatusInfo,
            false,
            nil
          )
        end
      end

      attr_accessor :status,
                    :messages

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
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
            NTPStatus
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [NTPStatus] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          NTPStatus.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] down
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
      #     NTP daemon is not running.
      DOWN = NTPStatus.send(:new, 'DOWN')

      # @!attribute [rw] unknown
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
      #     Cannot retrieve NTP daemon status.
      UNKNOWN = NTPStatus.send(:new, 'UNKNOWN')

      # @!attribute [rw] up
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus]
      #     NTP daemon is running.
      UP = NTPStatus.send(:new, 'UP')
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
            TestStatus
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [TestStatus] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          TestStatus.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] orange
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
      #     In case data has more than one test, this indicates not all tests were successful
      ORANGE = TestStatus.send(:new, 'ORANGE')

      # @!attribute [rw] green
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
      #     All tests were successful for given data
      GREEN = TestStatus.send(:new, 'GREEN')

      # @!attribute [rw] red
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::TestStatus]
      #     All tests failed for given data
      RED = TestStatus.send(:new, 'RED')
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
            MessageStatus
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [MessageStatus] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          MessageStatus.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] failure
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus]
      #     message indicates the test failed.
      FAILURE = MessageStatus.send(:new, 'FAILURE')

      # @!attribute [rw] success
      #     @return [Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus]
      #     message indicates that the test was successful.
      SUCCESS = MessageStatus.send(:new, 'SUCCESS')
    end
  end
  # ``Com::Vmware::Appliance::Techpreview::Services``   class  provides  methods  Manages services.
  class ServicesService < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.services')

    CONTROL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('control', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'args' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
        'name' => VAPI::Bindings::StringType.instance,
        'timeout' => VAPI::Bindings::IntegerType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Services::ServiceInfo')),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    STOP_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('stop', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'name' => VAPI::Bindings::StringType.instance,
        'timeout' => VAPI::Bindings::IntegerType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    RESTART_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('restart', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'name' => VAPI::Bindings::StringType.instance,
        'timeout' => VAPI::Bindings::IntegerType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'control' => CONTROL_INFO,
      'list' => LIST_INFO,
      'stop' => STOP_INFO,
      'restart' => RESTART_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
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
      invoke_with_info(CONTROL_INFO,
                       'args' => args,
                       'name' => name,
                       'timeout' => timeout)
    end

    # Get a list of all known services.
    #
    # @return [Array<Com::Vmware::Appliance::Techpreview::Services::ServiceInfo>]
    #     List of services.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def list
      invoke_with_info(LIST_INFO)
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
      invoke_with_info(STOP_INFO,
                       'name' => name,
                       'timeout' => timeout)
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
      invoke_with_info(RESTART_INFO,
                       'name' => name,
                       'timeout' => timeout)
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
              'operations' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Services::ServiceOps'))
            },
            ServiceInfo,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :description,
                    :operations

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
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
            ServiceOps
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [ServiceOps] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          ServiceOps.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] control
      #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
      #     The service accepts arbitrary commands and arguments.
      CONTROL = ServiceOps.send(:new, 'CONTROL')

      # @!attribute [rw] status
      #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
      #     The service status can be generated.
      STATUS = ServiceOps.send(:new, 'STATUS')

      # @!attribute [rw] stop
      #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
      #     The service can be stopped.
      STOP = ServiceOps.send(:new, 'STOP')

      # @!attribute [rw] restart
      #     @return [Com::Vmware::Appliance::Techpreview::Services::ServiceOps]
      #     The service can be started or restarted.
      RESTART = ServiceOps.send(:new, 'RESTART')
    end
  end
  # ``Com::Vmware::Appliance::Techpreview::Shutdown``   class  provides  methods  Performs reboot/shutdow operations on appliance.
  class Shutdown < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.shutdown')

    CANCEL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('cancel', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    POWEROFF_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('poweroff', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    REBOOT_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('reboot', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'cancel' => CANCEL_INFO,
      'poweroff' => POWEROFF_INFO,
      'reboot' => REBOOT_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Cancel pending shutdown action.
    #
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def cancel
      invoke_with_info(CANCEL_INFO)
    end

    # Power off the appliance.
    #
    # @param config [Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig]
    #     Configuration of poweroff action
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def poweroff(config)
      invoke_with_info(POWEROFF_INFO,
                       'config' => config)
    end

    # Reboot the appliance.
    #
    # @param config [Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig]
    #     Configuration of reboot action
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def reboot(config)
      invoke_with_info(REBOOT_INFO,
                       'config' => config)
    end

    # Get details about the pending shutdown action.
    #
    # @return [Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig]
    #     Configuration of pending shutdown action.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def get
      invoke_with_info(GET_INFO)
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
              'reason' => VAPI::Bindings::StringType.instance
            },
            ShutdownGetConfig,
            false,
            nil
          )
        end
      end

      attr_accessor :shutdown_time,
                    :action,
                    :reason

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
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
              'reason' => VAPI::Bindings::StringType.instance
            },
            ShutdownConfig,
            false,
            nil
          )
        end
      end

      attr_accessor :delay,
                    :reason

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # ``Com::Vmware::Appliance::Techpreview::Timesync``   class  provides  methods  Performs time synchronization configuration.
  class Timesync < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.timesync')

    SET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('set', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'set' => SET_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Set time synchronization configuration.
    #
    # @param config [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig]
    #     Time synchronization configuration.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def set(config)
      invoke_with_info(SET_INFO,
                       'config' => config)
    end

    # Get time synchronization configuration.
    #
    # @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig]
    #     Time synchronization configuration.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def get
      invoke_with_info(GET_INFO)
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
              'mode' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode')
            },
            TimeSyncConfig,
            false,
            nil
          )
        end
      end

      attr_accessor :mode

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
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
            TimeSyncMode
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [TimeSyncMode] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          TimeSyncMode.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] disabled
      #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
      #     Time synchronization is disabled.
      DISABLED = TimeSyncMode.send(:new, 'DISABLED')

      # @!attribute [rw] ntp
      #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
      #     NTP-based time synchronization.
      NTP = TimeSyncMode.send(:new, 'NTP')

      # @!attribute [rw] host
      #     @return [Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode]
      #     VMware Tool-based time synchronization.
      HOST = TimeSyncMode.send(:new, 'HOST')
    end
  end
end
