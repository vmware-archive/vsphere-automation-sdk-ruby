#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.access.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Access
            end
        end
    end
end

module Com::Vmware::Appliance::Access

    # ``Com::Vmware::Appliance::Access::Consolecli``   class  provides  methods  Get/Set enabled state of CLI.
    class Consolecli < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.access.consolecli')

        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'enabled' => VAPI::Bindings::BooleanType.instance,
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
            VAPI::Bindings::BooleanType.instance,
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


        # Set enabled state of the console-based controlled CLI (TTY1).
        #
        # @param enabled [Boolean]
        #     Console-based controlled CLI is enabled.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(enabled)
            invoke_with_info(@@set_info, {
                'enabled' => enabled,
            })
        end


        # Get enabled state of the console-based controlled CLI (TTY1).
        #
        # @return [Boolean]
        #     Console-based controlled CLI is enabled.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end


    end


    # ``Com::Vmware::Appliance::Access::Dcui``   class  provides  methods  Get/Set enabled state of DCUI.
    class Dcui < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.access.dcui')

        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'enabled' => VAPI::Bindings::BooleanType.instance,
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
            VAPI::Bindings::BooleanType.instance,
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


        # Set enabled state of Direct Console User Interface (DCUI TTY2).
        #
        # @param enabled [Boolean]
        #     DCUI is enabled.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(enabled)
            invoke_with_info(@@set_info, {
                'enabled' => enabled,
            })
        end


        # Get enabled state of Direct Console User Interface (DCUI TTY2).
        #
        # @return [Boolean]
        #     DCUI is enabled.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end


    end


    # ``Com::Vmware::Appliance::Access::Shell``   class  provides  methods  Get/Set enabled state of BASH.
    class Shell < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.access.shell')

        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Access::Shell::ShellConfig'),
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
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Access::Shell::ShellConfig'),
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


        # Set enabled state of BASH, that is, access to BASH from within the controlled CLI.
        #
        # @param config [Com::Vmware::Appliance::Access::Shell::ShellConfig]
        #     Shell configuration
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
        #
        # @return [Com::Vmware::Appliance::Access::Shell::ShellConfig]
        #     Current shell configuration.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Access::Shell::ShellConfig``   class  Structure that defines shell configuration.
        # @!attribute [rw] enabled
        #     @return [Boolean]
        #     Enabled can be set to true or false
        # @!attribute [rw] timeout
        #     @return [Fixnum]
        #     The timeout (in seconds) specifies how long you enable the Shell access. The maximum timeout is 86400 seconds(1 day).
        class ShellConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.access.shell.shell_config',
                        {
                            'enabled' => VAPI::Bindings::BooleanType.instance,
                            'timeout' => VAPI::Bindings::IntegerType.instance,
                        },
                        ShellConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :enabled,
                          :timeout

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # ``Com::Vmware::Appliance::Access::Ssh``   class  provides  methods  Get/Set enabled state of SSH-based controlled CLI.
    class Ssh < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.access.ssh')

        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'enabled' => VAPI::Bindings::BooleanType.instance,
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
            VAPI::Bindings::BooleanType.instance,
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


        # Set enabled state of the SSH-based controlled CLI.
        #
        # @param enabled [Boolean]
        #     SSH-based controlled CLI is enabled.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(enabled)
            invoke_with_info(@@set_info, {
                'enabled' => enabled,
            })
        end


        # Get enabled state of the SSH-based controlled CLI.
        #
        # @return [Boolean]
        #     SSH-based controlled CLI is enabled.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end


    end


end
