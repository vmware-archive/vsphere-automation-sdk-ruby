# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# cis - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::CIS::TaggingTagApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaggingTagApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::CIS::TaggingTagApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaggingTagApi' do
    it 'should create an instance of TaggingTagApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::CIS::TaggingTagApi)
    end
  end

  # unit tests for add_to_used_by
  # Adds the {@param.name usedByEntity} to the {@link TagModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link TagModel#usedBy} privilege on the tag.
  # @param tag_id The identifier of the input tag.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_to_used_by test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Creates a tag. To invoke this {@term operation}, you need the create tag privilege on the input category.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes an existing tag. To invoke this {@term operation}, you need the delete privilege on the tag.
  # @param tag_id The identifier of the input tag.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Fetches the tag information for the given tag identifier. To invoke this {@term operation}, you need the read privilege on the tag in order to view the tag info.
  # @param tag_id The identifier of the input tag.
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Enumerates the tags in the system. To invoke this {@term operation}, you need read privilege on the individual tags. The {@term list} will only contain tags for which you have read privileges.
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tags_for_category
  # Enumerates all tags for the given category. To invoke this {@term operation}, you need the read privilege on the given category and the individual tags in that category.
  # @param category_id The identifier of the input category.
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagListTagsForCategoryResult]
  describe 'list_tags_for_category test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_used_tags
  # Enumerates all tags for which the {@param.name usedByEntity} is part of the {@link TagModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual tags.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingTagListUsedTagsResult]
  describe 'list_used_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_from_used_by
  # Removes the {@param.name usedByEntity} from the {@link TagModel#usedBy} subscribers set. If the {@param.name usedByEntity} is not using this tag, then this becomes a no-op. To invoke this {@term operation}, you need modify {@link TagModel#usedBy} privilege on the tag.
  # @param tag_id The identifier of the input tag.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_from_used_by test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for revoke_propagating_permissions
  # Revokes all propagating permissions on the given tag. You should then attach a direct permission with tagging privileges on the given tag. To invoke this {@term operation}, you need tag related privileges (direct or propagating) on the concerned tag.
  # @param tag_id The identifier of the input tag.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'revoke_propagating_permissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates an existing tag. To invoke this {@term operation}, you need the edit privilege on the tag.
  # @param tag_id The identifier of the input tag.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
