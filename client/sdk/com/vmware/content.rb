#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.content.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Content
        end
    end
end

# The Content  package  provides  classes  and  classs  for configuring global settings and permissions, and for managing libraries in the Content Library Service.
module Com::Vmware::Content

    # The  ``Com::Vmware::Content::Configuration``   class  provides  methods  to configure the global settings of the Content Library Service.  
    # 
    #  The configuration settings are used by the Content Library Service to control the behavior of various operations.
    class Configuration < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.configuration')

        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'model' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::ConfigurationModel'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::ConfigurationModel'),
            {},
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'update' => @@update_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Updates the configuration. The update is incremental. Any  field  in the   :class:`Com::Vmware::Content::ConfigurationModel`    class  that is  nil  will not be modified. Note that this update  method  doesn't guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.
        #
        # @param model [Com::Vmware::Content::ConfigurationModel]
        #      The   :class:`Com::Vmware::Content::ConfigurationModel`   specifying the settings to update.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if one of the configuration properties is not within the proper range.
        def update(model)
            invoke_with_info(@@update_info, {
                'model' => model,
            })
        end


        # Retrieves the current configuration values.
        #
        # @return [Com::Vmware::Content::ConfigurationModel]
        #     The   :class:`Com::Vmware::Content::ConfigurationModel`   instance representing the configuration of the Content Library Service.
        def get()
            invoke_with_info(@@get_info)
        end


    end


    # The  ``Com::Vmware::Content::Library``   class  provides  methods  to manage and find   :class:`Com::Vmware::Content::LibraryModel`   entities.  
    # 
    #  The  ``Com::Vmware::Content::Library``   class  provides support for generic functionality which can be applied equally to all types of libraries. The functionality provided by this  class  will not affect the properties specific to the type of library. See also   :class:`Com::Vmware::Content::LocalLibrary`   and   :class:`Com::Vmware::Content::SubscribedLibrary`  .
    class LibraryService < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {},
            [],
            [])
        @@find_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('find', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::FindSpec'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
                'update_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'list' => @@list_info,
            'find' => @@find_info,
            'update' => @@update_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.content.Library'


        # Returns a given   :class:`Com::Vmware::Content::LibraryModel`  .
        #
        # @param library_id [String]
        #      Identifier of the library to return.
        # @return [Com::Vmware::Content::LibraryModel]
        #     The   :class:`Com::Vmware::Content::LibraryModel`   instance with the specified  ``library_id`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the specified library does not exist.
        def get(library_id)
            invoke_with_info(@@get_info, {
                'library_id' => library_id,
            })
        end


        # Returns the identifiers of all libraries of any type in the Content Library.
        #
        # @return [Array<String>]
        #     The  list  of all identifiers of all libraries in the Content Library.
        def list()
            invoke_with_info(@@list_info)
        end


        # Returns a list of all the visible (as determined by authorization policy) libraries matching the requested   :class:`Com::Vmware::Content::Library::FindSpec`  .
        #
        # @param spec [Com::Vmware::Content::Library::FindSpec]
        #      Specification describing what properties to filter on.
        # @return [Array<String>]
        #     The  list  of identifiers of all the visible libraries matching the given  ``spec`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if no properties are specified in the  ``spec`` .
        def find(spec)
            invoke_with_info(@@find_info, {
                'spec' => spec,
            })
        end


        # Updates the properties of a library.  
        # 
        #  This is an incremental update to the library. Any  field  in the   :class:`Com::Vmware::Content::LibraryModel`    class  that is  nil  will not be modified.  
        # 
        #  This  method  will only update the common properties for all library types. This will not, for example, update the   :attr:`Com::Vmware::Content::LibraryModel.publish_info`   of a local library, nor the   :attr:`Com::Vmware::Content::LibraryModel.subscription_info`   of a subscribed library. Specific properties are updated in   :func:`Com::Vmware::Content::LocalLibrary.update`   and   :func:`Com::Vmware::Content::SubscribedLibrary.update`  .
        #
        # @param library_id [String]
        #      Identifier of the library to update.
        # @param update_spec [Com::Vmware::Content::LibraryModel]
        #      Specification of the new property values to set on the library.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library associated with  ``library_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``update_spec``  is not valid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the   :attr:`Com::Vmware::Content::LibraryModel.version`   of  ``update_spec``  is not equal to the current version of the library.
        def update(library_id, update_spec)
            invoke_with_info(@@update_info, {
                'library_id' => library_id,
                'update_spec' => update_spec,
            })
        end



        # Specifies the properties that can be used as a filter to find libraries. When multiple  fields  are specified, all properties of the library must match the specification.
        # @!attribute [rw] name
        #     @return [String, nil]
        #     Name of the library to search. The name is case-insensitive. See   :attr:`Com::Vmware::Content::LibraryModel.name`  .
        #     If not specified any name will be searched.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Content::LibraryModel::LibraryType, nil]
        #     Library type to search. See   :attr:`Com::Vmware::Content::LibraryModel.type`  .
        #     If not specified any library type will be searched.
        class FindSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.content.library.find_spec',
                        {
                            'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel::LibraryType')),
                        },
                        FindSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Content::LocalLibrary``   class  manages local libraries.  
    # 
    #  The  ``Com::Vmware::Content::LocalLibrary``   class  provides support for creating and maintaining local library instances. A local library may also use the   :class:`Com::Vmware::Content::Library`    class  to manage general library functionality.
    class LocalLibrary < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.local_library')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {},
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
                'update_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'create' => @@create_info,
            'delete' => @@delete_info,
            'get' => @@get_info,
            'list' => @@list_info,
            'update' => @@update_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Creates a new local library.
        #
        # @param client_token [String, nil]
        #      A unique token generated on the client for each creation request. The token should be a universally unique identifier (UUID), for example:  ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee idempotent creation.
        #     If not specified creation is not idempotent.
        # @param create_spec [Com::Vmware::Content::LibraryModel]
        #      Specification for the new local library.
        # @return [String]
        #     Identifier of the newly created   :class:`Com::Vmware::Content::LibraryModel`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``create_spec``  is not valid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``client_token``  does not conform to the UUID format.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
        #      if using multiple storage backings.
        def create(create_spec, client_token=nil)
            invoke_with_info(@@create_info, {
                'client_token' => client_token,
                'create_spec' => create_spec,
            })
        end


        # Deletes the specified local library.  
        # 
        #  Deleting a local library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
        #
        # @param library_id [String]
        #      Identifier of the local library to delete.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library specified by  ``library_id``  is not a local library.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library specified by  ``library_id``  does not exist.
        def delete(library_id)
            invoke_with_info(@@delete_info, {
                'library_id' => library_id,
            })
        end


        # Returns a given local library.
        #
        # @param library_id [String]
        #      Identifier of the local library to return.
        # @return [Com::Vmware::Content::LibraryModel]
        #     The   :class:`Com::Vmware::Content::LibraryModel`   instance associated with  ``library_id`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library specified by  ``library_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library specified by  ``library_id``  is not a local library.
        def get(library_id)
            invoke_with_info(@@get_info, {
                'library_id' => library_id,
            })
        end


        # Returns the identifiers of all local libraries in the Content Library.
        #
        # @return [Array<String>]
        #     The  list  of identifiers of all local libraries in the Content Library.
        def list()
            invoke_with_info(@@list_info)
        end


        # Updates the properties of a local library.  
        # 
        #  This is an incremental update to the local library.  Fields  that are  nil  in the update specification will be left unchanged.
        #
        # @param library_id [String]
        #      Identifier of the local library to update.
        # @param update_spec [Com::Vmware::Content::LibraryModel]
        #      Specification of the new property values to set on the local library.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library specified by  ``library_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library specified by  ``library_id``  is not a local library.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``update_spec``  is not valid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the   :attr:`Com::Vmware::Content::LibraryModel.version`   of  ``update_spec``  is not equal to the current version of the library.
        def update(library_id, update_spec)
            invoke_with_info(@@update_info, {
                'library_id' => library_id,
                'update_spec' => update_spec,
            })
        end


    end



    class SubscribedLibrary < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.subscribed_library')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@evict_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('evict', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {},
            [],
            [])
        @@sync_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('sync', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),

            },
            [],
            [])
        @@update_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('update', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
                'update_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),

            },
            [],
            [])
        @@probe_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('probe', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'subscription_info' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::SubscriptionInfo'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::SubscribedLibrary::ProbeResult'),
            {},
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'create' => @@create_info,
            'delete' => @@delete_info,
            'evict' => @@evict_info,
            'get' => @@get_info,
            'list' => @@list_info,
            'sync' => @@sync_info,
            'update' => @@update_info,
            'probe' => @@probe_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Creates a new subscribed library.  
        # 
        #  Once created, the subscribed library will be empty. If the   :attr:`Com::Vmware::Content::LibraryModel.subscription_info`   property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
        #
        # @param client_token [String, nil]
        #      Unique token generated on the client for each creation request. The token should be a universally unique identifier (UUID), for example:  ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee idempotent creation.
        #     If not specified creation is not idempotent.
        # @param create_spec [Com::Vmware::Content::LibraryModel]
        #      Specification for the new subscribed library.
        # @return [String]
        #     Identifier of the newly created subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``create_spec``  is not valid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``client_token``  does not conform to the UUID format.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
        #      if using multiple storage backings.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #      if subscribing to a published library which cannot be accessed.
        def create(create_spec, client_token=nil)
            invoke_with_info(@@create_info, {
                'client_token' => client_token,
                'create_spec' => create_spec,
            })
        end


        # Deletes the specified subscribed library.  
        # 
        #  Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
        #
        # @param library_id [String]
        #      Identifier of the subscribed library to delete.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library referenced by  ``library_id``  is not a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library referenced by  ``library_id``  does not exist.
        def delete(library_id)
            invoke_with_info(@@delete_info, {
                'library_id' => library_id,
            })
        end


        # Evicts the cached content of an on-demand subscribed library.  
        # 
        #  This  method  allows the cached content of a subscribed library to be removed to free up storage capacity. This  method  will only work when a subscribed library is synchronized on-demand.
        #
        # @param library_id [String]
        #      Identifier of the subscribed library whose content should be evicted.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library specified by  ``library_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library specified by  ``library_id``  is not a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
        #      if the library specified by  ``library_id``  does not synchronize on-demand.
        def evict(library_id)
            invoke_with_info(@@evict_info, {
                'library_id' => library_id,
            })
        end


        # Returns a given subscribed library.
        #
        # @param library_id [String]
        #      Identifier of the subscribed library to return.
        # @return [Com::Vmware::Content::LibraryModel]
        #     The   :class:`Com::Vmware::Content::LibraryModel`   instance that corresponds to  ``library_id`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library associated with  ``library_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library associated with  ``library_id``  is not a subscribed library.
        def get(library_id)
            invoke_with_info(@@get_info, {
                'library_id' => library_id,
            })
        end


        # Returns the identifiers of all subscribed libraries in the Content Library.
        #
        # @return [Array<String>]
        #     The  list  of identifiers of all subscribed libraries in the Content Library.
        def list()
            invoke_with_info(@@list_info)
        end


        # Forces the synchronization of the subscribed library.  
        # 
        #  Synchronizing a subscribed library forcefully with this  method  will perform the same synchronization behavior as would run periodically for the library. The   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.on_demand`   setting is respected. Calling this  method  on a library that is already in the process of synchronizing will have no effect.
        #
        # @param library_id [String]
        #      Identifier of the subscribed library to synchronize.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library specified by  ``library_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library specified by  ``library_id``  is not a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if some parameter in the subscribed library subscription info is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #      if the published library cannot be contacted or found.
        def sync(library_id)
            invoke_with_info(@@sync_info, {
                'library_id' => library_id,
            })
        end


        # Updates the properties of a subscribed library.  
        # 
        #  This is an incremental update to the subscribed library.  Fields  that are  nil  in the update specification will be left unchanged.
        #
        # @param library_id [String]
        #      Identifier of the subscribed library to update.
        # @param update_spec [Com::Vmware::Content::LibraryModel]
        #      Specification of the new property values to set on the subscribed library.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library specified by  ``library_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library specified by  ``library_id``  is not a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``update_spec``  is not valid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the   :attr:`Com::Vmware::Content::LibraryModel.version`   of  ``update_spec``  is not equal to the current version of the library.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #      if the subscription info is being updated but the published library cannot be contacted or found.
        def update(library_id, update_spec)
            invoke_with_info(@@update_info, {
                'library_id' => library_id,
                'update_spec' => update_spec,
            })
        end


        # Probes remote library subscription information, including URL, SSL certificate and password. The resulting   :class:`Com::Vmware::Content::SubscribedLibrary::ProbeResult`    class  describes whether or not the subscription configuration is successful.
        #
        # @param subscription_info [Com::Vmware::Content::Library::SubscriptionInfo]
        #      The subscription info to be probed.
        # @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult]
        #     The subscription info probe result.
        def probe(subscription_info)
            invoke_with_info(@@probe_info, {
                'subscription_info' => subscription_info,
            })
        end



        # The  ``Com::Vmware::Content::SubscribedLibrary::ProbeResult``   class  defines the subscription information probe result. This describes whether using a given subscription URL is successful or if there are access problems, such as SSL errors.
        # @!attribute [rw] status
        #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
        #     The status of probe result. This will be one of  ``SUCCESS``, ``INVALID_URL``, ``TIMED_OUT``, ``HOST_NOT_FOUND``, ``RESOURCE_NOT_FOUND``, ``INVALID_CREDENTIALS``, ``CERTIFICATE_ERROR``, ``UNKNOWN_ERROR`` .
        # @!attribute [rw] ssl_thumbprint
        #     @return [String, nil]
        #     The SSL thumbprint for the remote endpoint.
        #     An SSL thumbprint is only returned if the host is secured with SSL/TLS.
        # @!attribute [rw] error_messages
        #     @return [Array<Com::Vmware::Vapi::Std::LocalizableMessage>]
        #     If the probe result is in an error status, this  field  will contain the detailed error messages.
        class ProbeResult < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.content.subscribed_library.probe_result',
                        {
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status'),
                            'ssl_thumbprint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'error_messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                        },
                        ProbeResult,
                        false,
                        nil)
                end
            end

            attr_accessor :status,
                          :ssl_thumbprint,
                          :error_messages

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end


            # The  ``Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status``   enumerated type  defines the error status constants for the probe result.
            # @!attribute [rw] success
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates that the probe was successful.
            # @!attribute [rw] invalid_url
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates that the supplied URL was not valid.
            # @!attribute [rw] timed_out
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates that the probe timed out while attempting to connect to the URL.
            # @!attribute [rw] host_not_found
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates that the host in the URL could not be found.
            # @!attribute [rw] resource_not_found
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates that the given resource at the URL was not found.
            # @!attribute [rw] invalid_credentials
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates that the connection was rejected due to invalid credentials.
            # @!attribute [rw] certificate_error
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates that the provided server certificate thumbprint in   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.ssl_thumbprint`   is invalid. In this case, the returned  null  should be set in   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.ssl_thumbprint`  .
            # @!attribute [rw] unknown_error
            #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
            #     Indicates an unspecified error different from the other error cases defined in   :class:`Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status`  .
            class Status < VAPI::Bindings::VapiEnum

                class << self
                    # Holds (gets or creates) the binding type metadata for this enumeration type.
                    # @scope class
                    # @return [VAPI::Bindings::EnumType] the binding type
                    def binding_type
                        @binding_type ||= VAPI::Bindings::EnumType.new(
                            'com.vmware.content.subscribed_library.probe_result.status',
                            Status)
                    end

                    # Converts from a string value (perhaps off the wire) to an instance
                    # of this enum type.
                    # @param value [String] the actual value of the enum instance
                    # @return [Status] the instance found for the value, otherwise
                    #         an unknown instance will be built for the value
                    def from_string(value)
                        begin
                            const_get(value)
                        rescue NameError
                            Status.new('UNKNOWN', value)
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

                # @!attribute [rw] success
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates that the probe was successful.
                SUCCESS = Status.new('SUCCESS')

                # @!attribute [rw] invalid_url
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates that the supplied URL was not valid.
                INVALID_URL = Status.new('INVALID_URL')

                # @!attribute [rw] timed_out
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates that the probe timed out while attempting to connect to the URL.
                TIMED_OUT = Status.new('TIMED_OUT')

                # @!attribute [rw] host_not_found
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates that the host in the URL could not be found.
                HOST_NOT_FOUND = Status.new('HOST_NOT_FOUND')

                # @!attribute [rw] resource_not_found
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates that the given resource at the URL was not found.
                RESOURCE_NOT_FOUND = Status.new('RESOURCE_NOT_FOUND')

                # @!attribute [rw] invalid_credentials
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates that the connection was rejected due to invalid credentials.
                INVALID_CREDENTIALS = Status.new('INVALID_CREDENTIALS')

                # @!attribute [rw] certificate_error
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates that the provided server certificate thumbprint in   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.ssl_thumbprint`   is invalid. In this case, the returned  null  should be set in   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.ssl_thumbprint`  .
                CERTIFICATE_ERROR = Status.new('CERTIFICATE_ERROR')

                # @!attribute [rw] unknown_error
                #     @return [Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status]
                #     Indicates an unspecified error different from the other error cases defined in   :class:`Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status`  .
                UNKNOWN_ERROR = Status.new('UNKNOWN_ERROR')

            end


        end


    end


    # The  ``Com::Vmware::Content::Type``   class  exposes the   :class:`Com::Vmware::Content::Library::ItemModel`   types that this Content Library Service supports.  
    # 
    #  A library item has an optional type which can be specified with the   :attr:`Com::Vmware::Content::Library::ItemModel.type`    field . For items with a type that is supported by a plugin, the Content Library Service may understand the files which are part of the library item and can produce metadata for the item.  
    # 
    #  In other cases, uploads may require a process in which one upload implies subsequent uploads. For example, an Open Virtualization Format (OVF) package is composed of an OVF descriptor file and the associated virtual disk files. Uploading an OVF descriptor can enable the Content Library Service to understand that the complete OVF package requires additional disk files, and it can set up the transfers for the disks automatically by adding the file entries for the disks when the OVF descriptor is uploaded.  
    # 
    #  When a type is not supported by a plugin, or the type is not specified, the Content Library Service can handle a library item in a default way, without adding metadata to the item or guiding the upload process.
    class Type < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.type')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Type::Info')),
            {},
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Returns a  list  of   :class:`Com::Vmware::Content::Type::Info`   instances which describe the type support plugins in this Content Library.
        #
        # @return [Array<Com::Vmware::Content::Type::Info>]
        #     The  list  of   :class:`Com::Vmware::Content::Type::Info`   instances which describe the type support plugins in this Content Library.
        def list()
            invoke_with_info(@@list_info)
        end



        # The  ``Com::Vmware::Content::Type::Info``   class  describes support for a specific type of data in an   :class:`Com::Vmware::Content::Library::ItemModel`  . The  ``Com::Vmware::Content::Type::Info``  can be queried through the   :class:`Com::Vmware::Content::Type`    class . Type support describes plugins in the Content Library which can provide metadata on library items and help manage the transfer process by adding dependent files when a current file is added.
        # @!attribute [rw] description
        #     @return [String]
        #     A description of the type support offered by the plugin.
        # @!attribute [rw] name
        #     @return [String]
        #     The name of the plugin which provides the type support.
        # @!attribute [rw] type
        #     @return [String]
        #     The type which the plugin supports.  
        #     
        #      To upload a library item of the type supported by the plugin, the   :attr:`Com::Vmware::Content::Library::ItemModel.type`    field  of the item should be set to this value.
        # @!attribute [rw] vendor
        #     @return [String]
        #     The name of the vendor who created the type support plugin.
        # @!attribute [rw] version
        #     @return [String]
        #     The version number of the type support plugin.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.content.type.info',
                        {
                            'description' => VAPI::Bindings::StringType.instance,
                            'name' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::StringType.instance,
                            'vendor' => VAPI::Bindings::StringType.instance,
                            'version' => VAPI::Bindings::StringType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :description,
                          :name,
                          :type,
                          :vendor,
                          :version

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end



    # The  ``Com::Vmware::Content::ConfigurationModel``   class  defines the global settings of the Content Library Service.
    # @!attribute [rw] automatic_sync_enabled
    #     @return [Boolean]
    #     Whether automatic synchronization is enabled.  
    #     
    #      When automatic synchronization is enabled, the Content Library Service will automatically synchronize all subscribed libraries on a daily basis. Subscribed libraries with the   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.automatic_sync_enabled`   flag turned on will be synchronized every hour between   :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_start_hour`   and   :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_stop_hour`  .
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] automatic_sync_start_hour
    #     @return [Fixnum]
    #     The hour at which the automatic synchronization will start. This value is between 0 (midnight) and 23 inclusive.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] automatic_sync_stop_hour
    #     @return [Fixnum]
    #     The hour at which the automatic synchronization will stop. Any active synchronization operation will continue to run, however no new synchronization operations will be triggered after the stop hour. This value is between 0 (midnight) and 23 inclusive.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] maximum_concurrent_item_syncs
    #     @return [Fixnum]
    #     The maximum allowed number of library items to synchronize concurrently from remote libraries. This must be a positive number. The service may not be able to guarantee the requested concurrency if there is no available capacity.  
    #     
    #      This setting is global across all subscribed libraries.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    class ConfigurationModel < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.content.configuration_model',
                    {
                        'automatic_sync_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'automatic_sync_start_hour' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        'automatic_sync_stop_hour' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        'maximum_concurrent_item_syncs' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                    },
                    ConfigurationModel,
                    false,
                    nil)
            end
        end

        attr_accessor :automatic_sync_enabled,
                      :automatic_sync_start_hour,
                      :automatic_sync_stop_hour,
                      :maximum_concurrent_item_syncs

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The   :class:`Com::Vmware::Content::LibraryModel`    class  represents a Content Library resource model.  
    # 
    #  A  ``Com::Vmware::Content::LibraryModel``  is a container for a set of items which represent a usable set of files. The Content Library Service allows for multiple libraries to be created with separate authorization and sharing policies.  
    # 
    #  Each  ``Com::Vmware::Content::LibraryModel``  is a container for a set of   :class:`Com::Vmware::Content::Library::ItemModel`   instances. Each item is a logical object in a library, which may have multiple files.  
    # 
    #  A  ``Com::Vmware::Content::LibraryModel``  may be local or subscribed. A local library has its source of truth about items within this Content Library Service. Items may be added to or removed from the library. A local library may also be private or published. When published, the library is exposed by a network endpoint and can be used by another Content Library Service for synchronization. A private local library cannot be used for synchronization.  
    # 
    #  A subscribed library is a library which gets its source of truth from another library that may be across a network in another Content Library Service. A subscribed library may have a different name and metadata from the library to which it subscribes, but the set of library items is always the same as those in the source library. Library items cannot be manually added to a subscribed library -- they can only be added by adding new items to the source library.
    # @!attribute [rw] id
    #     @return [String]
    #     An identifier which uniquely identifies this  ``Com::Vmware::Content::LibraryModel`` .
    #     This  field  is not used for the  ``create``   method . It will not be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] creation_time
    #     @return [DateTime]
    #     The date and time when this library was created.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] description
    #     @return [String]
    #     A human-readable description for this library.
    #     This  field  is optional for the  ``create``   method . Leaving it  nil  during creation will result in an empty string value. It will always be present in the result of a  ``get``  or  ``list``   method . It is optional for the  ``update``   method . Leaving it  nil  during update indicates that the description should be left unchanged.
    # @!attribute [rw] last_modified_time
    #     @return [DateTime]
    #     The date and time when this library was last updated.  
    #     
    #      This  field  is updated automatically when the library properties are changed. This  field  is not affected by adding, removing, or modifying a library item or its content within the library. Tagging the library or syncing the subscribed library does not alter this  field .
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] last_sync_time
    #     @return [DateTime]
    #     The date and time when this library was last synchronized.  
    #     
    #      This  field  applies only to subscribed libraries. It is updated every time a synchronization is triggered on the library. The value is  nil  for a local library.
    #     This  field  is not used for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] name
    #     @return [String]
    #     The name of the library.  
    #     
    #      A Library is identified by a human-readable name. Library names cannot be undefined or an empty string. Names do not have to be unique.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] storage_backings
    #     @return [Array<Com::Vmware::Content::Library::StorageBacking>]
    #     The list of storage backings which are available for this library.  
    #     
    #      A   :class:`Com::Vmware::Content::Library::StorageBacking`   defines a storage location which can be used to store files for the library items in this library. Multiple storage locations are not currently supported but may become supported in future releases.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] type
    #     @return [Com::Vmware::Content::LibraryModel::LibraryType]
    #     The type ( ``LOCAL``, ``SUBSCRIBED`` ) of this library.  
    #     
    #      This value can be used to determine what additional services and information can be available for this library.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] optimization_info
    #     @return [Com::Vmware::Content::Library::OptimizationInfo]
    #     Defines various optimizations and optimization parameters applied to this library.
    #     This  field  is optional for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] version
    #     @return [String]
    #     A version number which is updated on metadata changes. This value allows clients to detect concurrent updates and prevent accidental clobbering of data.  
    #     
    #      This value represents a number which is incremented every time library properties, such as name or description, are changed. It is not incremented by changes to a library item within the library, including adding or removing items. It is also not affected by tagging the library.
    #     This  field  is not used for the  ``create``   method . It will always be present in the result of a  ``get``  or  ``list``   method . It is optional for the  ``update``   method . Leaving it  nil  during update indicates that you do not need to detect concurrent updates.
    # @!attribute [rw] publish_info
    #     @return [Com::Vmware::Content::Library::PublishInfo]
    #     Defines how this library is published so that it can be subscribed to by a remote subscribed library.  
    #     
    #      The   :class:`Com::Vmware::Content::Library::PublishInfo`   defines where and how the metadata for this local library is accessible. A local library is only published publically if   :attr:`Com::Vmware::Content::Library::PublishInfo.published`   is  ``true`` .
    #     This  field  is optional for the  ``create``  and  ``update``   methods . If not specified during creation, the default is for the library to not be published. If not specified during update, the  field  is left unchanged.
    # @!attribute [rw] subscription_info
    #     @return [Com::Vmware::Content::Library::SubscriptionInfo]
    #     Defines the subscription behavior for this Library.  
    #     
    #      The   :class:`Com::Vmware::Content::Library::SubscriptionInfo`   defines how this subscribed library synchronizes to a remote source. Setting the value will determine the remote source to which the library synchronizes, and how. Changing the subscription will result in synchronizing to a new source. If the new source differs from the old one, the old library items and data will be lost. Setting   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.automatic_sync_enabled`   to false will halt subscription but will not remove existing cached data.
    #     This  field  is optional for the  ``create``  and  ``update``   methods . If not specified during creation, a default will be created without an active subscription. If not specified during update, the  field  is left unchanged.
    # @!attribute [rw] server_guid
    #     @return [String]
    #     The unique identifier of the vCenter server where the library exists.
    #     This  field  is optional for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    class LibraryModel < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.content.library_model',
                    {
                        'id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                        'creation_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance),
                        'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'last_modified_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance),
                        'last_sync_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance),
                        'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'storage_backings' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::StorageBacking'))),
                        'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::LibraryModel::LibraryType')),
                        'optimization_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::OptimizationInfo')),
                        'version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'publish_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::PublishInfo')),
                        'subscription_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::SubscriptionInfo')),
                        'server_guid' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                    },
                    LibraryModel,
                    true,
                    ["id"])
            end
        end

        attr_accessor :id,
                      :creation_time,
                      :description,
                      :last_modified_time,
                      :last_sync_time,
                      :name,
                      :storage_backings,
                      :type,
                      :optimization_info,
                      :version,
                      :publish_info,
                      :subscription_info,
                      :server_guid

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end


        # The  ``Com::Vmware::Content::LibraryModel::LibraryType``   enumerated type  defines the type of a   :class:`Com::Vmware::Content::LibraryModel`  .  
        # 
        #  The type of a library can be used to determine which additional services can be performed with a library.
        # @!attribute [rw] local
        #     @return [Com::Vmware::Content::LibraryModel::LibraryType]
        #     The library contents are defined and stored by the local Content Library Service installation.  
        #     
        #      A local library can be retrieved and managed via the   :class:`Com::Vmware::Content::LocalLibrary`  .
        # @!attribute [rw] subscribed
        #     @return [Com::Vmware::Content::LibraryModel::LibraryType]
        #     The library synchronizes its items and content from another published library.  
        #     
        #      A subscribed library can be retrieved and managed via the   :class:`Com::Vmware::Content::SubscribedLibrary`  .
        class LibraryType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.content.library_model.library_type',
                        LibraryType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [LibraryType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        LibraryType.new('UNKNOWN', value)
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

            # @!attribute [rw] local
            #     @return [Com::Vmware::Content::LibraryModel::LibraryType]
            #     The library contents are defined and stored by the local Content Library Service installation.  
            #     
            #      A local library can be retrieved and managed via the   :class:`Com::Vmware::Content::LocalLibrary`  .
            LOCAL = LibraryType.new('LOCAL')

            # @!attribute [rw] subscribed
            #     @return [Com::Vmware::Content::LibraryModel::LibraryType]
            #     The library synchronizes its items and content from another published library.  
            #     
            #      A subscribed library can be retrieved and managed via the   :class:`Com::Vmware::Content::SubscribedLibrary`  .
            SUBSCRIBED = LibraryType.new('SUBSCRIBED')

        end


    end

end
