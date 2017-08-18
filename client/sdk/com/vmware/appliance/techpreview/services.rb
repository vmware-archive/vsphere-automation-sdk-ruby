#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.services.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Appliance
      module Techpreview
        module Services
        end
      end
    end
  end
end

module Com::Vmware::Appliance::Techpreview::Services
  # ``Com::Vmware::Appliance::Techpreview::Services::Status``   class  provides  methods  Get status of a service.
  class Status < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.services.status')

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'name' => VAPI::Bindings::StringType.instance,
        'timeout' => VAPI::Bindings::IntegerType.instance
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Get status of a service.
    #
    # @param name [String]
    #     Name of a service.
    # @param timeout [Fixnum]
    #     Timeout in seconds. Zero (0) means no timeout.
    # @return [Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus]
    #     Status of the service.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def get(name, timeout)
      invoke_with_info(GET_INFO,
                       'name' => name,
                       'timeout' => timeout)
    end

    # ``Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus``   enumerated type  Defines service status
    # @!attribute [rw] down
    #     @return [Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus]
    #     Service is not running.
    # @!attribute [rw] up
    #     @return [Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus]
    #     Service is running.
    class ServiceStatus < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.techpreview.services.status.service_status',
            ServiceStatus
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [ServiceStatus] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          ServiceStatus.send(:new, 'UNKNOWN', value)
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
      #     @return [Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus]
      #     Service is not running.
      DOWN = ServiceStatus.send(:new, 'DOWN')

      # @!attribute [rw] up
      #     @return [Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus]
      #     Service is running.
      UP = ServiceStatus.send(:new, 'UP')
    end
  end
end
