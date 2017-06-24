#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.inventory.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vcenter
            module Inventory
            end
        end
    end
end

# The  ``com.vmware.vcenter.inventory``   component  provides  methods  and  classes  for retrieving vCenter datastore and network information for a given  list  of identifiers.
module Com::Vmware::Vcenter::Inventory

    # The  ``Com::Vmware::Vcenter::Inventory::Datastore``   class  provides  methods  to retrieve information about datastores.
    class Datastore < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.inventory.datastore')

        @@find_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('find', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'datastores' => VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            }),
            VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Inventory::Datastore::Info'))),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'find' => @@find_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns datastore information for the specified datastores. The key in the  result   map  is the datastore identifier and the value in the  map  is the datastore information.
        #
        # @param datastores [Array<String>]
        #      Identifiers of the datastores for which information will be returned.
        # @return [Hash<String, Com::Vmware::Vcenter::Inventory::Datastore::Info, nil>]
        #     Datastore information for the specified datastores. The key in the  result   map  is the datastore identifier and the value in the  map  is the datastore information.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if no datastore can be found for one or more of the datastore identifiers in  ``datastores``
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     If you do not have all of the privileges described in the following list:
        #
        #     System.Read
        def find(datastores)
            invoke_with_info(@@find_info, {
                'datastores' => datastores,
            })
        end



        # The  ``Com::Vmware::Vcenter::Inventory::Datastore::Info``   class  contains information about a datastore.
        # @!attribute [rw] type
        #     @return [String]
        #     Type of the datastore.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.inventory.datastore.info',
                        {
                            'type' => VAPI::Bindings::StringType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Vcenter::Inventory::Network``   class  provides  methods  to retrieve information about vCenter Server networks.
    class Network < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.inventory.network')

        @@find_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('find', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'networks' => VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            }),
            VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Inventory::Network::Info'))),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'find' => @@find_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns network information for the specified vCenter Server networks. The key in the  result   map  is the network identifier and the value in the  map  is the network information.
        #
        # @param networks [Array<String>]
        #      Identifiers of the vCenter Server networks for which information will be returned.
        # @return [Hash<String, Com::Vmware::Vcenter::Inventory::Network::Info, nil>]
        #     Network information for the specified vCenter Server networks. The key in the  result   map  is the network identifier and the value in the  map  is the network information.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if no datastore can be found for one or more of the vCenter Server network identifiers in  ``networks``
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     If you do not have all of the privileges described in the following list:
        #
        #     System.Read
        def find(networks)
            invoke_with_info(@@find_info, {
                'networks' => networks,
            })
        end



        # The  ``Com::Vmware::Vcenter::Inventory::Network::Info``   class  contains information about a vCenter Server network.
        # @!attribute [rw] type
        #     @return [String]
        #     Type of the vCenter Server network.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.inventory.network.info',
                        {
                            'type' => VAPI::Bindings::StringType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


end
