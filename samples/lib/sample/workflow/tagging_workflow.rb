# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sample/framework'
require 'vapi'
require 'com/vmware/cis/tagging/vapi'

# A tagging workflow sample that demonstrates the tagging
# CRUD operations.
class TaggingWorkflow < SampleBase

    # poor man's import facility (it provides a simple name)
    TAGGING_MODULE = Com::Vmware::Cis::Tagging
    CATEGORY_CLASS = TAGGING_MODULE::Category
    CATEGORY_MODEL_CLASS = TAGGING_MODULE::CategoryModel
    TAG_CLASS = TAGGING_MODULE::Tag
    TAG_ASSOCIATION_CLASS = TAGGING_MODULE::TagAssociation

    TITLE = 'vAPI Tagging Workflow'
    DESCRIPTION = <<EOL
Demonstrates tagging CRUD operations.
    Step 1: Create a Tag category.
    Step 2: Create a Tag under the category.

    Optional steps to associate a tag with the entity:
    Step 3: Assign the tag to an entity.

    Additional steps when clearData flag is set:
    Step 4: Detach the tag from the entity.
    Step 5: Delete the tag.
    Step 6: Delete the tag category.

    Note: the sample needs an existing entity (supplied by the
    --entity_id and --entit-type options.)
EOL

    # sample attributes
    attr_reader :service_manager,
                :category_name, :category_svc, :category_id, :category_desc,
                :tag_name, :tag_svc, :tag_id, :tag_desc,
                :tag_association_svc, :tag_attached, :dynamic_id,
                :entity_id, :entity_type

    # Constructs a new instance.
    def initialize
        super(TITLE, DESCRIPTION, true)

        @tag_attached = false
        @foo_name = nil
    end

    def inject_options
        option_parser.on("-c", "--category-name NAME",
            "Name of the Category to be created") do |value|
            options[:category_name] =  value
        end
        option_parser.on("-C", "--category-desc [TEXT]",
            "Description of the Category to be created") do |value|
            options[:category_desc] =  value
        end
        option_parser.on("-t", "--tag-name NAME",
            "Name of the tag to be created") do |value|
            options[:tag_name] =  value
        end
        option_parser.on("-T", "--tag-desc [TEXT]",
            "Description of the tag to be created") do |value|
            options[:tag_desc] =  value
        end

        option_parser.on("-e", "--entity-id [UUID]", "ID of the entity") do |value|
            options[:entity_id] =  value
        end
        option_parser.on("-f", "--entity-type [TYPE]", "Type of the entity") do |value|
            options[:entity_type] =  value
        end
    end

    def check_options
        @category_name = check_required_opt(:category_name, '--category-name')
        @tag_name = check_required_opt(:tag_name, '--tag-name')

        @category_desc = options[:category_desc] || category_name
        @tag_desc = options[:tag_desc] || tag_name
        @entity_id = options[:entity_id]
        @entity_type = options[:entity_type] || 'Any'
    end

    def setup
        ssl_options = {}
        ssl_options[:verify] = :none if insecure
        ssl_options[:ca_file] = ca_file if ca_file
        @service_manager = get_service_manager(ssl_options)
        @category_svc = CATEGORY_CLASS.new(service_manager.vapi_config)
        @tag_svc = TAG_CLASS.new(service_manager.vapi_config)
        @tag_association_svc = TAG_ASSOCIATION_CLASS.new(service_manager.vapi_config)
    end

    def execute
        log.info 'List all the existing categories...'
        categories = category_svc.list()
        if categories.size > 0
            categories.each { |category|
                log.info "Found Category: #{category}"
            }
        else
            log.info 'No Tag Category Found...'
        end

        log.info 'List all the existing tags...'
        tags = tag_svc.list()
        if tags.size > 0
            tags.each { |tag|
                log.info "Found Tag: #{tag}"
            }
        else
            log.info 'No Tag Found...'
        end

        log.info 'creating a new tag category...'
        @category_id = create_tag_category(category_name, category_desc,
                                           CATEGORY_MODEL_CLASS::Cardinality::MULTIPLE)
        assert(!category_id.nil?, 'create category failed')
        log.info "Tag category created; Id: #{category_id}"

        log.info 'creating a new tag...'
        @tag_id = create_tag(tag_name, tag_desc, category_id)
        assert(!tag_id.nil?, 'create tag failed')
        log.info "Tag created; Id: #{tag_id}"

        log.info 'updating the tag...'
        update_tag(tag_id, 'Server Tag updated at ' + Time.now.utc.to_s)
        log.info "Tag updated; Id: #{tag_id}"

        if entity_id
            # wired conversion to DynamicID
            @dynamic_id = Com::Vmware::Vapi::Std::DynamicID.new
            dynamic_id.type = entity_type
            dynamic_id.id = entity_id
            log.info "Entity ID: #{entity_id}"

            log.info 'Tagging the entity...'
            tag_association_svc.attach(tag_id, dynamic_id)
            for id in tag_association_svc.list_attached_tags(dynamic_id)
                if id == tag_id
                    @tag_attached = true
                    break
                end
            end
            assert(tag_attached, 'tag attach failed')
            log.info "Tagged entity: #{entity_id}"
        end
    end

    def cleanup
        begin
            if tag_attached
                tag_association_svc.detach(tag_id, dynamic_id)
                log.info "Removed tag from entity: #{entity_id}"
            end

            unless tag_id.nil?
                delete_tag(tag_id)
                log.info "Tag deleted; Id: #{tag_id}"
            end

            unless category_id.nil?
                delete_tag_category(category_id)
                log.info "Tag category deleted; Id: #{category_id}"
            end
        rescue Exception => e
            report_error "cleanup failed" + e
        end
    end

    # create a category. User who invokes this needs create category privilege.
    def create_tag_category(name, description, cardinality)
        if options[:use_struct_setters]
            create_spec = CATEGORY_CLASS::CreateSpec.new
            create_spec.name = name
            create_spec.description = description
            create_spec.cardinality = cardinality
            create_spec.associable_types = Set.new
        else
            # alternate usage: structure population via constructor hash
            create_spec = CATEGORY_CLASS::CreateSpec.new(
                :name => name,
                :description => description,
                :cardinality => cardinality,
                :associable_types => Set.new)
        end
        return category_svc.create(create_spec)
    end

    # Deletes an existing tag category.
    # User who invokes this API needs delete privilege on the tag category.
    def delete_tag_category(category_id)
        category_svc.delete(category_id)
    end

    # Creates a Tag
    def create_tag(name, description, category_id)
        if options[:use_struct_setters]
            create_spec = TAG_CLASS::CreateSpec.new
            create_spec.name = name
            create_spec.description = description
            create_spec.category_id = category_id
        else
            # alternate usage: structure population via constructor hash
            create_spec = TAG_CLASS::CreateSpec.new(
                :name => name,
                :description => description,
                :category_id => category_id)
        end
        return tag_svc.create(create_spec)
    end

    # Update the description of an existing tag.
    # User who invokes this API needs edit privilege on the tag.
    def update_tag(tag_id, description)
        if options[:use_struct_setters]
            update_spec = TAG_CLASS::UpdateSpec.new
            update_spec.description = description
        else
            update_spec = TAG_CLASS::UpdateSpec.new(
                :description => description)
        end
        tag_svc.update(tag_id, update_spec)
    end

    # Delete an existing tag.
    # User who invokes this API needs delete privilege on the tag.
    def delete_tag(tag_id)
        tag_svc.delete(tag_id)
    end
end


# main: quick self tester
if __FILE__ == $0
    TaggingWorkflow.new.main()
end
