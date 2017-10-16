#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.hvc.management.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vcenter
      module Hvc
        module Management
        end
      end
    end
  end
end

# Copyright 2017 VMware, Inc. All rights reserved. -- VMware Confidential
module Com::Vmware::Vcenter::Hvc::Management
  # The  ``Com::Vmware::Vcenter::Hvc::Management::Administrators``  provides  methods  to update, delete, and list groups in the local sso group. This is limited to the Hybrid Linked Mode service.
  class Administrators < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.hvc.management.administrators')

    ADD_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('add', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'group_name' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    REMOVE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('remove', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'group_name' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'add' => ADD_INFO,
      'remove' => REMOVE_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Add the local sso group with the new group.
    #
    # @param group_name [String]
    #     Name of the new group to be added. Ex - xyz\@abc.com where xyz is the group name and abc.com is the domain name
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If the user is not authorized.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    def add(group_name)
      invoke_with_info(ADD_INFO,
                       'group_name' => group_name)
    end

    # Remove the group from the local sso group.
    #
    # @param group_name [String]
    #     Name of the group to be remove. Ex - xyz\@abc.com where xyz is the group name and abc.com is the domain name
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If the user is not authorized.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    def remove(group_name)
      invoke_with_info(REMOVE_INFO,
                       'group_name' => group_name)
    end

    # Enumerates the set of all the groups in the local sso group.
    #
    # @return [Set<String>]
    #     The  set  of all the groups.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    def get
      invoke_with_info(GET_INFO)
    end

  end
end
