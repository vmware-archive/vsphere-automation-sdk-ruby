#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.vmon.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Appliance
      module Vmon
      end
    end
  end
end

# The  ``com.vmware.appliance.vmon``   package  provides  classs  to manage a set of services that are part of the vCenter Server.
module Com::Vmware::Appliance::Vmon
  # The  ``Com::Vmware::Appliance::Vmon::Service``   class  provides  methods  to manage a single/set of services that are managed by vMon.
  class Service < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.vmon.service')

    START_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('start', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service' => VAPI::Bindings::IdType.new('com.vmware.appliance.vmon.Service')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.timed_out' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::TimedOut'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    STOP_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('stop', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service' => VAPI::Bindings::IdType.new('com.vmware.appliance.vmon.Service')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    RESTART_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('restart', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service' => VAPI::Bindings::IdType.new('com.vmware.appliance.vmon.Service')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.timed_out' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::TimedOut'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service' => VAPI::Bindings::IdType.new('com.vmware.appliance.vmon.Service')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Vmon::Service::Info'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    UPDATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('update', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service' => VAPI::Bindings::IdType.new('com.vmware.appliance.vmon.Service'),
        'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Vmon::Service::UpdateSpec')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    LIST_DETAILS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_details', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Vmon::Service::Info')),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'start' => START_INFO,
      'stop' => STOP_INFO,
      'restart' => RESTART_INFO,
      'get' => GET_INFO,
      'update' => UPDATE_INFO,
      'list_details' => LIST_DETAILS_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Starts a service
    #
    # @param service [String]
    #     identifier of the service to start
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service associated with  ``service``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the operation is denied in the current state of the service. If a stop or restart operation is in progress, the start operation will not be allowed.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if start operation is issued on a service which has startup type   :attr:`Com::Vmware::Appliance::Vmon::Service::StartupType.DISABLED`  .
    # @raise [Com::Vmware::Vapi::Std::Errors::TimedOut]
    #     if any timeout occurs during the execution of the start operation. Timeout occurs when the service takes longer than StartTimeout to start.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if any other error occurs during the execution of the operation.
    def start(service)
      invoke_with_info(START_INFO,
                       'service' => service)
    end

    # Stops a service
    #
    # @param service [String]
    #     identifier of the service to stop
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service associated with  ``service``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if any other error occurs during the execution of the operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the operation is denied in the current state of the service. If a stop operation is in progress, issuing another stop operation will lead to this error.
    def stop(service)
      invoke_with_info(STOP_INFO,
                       'service' => service)
    end

    # Restarts a service
    #
    # @param service [String]
    #     identifier of the service to restart
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service associated with  ``service``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::TimedOut]
    #     if any timeout occurs during the execution of the restart operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the operation is denied in the current state of the service. If a stop or start operation is in progress, issuing a restart operation will lead to this error.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if a restart operation is issued on a service which has startup type   :attr:`Com::Vmware::Appliance::Vmon::Service::StartupType.DISABLED` 
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if any other error occurs during the execution of the operation.
    def restart(service)
      invoke_with_info(RESTART_INFO,
                       'service' => service)
    end

    # Returns the state of a service.
    #
    # @param service [String]
    #     identifier of the service whose state is being queried.
    # @return [Com::Vmware::Appliance::Vmon::Service::Info]
    #     Service Info structure.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service associated with  ``service``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if any other error occurs during the execution of the operation.
    def get(service)
      invoke_with_info(GET_INFO,
                       'service' => service)
    end

    # Updates the properties of a service.
    #
    # @param service [String]
    #     identifier of the service whose properties are being updated.
    # @param spec [Com::Vmware::Appliance::Vmon::Service::UpdateSpec]
    #     Service Update specification.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service associated with  ``service``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if any other error occurs during the execution of the operation.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if the operation is denied in the current state of the service. If a start, stop or restart operation is in progress, update operation will fail with this error.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     if a request to set the   :attr:`Com::Vmware::Appliance::Vmon::Service::UpdateSpec.startup_type`    field  of  ``spec``  to   :attr:`Com::Vmware::Appliance::Vmon::Service::StartupType.DISABLED`   comes in for a service that is not in   :attr:`Com::Vmware::Appliance::Vmon::Service::State.STOPPED`   state.
    def update(service, spec)
      invoke_with_info(UPDATE_INFO,
                       'service' => service,
                       'spec' => spec)
    end

    # Lists details of services managed by vMon.
    #
    # @return [Hash<String, Com::Vmware::Appliance::Vmon::Service::Info>]
    #     Map of service identifiers to service Info structures.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if any error occurs during the execution of the operation.
    def list_details
      invoke_with_info(LIST_DETAILS_INFO)
    end

    # The  ``Com::Vmware::Appliance::Vmon::Service::Info``   class  contains information about a service.
    # @!attribute [rw] name_key
    #     @return [String]
    #     Service name key. Can be used to lookup resource bundle
    # @!attribute [rw] description_key
    #     @return [String]
    #     Service description key. Can be used to lookup resource bundle
    # @!attribute [rw] startup_type
    #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType]
    #     Startup Type.
    # @!attribute [rw] state
    #     @return [Com::Vmware::Appliance::Vmon::Service::State]
    #     Running State.
    # @!attribute [rw] health
    #     @return [Com::Vmware::Appliance::Vmon::Service::Health]
    #     Health of service.
    #     This  field  is optional and it is only relevant when the value of  ``state``  is   :attr:`Com::Vmware::Appliance::Vmon::Service::State.STARTED`  .
    # @!attribute [rw] health_messages
    #     @return [Array<Com::Vmware::Vapi::Std::LocalizableMessage>]
    #     Localizable messages associated with the health of the service
    #     This  field  is optional and it is only relevant when the value of  ``state``  is   :attr:`Com::Vmware::Appliance::Vmon::Service::State.STARTED`  .
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.vmon.service.info',
            {
              'name_key' => VAPI::Bindings::StringType.instance,
              'description_key' => VAPI::Bindings::StringType.instance,
              'startup_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Vmon::Service::StartupType'),
              'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Vmon::Service::State'),
              'health' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Vmon::Service::Health')),
              'health_messages' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')))
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :name_key,
                    :description_key,
                    :startup_type,
                    :state,
                    :health,
                    :health_messages

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Appliance::Vmon::Service::UpdateSpec``   class  describes the changes to be made to the configuration of the service.
    # @!attribute [rw] startup_type
    #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType, nil]
    #     Startup Type
    #     If unspecified, leaves value unchanged.
    class UpdateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.vmon.service.update_spec',
            {
              'startup_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Vmon::Service::StartupType'))
            },
            UpdateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :startup_type

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Appliance::Vmon::Service::StartupType``   enumerated type  defines valid Startup Type for services managed by vMon.
    # @!attribute [rw] manual
    #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType]
    #     Service Startup type is Manual, thus issuing an explicit start on the service will start it.
    # @!attribute [rw] automatic
    #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType]
    #     Service Startup type is Automatic, thus during starting all services or issuing explicit start on the service will start it.
    # @!attribute [rw] disabled
    #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType]
    #     Service Startup type is Disabled, thus it will not start unless the startup type changes to manual or automatic.
    class StartupType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.vmon.service.startup_type',
            StartupType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [StartupType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          StartupType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] manual
      #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType]
      #     Service Startup type is Manual, thus issuing an explicit start on the service will start it.
      MANUAL = StartupType.send(:new, 'MANUAL')

      # @!attribute [rw] automatic
      #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType]
      #     Service Startup type is Automatic, thus during starting all services or issuing explicit start on the service will start it.
      AUTOMATIC = StartupType.send(:new, 'AUTOMATIC')

      # @!attribute [rw] disabled
      #     @return [Com::Vmware::Appliance::Vmon::Service::StartupType]
      #     Service Startup type is Disabled, thus it will not start unless the startup type changes to manual or automatic.
      DISABLED = StartupType.send(:new, 'DISABLED')
    end
    # The  ``Com::Vmware::Appliance::Vmon::Service::State``   enumerated type  defines valid Run State for services.
    # @!attribute [rw] starting
    #     @return [Com::Vmware::Appliance::Vmon::Service::State]
    #     Service Run State is Starting, it is still not functional
    # @!attribute [rw] stopping
    #     @return [Com::Vmware::Appliance::Vmon::Service::State]
    #     Service Run State is Stopping, it is not functional
    # @!attribute [rw] started
    #     @return [Com::Vmware::Appliance::Vmon::Service::State]
    #     Service Run State is Started, it is fully functional
    # @!attribute [rw] stopped
    #     @return [Com::Vmware::Appliance::Vmon::Service::State]
    #     Service Run State is Stopped
    class State < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.vmon.service.state',
            State
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [State] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          State.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] starting
      #     @return [Com::Vmware::Appliance::Vmon::Service::State]
      #     Service Run State is Starting, it is still not functional
      STARTING = State.send(:new, 'STARTING')

      # @!attribute [rw] stopping
      #     @return [Com::Vmware::Appliance::Vmon::Service::State]
      #     Service Run State is Stopping, it is not functional
      STOPPING = State.send(:new, 'STOPPING')

      # @!attribute [rw] started
      #     @return [Com::Vmware::Appliance::Vmon::Service::State]
      #     Service Run State is Started, it is fully functional
      STARTED = State.send(:new, 'STARTED')

      # @!attribute [rw] stopped
      #     @return [Com::Vmware::Appliance::Vmon::Service::State]
      #     Service Run State is Stopped
      STOPPED = State.send(:new, 'STOPPED')
    end
    # The  ``Com::Vmware::Appliance::Vmon::Service::Health``   enumerated type  defines the possible values for health of a service.
    # @!attribute [rw] degraded
    #     @return [Com::Vmware::Appliance::Vmon::Service::Health]
    #     Service is in degraded state, it is not functional.
    # @!attribute [rw] healthy
    #     @return [Com::Vmware::Appliance::Vmon::Service::Health]
    #     Service is in a healthy state and is fully functional.
    # @!attribute [rw] healthy_with_warnings
    #     @return [Com::Vmware::Appliance::Vmon::Service::Health]
    #     Service is healthy with warnings.
    class Health < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.vmon.service.health',
            Health
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Health] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Health.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] degraded
      #     @return [Com::Vmware::Appliance::Vmon::Service::Health]
      #     Service is in degraded state, it is not functional.
      DEGRADED = Health.send(:new, 'DEGRADED')

      # @!attribute [rw] healthy
      #     @return [Com::Vmware::Appliance::Vmon::Service::Health]
      #     Service is in a healthy state and is fully functional.
      HEALTHY = Health.send(:new, 'HEALTHY')

      # @!attribute [rw] healthy_with_warnings
      #     @return [Com::Vmware::Appliance::Vmon::Service::Health]
      #     Service is healthy with warnings.
      HEALTHY_WITH_WARNINGS = Health.send(:new, 'HEALTHY_WITH_WARNINGS')
    end
  end
end
