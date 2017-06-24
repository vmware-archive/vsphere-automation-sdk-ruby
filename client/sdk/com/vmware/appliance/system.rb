#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.system.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module System
            end
        end
    end
end

module Com::Vmware::Appliance::System

    # ``Com::Vmware::Appliance::System::Uptime``   class  provides  methods  Get the system uptime.
    class Uptime < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.system.uptime')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::DoubleType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get the system uptime.
        #
        # @return [Float]
        #     system uptime
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end


    end


    # ``Com::Vmware::Appliance::System::Storage``   class  provides  methods  Appliance storage configuration
    class Storage < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.system.storage')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::System::Storage::StorageMapping')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@resize_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('resize', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'resize' => @@resize_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get disk to partition mapping
        #
        # @return [Array<Com::Vmware::Appliance::System::Storage::StorageMapping>]
        #     list of mapping items
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Resize all partitions to 100 percent of disk size
        #
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def resize()
            invoke_with_info(@@resize_info)
        end



        # ``Com::Vmware::Appliance::System::Storage::StorageMapping``   class  FIXME: no docstring
        # @!attribute [rw] disk
        #     @return [String]
        #     NGC disk ID
        # @!attribute [rw] partition
        #     @return [String]
        #     Storage partition name
        class StorageMapping < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.system.storage.storage_mapping',
                        {
                            'disk' => VAPI::Bindings::IdType.new(resource_types='com.vmware.appliance.system.storage'),
                            'partition' => VAPI::Bindings::StringType.instance,
                        },
                        StorageMapping,
                        false,
                        nil)
                end
            end

            attr_accessor :disk,
                          :partition

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # ``Com::Vmware::Appliance::System::Time``   class  provides  methods  Gets system time.
    class Time < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.system.time')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::System::Time::SystemTimeStruct'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get system time.
        #
        # @return [Com::Vmware::Appliance::System::Time::SystemTimeStruct]
        #     System time
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::System::Time::SystemTimeStruct``   class  Structure representing the system time.
        # @!attribute [rw] seconds_since_epoch
        #     @return [Float]
        #     seconds since the epoch
        # @!attribute [rw] date
        #     @return [String]
        #     date format: Thu 07-31-2014
        # @!attribute [rw] time
        #     @return [String]
        #     time format: 18:18:32
        # @!attribute [rw] timezone
        #     @return [String]
        #     timezone
        class SystemTimeStruct < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.system.time.system_time_struct',
                        {
                            'seconds_since_epoch' => VAPI::Bindings::DoubleType.instance,
                            'date' => VAPI::Bindings::StringType.instance,
                            'time' => VAPI::Bindings::StringType.instance,
                            'timezone' => VAPI::Bindings::StringType.instance,
                        },
                        SystemTimeStruct,
                        false,
                        nil)
                end
            end

            attr_accessor :seconds_since_epoch,
                          :date,
                          :time,
                          :timezone

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # ``Com::Vmware::Appliance::System::Version``   class  provides  methods  Get the appliance version.
    class Version < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.system.version')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::System::Version::VersionStruct'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get the version.
        #
        # @return [Com::Vmware::Appliance::System::Version::VersionStruct]
        #     version information about the appliance
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::System::Version::VersionStruct``   class  Structure representing appliance version information.
        # @!attribute [rw] version
        #     @return [String]
        #     Appliance version.
        # @!attribute [rw] product
        #     @return [String]
        #     Appliance name.
        # @!attribute [rw] build
        #     @return [String]
        #     Appliance build number.
        # @!attribute [rw] type
        #     @return [String]
        #     Type of product. Same product can have different deployment options, which is represented by type.
        # @!attribute [rw] summary
        #     @return [String]
        #     Summary of patch (empty string, if the appliance has not been patched)
        # @!attribute [rw] releasedate
        #     @return [String]
        #     Release date of patch (empty string, if the appliance has not been patched)
        # @!attribute [rw] install_time
        #     @return [String]
        #     Display the date and time when this system was first installed. Value will not change on subsequent updates.
        class VersionStruct < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.system.version.version_struct',
                        {
                            'version' => VAPI::Bindings::StringType.instance,
                            'product' => VAPI::Bindings::StringType.instance,
                            'build' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::StringType.instance,
                            'summary' => VAPI::Bindings::StringType.instance,
                            'releasedate' => VAPI::Bindings::StringType.instance,
                            'install_time' => VAPI::Bindings::StringType.instance,
                        },
                        VersionStruct,
                        false,
                        nil)
                end
            end

            attr_accessor :version,
                          :product,
                          :build,
                          :type,
                          :summary,
                          :releasedate,
                          :install_time

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


end
