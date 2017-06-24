#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.authentication.service.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vapi
            module Metadata
                module Authentication
                    module Service
                    end
                end
            end
        end
    end
end

# The  ``com.vmware.vapi.metadata.authentication.service``   package  provides  classs  to retrieve authentication information for operation elements.
module Com::Vmware::Vapi::Metadata::Authentication::Service

    # The  ``Com::Vmware::Vapi::Metadata::Authentication::Service::Operation``   class  provides  methods  to retrieve authentication information of an operation element.  
    # 
    #  An operation element is said to contain authentication information if authentication schemes are specified in the authentication definition file.
    class Operation < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.authentication.service.operation')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'service_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.service'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'service_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.service'),
                'operation_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.operation'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::OperationInfo'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
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

        RESOURCE_TYPE = 'com.vmware.vapi.operation'


        # Returns the identifiers for the operation elements contained in the service element corresponding to  ``service_id``  that have authentication information.
        #
        # @param service_id [String]
        #     Identifier of the service element.
        # @return [Array<String>]
        #     List of identifiers for the operation elements contained in the service element that have authentication information.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the service element associated with  ``service_id``  does not have any operation elements that have authentication information.
        def list(service_id)
            invoke_with_info(@@list_info, {
                'service_id' => service_id,
            })
        end


        # Retrieves the authentication information about an operation element corresponding to  ``operation_id``  contained in the service element corresponding to  ``service_id`` .
        #
        # @param service_id [String]
        #     Identifier of the service element.
        # @param operation_id [String]
        #     Identifier of the operation element.
        # @return [Com::Vmware::Vapi::Metadata::Authentication::OperationInfo]
        #     The   :class:`Com::Vmware::Vapi::Metadata::Authentication::OperationInfo`   instance that corresponds to  ``operation_id`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the service element associated with  ``service_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the operation element associated with  ``operation_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the operation element associated with  ``operation_id``  does not have any authentication information.
        def get(service_id, operation_id)
            invoke_with_info(@@get_info, {
                'service_id' => service_id,
                'operation_id' => operation_id,
            })
        end


    end


end
