#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.content.library.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Content
            module Library
            end
        end
    end
end

# The Content Library  package  provides  classes  and  classs  for defining and managing the library's items, subscription, publication, and storage.
module Com::Vmware::Content::Library

    # The  ``Com::Vmware::Content::Library::Item``   class  provides  methods  for managing library items.
    class ItemService < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.item')

        @@copy_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('copy', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                'source_library_item_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
                'destination_create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::ItemModel'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),

            },
            [],
            [])
        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::ItemModel'),
            }),
            VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_item_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
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
                'library_item_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::ItemModel'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.Library'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@find_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('find', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::FindSpec'),
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
                'library_item_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
                'update_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::ItemModel'),
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
            'copy' => @@copy_info,
            'create' => @@create_info,
            'delete' => @@delete_info,
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

        RESOURCE_TYPE = 'com.vmware.content.library.Item'


        # Copies a library item.  
        # 
        #  Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task.  
        # 
        #  If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator.  
        # 
        #  A library item cannot be copied into a subscribed library.
        #
        # @param client_token [String, nil]
        #      A unique token generated on the client for each copy request. The token should be a universally unique identifier (UUID), for example:  ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee idempotent copy.
        #     If not specified copy is not idempotent.
        # @param source_library_item_id [String]
        #      Identifier of the existing library item from which the content will be copied.
        # @param destination_create_spec [Com::Vmware::Content::Library::ItemModel]
        #      Specification for the new library item to be created.
        # @return [String]
        #     The identifier of the new library item into which the content is being copied.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library item with  ``source_library_item_id``  does not exist, or if the library referenced by the   :attr:`Com::Vmware::Content::Library::ItemModel.library_id`   property of  ``destination_create_spec``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if one of the following is true for the new library item:  
        #     
        #       * name is empty
        #        * name exceeds 80 characters
        #        * description exceeds 1024 characters
        #       
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``client_token``  does not conform to the UUID format.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the   :attr:`Com::Vmware::Content::Library::ItemModel.library_id`   property of  ``destination_create_spec``  refers to a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #      if the copy operation failed because the source or destination library item is not accessible.
        def copy(source_library_item_id, destination_create_spec, client_token=nil)
            invoke_with_info(@@copy_info, {
                'client_token' => client_token,
                'source_library_item_id' => source_library_item_id,
                'destination_create_spec' => destination_create_spec,
            })
        end


        # Creates a new library item.  
        # 
        #  A new library item is created without any content. After creation, content can be added through the   :class:`Com::Vmware::Content::Library::Item::UpdateSession`   and   :class:`Com::Vmware::Content::Library::Item::Updatesession::File`    classs .  
        # 
        #  A library item cannot be created in a subscribed library.
        #
        # @param client_token [String, nil]
        #      A unique token generated on the client for each creation request. The token should be a universally unique identifier (UUID), for example:  ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee idempotent creation.
        #     If not specified creation is not idempotent.
        # @param create_spec [Com::Vmware::Content::Library::ItemModel]
        #      Specification that defines the properties of the new library item.
        # @return [String]
        #     Identifier of the new library item.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the   :attr:`Com::Vmware::Content::Library::ItemModel.library_id`   property of  ``create_spec``  refers to a library that does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if one of the following is true for the new library item:  
        #     
        #       * name is empty
        #        * name exceeds 80 characters
        #        * description exceeds 1024 characters
        #       
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if the  ``client_token``  does not conform to the UUID format.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the   :attr:`Com::Vmware::Content::Library::ItemModel.library_id`   property of  ``destinationCreateSpec``  refers to a subscribed library.
        def create(create_spec, client_token=nil)
            invoke_with_info(@@create_info, {
                'client_token' => client_token,
                'create_spec' => create_spec,
            })
        end


        # Deletes a library item.  
        # 
        #  This  method  will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing.  
        # 
        #  This  method  cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
        #
        # @param library_item_id [String]
        #      Identifier of the library item to delete.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library item with the given  ``library_item_id``  is a member of a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library item with the specified  ``library_item_id``  does not exist.
        def delete(library_item_id)
            invoke_with_info(@@delete_info, {
                'library_item_id' => library_item_id,
            })
        end


        # Returns the   :class:`Com::Vmware::Content::Library::ItemModel`   with the given identifier.
        #
        # @param library_item_id [String]
        #      Identifier of the library item to return.
        # @return [Com::Vmware::Content::Library::ItemModel]
        #     The   :class:`Com::Vmware::Content::Library::ItemModel`   instance with the given  ``library_item_id`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if no item with the given  ``library_item_id``  exists.
        def get(library_item_id)
            invoke_with_info(@@get_info, {
                'library_item_id' => library_item_id,
            })
        end


        # Returns the identifiers of all items in the given library.
        #
        # @param library_id [String]
        #      Identifier of the library whose items should be returned.
        # @return [Array<String>]
        #     The  list  of identifiers of the items in the library specified by  ``library_id`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library associated with  ``library_id``  does not exist.
        def list(library_id)
            invoke_with_info(@@list_info, {
                'library_id' => library_id,
            })
        end


        # Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested   :class:`Com::Vmware::Content::Library::Item::FindSpec`  .
        #
        # @param spec [Com::Vmware::Content::Library::Item::FindSpec]
        #      Specification describing what properties to filter on.
        # @return [Array<String>]
        #     The  list  of identifiers of all the visible library items matching the given  ``spec`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if no properties are specified in the  ``spec`` .
        def find(spec)
            invoke_with_info(@@find_info, {
                'spec' => spec,
            })
        end


        # Updates the specified properties of a library item.  
        # 
        #  This is an incremental update to the library item.  Fields  that are  nil  in the update specification are left unchanged.  
        # 
        #  This  method  cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.
        #
        # @param library_item_id [String]
        #      Identifier of the library item to update.
        # @param update_spec [Com::Vmware::Content::Library::ItemModel]
        #      Specification of the properties to set.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library item specified by  ``library_item_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library item corresponding to  ``library_item_id``  is a member of a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if one of the following is true for the  ``update_spec`` :  
        #     
        #       * name is empty
        #        * name exceeds 80 characters
        #        * description exceeds 1024 characters
        #        * version is not equal to the current version of the library item
        #       
        def update(library_item_id, update_spec)
            invoke_with_info(@@update_info, {
                'library_item_id' => library_item_id,
                'update_spec' => update_spec,
            })
        end



        # The  ``Com::Vmware::Content::Library::Item::FindSpec``   class  specifies the properties that can be used as a filter to find library items. When multiple  fields  are specified, all properties of the item must match the specification.
        # @!attribute [rw] name
        #     @return [String, nil]
        #     The name of the library item. The name is case-insensitive. See   :attr:`Com::Vmware::Content::Library::ItemModel.name`  .
        #     If not specified all library item names are searched.
        # @!attribute [rw] library_id
        #     @return [String, nil]
        #     The identifier of the library containing the item. See   :attr:`Com::Vmware::Content::Library::ItemModel.library_id`  .
        #     If not specified all libraries are searched.
        # @!attribute [rw] source_id
        #     @return [String, nil]
        #     The identifier of the library item as reported by the publisher. See   :attr:`Com::Vmware::Content::Library::ItemModel.source_id`  .
        #     If not specified all library items are searched.
        # @!attribute [rw] type
        #     @return [String, nil]
        #     The type of the library item. The type is case-insensitive. See   :attr:`Com::Vmware::Content::Library::ItemModel.type`  .
        #     If not specified all types are searched.
        # @!attribute [rw] cached
        #     @return [Boolean, nil]
        #     Whether the item is cached. Possible values are 'true' or 'false'. See   :attr:`Com::Vmware::Content::Library::ItemModel.cached`  .
        #     If not specified all library items are searched.
        class FindSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.content.library.item.find_spec',
                        {
                            'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'library_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'source_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'cached' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        FindSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :library_id,
                          :source_id,
                          :type,
                          :cached

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Content::Library::SubscribedItem``   class  manages the unique features of library items that are members of a subscribed library.
    class SubscribedItem < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.subscribed_item')

        @@evict_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('evict', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_item_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.invalid_element_configuration' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration'),

            },
            [],
            [])
        @@sync_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('sync', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'library_item_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.Item'),
                'force_sync_content' => VAPI::Bindings::BooleanType.instance,
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'evict' => @@evict_info,
            'sync' => @@sync_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Evicts the cached content of a library item in a subscribed library.  
        # 
        #  This  method  allows the cached content of a library item to be removed to free up storage capacity. This  method  will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set   :attr:`Com::Vmware::Content::Library::ItemModel.cached`   to false.
        #
        # @param library_item_id [String]
        #      Identifier of the library item whose content should be evicted.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library item specified by  ``library_item_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library item specified by  ``library_item_id``  is not a member of a subscribed library.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration]
        #      if the library item specified by  ``library_item_id``  is a member of a subscribed library that does not synchronize on-demand.
        def evict(library_item_id)
            invoke_with_info(@@evict_info, {
                'library_item_id' => library_item_id,
            })
        end


        # Forces the synchronization of an individual library item in a subscribed library.  
        # 
        #  Synchronizing an individual item will update that item's metadata from the remote source. If the source library item on the remote library has been deleted, this  method  will delete the library item from the subscribed library as well.  
        # 
        #  The default behavior of the synchronization is determined by the   :class:`Com::Vmware::Content::Library::SubscriptionInfo`   of the library which owns the library item.  
        # 
        #   * If   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.on_demand`   is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the  ``force_sync_content``   parameter .
        #    * If   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.on_demand`   is false, then this call will always synchronize the file content. The  ``force_sync_content``   parameter  is ignored when the subscription is not on-demand.
        #   
        #   When the file content has been synchronized, the   :attr:`Com::Vmware::Content::Library::ItemModel.cached`    field  will be true.  
        # 
        #  This  method  will return immediately and create an asynchronous task to perform the synchronization.
        #
        # @param library_item_id [String]
        #      Identifier of the library item to synchronize.
        # @param force_sync_content [Boolean]
        #      Whether to synchronize file content as well as metadata. This  parameter  applies only if the subscription is on-demand.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the library item specified by  ``library_item_id``  could not be found.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #      if the library item specified by  ``library_item_id``  is not a member of a subscribed library.
        def sync(library_item_id, force_sync_content)
            invoke_with_info(@@sync_info, {
                'library_item_id' => library_item_id,
                'force_sync_content' => force_sync_content,
            })
        end


    end



    # The  ``Com::Vmware::Content::Library::ItemModel``   class  represents a library item that has been stored in a library.  
    # 
    #  A  ``Com::Vmware::Content::Library::ItemModel``  represents a single logical unit to be managed within a   :class:`Com::Vmware::Content::LibraryModel`  . Items contain the actual content of a library, and their placement within a library determines policies that affect that content such as publishing.  
    # 
    #  A library item can have a specified type, indicated with the   :attr:`Com::Vmware::Content::Library::ItemModel.type`    field . This property is associated with a Content Library Service plugin that supports specific types and provides additional services. The types available in a specific Content Library Service can be queried using the   :class:`Com::Vmware::Content::Type`    class . Items of an unknown or unspecified type are treated generically. Because subscribed library catalogs are synchronized as is, subscribing to a remote Content Library Service effectively gives you a library with the functionality of the remote service's type adapter plugins, even if they are not installed locally.  
    # 
    #  Items can be managed using the   :class:`Com::Vmware::Content::Library::Item`    class  and, for items in subscribed libraries, the   :class:`Com::Vmware::Content::Library::SubscribedItem`    class .
    # @!attribute [rw] id
    #     @return [String]
    #     A unique identifier for this library item.
    #     This  field  is not used for the  ``create``   method . It will not be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] library_id
    #     @return [String]
    #     The identifier of the   :class:`Com::Vmware::Content::LibraryModel`   to which this item belongs.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] content_version
    #     @return [String]
    #     The version of the file content list of this library item.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] creation_time
    #     @return [DateTime]
    #     The date and time when this library item was created.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] description
    #     @return [String]
    #     A human-readable description for this library item.
    #     This  field  is optional for the  ``create``   method . Leaving it  nil  during creation will result in an empty string value. It will always be present in the result of a  ``get``  or  ``list``   method . It is optional for the  ``update``   method . Leaving it  nil  during update indicates that the description remains unchanged.
    # @!attribute [rw] last_modified_time
    #     @return [DateTime]
    #     The date and time when the metadata for this library item was last changed.  
    #     
    #      This  field  is affected by changes to the properties or file content of this item. It is not modified by changes to the tags of the item, or by changes to the library which owns this item.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] last_sync_time
    #     @return [DateTime]
    #     The date and time when this library item was last synchronized.  
    #     
    #      This  field  is updated every time a synchronization is triggered on the library item, including when a synchronization is triggered on the library to which this item belongs. The value is  nil  for a library item that belongs to a local library.
    #     This  field  is not used for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] metadata_version
    #     @return [String]
    #     A version number for the metadata of this library item.  
    #     
    #      This value is incremented with each change to the metadata of this item. Changes to name, description, and so on will increment this value. The value is not incremented by changes to the content or tags of the item or the library which owns it.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] name
    #     @return [String]
    #     A human-readable name for this library item.  
    #     
    #      The name may not be  nil  or an empty string. The name does not have to be unique, even within the same library.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] cached
    #     @return [Boolean]
    #     The status that indicates whether the library item is on disk or not. The library item is cached when all its files are on disk.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] size
    #     @return [Fixnum]
    #     The library item size, in bytes. The size is the sum of the size used on the storage backing for all the files in the item. When the library item is not cached, the size is 0.
    #     This  field  is not used for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] type
    #     @return [String]
    #     An optional type identifier which indicates the type adapter plugin to use.  
    #     
    #      This  field  may be set to a non-empty string value that corresponds to an identifier supported by a type adapter plugin present in the Content Library Service. A type adapter plugin, if present for the specified type, can provide additional information and services around the item content. A type adapter can guide the upload process by creating file entries that are in need of being uploaded to complete an item.  
    #     
    #      The types and plugins supported by the Content Library Service can be queried using the   :class:`Com::Vmware::Content::Type`    class .
    #     This  field  is optional for the  ``create``  and  ``update``   methods . During creation, if the type is left unspecified, or if the type is specified but does not have a corresponding type support plugin, then the type of the library item is considered to be generic and all data is treated as generic files. During update, if the type is not specified, then it is not updated.
    # @!attribute [rw] version
    #     @return [String]
    #     A version number that is updated on metadata changes. This value is used to validate update requests to provide optimistic concurrency of changes.  
    #     
    #      This value represents a number that is incremented every time library item properties, such as name or description, are changed. It is not incremented by changes to the file content of the library item, including adding or removing files. It is also not affected by tagging the library item.
    #     This  field  is not used for the  ``create``   method . It will always be present in the result of a  ``get``  or  ``list``   method . It is optional for the  ``update``   method . Leaving it  nil  during update indicates that you do not need to detect concurrent updates.
    # @!attribute [rw] source_id
    #     @return [String]
    #     The identifier of the   :class:`Com::Vmware::Content::Library::ItemModel`   to which this item is synchronized to if the item belongs to a subscribed library. The value is  nil  for a library item that belongs to a local library.
    #     This  field  is not used for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    class ItemModel < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.content.library.item_model',
                    {
                        'id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                        'library_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                        'content_version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'creation_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance),
                        'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'last_modified_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance),
                        'last_sync_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance),
                        'metadata_version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'cached' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'source_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                    },
                    ItemModel,
                    true,
                    ["id"])
            end
        end

        attr_accessor :id,
                      :library_id,
                      :content_version,
                      :creation_time,
                      :description,
                      :last_modified_time,
                      :last_sync_time,
                      :metadata_version,
                      :name,
                      :cached,
                      :size,
                      :type,
                      :version,
                      :source_id

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Content::Library::OptimizationInfo``   class  defines different optimizations and optimization parameters applied to particular library.
    # @!attribute [rw] optimize_remote_publishing
    #     @return [Boolean]
    #     If set to  ``true``  then library would be optimized for remote publishing.  
    #     
    #      Turn it on if remote publishing is dominant use case for this library. Remote publishing means here that publisher and subscribers are not the part of the same  ``Vcenter``  SSO domain.  
    #     
    #      Any optimizations could be done as result of turning on this optimization during library creation. For example, library content could be stored in different format but optimizations are not limited to just storage format.  
    #     
    #      Note, that value of this toggle could be set only during creation of the library and you would need to migrate your library in case you need to change this value (optimize the library for different use case).
    #     This  field  is optional for the  ``create``   method . If not specified for the  ``create`` , the default is for the library to not be optmized for specific use case. It is not used for the  ``update``   method .
    class OptimizationInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.content.library.optimization_info',
                    {
                        'optimize_remote_publishing' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                    },
                    OptimizationInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :optimize_remote_publishing

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Content::Library::PublishInfo``   class  defines how a local library is published publicly for synchronization to other libraries.
    # @!attribute [rw] authentication_method
    #     @return [Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod]
    #     Indicates how a subscribed library should authenticate ( ``BASIC``, ``NONE`` ) to the published library endpoint.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] published
    #     @return [Boolean]
    #     Whether the local library is published.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] publish_url
    #     @return [URI]
    #     The URL to which the library metadata is published by the Content Library Service.  
    #     
    #      This value can be used to set the   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url`   property when creating a subscribed library.
    #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] user_name
    #     @return [String]
    #     The username to require for authentication.
    #     This  field  is optional for the  ``create``  and  ``update``   method . When the authentication is not required, the username can be left  nil . When the authentication method is basic, the username is ignored in the current release. It defaults to "vcsp". It is preferable to leave this unset. If specified, it must be set to "vcsp".
    # @!attribute [rw] password
    #     @return [String]
    #     The password to require for authentication.
    #     This  field  is optional for the  ``create``   method . When the authentication method is   :attr:`Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod.NONE`  , the password can be left  nil . When the authentication method is   :attr:`Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod.BASIC`  , the password should be a non-empty string. This  field  is optional for the  ``update``   method . Leaving it  nil  during update indicates that the password is not changed. This  field  is not used for the  ``get``  or  ``list``   method .
    # @!attribute [rw] persist_json_enabled
    #     @return [Boolean]
    #     Whether library and library item metadata are persisted in the storage backing as JSON files. This flag only applies if the local library is published.  
    #     
    #      Enabling JSON persistence allows you to synchronize a subscribed library manually instead of over HTTP. You copy the local library content and metadata to another storage backing manually and then create a subscribed library referencing the location of the library JSON file in the   :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url`  . When the subscribed library's storage backing matches the subscription URL, files do not need to be copied to the subscribed library.  
    #     
    #      For a library backed by a datastore, the library JSON file will be stored at the path contentlib-{library_id}/lib.json on the datastore.  
    #     
    #      For a library backed by a remote file system, the library JSON file will be stored at {library_id}/lib.json in the remote file system path.
    #     This  field  is optional for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    class PublishInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.content.library.publish_info',
                    {
                        'authentication_method' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod')),
                        'published' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'publish_url' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                        'user_name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'password' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SecretType.instance),
                        'persist_json_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                    },
                    PublishInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :authentication_method,
                      :published,
                      :publish_url,
                      :user_name,
                      :password,
                      :persist_json_enabled

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end


        # The  ``Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod``   enumerated type  indicates how a subscribed library should authenticate to the published library endpoint.
        # @!attribute [rw] basic
        #     @return [Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod]
        #     Require HTTP Basic authentication matching a specified username and password.
        # @!attribute [rw] none
        #     @return [Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod]
        #     Require no authentication.
        class AuthenticationMethod < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.content.library.publish_info.authentication_method',
                        AuthenticationMethod)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [AuthenticationMethod] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        AuthenticationMethod.new('UNKNOWN', value)
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

            # @!attribute [rw] basic
            #     @return [Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod]
            #     Require HTTP Basic authentication matching a specified username and password.
            BASIC = AuthenticationMethod.new('BASIC')

            # @!attribute [rw] none
            #     @return [Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod]
            #     Require no authentication.
            NONE = AuthenticationMethod.new('NONE')

        end


    end


    # The  ``Com::Vmware::Content::Library::StorageBacking``   class  defines a storage location where content in a library will be stored. The storage location can either be a Datastore or Other type.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Content::Library::StorageBacking::Type]
    #     Type ( ``DATASTORE``, ``OTHER`` ) of   :class:`Com::Vmware::Content::Library::StorageBacking`  .
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
    # @!attribute [rw] datastore_id
    #     @return [String]
    #     Identifier of the datastore used to store the content in the library.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Content::Library::StorageBacking::Type.DATASTORE`  .
    # @!attribute [rw] storage_uri
    #     @return [URI]
    #     URI identifying the location used to store the content in the library.  
    #     
    #      The following URI formats are supported:  
    #     
    #      vSphere 6.5  
    #     
    #       * nfs://server/path?version=4 (for vCenter Server Appliance only) - Specifies an NFS Version 4 server.
    #        * nfs://server/path (for vCenter Server Appliance only) - Specifies an NFS Version 3 server. The nfs://server:/path format is also supported.
    #        * smb://server/path - Specifies an SMB server or Windows share.
    #       
    #        
    #     
    #      vSphere 6.0 Update 1  
    #     
    #       * nfs://server:/path (for vCenter Server Appliance only)
    #        * file://unc-server/path (for vCenter Server for Windows only)
    #        * file:///mount/point (for vCenter Server Appliance only) - Local file URIs are supported only when the path is a local mount point for an NFS file system. Use of file URIs is strongly discouraged. Instead, use an NFS URI to specify the remote file system.
    #       
    #        
    #     
    #      vSphere 6.0  
    #     
    #       * nfs://server:/path (for vCenter Server Appliance only)
    #        * file://unc-server/path (for vCenter Server for Windows only)
    #        * file:///path - Local file URIs are supported but strongly discouraged because it may interfere with the performance of vCenter Server.
    #       
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Content::Library::StorageBacking::Type.OTHER`  .
    class StorageBacking < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.content.library.storage_backing',
                    {
                        'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::StorageBacking::Type')),
                        'datastore_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                        'storage_uri' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                    },
                    StorageBacking,
                    false,
                    nil)
            end
        end

        attr_accessor :type,
                      :datastore_id,
                      :storage_uri

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end


        # The  ``Com::Vmware::Content::Library::StorageBacking::Type``   enumerated type  specifies the type of the   :class:`Com::Vmware::Content::Library::StorageBacking`  .
        # @!attribute [rw] datastore
        #     @return [Com::Vmware::Content::Library::StorageBacking::Type]
        #     The content of the library will be stored on a datastore.  
        #     
        #      These are vCenter Server managed datastores, and are logical containers that hide specifics of each storage device. Depending on the type of storage you use, datastores can be backed by the following file system formats:  
        #     
        #       *  Virtual Machine File System (VMFS) 
        #        *  Network File System (NFS) 
        #       
        #        
        # @!attribute [rw] other
        #     @return [Com::Vmware::Content::Library::StorageBacking::Type]
        #     The content of the library will be stored on a remote file system.  
        #     
        #      Supports the following remote file systems:  
        #     
        #       *  NFS (on vCenter Server Appliance) 
        #        *  SMB (on vCenter Server Appliance and vCenter Server for Windows) 
        #       
        #        
        class Type < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.content.library.storage_backing.type',
                        Type)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [Type] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        Type.new('UNKNOWN', value)
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

            # @!attribute [rw] datastore
            #     @return [Com::Vmware::Content::Library::StorageBacking::Type]
            #     The content of the library will be stored on a datastore.  
            #     
            #      These are vCenter Server managed datastores, and are logical containers that hide specifics of each storage device. Depending on the type of storage you use, datastores can be backed by the following file system formats:  
            #     
            #       *  Virtual Machine File System (VMFS) 
            #        *  Network File System (NFS) 
            #       
            #        
            DATASTORE = Type.new('DATASTORE')

            # @!attribute [rw] other
            #     @return [Com::Vmware::Content::Library::StorageBacking::Type]
            #     The content of the library will be stored on a remote file system.  
            #     
            #      Supports the following remote file systems:  
            #     
            #       *  NFS (on vCenter Server Appliance) 
            #        *  SMB (on vCenter Server Appliance and vCenter Server for Windows) 
            #       
            #        
            OTHER = Type.new('OTHER')

        end


    end


    # The  ``Com::Vmware::Content::Library::SubscriptionInfo``   class  defines the subscription behavior for a subscribed library.
    # @!attribute [rw] authentication_method
    #     @return [Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod]
    #     Indicate how the subscribed library should authenticate ( ``BASIC``, ``NONE`` ) with the published library endpoint.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] automatic_sync_enabled
    #     @return [Boolean]
    #     Whether the library should participate in automatic library synchronization. In order for automatic synchronization to happen, the global   :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_enabled`   option must also be true. The subscription is still active even when automatic synchronization is turned off, but synchronization is only activated with an explicit call to   :func:`Com::Vmware::Content::SubscribedLibrary.sync`   or   :func:`Com::Vmware::Content::Library::SubscribedItem.sync`  . In other words, manual synchronization is still available even when automatic synchronization is disabled.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] on_demand
    #     @return [Boolean]
    #     Indicates whether a library item's content will be synchronized only on demand.  
    #     
    #      If this is set to  ``true`` , then the library item's metadata will be synchronized but the item's content (its files) will not be synchronized. The Content Library Service will synchronize the content upon request only. This can cause the first use of the content to have a noticeable delay.  
    #     
    #      Items without synchronized content can be forcefully synchronized in advance using the   :func:`Com::Vmware::Content::Library::SubscribedItem.sync`   call with  ``forceSyncContent``  set to true. Once content has been synchronized, the content can removed with the   :func:`Com::Vmware::Content::Library::SubscribedItem.evict`   call.  
    #     
    #      If this value is set to  ``false`` , all content will be synchronized in advance.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] password
    #     @return [String]
    #     The password to use when authenticating.  
    #     
    #      The password must be set when using a password-based authentication method; empty strings are not allowed.
    #     This  field  is optional for the  ``create``   method . It will not be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] ssl_thumbprint
    #     @return [String]
    #     An optional SHA-1 hash of the SSL certificate for the remote endpoint.  
    #     
    #      If this value is defined the SSL certificate will be verified by comparing it to the SSL thumbprint. The SSL certificate must verify against the thumbprint. When specified, the standard certificate chain validation behavior is not used. The certificate chain is validated normally if this value is  nil .
    #     This  field  is optional for the  ``create``   method . It will not be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] subscription_url
    #     @return [URI]
    #     The URL of the endpoint where the metadata for the remotely published library is being served.  
    #     
    #      This URL can be the   :attr:`Com::Vmware::Content::Library::PublishInfo.publish_url`   of the published library (for example, https://server/path/lib.json).  
    #     
    #      If the source content comes from a published library with   :attr:`Com::Vmware::Content::Library::PublishInfo.persist_json_enabled`  , the subscription URL can be a URL pointing to the library JSON file on a datastore or remote file system. The supported formats are:  
    #     
    #      vSphere 6.5  
    #     
    #       * ds:///vmfs/volumes/{uuid}/mylibrary/lib.json (for datastore)
    #        * nfs://server/path/mylibrary/lib.json (for NFSv3 server on vCenter Server Appliance)
    #        * nfs://server/path/mylibrary/lib.json?version=4 (for NFSv4 server on vCenter Server Appliance) 
    #        * smb://server/path/mylibrary/lib.json (for SMB server)
    #       
    #        
    #     
    #      vSphere 6.0  
    #     
    #       * file://server/mylibrary/lib.json (for UNC server on vCenter Server for Windows)
    #        * file:///path/mylibrary/lib.json (for local file system)
    #       
    #        
    #     
    #      When you specify a DS subscription URL, the datastore must be on the same vCenter Server as the subscribed library. When you specify an NFS or SMB subscription URL, the   :attr:`Com::Vmware::Content::Library::StorageBacking.storage_uri`   of the subscribed library must be on the same remote file server and should share a common parent path with the subscription URL.
    #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    # @!attribute [rw] user_name
    #     @return [String]
    #     The username to use when authenticating.  
    #     
    #      The username must be set when using a password-based authentication method. Empty strings are allowed for usernames.
    #     This  field  is optional for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
    class SubscriptionInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.content.library.subscription_info',
                    {
                        'authentication_method' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod')),
                        'automatic_sync_enabled' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'on_demand' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        'password' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SecretType.instance),
                        'ssl_thumbprint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'subscription_url' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                        'user_name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                    },
                    SubscriptionInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :authentication_method,
                      :automatic_sync_enabled,
                      :on_demand,
                      :password,
                      :ssl_thumbprint,
                      :subscription_url,
                      :user_name

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end


        # Indicate how the subscribed library should authenticate with the published library endpoint.
        # @!attribute [rw] basic
        #     @return [Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod]
        #     Require HTTP Basic authentication matching a specified username and password.
        # @!attribute [rw] none
        #     @return [Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod]
        #     Require no authentication.
        class AuthenticationMethod < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.content.library.subscription_info.authentication_method',
                        AuthenticationMethod)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [AuthenticationMethod] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        AuthenticationMethod.new('UNKNOWN', value)
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

            # @!attribute [rw] basic
            #     @return [Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod]
            #     Require HTTP Basic authentication matching a specified username and password.
            BASIC = AuthenticationMethod.new('BASIC')

            # @!attribute [rw] none
            #     @return [Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod]
            #     Require no authentication.
            NONE = AuthenticationMethod.new('NONE')

        end


    end

end
