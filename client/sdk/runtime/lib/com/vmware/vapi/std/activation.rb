#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.std.activation.
#---------------------------------------------------------------------------

require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Std
        module Activation
        end
      end
    end
  end
end

# The  ``com.vmware.vapi.std.activation``   package  provides  classs  that TODO.
module Com::Vmware::Vapi::Std::Activation
  # **WARNING:**  Use only as a sample. The API is experimental and subject to change in future versions.  
  # 
  #  Activation tracking/management service.  
  # 
  #  An activation describes a method invocation in the runtime.
  class ActivationManager < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.std.activation.activation_manager')

    CANCEL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('cancel', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'activation_id' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'cancel' => CANCEL_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Asks for cancellation of a running activation. Whether or not the cancellation request will have any effect depends on the implementation of the method that has to be canceled.
    #
    # @param activation_id [String]
    #     activation identifier
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     there is no activation with the specified id
    def cancel(activation_id)
      invoke_with_info(CANCEL_INFO,
                       'activation_id' => activation_id)
    end

  end
end
