#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.localaccounts.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Techpreview
                module Localaccounts
                end
            end
        end
    end
end

module Com::Vmware::Appliance::Techpreview::Localaccounts

    # ``Com::Vmware::Appliance::Techpreview::Localaccounts::User``   class  provides  methods  Perform operations on local user account.
    class User < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.localaccounts.user')

        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'username' => VAPI::Bindings::StringType.instance,
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@add_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('add', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig'),
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
                'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig'),
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
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet')),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'username' => VAPI::Bindings::StringType.instance,
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'delete' => @@delete_info,
            'add' => @@add_info,
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


        # Delete a local user account.
        #
        # @param username [String]
        #     User login name.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def delete(username)
            invoke_with_info(@@delete_info, {
                'username' => username,
            })
        end


        # Create a new local user account.
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig]
        #     User configuration.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def add(config)
            invoke_with_info(@@add_info, {
                'config' => config,
            })
        end


        # Update local user account properties role, full name, enabled status and password
        #
        # @param config [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig]
        #     User configuration.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(config)
            invoke_with_info(@@set_info, {
                'config' => config,
            })
        end


        # List of local accounts
        #
        # @return [Array<Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet>]
        #     User configuration.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def list()
            invoke_with_info(@@list_info)
        end


        # Get the local user account information.
        #
        # @param username [String]
        #     User login name.
        # @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet]
        #     local user account information
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get(username)
            invoke_with_info(@@get_info, {
                'username' => username,
            })
        end



        # ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet``   class  Structure defines a user configuration for user.get API.
        # @!attribute [rw] username
        #     @return [String]
        #     User login name
        # @!attribute [rw] role
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
        #     User roles
        # @!attribute [rw] fullname
        #     @return [String]
        #     User full name
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus]
        #     Shows whether the user account is enabled or disabled.
        # @!attribute [rw] passwordstatus
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus]
        #     Shows whether the user account is still valid or expired.
        # @!attribute [rw] email
        #     @return [String]
        #     Email address of the local account.
        class UserConfigGet < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.localaccounts.user.user_config_get',
                        {
                            'username' => VAPI::Bindings::StringType.instance,
                            'role' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole'),
                            'fullname' => VAPI::Bindings::StringType.instance,
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus'),
                            'passwordstatus' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus'),
                            'email' => VAPI::Bindings::StringType.instance,
                        },
                        UserConfigGet,
                        false,
                        nil)
                end
            end

            attr_accessor :username,
                          :role,
                          :fullname,
                          :status,
                          :passwordstatus,
                          :email

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig``   class  Structure that defines a new user configuration for CLI.
        # @!attribute [rw] username
        #     @return [String]
        #     User login name
        # @!attribute [rw] role
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
        #     User roles
        # @!attribute [rw] fullname
        #     @return [String]
        #     User full name
        # @!attribute [rw] status
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus]
        #     Enabled status of the local account
        # @!attribute [rw] email
        #     @return [String]
        #     email of the local account
        class UserConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.localaccounts.user.user_config',
                        {
                            'username' => VAPI::Bindings::StringType.instance,
                            'role' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole'),
                            'fullname' => VAPI::Bindings::StringType.instance,
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus'),
                            'email' => VAPI::Bindings::StringType.instance,
                        },
                        UserConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :username,
                          :role,
                          :fullname,
                          :status,
                          :email

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig``   class  Structure that defines a new user configuration.
        # @!attribute [rw] username
        #     @return [String]
        #     User login name
        # @!attribute [rw] role
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole, nil]
        #     User roles. The default role is operator.
        #     role Default role is operator
        # @!attribute [rw] password
        #     @return [String]
        #     User login password In Interactive mode, provide --password as part of the command, and enter the value on the prompt. When accessed remotely, provide --password value as part the command.
        # @!attribute [rw] fullname
        #     @return [String, nil]
        #     User full name
        #     fullname Optional full name for a person
        # @!attribute [rw] email
        #     @return [String, nil]
        #     Email address of the local account.
        #     email Optional email
        class NewUserConfig < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.appliance.techpreview.localaccounts.user.new_user_config',
                        {
                            'username' => VAPI::Bindings::StringType.instance,
                            'role' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole')),
                            'password' => VAPI::Bindings::SecretType.instance,
                            'fullname' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'email' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        },
                        NewUserConfig,
                        false,
                        nil)
                end
            end

            attr_accessor :username,
                          :role,
                          :password,
                          :fullname,
                          :email

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus``   enumerated type  Defines status of user accounts
        # @!attribute [rw] disabled
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus]
        #     The user account is disabled.
        # @!attribute [rw] enabled
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus]
        #     The user account is enabled.
        class UserAccountStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.localaccounts.user.user_account_status',
                        UserAccountStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [UserAccountStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        UserAccountStatus.new('UNKNOWN', value)
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
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus]
            #     The user account is disabled.
            DISABLED = UserAccountStatus.new('DISABLED')

            # @!attribute [rw] enabled
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus]
            #     The user account is enabled.
            ENABLED = UserAccountStatus.new('ENABLED')

        end


        # ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus``   enumerated type  Defines state of user password
        # @!attribute [rw] notset
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus]
        #     No password has been set
        # @!attribute [rw] expired
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus]
        #     The password has expired.
        # @!attribute [rw] valid
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus]
        #     The password is still valid.
        class UserPasswordStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.localaccounts.user.user_password_status',
                        UserPasswordStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [UserPasswordStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        UserPasswordStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] notset
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus]
            #     No password has been set
            NOTSET = UserPasswordStatus.new('NOTSET')

            # @!attribute [rw] expired
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus]
            #     The password has expired.
            EXPIRED = UserPasswordStatus.new('EXPIRED')

            # @!attribute [rw] valid
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus]
            #     The password is still valid.
            VALID = UserPasswordStatus.new('VALID')

        end


        # ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole``   enumerated type  Defines user roles for appliance
        # @!attribute [rw] admin
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
        #     Able to configure the appliance.
        # @!attribute [rw] operator
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
        #     Able to read the appliance configuration.
        # @!attribute [rw] super_admin
        #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
        #     Able to configure the appliance, manage local accounts and use the BASH shell
        class UserRole < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.techpreview.localaccounts.user.user_role',
                        UserRole)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [UserRole] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        UserRole.new('UNKNOWN', value)
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

            # @!attribute [rw] admin
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
            #     Able to configure the appliance.
            ADMIN = UserRole.new('ADMIN')

            # @!attribute [rw] operator
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
            #     Able to read the appliance configuration.
            OPERATOR = UserRole.new('OPERATOR')

            # @!attribute [rw] super_admin
            #     @return [Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole]
            #     Able to configure the appliance, manage local accounts and use the BASH shell
            SUPER_ADMIN = UserRole.new('SUPER_ADMIN')

        end


    end


end
