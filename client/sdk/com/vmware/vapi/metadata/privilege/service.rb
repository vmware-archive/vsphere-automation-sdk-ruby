#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.privilege.service.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Metadata
        module Privilege
          module Service
          end
        end
      end
    end
  end
end

# The  ``com.vmware.vapi.metadata.privilege.service``   package  provides  classs  to retrieve privilege information for operation elements.
module Com::Vmware::Vapi::Metadata::Privilege::Service
  # The  ``Com::Vmware::Vapi::Metadata::Privilege::Service::Operation``   class  provides  methods  to retrieve privilege information of an operation element.  
  # 
  #  An operation element is said to contain privilege information if there are any privileges assigned to the operation element or if one of the parameter elements contained in it has privileges assigned in privilege definition file.
  class Operation < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.privilege.service.operation')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.service')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'service_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.service'),
        'operation_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.operation')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Privilege::OperationInfo'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.vapi.operation'
    # Returns the identifiers for the operation elements contained in the service element corresponding to  ``service_id``  that have privilege information.
    #
    # @param service_id [String]
    #     Identifier of the service element.
    # @return [Array<String>]
    #     List of identifiers for the operation elements contained in the service element that have privilege information.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service element associated with  ``service_id``  does not have any operation elements that have privilege information.
    def list(service_id)
      invoke_with_info(LIST_INFO,
                       'service_id' => service_id)
    end

    # Retrieves the privilege information about an operation element corresponding to  ``operation_id``  contained in the service element corresponding to  ``service_id`` .
    #
    # @param service_id [String]
    #     Identifier of the service element.
    # @param operation_id [String]
    #     Identifier of the operation element.
    # @return [Com::Vmware::Vapi::Metadata::Privilege::OperationInfo]
    #     The   :class:`Com::Vmware::Vapi::Metadata::Privilege::OperationInfo`   instance that corresponds to  ``operation_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the service element associated with  ``service_id``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the operation element associated with  ``operation_id``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the operation element associated with  ``operation_id``  does not have any privilege information.
    def get(service_id, operation_id)
      invoke_with_info(GET_INFO,
                       'service_id' => service_id,
                       'operation_id' => operation_id)
    end

  end
end
