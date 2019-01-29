# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# cis - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::CIS::TaggingCategoryApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaggingCategoryApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::CIS::TaggingCategoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaggingCategoryApi' do
    it 'should create an instance of TaggingCategoryApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::CIS::TaggingCategoryApi)
    end
  end

  # unit tests for add_to_used_by
  # Adds the {@param.name usedByEntity} to the {@link CategoryModel#usedBy} subscribers {@term set} for the specified category. If the {@param.name usedByEntity} is already in the {@term set}, then this becomes an idempotent no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
  # @param category_id The identifier of the input category.
  # @param cis_tagging_category_add_to_used_by 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_to_used_by test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Creates a category. To invoke this {@term operation}, you need the create category privilege.
  # @param cis_tagging_category_create 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingCategoryCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes an existing category. To invoke this {@term operation}, you need the delete privilege on the category.
  # @param category_id The identifier of category to be deleted.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Fetches the category information for the given category identifier. In order to view the category information, you need the read privilege on the category.
  # @param category_id The identifier of the input category.
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingCategoryResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Enumerates the categories in the system. To invoke this {@term operation}, you need the read privilege on the individual categories. The {@term list} will only contain those categories for which you have read privileges.
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingCategoryListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_used_categories
  # Enumerates all categories for which the {@param.name usedByEntity} is part of the {@link CategoryModel#usedBy} subscribers {@term set}. To invoke this {@term operation}, you need the read privilege on the individual categories.
  # @param cis_tagging_category_list_used_categories 
  # @param [Hash] opts the optional parameters
  # @return [CisTaggingCategoryListUsedCategoriesResult]
  describe 'list_used_categories test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_from_used_by
  # Removes the {@param.name usedByEntity} from the {@link CategoryModel#usedBy} subscribers {@term set}. If the {@param.name usedByEntity} is not using this category, then this becomes a no-op. To invoke this {@term operation}, you need the modify {@link CategoryModel#usedBy} privilege on the category.
  # @param category_id The identifier of the input category.
  # @param cis_tagging_category_remove_from_used_by 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_from_used_by test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for revoke_propagating_permissions
  # Revokes all propagating permissions on the given category. You should then attach a direct permission with tagging privileges on the given category. To invoke this {@term operation}, you need category related privileges (direct or propagating) on the concerned category.
  # @param category_id The identifier of the input category.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'revoke_propagating_permissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates an existing category. To invoke this {@term operation}, you need the edit privilege on the category.
  # @param category_id The identifier of the category to be updated.
  # @param cis_tagging_category_update 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
