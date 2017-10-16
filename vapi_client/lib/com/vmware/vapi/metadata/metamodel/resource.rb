#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.metamodel.resource.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Metadata
        module Metamodel
          module Resource
          end
        end
      end
    end
  end
end

# The  ``com.vmware.vapi.metadata.metamodel.resource``   package  provides  classs  to retrieve metamodel information for resource types.
module Com::Vmware::Vapi::Metadata::Metamodel::Resource
  # The  ``Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model``   class  provides  methods  to retrieve information about models.  
  # 
  #  A structure is used as a model if it is used for persisting data about an entity. Some of the fields in the model structure are also used for creating indexes for querying.  
  # 
  #  One or more services can operate on the same resource type. One or more services can provide the model structure for an entity of this resource type. Using  ``Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model``   class  you can retrieve the list of all the structure elements that are model structures for a given resource type.
  class Model < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.metamodel.resource.model')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'resource_id' => VAPI::Bindings::IdType.new('com.vmware.vapi.resource')
      ),
      VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Returns the set of identifiers for the structure elements that are models for the resource type corresponding to  ``resource_id`` .  
    # 
    #  The   :class:`Com::Vmware::Vapi::Metadata::Metamodel::Structure`    class  provides  methods  to retrieve more details about the structure elements corresponding to the identifiers returned by this  method .
    #
    # @param resource_id [String]
    #     Identifier of the resource type.
    # @return [Set<String>]
    #     The set of identifiers for the models that are associated with the resource type in  ``resource_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     if the resource type associated with  ``resource_id``  does not exist.
    def list(resource_id)
      invoke_with_info(LIST_INFO,
                       'resource_id' => resource_id)
    end

  end
end
