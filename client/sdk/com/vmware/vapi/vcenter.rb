#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.vcenter.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vapi
            module Vcenter
            end
        end
    end
end

module Com::Vmware::Vapi::Vcenter

    # The  ``Com::Vmware::Vapi::Vcenter::Activation``   class  provides  methods  for tasks cancelation.
    class Activation < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.vcenter.activation')

        @@cancel_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('cancel', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'activation_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.Activation'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'cancel' => @@cancel_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Sends a request to cancel the task associated with the provided  ``activation_id`` .
        #
        # @param activation_id [String]
        #      the  ``activation_id``  associated with a vCenter Server task to be canceled.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if a vCenter Server task with the given  ``activation_id``  was not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #      if the vCenter Server task associated with the given  ``activation_id``  is not cancelable.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #      if the user is not authorized to cancel the task.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #      if the user is not authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #      if the task cancelation cannot be performed due to vCenter server is unreachable or it is not properly configured.
        def cancel(activation_id)
            invoke_with_info(@@cancel_info, {
                'activation_id' => activation_id,
            })
        end


    end


end
