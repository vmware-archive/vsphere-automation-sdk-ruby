#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.vm.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vcenter
            module Vm
            end
        end
    end
end

# The  ``com.vmware.vcenter.vm``   package  provides  classs  for managing virtual machines.
module Com::Vmware::Vcenter::Vm

    # The  ``Com::Vmware::Vcenter::Vm::Hardware``   class  provides  methods  for configuring the virtual hardware of a virtual machine.
    class HardwareService < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.hardware')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@upgrade_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('upgrade', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                'version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Version')),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'update' => @@update_info,
            'upgrade' => @@upgrade_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns the virtual hardware settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Com::Vmware::Vcenter::Vm::Hardware::Info]
        #     Virtual hardware settings of the virtual machine.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm)
            invoke_with_info(@@get_info, {
                'vm' => vm,
            })
        end


        # Updates the virtual hardware settings of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param spec [Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec]
        #     Specification for updating the virtual hardware settings of the virtual machine.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual machine is already configured for the desired hardware version.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the requested virtual hardware version is not newer than the current version.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
        #     if the requested virtual hardware version is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
        #     if the virtual machine is busy performing another operation.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def update(vm, spec)
            invoke_with_info(@@update_info, {
                'vm' => vm,
                'spec' => spec,
            })
        end


        # Upgrades the virtual machine to a newer virtual hardware version.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @param version [Com::Vmware::Vcenter::Vm::Hardware::Version, nil]
        #     New virtual machine version.
        #     If  nil , defaults to the most recent virtual hardware version supported by the server.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is not powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual machine is already configured for the desired hardware version.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if  ``version``  is older than the current virtual hardware version.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
        #     if  ``version``  is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
        #     if the virtual machine is busy performing another operation.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def upgrade(vm, version=nil)
            invoke_with_info(@@upgrade_info, {
                'vm' => vm,
                'version' => version,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Info``   class  contains information related to the virtual hardware of a virtual machine.
        # @!attribute [rw] version
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Virtual hardware version.
        # @!attribute [rw] upgrade_policy
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy]
        #     Scheduled upgrade policy.
        # @!attribute [rw] upgrade_version
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Target hardware version to be used on the next scheduled virtual hardware upgrade.
        #     This  field  is optional and it is only relevant when the value of  ``upgradePolicy``  is one of   :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy.AFTER_CLEAN_SHUTDOWN`   or   :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy.ALWAYS`  .
        # @!attribute [rw] upgrade_status
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
        #     Scheduled upgrade status.
        # @!attribute [rw] upgrade_error
        #     @return [Exception]
        #     Reason for the scheduled upgrade failure.
        #     This  field  is optional and it is only relevant when the value of  ``upgradeStatus``  is   :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus.FAILED`  .
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.info',
                        {
                            'version' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Version'),
                            'upgrade_policy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy'),
                            'upgrade_version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Version')),
                            'upgrade_status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus'),
                            'upgrade_error' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::AnyErrorType.instance),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :version,
                          :upgrade_policy,
                          :upgrade_version,
                          :upgrade_status,
                          :upgrade_error

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec``   class  describes the updates to virtual hardware settings of a virtual machine.
        # @!attribute [rw] upgrade_policy
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy, nil]
        #     Scheduled upgrade policy.  
        #     
        #      If set to   :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy.NEVER`  , the   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Info.upgrade_version`    field  will be reset to  nil .
        #     If  nil , the value is unchanged.
        # @!attribute [rw] upgrade_version
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version, nil]
        #     Target hardware version to be used on the next scheduled virtual hardware upgrade.  
        #     
        #      If specified, this  field  must represent a newer virtual hardware version than the current virtual hardware version reported in   :attr:`Com::Vmware::Vcenter::Vm::Hardware::Info.version`  .
        #     If   :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec.upgrade_policy`   is set to   :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy.NEVER`  , this  field  must be  nil . Otherwise, if this  field  is  nil , default to the most recent virtual hardware version supported by the server.
        class UpdateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.hardware.update_spec',
                        {
                            'upgrade_policy' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy')),
                            'upgrade_version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Version')),
                        },
                        UpdateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :upgrade_policy,
                          :upgrade_version

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Hardware::Version``   enumerated type  defines the valid virtual hardware versions for a virtual machine.
        # @!attribute [rw] vmx_03
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 3.
        # @!attribute [rw] vmx_04
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 4.
        # @!attribute [rw] vmx_06
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 6.
        # @!attribute [rw] vmx_07
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 7.
        # @!attribute [rw] vmx_08
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 8.
        # @!attribute [rw] vmx_09
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 9.
        # @!attribute [rw] vmx_10
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 10.
        # @!attribute [rw] vmx_11
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 11.
        # @!attribute [rw] vmx_12
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 12.
        # @!attribute [rw] vmx_13
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
        #     Hardware version 13.
        class Version < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.version',
                        Version)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [Version] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        Version.new('UNKNOWN', value)
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

            # @!attribute [rw] vmx_03
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 3.
            VMX_03 = Version.new('VMX_03')

            # @!attribute [rw] vmx_04
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 4.
            VMX_04 = Version.new('VMX_04')

            # @!attribute [rw] vmx_06
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 6.
            VMX_06 = Version.new('VMX_06')

            # @!attribute [rw] vmx_07
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 7.
            VMX_07 = Version.new('VMX_07')

            # @!attribute [rw] vmx_08
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 8.
            VMX_08 = Version.new('VMX_08')

            # @!attribute [rw] vmx_09
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 9.
            VMX_09 = Version.new('VMX_09')

            # @!attribute [rw] vmx_10
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 10.
            VMX_10 = Version.new('VMX_10')

            # @!attribute [rw] vmx_11
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 11.
            VMX_11 = Version.new('VMX_11')

            # @!attribute [rw] vmx_12
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 12.
            VMX_12 = Version.new('VMX_12')

            # @!attribute [rw] vmx_13
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version]
            #     Hardware version 13.
            VMX_13 = Version.new('VMX_13')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy``   enumerated type  defines the valid virtual hardware upgrade policies for a virtual machine.
        # @!attribute [rw] never
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy]
        #     Do not upgrade the virtual machine when it is powered on.
        # @!attribute [rw] after_clean_shutdown
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy]
        #     Run scheduled upgrade when the virtual machine is powered on after a clean shutdown of the guest operating system.
        # @!attribute [rw] always
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy]
        #     Run scheduled upgrade when the virtual machine is powered on.
        class UpgradePolicy < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.upgrade_policy',
                        UpgradePolicy)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [UpgradePolicy] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        UpgradePolicy.new('UNKNOWN', value)
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

            # @!attribute [rw] never
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy]
            #     Do not upgrade the virtual machine when it is powered on.
            NEVER = UpgradePolicy.new('NEVER')

            # @!attribute [rw] after_clean_shutdown
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy]
            #     Run scheduled upgrade when the virtual machine is powered on after a clean shutdown of the guest operating system.
            AFTER_CLEAN_SHUTDOWN = UpgradePolicy.new('AFTER_CLEAN_SHUTDOWN')

            # @!attribute [rw] always
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy]
            #     Run scheduled upgrade when the virtual machine is powered on.
            ALWAYS = UpgradePolicy.new('ALWAYS')

        end


        # The  ``Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus``   enumerated type  defines the valid virtual hardware upgrade statuses for a virtual machine.
        # @!attribute [rw] none
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
        #     No scheduled upgrade has been attempted.
        # @!attribute [rw] pending
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
        #     Upgrade is scheduled but has not yet been run.
        # @!attribute [rw] success
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
        #     The most recent scheduled upgrade was successful.
        # @!attribute [rw] failed
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
        #     The most recent scheduled upgrade was not successful.
        class UpgradeStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.hardware.upgrade_status',
                        UpgradeStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [UpgradeStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        UpgradeStatus.new('UNKNOWN', value)
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

            # @!attribute [rw] none
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
            #     No scheduled upgrade has been attempted.
            NONE = UpgradeStatus.new('NONE')

            # @!attribute [rw] pending
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
            #     Upgrade is scheduled but has not yet been run.
            PENDING = UpgradeStatus.new('PENDING')

            # @!attribute [rw] success
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
            #     The most recent scheduled upgrade was successful.
            SUCCESS = UpgradeStatus.new('SUCCESS')

            # @!attribute [rw] failed
            #     @return [Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus]
            #     The most recent scheduled upgrade was not successful.
            FAILED = UpgradeStatus.new('FAILED')

        end


    end


    # The  ``Com::Vmware::Vcenter::Vm::Power``   class  provides  methods  for managing the power state of a virtual machine.
    class Power < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.vm.power')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Power::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@start_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('start', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@stop_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('stop', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@suspend_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('suspend', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@reset_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('reset', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'start' => @@start_info,
            'stop' => @@stop_info,
            'suspend' => @@suspend_info,
            'reset' => @@reset_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns the power state information of a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Com::Vmware::Vcenter::Vm::Power::Info]
        #     Power state information for the specified virtual machine.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration or execution state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm)
            invoke_with_info(@@get_info, {
                'vm' => vm,
            })
        end


        # Powers on a powered-off or suspended virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual machine is already powered on.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
        #     if the virtual machine does not support being powered on (e.g. marked as a template, serving as a fault-tolerance secondary virtual machine).
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if resources cannot be allocated for the virtual machine (e.g. physical resource allocation policy cannot be satisfied, insufficient licenses are available to run the virtual machine).
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if resources required by the virtual machine are not accessible (e.g. virtual machine configuration files or virtual disks are on inaccessible storage, no hosts are available to run the virtual machine).
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
        #     if resources required by the virtual machine are in use (e.g. virtual machine configuration files or virtual disks are locked, host containing the virtual machine is an HA failover host).
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
        #     if the virtual machine is performing another operation.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def start(vm)
            invoke_with_info(@@start_info, {
                'vm' => vm,
            })
        end


        # Powers off a powered-on or suspended virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual machine is already powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
        #     if the virtual machine is performing another operation.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def stop(vm)
            invoke_with_info(@@stop_info, {
                'vm' => vm,
            })
        end


        # Suspends a powered-on virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the virtual machine is already suspended.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is powered off.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
        #     if the virtual machine is performing another operation.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def suspend(vm)
            invoke_with_info(@@suspend_info, {
                'vm' => vm,
            })
        end


        # Resets a powered-on virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #     if the virtual machine is powered off or suspended.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
        #     if the virtual machine is performing another operation
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def reset(vm)
            invoke_with_info(@@reset_info, {
                'vm' => vm,
            })
        end



        # The  ``Com::Vmware::Vcenter::Vm::Power::Info``   class  contains information about the power state of a virtual machine.
        # @!attribute [rw] state
        #     @return [Com::Vmware::Vcenter::Vm::Power::State]
        #     Power state of the virtual machine.
        # @!attribute [rw] clean_power_off
        #     @return [Boolean]
        #     Flag indicating whether the virtual machine was powered off cleanly. This  field  may be used to detect that the virtual machine crashed unexpectedly and should be restarted.
        #     This  field  is optional and it is only relevant when the value of  ``state``  is   :attr:`Com::Vmware::Vcenter::Vm::Power::State.POWERED_OFF`  .
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.vm.power.info',
                        {
                            'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Power::State'),
                            'clean_power_off' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :state,
                          :clean_power_off

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Vm::Power::State``   enumerated type  defines the valid power states for a virtual machine.
        # @!attribute [rw] powered_off
        #     @return [Com::Vmware::Vcenter::Vm::Power::State]
        #     The virtual machine is powered off.
        # @!attribute [rw] powered_on
        #     @return [Com::Vmware::Vcenter::Vm::Power::State]
        #     The virtual machine is powered on.
        # @!attribute [rw] suspended
        #     @return [Com::Vmware::Vcenter::Vm::Power::State]
        #     The virtual machine is suspended.
        class State < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.vm.power.state',
                        State)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [State] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        State.new('UNKNOWN', value)
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

            # @!attribute [rw] powered_off
            #     @return [Com::Vmware::Vcenter::Vm::Power::State]
            #     The virtual machine is powered off.
            POWERED_OFF = State.new('POWERED_OFF')

            # @!attribute [rw] powered_on
            #     @return [Com::Vmware::Vcenter::Vm::Power::State]
            #     The virtual machine is powered on.
            POWERED_ON = State.new('POWERED_ON')

            # @!attribute [rw] suspended
            #     @return [Com::Vmware::Vcenter::Vm::Power::State]
            #     The virtual machine is suspended.
            SUSPENDED = State.new('SUSPENDED')

        end


    end



    # The  ``Com::Vmware::Vcenter::Vm::GuestOS``   enumerated type  defines the valid guest operating system types used for configuring a virtual machine.
    # @!attribute [rw] dos
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     MS-DOS.
    # @!attribute [rw] win_31
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 3.1
    # @!attribute [rw] win_95
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 95
    # @!attribute [rw] win_98
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 98
    # @!attribute [rw] win_me
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Millennium Edition
    # @!attribute [rw] win_nt
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows NT 4
    # @!attribute [rw] win_2000_pro
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 2000 Professional
    # @!attribute [rw] win_2000_serv
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 2000 Server
    # @!attribute [rw] win_2000_adv_serv
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 2000 Advanced Server
    # @!attribute [rw] win_xp_home
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows XP Home Edition
    # @!attribute [rw] win_xp_pro
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows XP Professional
    # @!attribute [rw] win_xp_pro_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows XP Professional Edition (64 bit)
    # @!attribute [rw] win_net_web
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2003, Web Edition
    # @!attribute [rw] win_net_standard
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2003, Standard Edition
    # @!attribute [rw] win_net_enterprise
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2003, Enterprise Edition
    # @!attribute [rw] win_net_datacenter
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2003, Datacenter Edition
    # @!attribute [rw] win_net_business
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Small Business Server 2003
    # @!attribute [rw] win_net_standard_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2003, Standard Edition (64 bit)
    # @!attribute [rw] win_net_enterprise_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2003, Enterprise Edition (64 bit)
    # @!attribute [rw] win_longhorn
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Longhorn (experimental)
    # @!attribute [rw] win_longhorn_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Longhorn (64 bit) (experimental)
    # @!attribute [rw] win_net_datacenter_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2003, Datacenter Edition (64 bit) (experimental)
    # @!attribute [rw] win_vista
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Vista
    # @!attribute [rw] win_vista_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Vista (64 bit)
    # @!attribute [rw] windows_7
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 7
    # @!attribute [rw] windows_7_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 7 (64 bit)
    # @!attribute [rw] windows_7_server_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Server 2008 R2 (64 bit)
    # @!attribute [rw] windows_8
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 8
    # @!attribute [rw] windows_8_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 8 (64 bit)
    # @!attribute [rw] windows_8_server_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 8 Server (64 bit)
    # @!attribute [rw] windows_9
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 10
    # @!attribute [rw] windows_9_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 10 (64 bit)
    # @!attribute [rw] windows_9_server_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows 10 Server (64 bit)
    # @!attribute [rw] windows_hyperv
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Windows Hyper-V
    # @!attribute [rw] freebsd
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     FreeBSD
    # @!attribute [rw] freebsd_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     FreeBSD x64
    # @!attribute [rw] redhat
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Linux 2.1
    # @!attribute [rw] rhel_2
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 2
    # @!attribute [rw] rhel_3
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 3
    # @!attribute [rw] rhel_3_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 3 (64 bit)
    # @!attribute [rw] rhel_4
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 4
    # @!attribute [rw] rhel_4_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 4 (64 bit)
    # @!attribute [rw] rhel_5
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 5
    # @!attribute [rw] rhel_5_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 5 (64 bit) (experimental)
    # @!attribute [rw] rhel_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 6
    # @!attribute [rw] rhel_6_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 6 (64 bit)
    # @!attribute [rw] rhel_7
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 7
    # @!attribute [rw] rhel_7_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Red Hat Enterprise Linux 7 (64 bit)
    # @!attribute [rw] centos
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     CentOS 4/5
    # @!attribute [rw] centos_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     CentOS 4/5 (64-bit)
    # @!attribute [rw] centos_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     CentOS 6
    # @!attribute [rw] centos_6_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     CentOS 6 (64-bit)
    # @!attribute [rw] centos_7
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     CentOS 7
    # @!attribute [rw] centos_7_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     CentOS 7 (64-bit)
    # @!attribute [rw] oracle_linux
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Oracle Linux 4/5
    # @!attribute [rw] oracle_linux_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Oracle Linux 4/5 (64-bit)
    # @!attribute [rw] oracle_linux_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Oracle Linux 6
    # @!attribute [rw] oracle_linux_6_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Oracle Linux 6 (64-bit)
    # @!attribute [rw] oracle_linux_7
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Oracle Linux 7
    # @!attribute [rw] oracle_linux_7_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Oracle Linux 7 (64-bit)
    # @!attribute [rw] suse
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse Linux
    # @!attribute [rw] suse_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse Linux (64 bit)
    # @!attribute [rw] sles
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse Linux Enterprise Server 9
    # @!attribute [rw] sles_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse Linux Enterprise Server 9 (64 bit)
    # @!attribute [rw] sles_10
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse linux Enterprise Server 10
    # @!attribute [rw] sles_10_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse Linux Enterprise Server 10 (64 bit) (experimental)
    # @!attribute [rw] sles_11
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse linux Enterprise Server 11
    # @!attribute [rw] sles_11_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse Linux Enterprise Server 11 (64 bit)
    # @!attribute [rw] sles_12
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse linux Enterprise Server 12
    # @!attribute [rw] sles_12_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Suse Linux Enterprise Server 12 (64 bit)
    # @!attribute [rw] nld_9
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Novell Linux Desktop 9
    # @!attribute [rw] oes
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Open Enterprise Server
    # @!attribute [rw] sjds
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Sun Java Desktop System
    # @!attribute [rw] mandrake
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mandrake Linux
    # @!attribute [rw] mandriva
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mandriva Linux
    # @!attribute [rw] mandriva_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mandriva Linux (64 bit)
    # @!attribute [rw] turbo_linux
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Turbolinux
    # @!attribute [rw] turbo_linux_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Turbolinux (64 bit)
    # @!attribute [rw] ubuntu
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Ubuntu Linux
    # @!attribute [rw] ubuntu_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Ubuntu Linux (64 bit)
    # @!attribute [rw] debian_4
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 4
    # @!attribute [rw] debian_4_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 4 (64 bit)
    # @!attribute [rw] debian_5
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 5
    # @!attribute [rw] debian_5_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 5 (64 bit)
    # @!attribute [rw] debian_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 6
    # @!attribute [rw] debian_6_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 6 (64 bit)
    # @!attribute [rw] debian_7
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 7
    # @!attribute [rw] debian_7_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 7 (64 bit)
    # @!attribute [rw] debian_8
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 8
    # @!attribute [rw] debian_8_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 8 (64 bit)
    # @!attribute [rw] debian_9
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 9
    # @!attribute [rw] debian_9_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 9 (64 bit)
    # @!attribute [rw] debian_10
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 10
    # @!attribute [rw] debian_10_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Debian GNU/Linux 10 (64 bit)
    # @!attribute [rw] asianux_3
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Asianux Server 3
    # @!attribute [rw] asianux_3_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Asianux Server 3 (64 bit)
    # @!attribute [rw] asianux_4
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Asianux Server 4
    # @!attribute [rw] asianux_4_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Asianux Server 4 (64 bit)
    # @!attribute [rw] asianux_5_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Asianux Server 5 (64 bit)
    # @!attribute [rw] asianux_7_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Asianux Server 7 (64 bit)
    # @!attribute [rw] opensuse
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     OpenSUSE Linux
    # @!attribute [rw] opensuse_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     OpenSUSE Linux (64 bit)
    # @!attribute [rw] fedora
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Fedora Linux
    # @!attribute [rw] fedora_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Fedora Linux (64 bit)
    # @!attribute [rw] coreos_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     CoreOS Linux (64 bit)
    # @!attribute [rw] vmware_photon_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     VMware Photon (64 bit)
    # @!attribute [rw] other_24x_linux
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux 2.4x Kernel
    # @!attribute [rw] other_24x_linux_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux 2.4x Kernel (64 bit) (experimental)
    # @!attribute [rw] other_26x_linux
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux 2.6x Kernel
    # @!attribute [rw] other_26x_linux_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux 2.6x Kernel (64 bit) (experimental)
    # @!attribute [rw] other_3x_linux
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux 3.x Kernel
    # @!attribute [rw] other_3x_linux_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux 3.x Kernel (64 bit)
    # @!attribute [rw] other_linux
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux 2.2x Kernel
    # @!attribute [rw] generic_linux
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Other Linux
    # @!attribute [rw] other_linux_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Linux (64 bit) (experimental)
    # @!attribute [rw] solaris_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Solaris 6
    # @!attribute [rw] solaris_7
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Solaris 7
    # @!attribute [rw] solaris_8
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Solaris 8
    # @!attribute [rw] solaris_9
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Solaris 9
    # @!attribute [rw] solaris_10
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Solaris 10 (32 bit) (experimental)
    # @!attribute [rw] solaris_10_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Solaris 10 (64 bit) (experimental)
    # @!attribute [rw] solaris_11_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Solaris 11 (64 bit)
    # @!attribute [rw] o_s2
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     OS/2
    # @!attribute [rw] ecomstation
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     eComStation 1.x
    # @!attribute [rw] ecomstation_2
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     eComStation 2.0
    # @!attribute [rw] netware_4
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Novell NetWare 4
    # @!attribute [rw] netware_5
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Novell NetWare 5.1
    # @!attribute [rw] netware_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Novell NetWare 6.x
    # @!attribute [rw] openserver_5
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     SCO OpenServer 5
    # @!attribute [rw] openserver_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     SCO OpenServer 6
    # @!attribute [rw] unixware_7
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     SCO UnixWare 7
    # @!attribute [rw] darwin
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.5
    # @!attribute [rw] darwin_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.5 (64 bit)
    # @!attribute [rw] darwin_10
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.6
    # @!attribute [rw] darwin_10_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.6 (64 bit)
    # @!attribute [rw] darwin_11
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.7
    # @!attribute [rw] darwin_11_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.7 (64 bit)
    # @!attribute [rw] darwin_12_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.8 (64 bit)
    # @!attribute [rw] darwin_13_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.9 (64 bit)
    # @!attribute [rw] darwin_14_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.10 (64 bit)
    # @!attribute [rw] darwin_15_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.11 (64 bit)
    # @!attribute [rw] darwin_16_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Mac OS 10.12 (64 bit)
    # @!attribute [rw] vmkernel
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     VMware ESX 4
    # @!attribute [rw] vmkernel_5
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     VMware ESX 5
    # @!attribute [rw] vmkernel_6
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     VMware ESX 6
    # @!attribute [rw] vmkernel_65
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     VMware ESX 6.5
    # @!attribute [rw] other
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Other Operating System
    # @!attribute [rw] other_64
    #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
    #     Other Operating System (64 bit) (experimental)
    class GuestOS < VAPI::Bindings::VapiEnum

        class << self
            # Holds (gets or creates) the binding type metadata for this enumeration type.
            # @scope class
            # @return [VAPI::Bindings::EnumType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::EnumType.new(
                    'com.vmware.vcenter.vm.guest_OS',
                    GuestOS)
            end

            # Converts from a string value (perhaps off the wire) to an instance
            # of this enum type.
            # @param value [String] the actual value of the enum instance
            # @return [GuestOS] the instance found for the value, otherwise
            #         an unknown instance will be built for the value
            def from_string(value)
                begin
                    const_get(value)
                rescue NameError
                    GuestOS.new('UNKNOWN', value)
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

        # @!attribute [rw] dos
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     MS-DOS.
        DOS = GuestOS.new('DOS')

        # @!attribute [rw] win_31
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 3.1
        WIN_31 = GuestOS.new('WIN_31')

        # @!attribute [rw] win_95
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 95
        WIN_95 = GuestOS.new('WIN_95')

        # @!attribute [rw] win_98
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 98
        WIN_98 = GuestOS.new('WIN_98')

        # @!attribute [rw] win_me
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Millennium Edition
        WIN_ME = GuestOS.new('WIN_ME')

        # @!attribute [rw] win_nt
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows NT 4
        WIN_NT = GuestOS.new('WIN_NT')

        # @!attribute [rw] win_2000_pro
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 2000 Professional
        WIN_2000_PRO = GuestOS.new('WIN_2000_PRO')

        # @!attribute [rw] win_2000_serv
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 2000 Server
        WIN_2000_SERV = GuestOS.new('WIN_2000_SERV')

        # @!attribute [rw] win_2000_adv_serv
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 2000 Advanced Server
        WIN_2000_ADV_SERV = GuestOS.new('WIN_2000_ADV_SERV')

        # @!attribute [rw] win_xp_home
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows XP Home Edition
        WIN_XP_HOME = GuestOS.new('WIN_XP_HOME')

        # @!attribute [rw] win_xp_pro
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows XP Professional
        WIN_XP_PRO = GuestOS.new('WIN_XP_PRO')

        # @!attribute [rw] win_xp_pro_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows XP Professional Edition (64 bit)
        WIN_XP_PRO_64 = GuestOS.new('WIN_XP_PRO_64')

        # @!attribute [rw] win_net_web
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2003, Web Edition
        WIN_NET_WEB = GuestOS.new('WIN_NET_WEB')

        # @!attribute [rw] win_net_standard
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2003, Standard Edition
        WIN_NET_STANDARD = GuestOS.new('WIN_NET_STANDARD')

        # @!attribute [rw] win_net_enterprise
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2003, Enterprise Edition
        WIN_NET_ENTERPRISE = GuestOS.new('WIN_NET_ENTERPRISE')

        # @!attribute [rw] win_net_datacenter
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2003, Datacenter Edition
        WIN_NET_DATACENTER = GuestOS.new('WIN_NET_DATACENTER')

        # @!attribute [rw] win_net_business
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Small Business Server 2003
        WIN_NET_BUSINESS = GuestOS.new('WIN_NET_BUSINESS')

        # @!attribute [rw] win_net_standard_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2003, Standard Edition (64 bit)
        WIN_NET_STANDARD_64 = GuestOS.new('WIN_NET_STANDARD_64')

        # @!attribute [rw] win_net_enterprise_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2003, Enterprise Edition (64 bit)
        WIN_NET_ENTERPRISE_64 = GuestOS.new('WIN_NET_ENTERPRISE_64')

        # @!attribute [rw] win_longhorn
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Longhorn (experimental)
        WIN_LONGHORN = GuestOS.new('WIN_LONGHORN')

        # @!attribute [rw] win_longhorn_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Longhorn (64 bit) (experimental)
        WIN_LONGHORN_64 = GuestOS.new('WIN_LONGHORN_64')

        # @!attribute [rw] win_net_datacenter_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2003, Datacenter Edition (64 bit) (experimental)
        WIN_NET_DATACENTER_64 = GuestOS.new('WIN_NET_DATACENTER_64')

        # @!attribute [rw] win_vista
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Vista
        WIN_VISTA = GuestOS.new('WIN_VISTA')

        # @!attribute [rw] win_vista_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Vista (64 bit)
        WIN_VISTA_64 = GuestOS.new('WIN_VISTA_64')

        # @!attribute [rw] windows_7
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 7
        WINDOWS_7 = GuestOS.new('WINDOWS_7')

        # @!attribute [rw] windows_7_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 7 (64 bit)
        WINDOWS_7_64 = GuestOS.new('WINDOWS_7_64')

        # @!attribute [rw] windows_7_server_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Server 2008 R2 (64 bit)
        WINDOWS_7_SERVER_64 = GuestOS.new('WINDOWS_7_SERVER_64')

        # @!attribute [rw] windows_8
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 8
        WINDOWS_8 = GuestOS.new('WINDOWS_8')

        # @!attribute [rw] windows_8_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 8 (64 bit)
        WINDOWS_8_64 = GuestOS.new('WINDOWS_8_64')

        # @!attribute [rw] windows_8_server_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 8 Server (64 bit)
        WINDOWS_8_SERVER_64 = GuestOS.new('WINDOWS_8_SERVER_64')

        # @!attribute [rw] windows_9
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 10
        WINDOWS_9 = GuestOS.new('WINDOWS_9')

        # @!attribute [rw] windows_9_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 10 (64 bit)
        WINDOWS_9_64 = GuestOS.new('WINDOWS_9_64')

        # @!attribute [rw] windows_9_server_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows 10 Server (64 bit)
        WINDOWS_9_SERVER_64 = GuestOS.new('WINDOWS_9_SERVER_64')

        # @!attribute [rw] windows_hyperv
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Windows Hyper-V
        WINDOWS_HYPERV = GuestOS.new('WINDOWS_HYPERV')

        # @!attribute [rw] freebsd
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     FreeBSD
        FREEBSD = GuestOS.new('FREEBSD')

        # @!attribute [rw] freebsd_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     FreeBSD x64
        FREEBSD_64 = GuestOS.new('FREEBSD_64')

        # @!attribute [rw] redhat
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Linux 2.1
        REDHAT = GuestOS.new('REDHAT')

        # @!attribute [rw] rhel_2
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 2
        RHEL_2 = GuestOS.new('RHEL_2')

        # @!attribute [rw] rhel_3
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 3
        RHEL_3 = GuestOS.new('RHEL_3')

        # @!attribute [rw] rhel_3_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 3 (64 bit)
        RHEL_3_64 = GuestOS.new('RHEL_3_64')

        # @!attribute [rw] rhel_4
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 4
        RHEL_4 = GuestOS.new('RHEL_4')

        # @!attribute [rw] rhel_4_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 4 (64 bit)
        RHEL_4_64 = GuestOS.new('RHEL_4_64')

        # @!attribute [rw] rhel_5
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 5
        RHEL_5 = GuestOS.new('RHEL_5')

        # @!attribute [rw] rhel_5_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 5 (64 bit) (experimental)
        RHEL_5_64 = GuestOS.new('RHEL_5_64')

        # @!attribute [rw] rhel_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 6
        RHEL_6 = GuestOS.new('RHEL_6')

        # @!attribute [rw] rhel_6_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 6 (64 bit)
        RHEL_6_64 = GuestOS.new('RHEL_6_64')

        # @!attribute [rw] rhel_7
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 7
        RHEL_7 = GuestOS.new('RHEL_7')

        # @!attribute [rw] rhel_7_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Red Hat Enterprise Linux 7 (64 bit)
        RHEL_7_64 = GuestOS.new('RHEL_7_64')

        # @!attribute [rw] centos
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     CentOS 4/5
        CENTOS = GuestOS.new('CENTOS')

        # @!attribute [rw] centos_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     CentOS 4/5 (64-bit)
        CENTOS_64 = GuestOS.new('CENTOS_64')

        # @!attribute [rw] centos_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     CentOS 6
        CENTOS_6 = GuestOS.new('CENTOS_6')

        # @!attribute [rw] centos_6_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     CentOS 6 (64-bit)
        CENTOS_6_64 = GuestOS.new('CENTOS_6_64')

        # @!attribute [rw] centos_7
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     CentOS 7
        CENTOS_7 = GuestOS.new('CENTOS_7')

        # @!attribute [rw] centos_7_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     CentOS 7 (64-bit)
        CENTOS_7_64 = GuestOS.new('CENTOS_7_64')

        # @!attribute [rw] oracle_linux
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Oracle Linux 4/5
        ORACLE_LINUX = GuestOS.new('ORACLE_LINUX')

        # @!attribute [rw] oracle_linux_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Oracle Linux 4/5 (64-bit)
        ORACLE_LINUX_64 = GuestOS.new('ORACLE_LINUX_64')

        # @!attribute [rw] oracle_linux_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Oracle Linux 6
        ORACLE_LINUX_6 = GuestOS.new('ORACLE_LINUX_6')

        # @!attribute [rw] oracle_linux_6_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Oracle Linux 6 (64-bit)
        ORACLE_LINUX_6_64 = GuestOS.new('ORACLE_LINUX_6_64')

        # @!attribute [rw] oracle_linux_7
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Oracle Linux 7
        ORACLE_LINUX_7 = GuestOS.new('ORACLE_LINUX_7')

        # @!attribute [rw] oracle_linux_7_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Oracle Linux 7 (64-bit)
        ORACLE_LINUX_7_64 = GuestOS.new('ORACLE_LINUX_7_64')

        # @!attribute [rw] suse
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse Linux
        SUSE = GuestOS.new('SUSE')

        # @!attribute [rw] suse_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse Linux (64 bit)
        SUSE_64 = GuestOS.new('SUSE_64')

        # @!attribute [rw] sles
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse Linux Enterprise Server 9
        SLES = GuestOS.new('SLES')

        # @!attribute [rw] sles_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse Linux Enterprise Server 9 (64 bit)
        SLES_64 = GuestOS.new('SLES_64')

        # @!attribute [rw] sles_10
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse linux Enterprise Server 10
        SLES_10 = GuestOS.new('SLES_10')

        # @!attribute [rw] sles_10_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse Linux Enterprise Server 10 (64 bit) (experimental)
        SLES_10_64 = GuestOS.new('SLES_10_64')

        # @!attribute [rw] sles_11
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse linux Enterprise Server 11
        SLES_11 = GuestOS.new('SLES_11')

        # @!attribute [rw] sles_11_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse Linux Enterprise Server 11 (64 bit)
        SLES_11_64 = GuestOS.new('SLES_11_64')

        # @!attribute [rw] sles_12
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse linux Enterprise Server 12
        SLES_12 = GuestOS.new('SLES_12')

        # @!attribute [rw] sles_12_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Suse Linux Enterprise Server 12 (64 bit)
        SLES_12_64 = GuestOS.new('SLES_12_64')

        # @!attribute [rw] nld_9
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Novell Linux Desktop 9
        NLD_9 = GuestOS.new('NLD_9')

        # @!attribute [rw] oes
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Open Enterprise Server
        OES = GuestOS.new('OES')

        # @!attribute [rw] sjds
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Sun Java Desktop System
        SJDS = GuestOS.new('SJDS')

        # @!attribute [rw] mandrake
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mandrake Linux
        MANDRAKE = GuestOS.new('MANDRAKE')

        # @!attribute [rw] mandriva
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mandriva Linux
        MANDRIVA = GuestOS.new('MANDRIVA')

        # @!attribute [rw] mandriva_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mandriva Linux (64 bit)
        MANDRIVA_64 = GuestOS.new('MANDRIVA_64')

        # @!attribute [rw] turbo_linux
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Turbolinux
        TURBO_LINUX = GuestOS.new('TURBO_LINUX')

        # @!attribute [rw] turbo_linux_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Turbolinux (64 bit)
        TURBO_LINUX_64 = GuestOS.new('TURBO_LINUX_64')

        # @!attribute [rw] ubuntu
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Ubuntu Linux
        UBUNTU = GuestOS.new('UBUNTU')

        # @!attribute [rw] ubuntu_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Ubuntu Linux (64 bit)
        UBUNTU_64 = GuestOS.new('UBUNTU_64')

        # @!attribute [rw] debian_4
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 4
        DEBIAN_4 = GuestOS.new('DEBIAN_4')

        # @!attribute [rw] debian_4_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 4 (64 bit)
        DEBIAN_4_64 = GuestOS.new('DEBIAN_4_64')

        # @!attribute [rw] debian_5
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 5
        DEBIAN_5 = GuestOS.new('DEBIAN_5')

        # @!attribute [rw] debian_5_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 5 (64 bit)
        DEBIAN_5_64 = GuestOS.new('DEBIAN_5_64')

        # @!attribute [rw] debian_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 6
        DEBIAN_6 = GuestOS.new('DEBIAN_6')

        # @!attribute [rw] debian_6_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 6 (64 bit)
        DEBIAN_6_64 = GuestOS.new('DEBIAN_6_64')

        # @!attribute [rw] debian_7
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 7
        DEBIAN_7 = GuestOS.new('DEBIAN_7')

        # @!attribute [rw] debian_7_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 7 (64 bit)
        DEBIAN_7_64 = GuestOS.new('DEBIAN_7_64')

        # @!attribute [rw] debian_8
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 8
        DEBIAN_8 = GuestOS.new('DEBIAN_8')

        # @!attribute [rw] debian_8_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 8 (64 bit)
        DEBIAN_8_64 = GuestOS.new('DEBIAN_8_64')

        # @!attribute [rw] debian_9
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 9
        DEBIAN_9 = GuestOS.new('DEBIAN_9')

        # @!attribute [rw] debian_9_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 9 (64 bit)
        DEBIAN_9_64 = GuestOS.new('DEBIAN_9_64')

        # @!attribute [rw] debian_10
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 10
        DEBIAN_10 = GuestOS.new('DEBIAN_10')

        # @!attribute [rw] debian_10_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Debian GNU/Linux 10 (64 bit)
        DEBIAN_10_64 = GuestOS.new('DEBIAN_10_64')

        # @!attribute [rw] asianux_3
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Asianux Server 3
        ASIANUX_3 = GuestOS.new('ASIANUX_3')

        # @!attribute [rw] asianux_3_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Asianux Server 3 (64 bit)
        ASIANUX_3_64 = GuestOS.new('ASIANUX_3_64')

        # @!attribute [rw] asianux_4
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Asianux Server 4
        ASIANUX_4 = GuestOS.new('ASIANUX_4')

        # @!attribute [rw] asianux_4_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Asianux Server 4 (64 bit)
        ASIANUX_4_64 = GuestOS.new('ASIANUX_4_64')

        # @!attribute [rw] asianux_5_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Asianux Server 5 (64 bit)
        ASIANUX_5_64 = GuestOS.new('ASIANUX_5_64')

        # @!attribute [rw] asianux_7_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Asianux Server 7 (64 bit)
        ASIANUX_7_64 = GuestOS.new('ASIANUX_7_64')

        # @!attribute [rw] opensuse
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     OpenSUSE Linux
        OPENSUSE = GuestOS.new('OPENSUSE')

        # @!attribute [rw] opensuse_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     OpenSUSE Linux (64 bit)
        OPENSUSE_64 = GuestOS.new('OPENSUSE_64')

        # @!attribute [rw] fedora
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Fedora Linux
        FEDORA = GuestOS.new('FEDORA')

        # @!attribute [rw] fedora_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Fedora Linux (64 bit)
        FEDORA_64 = GuestOS.new('FEDORA_64')

        # @!attribute [rw] coreos_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     CoreOS Linux (64 bit)
        COREOS_64 = GuestOS.new('COREOS_64')

        # @!attribute [rw] vmware_photon_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     VMware Photon (64 bit)
        VMWARE_PHOTON_64 = GuestOS.new('VMWARE_PHOTON_64')

        # @!attribute [rw] other_24x_linux
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux 2.4x Kernel
        OTHER_24X_LINUX = GuestOS.new('OTHER_24X_LINUX')

        # @!attribute [rw] other_24x_linux_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux 2.4x Kernel (64 bit) (experimental)
        OTHER_24X_LINUX_64 = GuestOS.new('OTHER_24X_LINUX_64')

        # @!attribute [rw] other_26x_linux
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux 2.6x Kernel
        OTHER_26X_LINUX = GuestOS.new('OTHER_26X_LINUX')

        # @!attribute [rw] other_26x_linux_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux 2.6x Kernel (64 bit) (experimental)
        OTHER_26X_LINUX_64 = GuestOS.new('OTHER_26X_LINUX_64')

        # @!attribute [rw] other_3x_linux
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux 3.x Kernel
        OTHER_3X_LINUX = GuestOS.new('OTHER_3X_LINUX')

        # @!attribute [rw] other_3x_linux_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux 3.x Kernel (64 bit)
        OTHER_3X_LINUX_64 = GuestOS.new('OTHER_3X_LINUX_64')

        # @!attribute [rw] other_linux
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux 2.2x Kernel
        OTHER_LINUX = GuestOS.new('OTHER_LINUX')

        # @!attribute [rw] generic_linux
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Other Linux
        GENERIC_LINUX = GuestOS.new('GENERIC_LINUX')

        # @!attribute [rw] other_linux_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Linux (64 bit) (experimental)
        OTHER_LINUX_64 = GuestOS.new('OTHER_LINUX_64')

        # @!attribute [rw] solaris_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Solaris 6
        SOLARIS_6 = GuestOS.new('SOLARIS_6')

        # @!attribute [rw] solaris_7
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Solaris 7
        SOLARIS_7 = GuestOS.new('SOLARIS_7')

        # @!attribute [rw] solaris_8
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Solaris 8
        SOLARIS_8 = GuestOS.new('SOLARIS_8')

        # @!attribute [rw] solaris_9
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Solaris 9
        SOLARIS_9 = GuestOS.new('SOLARIS_9')

        # @!attribute [rw] solaris_10
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Solaris 10 (32 bit) (experimental)
        SOLARIS_10 = GuestOS.new('SOLARIS_10')

        # @!attribute [rw] solaris_10_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Solaris 10 (64 bit) (experimental)
        SOLARIS_10_64 = GuestOS.new('SOLARIS_10_64')

        # @!attribute [rw] solaris_11_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Solaris 11 (64 bit)
        SOLARIS_11_64 = GuestOS.new('SOLARIS_11_64')

        # @!attribute [rw] o_s2
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     OS/2
        O_S2 = GuestOS.new('O_S2')

        # @!attribute [rw] ecomstation
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     eComStation 1.x
        ECOMSTATION = GuestOS.new('ECOMSTATION')

        # @!attribute [rw] ecomstation_2
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     eComStation 2.0
        ECOMSTATION_2 = GuestOS.new('ECOMSTATION_2')

        # @!attribute [rw] netware_4
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Novell NetWare 4
        NETWARE_4 = GuestOS.new('NETWARE_4')

        # @!attribute [rw] netware_5
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Novell NetWare 5.1
        NETWARE_5 = GuestOS.new('NETWARE_5')

        # @!attribute [rw] netware_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Novell NetWare 6.x
        NETWARE_6 = GuestOS.new('NETWARE_6')

        # @!attribute [rw] openserver_5
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     SCO OpenServer 5
        OPENSERVER_5 = GuestOS.new('OPENSERVER_5')

        # @!attribute [rw] openserver_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     SCO OpenServer 6
        OPENSERVER_6 = GuestOS.new('OPENSERVER_6')

        # @!attribute [rw] unixware_7
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     SCO UnixWare 7
        UNIXWARE_7 = GuestOS.new('UNIXWARE_7')

        # @!attribute [rw] darwin
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.5
        DARWIN = GuestOS.new('DARWIN')

        # @!attribute [rw] darwin_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.5 (64 bit)
        DARWIN_64 = GuestOS.new('DARWIN_64')

        # @!attribute [rw] darwin_10
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.6
        DARWIN_10 = GuestOS.new('DARWIN_10')

        # @!attribute [rw] darwin_10_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.6 (64 bit)
        DARWIN_10_64 = GuestOS.new('DARWIN_10_64')

        # @!attribute [rw] darwin_11
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.7
        DARWIN_11 = GuestOS.new('DARWIN_11')

        # @!attribute [rw] darwin_11_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.7 (64 bit)
        DARWIN_11_64 = GuestOS.new('DARWIN_11_64')

        # @!attribute [rw] darwin_12_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.8 (64 bit)
        DARWIN_12_64 = GuestOS.new('DARWIN_12_64')

        # @!attribute [rw] darwin_13_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.9 (64 bit)
        DARWIN_13_64 = GuestOS.new('DARWIN_13_64')

        # @!attribute [rw] darwin_14_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.10 (64 bit)
        DARWIN_14_64 = GuestOS.new('DARWIN_14_64')

        # @!attribute [rw] darwin_15_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.11 (64 bit)
        DARWIN_15_64 = GuestOS.new('DARWIN_15_64')

        # @!attribute [rw] darwin_16_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Mac OS 10.12 (64 bit)
        DARWIN_16_64 = GuestOS.new('DARWIN_16_64')

        # @!attribute [rw] vmkernel
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     VMware ESX 4
        VMKERNEL = GuestOS.new('VMKERNEL')

        # @!attribute [rw] vmkernel_5
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     VMware ESX 5
        VMKERNEL_5 = GuestOS.new('VMKERNEL_5')

        # @!attribute [rw] vmkernel_6
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     VMware ESX 6
        VMKERNEL_6 = GuestOS.new('VMKERNEL_6')

        # @!attribute [rw] vmkernel_65
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     VMware ESX 6.5
        VMKERNEL_65 = GuestOS.new('VMKERNEL_65')

        # @!attribute [rw] other
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Other Operating System
        OTHER = GuestOS.new('OTHER')

        # @!attribute [rw] other_64
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Other Operating System (64 bit) (experimental)
        OTHER_64 = GuestOS.new('OTHER_64')

    end


end
