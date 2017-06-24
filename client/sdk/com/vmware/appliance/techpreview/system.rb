#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.system.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Techpreview
                module System
                end
            end
        end
    end
end

module Com::Vmware::Appliance::Techpreview::System

    # ``Com::Vmware::Appliance::Techpreview::System::Update``   class  provides  methods  Performs update repository configuration.
    class Update < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.system.update')

        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet'),
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
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet'),
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


        # Set update repository configuration.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet]
        #     update related configuration
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # Get update repository configuration.
        #
        # @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet]
        #     update related configuration
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet``   class  Structure to set url update repository.
        # @!attribute [rw] current_url
        #     @return [String]
        #     Current appliance update repository URL. Enter "default" to reset the url to the default url.
        # @!attribute [rw] check_updates
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification]
        #     Check for update at the pre-configured repository URL.
        # @!attribute [rw] time
        #     @return [String]
        #     time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
        # @!attribute [rw] day
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     day to query for updates
        # @!attribute [rw] username
        #     @return [String]
        #     username for the url update repository
        # @!attribute [rw] password
        #     @return [String]
        #     password for the url update repository
        class UpdateStructSet < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.system.update.update_struct_set',
                        {
                            'current_URL' => VAPI::Bindings::StringType.instance,
                            'check_updates' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification'),
                            'time' => VAPI::Bindings::StringType.instance,
                            'day' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay'),
                            'username' => VAPI::Bindings::StringType.instance,
                            'password' => VAPI::Bindings::SecretType.instance,
                        },
                        UpdateStructSet,
                        false,
                        nil)
                end
            end

            attr_accessor :current_url,
                          :check_updates,
                          :time,
                          :day,
                          :username,
                          :password

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet``   class  Structure to get url update repository.
        # @!attribute [rw] current_url
        #     @return [String]
        #     Current appliance update repository URL.
        # @!attribute [rw] default_url
        #     @return [String]
        #     Default appliance update repository URL.
        # @!attribute [rw] check_updates
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification]
        #     Check for update at the pre-configured repository URL.
        # @!attribute [rw] time
        #     @return [String]
        #     time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
        # @!attribute [rw] day
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     day to query for updates
        # @!attribute [rw] latest_update_install_time
        #     @return [String]
        #     timestamp of latest update installation
        # @!attribute [rw] latest_update_query_time
        #     @return [String]
        #     timestamp of latest query to update repository
        # @!attribute [rw] username
        #     @return [String]
        #     username for the url update repository
        # @!attribute [rw] password
        #     @return [String]
        #     password for the url update repository
        class UpdateStructGet < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.system.update.update_struct_get',
                        {
                            'current_URL' => VAPI::Bindings::StringType.instance,
                            'default_URL' => VAPI::Bindings::StringType.instance,
                            'check_updates' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification'),
                            'time' => VAPI::Bindings::StringType.instance,
                            'day' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay'),
                            'latest_update_install_time' => VAPI::Bindings::StringType.instance,
                            'latest_update_query_time' => VAPI::Bindings::StringType.instance,
                            'username' => VAPI::Bindings::StringType.instance,
                            'password' => VAPI::Bindings::StringType.instance,
                        },
                        UpdateStructGet,
                        false,
                        nil)
                end
            end

            attr_accessor :current_url,
                          :default_url,
                          :check_updates,
                          :time,
                          :day,
                          :latest_update_install_time,
                          :latest_update_query_time,
                          :username,
                          :password

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification``   enumerated type  Defines state for automatic update notification
        # @!attribute [rw] disabled
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification]
        #     Automatic update notification is disabled. Disable periodically query the configured url for updates.
        # @!attribute [rw] enabled
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification]
        #     Automatic update notification is enabled. Enable periodically query the configured url for updates.
        class AutoUpdateNotification < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.system.update.auto_update_notification',
                        AutoUpdateNotification)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [AutoUpdateNotification] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        AutoUpdateNotification.new('UNKNOWN', value)
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
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification]
            #     Automatic update notification is disabled. Disable periodically query the configured url for updates.
            DISABLED = AutoUpdateNotification.new('DISABLED')

            # @!attribute [rw] enabled
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification]
            #     Automatic update notification is enabled. Enable periodically query the configured url for updates.
            ENABLED = AutoUpdateNotification.new('ENABLED')

        end


        # ``Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay``   enumerated type  Defines days to query for updates
        # @!attribute [rw] monday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates on Monday
        # @!attribute [rw] tuesday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates on Tuesday
        # @!attribute [rw] friday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates on Friday
        # @!attribute [rw] wednesday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates on Wednesday
        # @!attribute [rw] thursday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates on Thursday
        # @!attribute [rw] saturday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates on Saturday
        # @!attribute [rw] sunday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates on Sunday
        # @!attribute [rw] everyday
        #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
        #     query for updates everyday
        class UpdateDay < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.system.update.update_day',
                        UpdateDay)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [UpdateDay] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        UpdateDay.new('UNKNOWN', value)
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

            # @!attribute [rw] monday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates on Monday
            MONDAY = UpdateDay.new('MONDAY')

            # @!attribute [rw] tuesday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates on Tuesday
            TUESDAY = UpdateDay.new('TUESDAY')

            # @!attribute [rw] friday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates on Friday
            FRIDAY = UpdateDay.new('FRIDAY')

            # @!attribute [rw] wednesday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates on Wednesday
            WEDNESDAY = UpdateDay.new('WEDNESDAY')

            # @!attribute [rw] thursday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates on Thursday
            THURSDAY = UpdateDay.new('THURSDAY')

            # @!attribute [rw] saturday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates on Saturday
            SATURDAY = UpdateDay.new('SATURDAY')

            # @!attribute [rw] sunday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates on Sunday
            SUNDAY = UpdateDay.new('SUNDAY')

            # @!attribute [rw] everyday
            #     @return [Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay]
            #     query for updates everyday
            EVERYDAY = UpdateDay.new('EVERYDAY')

        end


    end


end
