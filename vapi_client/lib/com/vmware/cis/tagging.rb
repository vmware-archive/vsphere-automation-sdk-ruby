#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.cis.tagging.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Cis
      module Tagging
      end
    end
  end
end

# The  ``com.vmware.cis.tagging``   component  provides  methods  and  classes  to attach metadata, by means of tags, to vSphere objects to make these objects more sortable and searchable. You can use it to create, manage, and enumerate tags and their categories (the group a tag belongs to). You can also query the attached tags and attached objects. Copyright 2013-2014 VMware, Inc. All rights reserved. -- VMware Confidential Copyright 2013-2014 VMware, Inc. All rights reserved. -- VMware Confidential Copyright 2013-2014 VMware, Inc. All rights reserved. -- VMware Confidential Copyright 2013-2015 VMware, Inc. All rights reserved. -- VMware Confidential Copyright 2013-2014 VMware, Inc. All rights reserved. -- VMware Confidential
module Com::Vmware::Cis::Tagging
  # The  ``Com::Vmware::Cis::Tagging::Category``   class  provides  methods  to create, read, update, delete, and enumerate categories.
  class Category < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.cis.tagging.category')

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::Category::CreateSpec')
      ),
      VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category'),
      {
        'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::CategoryModel'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    UPDATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('update', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category'),
        'update_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::Category::UpdateSpec')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    LIST_USED_CATEGORIES_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_used_categories', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'used_by_entity' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    ADD_TO_USED_BY_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('add_to_used_by', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category'),
        'used_by_entity' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    REMOVE_FROM_USED_BY_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('remove_from_used_by', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category'),
        'used_by_entity' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    REVOKE_PROPAGATING_PERMISSIONS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('revoke_propagating_permissions', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'create' => CREATE_INFO,
      'get' => GET_INFO,
      'update' => UPDATE_INFO,
      'delete' => DELETE_INFO,
      'list' => LIST_INFO,
      'list_used_categories' => LIST_USED_CATEGORIES_INFO,
      'add_to_used_by' => ADD_TO_USED_BY_INFO,
      'remove_from_used_by' => REMOVE_FROM_USED_BY_INFO,
      'revoke_propagating_permissions' => REVOKE_PROPAGATING_PERMISSIONS_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Creates a category. To invoke this  method , you need the create category privilege.
    #
    # @param create_spec [Com::Vmware::Cis::Tagging::Category::CreateSpec]
    #      Specification for the new category to be created.
    # @return [String]
    #     The identifier of the created category.
    # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
    #      if the   :attr:`Com::Vmware::Cis::Tagging::Category::CreateSpec.name`   provided in the  ``create_spec``  is the name of an already existing category.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if any of the information in the  ``create_spec``  is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to create a category.
    def create(create_spec)
      invoke_with_info(CREATE_INFO,
                       'create_spec' => create_spec)
    end

    # Fetches the category information for the given category identifier. In order to view the category information, you need the read privilege on the category.
    #
    # @param category_id [String]
    #      The identifier of the input category.
    # @return [Com::Vmware::Cis::Tagging::CategoryModel]
    #     The   :class:`Com::Vmware::Cis::Tagging::CategoryModel`   that corresponds to  ``category_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for the given  ``category_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to read the category.
    def get(category_id)
      invoke_with_info(GET_INFO,
                       'category_id' => category_id)
    end

    # Updates an existing category. To invoke this  method , you need the edit privilege on the category.
    #
    # @param category_id [String]
    #      The identifier of the category to be updated.
    # @param update_spec [Com::Vmware::Cis::Tagging::Category::UpdateSpec]
    #      Specification to update the category.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
    #      if the   :attr:`Com::Vmware::Cis::Tagging::Category::UpdateSpec.name`   provided in the  ``update_spec``  is the name of an already existing category.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if any of the information in the  ``update_spec``  is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for the given  ``category_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to update the category.
    def update(category_id, update_spec)
      invoke_with_info(UPDATE_INFO,
                       'category_id' => category_id,
                       'update_spec' => update_spec)
    end

    # Deletes an existing category. To invoke this  method , you need the delete privilege on the category.
    #
    # @param category_id [String]
    #      The identifier of category to be deleted.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for the given  ``category_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to delete the category.
    def delete(category_id)
      invoke_with_info(DELETE_INFO,
                       'category_id' => category_id)
    end

    # Enumerates the categories in the system. To invoke this  method , you need the read privilege on the individual categories. The  list  will only contain those categories for which you have read privileges.
    #
    # @return [Array<String>]
    #     The  list  of resource identifiers for the categories in the system.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Enumerates all categories for which the  ``used_by_entity``  is part of the   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   subscribers  set . To invoke this  method , you need the read privilege on the individual categories.
    #
    # @param used_by_entity [String]
    #      The field on which the results will be filtered.
    # @return [Array<String>]
    #     The  list  of resource identifiers for the categories in the system that are used by  ``used_by_entity`` .
    def list_used_categories(used_by_entity)
      invoke_with_info(LIST_USED_CATEGORIES_INFO,
                       'used_by_entity' => used_by_entity)
    end

    # Adds the  ``used_by_entity``  to the   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   subscribers  set  for the specified category. If the  ``used_by_entity``  is already in the  set , then this becomes an idempotent no-op. To invoke this  method , you need the modify   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   privilege on the category.
    #
    # @param category_id [String]
    #      The identifier of the input category.
    # @param used_by_entity [String]
    #      The name of the user to be added to the   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`    set .
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for the given  ``category_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to add an entity to the   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   field.
    def add_to_used_by(category_id, used_by_entity)
      invoke_with_info(ADD_TO_USED_BY_INFO,
                       'category_id' => category_id,
                       'used_by_entity' => used_by_entity)
    end

    # Removes the  ``used_by_entity``  from the   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   subscribers  set . If the  ``used_by_entity``  is not using this category, then this becomes a no-op. To invoke this  method , you need the modify   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   privilege on the category.
    #
    # @param category_id [String]
    #      The identifier of the input category.
    # @param used_by_entity [String]
    #      The name of the user to be removed from the   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`    set .
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for the given  ``category_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to remove an entity from the   :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   field.
    def remove_from_used_by(category_id, used_by_entity)
      invoke_with_info(REMOVE_FROM_USED_BY_INFO,
                       'category_id' => category_id,
                       'used_by_entity' => used_by_entity)
    end

    # Revokes all propagating permissions on the given category. You should then attach a direct permission with tagging privileges on the given category. To invoke this  method , you need category related privileges (direct or propagating) on the concerned category.
    #
    # @param category_id [String]
    #      The identifier of the input category.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for the given  ``category_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to revoke propagating permissions on the category.
    def revoke_propagating_permissions(category_id)
      invoke_with_info(REVOKE_PROPAGATING_PERMISSIONS_INFO,
                       'category_id' => category_id)
    end

    # The  ``Com::Vmware::Cis::Tagging::Category::CreateSpec``   class  is used to create a category.  
    # 
    #  Use the   :func:`Com::Vmware::Cis::Tagging::Category.create`    method  to create a category defined by the create specification.
    # @!attribute [rw] name
    #     @return [String]
    #     The display name of the category.
    # @!attribute [rw] description
    #     @return [String]
    #     The description of the category.
    # @!attribute [rw] cardinality
    #     @return [Com::Vmware::Cis::Tagging::CategoryModel::Cardinality]
    #     The associated cardinality ( ``SINGLE``, ``MULTIPLE`` ) of the category.
    # @!attribute [rw] associable_types
    #     @return [Set<String>]
    #     Object types to which this category's tags can be attached.
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.cis.tagging.category.create_spec',
            {
              'name' => VAPI::Bindings::StringType.instance,
              'description' => VAPI::Bindings::StringType.instance,
              'cardinality' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::CategoryModel::Cardinality'),
              'associable_types' => VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)
            },
            CreateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :description,
                    :cardinality,
                    :associable_types

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Cis::Tagging::Category::UpdateSpec``   class  describes the updates to be made to an existing category.  
    # 
    #  Use the   :func:`Com::Vmware::Cis::Tagging::Category.update`    method  to modify a category. When you call the  method , specify the category identifier. You obtain the category identifier when you call the   :func:`Com::Vmware::Cis::Tagging::Category.create`    method . You can also retrieve an identifier by using the   :func:`Com::Vmware::Cis::Tagging::Category.list`    method .
    # @!attribute [rw] name
    #     @return [String, nil]
    #     The display name of the category.
    #     If  nil  the name will not be modified.
    # @!attribute [rw] description
    #     @return [String, nil]
    #     The description of the category.
    #     If  nil  the description will not be modified.
    # @!attribute [rw] cardinality
    #     @return [Com::Vmware::Cis::Tagging::CategoryModel::Cardinality, nil]
    #     The associated cardinality ( ``SINGLE``, ``MULTIPLE`` ) of the category.
    #     If  nil  the cardinality will not be modified.
    # @!attribute [rw] associable_types
    #     @return [Set<String>, nil]
    #     Object types to which this category's tags can be attached.  
    #     
    #      The  set  of associable types cannot be updated incrementally. For example, if   :attr:`Com::Vmware::Cis::Tagging::Category::UpdateSpec.associable_types`   originally contains {A,B,C} and you want to add D, then you need to pass {A,B,C,D} in your update specification. You also cannot remove any item from this  set . For example, if you have {A,B,C}, then you cannot remove say {A} from it. Similarly, if you start with an empty  set , then that implies that you can tag any object and hence you cannot later pass say {A}, because that would be restricting the type of objects you want to tag. Thus, associable types can only grow and not shrink.
    #     If  nil  the associable types will not be modified.
    class UpdateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.cis.tagging.category.update_spec',
            {
              'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'cardinality' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::CategoryModel::Cardinality')),
              'associable_types' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance))
            },
            UpdateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :description,
                    :cardinality,
                    :associable_types

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Cis::Tagging::Tag``   class  provides  methods  to create, read, update, delete, and enumerate tags.
  class Tag < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.cis.tagging.tag')

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::Tag::CreateSpec')
      ),
      VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
      {
        'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::TagModel'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    UPDATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('update', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
        'update_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::Tag::UpdateSpec')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    LIST_USED_TAGS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_used_tags', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'used_by_entity' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {},
      [],
      []
    )

    LIST_TAGS_FOR_CATEGORY_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_tags_for_category', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    ADD_TO_USED_BY_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('add_to_used_by', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
        'used_by_entity' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    REMOVE_FROM_USED_BY_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('remove_from_used_by', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
        'used_by_entity' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    REVOKE_PROPAGATING_PERMISSIONS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('revoke_propagating_permissions', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'create' => CREATE_INFO,
      'get' => GET_INFO,
      'update' => UPDATE_INFO,
      'delete' => DELETE_INFO,
      'list' => LIST_INFO,
      'list_used_tags' => LIST_USED_TAGS_INFO,
      'list_tags_for_category' => LIST_TAGS_FOR_CATEGORY_INFO,
      'add_to_used_by' => ADD_TO_USED_BY_INFO,
      'remove_from_used_by' => REMOVE_FROM_USED_BY_INFO,
      'revoke_propagating_permissions' => REVOKE_PROPAGATING_PERMISSIONS_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Creates a tag. To invoke this  method , you need the create tag privilege on the input category.
    #
    # @param create_spec [Com::Vmware::Cis::Tagging::Tag::CreateSpec]
    #      Specification for the new tag to be created.
    # @return [String]
    #     The identifier of the created tag.
    # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
    #      if the   :attr:`Com::Vmware::Cis::Tagging::Tag::CreateSpec.name`   provided in the  ``create_spec``  is the name of an already existing tag in the input category.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if any of the input information in the  ``create_spec``  is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for in the given  ``create_spec``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to create tag.
    def create(create_spec)
      invoke_with_info(CREATE_INFO,
                       'create_spec' => create_spec)
    end

    # Fetches the tag information for the given tag identifier. To invoke this  method , you need the read privilege on the tag in order to view the tag info.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @return [Com::Vmware::Cis::Tagging::TagModel]
    #     The   :class:`Com::Vmware::Cis::Tagging::TagModel`   that corresponds to  ``tag_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if the user does not have the privilege to read the tag.
    def get(tag_id)
      invoke_with_info(GET_INFO,
                       'tag_id' => tag_id)
    end

    # Updates an existing tag. To invoke this  method , you need the edit privilege on the tag.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @param update_spec [Com::Vmware::Cis::Tagging::Tag::UpdateSpec]
    #      Specification to update the tag.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
    #      if the   :attr:`Com::Vmware::Cis::Tagging::Tag::UpdateSpec.name`   provided in the  ``update_spec``  is the name of an already existing tag in the same category.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if any of the input information in the  ``update_spec``  is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to update the tag.
    def update(tag_id, update_spec)
      invoke_with_info(UPDATE_INFO,
                       'tag_id' => tag_id,
                       'update_spec' => update_spec)
    end

    # Deletes an existing tag. To invoke this  method , you need the delete privilege on the tag.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to delete the tag.
    def delete(tag_id)
      invoke_with_info(DELETE_INFO,
                       'tag_id' => tag_id)
    end

    # Enumerates the tags in the system. To invoke this  method , you need read privilege on the individual tags. The  list  will only contain tags for which you have read privileges.
    #
    # @return [Array<String>]
    #     The  list  of resource identifiers for the tags in the system.
    def list
      invoke_with_info(LIST_INFO)
    end

    # Enumerates all tags for which the  ``used_by_entity``  is part of the   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   subscribers  set . To invoke this  method , you need the read privilege on the individual tags.
    #
    # @param used_by_entity [String]
    #      The field on which the results will be filtered.
    # @return [Array<String>]
    #     The  list  of resource identifiers for the tags in the system that are used by  ``used_by_entity`` .
    def list_used_tags(used_by_entity)
      invoke_with_info(LIST_USED_TAGS_INFO,
                       'used_by_entity' => used_by_entity)
    end

    # Enumerates all tags for the given category. To invoke this  method , you need the read privilege on the given category and the individual tags in that category.
    #
    # @param category_id [String]
    #      The identifier of the input category.
    # @return [Array<String>]
    #     The  list  of resource identifiers for the tags in the given input category.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the category for the given  ``category_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to read the category.
    def list_tags_for_category(category_id)
      invoke_with_info(LIST_TAGS_FOR_CATEGORY_INFO,
                       'category_id' => category_id)
    end

    # Adds the  ``used_by_entity``  to the   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   subscribers  set . If the  ``used_by_entity``  is already in the  set , then this becomes a no-op. To invoke this  method , you need the modify   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   privilege on the tag.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @param used_by_entity [String]
    #      The name of the user to be added to the   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`    set .
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to add an entity to the   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   field.
    def add_to_used_by(tag_id, used_by_entity)
      invoke_with_info(ADD_TO_USED_BY_INFO,
                       'tag_id' => tag_id,
                       'used_by_entity' => used_by_entity)
    end

    # Removes the  ``used_by_entity``  from the   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   subscribers set. If the  ``used_by_entity``  is not using this tag, then this becomes a no-op. To invoke this  method , you need modify   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   privilege on the tag.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @param used_by_entity [String]
    #      The name of the user to be removed from the   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`    set .
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to remove an entity from the   :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   field.
    def remove_from_used_by(tag_id, used_by_entity)
      invoke_with_info(REMOVE_FROM_USED_BY_INFO,
                       'tag_id' => tag_id,
                       'used_by_entity' => used_by_entity)
    end

    # Revokes all propagating permissions on the given tag. You should then attach a direct permission with tagging privileges on the given tag. To invoke this  method , you need tag related privileges (direct or propagating) on the concerned tag.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to revoke propagating permissions on the tag.
    def revoke_propagating_permissions(tag_id)
      invoke_with_info(REVOKE_PROPAGATING_PERMISSIONS_INFO,
                       'tag_id' => tag_id)
    end

    # The  ``Com::Vmware::Cis::Tagging::Tag::CreateSpec``   class  describes a tag.  
    # 
    #  Use the   :func:`Com::Vmware::Cis::Tagging::Tag.create`    method  to create a tag defined by the create specification.
    # @!attribute [rw] name
    #     @return [String]
    #     The display name of the tag. The name must be unique within its category.
    # @!attribute [rw] description
    #     @return [String]
    #     The description of the tag.
    # @!attribute [rw] category_id
    #     @return [String]
    #     The unique identifier of the parent category in which this tag will be created.
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.cis.tagging.tag.create_spec',
            {
              'name' => VAPI::Bindings::StringType.instance,
              'description' => VAPI::Bindings::StringType.instance,
              'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category')
            },
            CreateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :description,
                    :category_id

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Cis::Tagging::Tag::UpdateSpec``   class  describes the updates to be made to an existing tag.  
    # 
    #  Use the   :func:`Com::Vmware::Cis::Tagging::Tag.update`    method  to modify a tag. When you call the  method , you specify the tag identifier. You obtain the tag identifier when you call the   :func:`Com::Vmware::Cis::Tagging::Tag.create`    method . You can also retrieve an identifier by using the   :func:`Com::Vmware::Cis::Tagging::Tag.list`    method .
    # @!attribute [rw] name
    #     @return [String, nil]
    #     The display name of the tag.
    #     If  nil  the name will not be modified.
    # @!attribute [rw] description
    #     @return [String, nil]
    #     The description of the tag.
    #     If  nil  the description will not be modified.
    class UpdateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.cis.tagging.tag.update_spec',
            {
              'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
            },
            UpdateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :description

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Cis::Tagging::TagAssociation``   class  provides  methods  to attach, detach, and query tags.
  class TagAssociation < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.cis.tagging.tag_association')

    ATTACH_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('attach', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
        'object_id' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    ATTACH_MULTIPLE_TAGS_TO_OBJECT_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('attach_multiple_tags_to_object', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'object_id' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID'),
        'tag_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new)
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::TagAssociation::BatchResult'),
      {
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    ATTACH_TAG_TO_MULTIPLE_OBJECTS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('attach_tag_to_multiple_objects', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
        'object_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID'))
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::TagAssociation::BatchResult'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    DETACH_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('detach', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
        'object_id' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    DETACH_MULTIPLE_TAGS_FROM_OBJECT_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('detach_multiple_tags_from_object', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'object_id' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID'),
        'tag_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new)
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::TagAssociation::BatchResult'),
      {
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    DETACH_TAG_FROM_MULTIPLE_OBJECTS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('detach_tag_from_multiple_objects', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
        'object_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID'))
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::TagAssociation::BatchResult'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    LIST_ATTACHED_OBJECTS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_attached_objects', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID')),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    LIST_ATTACHED_OBJECTS_ON_TAGS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_attached_objects_on_tags', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'tag_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new)
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects')),
      {},
      [],
      []
    )

    LIST_ATTACHED_TAGS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_attached_tags', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'object_id' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    LIST_ATTACHED_TAGS_ON_OBJECTS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_attached_tags_on_objects', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'object_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID'))
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags')),
      {},
      [],
      []
    )

    LIST_ATTACHABLE_TAGS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list_attachable_tags', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'object_id' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'attach' => ATTACH_INFO,
      'attach_multiple_tags_to_object' => ATTACH_MULTIPLE_TAGS_TO_OBJECT_INFO,
      'attach_tag_to_multiple_objects' => ATTACH_TAG_TO_MULTIPLE_OBJECTS_INFO,
      'detach' => DETACH_INFO,
      'detach_multiple_tags_from_object' => DETACH_MULTIPLE_TAGS_FROM_OBJECT_INFO,
      'detach_tag_from_multiple_objects' => DETACH_TAG_FROM_MULTIPLE_OBJECTS_INFO,
      'list_attached_objects' => LIST_ATTACHED_OBJECTS_INFO,
      'list_attached_objects_on_tags' => LIST_ATTACHED_OBJECTS_ON_TAGS_INFO,
      'list_attached_tags' => LIST_ATTACHED_TAGS_INFO,
      'list_attached_tags_on_objects' => LIST_ATTACHED_TAGS_ON_OBJECTS_INFO,
      'list_attachable_tags' => LIST_ATTACHABLE_TAGS_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Attaches the given tag to the input object. The tag needs to meet the cardinality (  :attr:`Com::Vmware::Cis::Tagging::CategoryModel.cardinality`  ) and associability (  :attr:`Com::Vmware::Cis::Tagging::CategoryModel.associable_types`  ) criteria in order to be eligible for attachment. If the tag is already attached to the object, then this  method  is a no-op and an error will not be thrown. To invoke this  method , you need the attach tag privilege on the tag and the read privilege on the object.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @param object_id [Com::Vmware::Vapi::Std::DynamicID]
    #      The identifier of the input object.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if the input tag is not eligible to be attached to this object or if the  ``object_id``  is not valid.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to attach the tag or do not have the privilege to read the object.
    def attach(tag_id, object_id)
      invoke_with_info(ATTACH_INFO,
                       'tag_id' => tag_id,
                       'object_id' => object_id)
    end

    # Attaches the given tags to the input object. If a tag is already attached to the object, then the individual  method  is a no-op and an error will not be added to   :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  . To invoke this  method , you need the read privilege on the object and the attach tag privilege on each tag.
    #
    # @param object_id [Com::Vmware::Vapi::Std::DynamicID]
    #      The identifier of the input object.
    # @param tag_ids [Array<String>]
    #      The identifiers of the input tags.
    # @return [Com::Vmware::Cis::Tagging::TagAssociation::BatchResult]
    #     The outcome of the batch  method  and the  list  of error messages (  :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  ) describing attachment failures.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to read the object.
    def attach_multiple_tags_to_object(object_id, tag_ids)
      invoke_with_info(ATTACH_MULTIPLE_TAGS_TO_OBJECT_INFO,
                       'object_id' => object_id,
                       'tag_ids' => tag_ids)
    end

    # Attaches the given tag to the input objects. If a tag is already attached to the object, then the individual  method  is a no-op and an error will not be added to   :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  . To invoke this  method , you need the attach tag privilege on the tag and the read privilege on each object.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @param object_ids [Array<Com::Vmware::Vapi::Std::DynamicID>]
    #      The identifiers of the input objects.
    # @return [Com::Vmware::Cis::Tagging::TagAssociation::BatchResult]
    #     The outcome of the batch  method  and the  list  of error messages (  :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  ) describing attachment failures.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the attach tag privilege on the tag.
    def attach_tag_to_multiple_objects(tag_id, object_ids)
      invoke_with_info(ATTACH_TAG_TO_MULTIPLE_OBJECTS_INFO,
                       'tag_id' => tag_id,
                       'object_ids' => object_ids)
    end

    # Detaches the tag from the given object. If the tag is already removed from the object, then this  method  is a no-op and an error will not be thrown. To invoke this  method , you need the attach tag privilege on the tag and the read privilege on the object.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @param object_id [Com::Vmware::Vapi::Std::DynamicID]
    #      The identifier of the input object.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to detach the tag or do not have the privilege to read the given object.
    def detach(tag_id, object_id)
      invoke_with_info(DETACH_INFO,
                       'tag_id' => tag_id,
                       'object_id' => object_id)
    end

    # Detaches the given tags from the input object. If a tag is already removed from the object, then the individual  method  is a no-op and an error will not be added to   :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  . To invoke this  method , you need the read privilege on the object and the attach tag privilege each tag.
    #
    # @param object_id [Com::Vmware::Vapi::Std::DynamicID]
    #      The identifier of the input object.
    # @param tag_ids [Array<String>]
    #      The identifiers of the input tags.
    # @return [Com::Vmware::Cis::Tagging::TagAssociation::BatchResult]
    #     The outcome of the batch  method  and the  list  of error messages (  :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  ) describing detachment failures.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to read the object.
    def detach_multiple_tags_from_object(object_id, tag_ids)
      invoke_with_info(DETACH_MULTIPLE_TAGS_FROM_OBJECT_INFO,
                       'object_id' => object_id,
                       'tag_ids' => tag_ids)
    end

    # Detaches the given tag from the input objects. If a tag is already removed from the object, then the individual  method  is a no-op and an error will not be added to   :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  . To invoke this  method , you need the attach tag privilege on the tag and the read privilege on each object.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @param object_ids [Array<Com::Vmware::Vapi::Std::DynamicID>]
    #      The identifiers of the input objects.
    # @return [Com::Vmware::Cis::Tagging::TagAssociation::BatchResult]
    #     The outcome of the batch  method  and the  list  of error messages (  :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages`  ) describing detachment failures.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given tag does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the attach tag privilege on the tag.
    def detach_tag_from_multiple_objects(tag_id, object_ids)
      invoke_with_info(DETACH_TAG_FROM_MULTIPLE_OBJECTS_INFO,
                       'tag_id' => tag_id,
                       'object_ids' => object_ids)
    end

    # Fetches the  list  of attached objects for the given tag. To invoke this  method , you need the read privilege on the input tag. Only those objects for which you have the read privilege will be returned.
    #
    # @param tag_id [String]
    #      The identifier of the input tag.
    # @return [Array<Com::Vmware::Vapi::Std::DynamicID>]
    #     The  list  of attached object identifiers.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the tag for the given  ``tag_id``  does not exist in the system.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to read the tag.
    def list_attached_objects(tag_id)
      invoke_with_info(LIST_ATTACHED_OBJECTS_INFO,
                       'tag_id' => tag_id)
    end

    # Fetches the  list  of   :class:`Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects`   describing the input tag identifiers and the objects they are attached to. To invoke this  method , you need the read privilege on each input tag. The   :attr:`Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects.object_ids`   will only contain those objects for which you have the read privilege.
    #
    # @param tag_ids [Array<String>]
    #      The identifiers of the input tags.
    # @return [Array<Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects>]
    #     The  list  of the tag identifiers to all object identifiers that each tag is attached to.
    def list_attached_objects_on_tags(tag_ids)
      invoke_with_info(LIST_ATTACHED_OBJECTS_ON_TAGS_INFO,
                       'tag_ids' => tag_ids)
    end

    # Fetches the  list  of tags attached to the given object. To invoke this  method , you need the read privilege on the input object. The  list  will only contain those tags for which you have the read privileges.
    #
    # @param object_id [Com::Vmware::Vapi::Std::DynamicID]
    #      The identifier of the input object.
    # @return [Array<String>]
    #     The  list  of all tag identifiers that correspond to the tags attached to the given object.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to read the object.
    def list_attached_tags(object_id)
      invoke_with_info(LIST_ATTACHED_TAGS_INFO,
                       'object_id' => object_id)
    end

    # Fetches the  list  of   :class:`Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags`   describing the input object identifiers and the tags attached to each object. To invoke this  method , you need the read privilege on each input object. The   :attr:`Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags.tag_ids`   will only contain those tags for which you have the read privilege.
    #
    # @param object_ids [Array<Com::Vmware::Vapi::Std::DynamicID>]
    #      The identifiers of the input objects.
    # @return [Array<Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags>]
    #     The  list  of the object identifiers to all tag identifiers that are attached to that object.
    def list_attached_tags_on_objects(object_ids)
      invoke_with_info(LIST_ATTACHED_TAGS_ON_OBJECTS_INFO,
                       'object_ids' => object_ids)
    end

    # Fetches the  list  of attachable tags for the given object, omitting the tags that have already been attached. Criteria for attachability is calculated based on tagging cardinality (  :attr:`Com::Vmware::Cis::Tagging::CategoryModel.cardinality`  ) and associability (  :attr:`Com::Vmware::Cis::Tagging::CategoryModel.associable_types`  ) constructs. To invoke this  method , you need the read privilege on the input object. The  list  will only contain those tags for which you have read privileges.
    #
    # @param object_id [Com::Vmware::Vapi::Std::DynamicID]
    #      The identifier of the input object.
    # @return [Array<String>]
    #     The  list  of tag identifiers that are eligible to be attached to the given object.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have the privilege to read the object.
    def list_attachable_tags(object_id)
      invoke_with_info(LIST_ATTACHABLE_TAGS_INFO,
                       'object_id' => object_id)
    end

    # The  ``Com::Vmware::Cis::Tagging::TagAssociation::BatchResult``   class  describes the result of performing the same  method  on several tags or objects in a single invocation.
    # @!attribute [rw] success
    #     @return [Boolean]
    #     This is true if the batch  method  completed without any errors. Otherwise it is false and all or some  methods  have failed.
    # @!attribute [rw] error_messages
    #     @return [Array<Com::Vmware::Vapi::Std::LocalizableMessage>]
    #     The  list  of error messages.
    class BatchResult < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.cis.tagging.tag_association.batch_result',
            {
              'success' => VAPI::Bindings::BooleanType.instance,
              'error_messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage'))
            },
            BatchResult,
            false,
            nil
          )
        end
      end

      attr_accessor :success,
                    :error_messages

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects``   class  describes a tag and its related objects. Use the   :func:`Com::Vmware::Cis::Tagging::TagAssociation.list_attached_objects_on_tags`    method  to retrieve a  list  with each element containing a tag and the objects to which it is attached.
    # @!attribute [rw] tag_id
    #     @return [String]
    #     The identifier of the tag.
    # @!attribute [rw] object_ids
    #     @return [Array<Com::Vmware::Vapi::Std::DynamicID>]
    #     The identifiers of the related objects.
    class TagToObjects < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.cis.tagging.tag_association.tag_to_objects',
            {
              'tag_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
              'object_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID'))
            },
            TagToObjects,
            false,
            nil
          )
        end
      end

      attr_accessor :tag_id,
                    :object_ids

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags``   class  describes an object and its related tags. Use the   :func:`Com::Vmware::Cis::Tagging::TagAssociation.list_attached_tags_on_objects`    method  to retrieve a  list  with each element containing an object and the tags attached to it.
    # @!attribute [rw] object_id
    #     @return [Com::Vmware::Vapi::Std::DynamicID]
    #     The identifier of the object.
    # @!attribute [rw] tag_ids
    #     @return [Array<String>]
    #     The identifiers of the related tags.
    class ObjectToTags < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.cis.tagging.tag_association.object_to_tags',
            {
              'object_id' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::DynamicID'),
              'tag_ids' => VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new)
            },
            ObjectToTags,
            false,
            nil
          )
        end
      end

      attr_accessor :object_id,
                    :tag_ids

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Cis::Tagging::CategoryModel``   class  defines a category that is used to group one or more tags.
  # @!attribute [rw] id
  #     @return [String]
  #     The unique identifier of the category.
  # @!attribute [rw] name
  #     @return [String]
  #     The display name of the category.
  # @!attribute [rw] description
  #     @return [String]
  #     The description of the category.
  # @!attribute [rw] cardinality
  #     @return [Com::Vmware::Cis::Tagging::CategoryModel::Cardinality]
  #     The associated cardinality ( ``SINGLE``, ``MULTIPLE`` ) of the category.
  # @!attribute [rw] associable_types
  #     @return [Set<String>]
  #     The types of objects that the tags in this category can be attached to. If the  set  is empty, then tags can be attached to all types of objects. This field works only for objects that reside in Inventory Service (IS). For non IS objects, this check is not performed today and hence a tag can be attached to any non IS object.
  # @!attribute [rw] used_by
  #     @return [Set<String>]
  #     The  set  of users that can use this category. To add users to this, you need to have the edit privilege on the category. Similarly, to unsubscribe from this category, you need the edit privilege on the category. You should not modify other users subscription from this  set .
  class CategoryModel < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.cis.tagging.category_model',
          {
            'id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category'),
            'name' => VAPI::Bindings::StringType.instance,
            'description' => VAPI::Bindings::StringType.instance,
            'cardinality' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Tagging::CategoryModel::Cardinality'),
            'associable_types' => VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance),
            'used_by' => VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)
          },
          CategoryModel,
          true,
          ["id"]
        )
      end
    end

    attr_accessor :id,
                  :name,
                  :description,
                  :cardinality,
                  :associable_types,
                  :used_by

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Cis::Tagging::CategoryModel::Cardinality``   enumerated type  defines the number of tags in a category that can be assigned to an object.
    # @!attribute [rw] single
    #     @return [Com::Vmware::Cis::Tagging::CategoryModel::Cardinality]
    #     An object can only be assigned one of the tags in this category. For example, if a category is "Operating System", then different tags of this category would be "Windows", "Linux", and so on. In this case a VM object can be assigned only one of these tags and hence the cardinality of the associated category here is single.
    # @!attribute [rw] multiple
    #     @return [Com::Vmware::Cis::Tagging::CategoryModel::Cardinality]
    #     An object can be assigned several of the tags in this category. For example, if a category is "Server", then different tags of this category would be "AppServer", "DatabaseServer" and so on. In this case a VM object can be assigned more than one of the above tags and hence the cardinality of the associated category here is multiple.
    class Cardinality < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.cis.tagging.category_model.cardinality',
            Cardinality
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Cardinality] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Cardinality.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] single
      #     @return [Com::Vmware::Cis::Tagging::CategoryModel::Cardinality]
      #     An object can only be assigned one of the tags in this category. For example, if a category is "Operating System", then different tags of this category would be "Windows", "Linux", and so on. In this case a VM object can be assigned only one of these tags and hence the cardinality of the associated category here is single.
      SINGLE = Cardinality.send(:new, 'SINGLE')

      # @!attribute [rw] multiple
      #     @return [Com::Vmware::Cis::Tagging::CategoryModel::Cardinality]
      #     An object can be assigned several of the tags in this category. For example, if a category is "Server", then different tags of this category would be "AppServer", "DatabaseServer" and so on. In this case a VM object can be assigned more than one of the above tags and hence the cardinality of the associated category here is multiple.
      MULTIPLE = Cardinality.send(:new, 'MULTIPLE')
    end
  end
  # The  ``Com::Vmware::Cis::Tagging::TagModel``   class  defines a tag that can be attached to vSphere objects.
  # @!attribute [rw] id
  #     @return [String]
  #     The unique identifier of the tag.
  # @!attribute [rw] category_id
  #     @return [String]
  #     The identifier of the parent category in which this tag will be created.
  # @!attribute [rw] name
  #     @return [String]
  #     The display name of the tag.
  # @!attribute [rw] description
  #     @return [String]
  #     The description of the tag.
  # @!attribute [rw] used_by
  #     @return [Set<String>]
  #     The  set  of users that can use this tag. To add users to this, you need to have the edit privilege on the tag. Similarly, to unsubscribe from this tag, you need the edit privilege on the tag. You should not modify other users subscription from this  set .
  class TagModel < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.cis.tagging.tag_model',
          {
            'id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Tag'),
            'category_id' => VAPI::Bindings::IdType.new('com.vmware.cis.tagging.Category'),
            'name' => VAPI::Bindings::StringType.instance,
            'description' => VAPI::Bindings::StringType.instance,
            'used_by' => VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)
          },
          TagModel,
          true,
          ["id"]
        )
      end
    end

    attr_accessor :id,
                  :category_id,
                  :name,
                  :description,
                  :used_by

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
end
