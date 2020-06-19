# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContentRegistriesHarborProjectsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentRegistriesHarborProjectsApi' do
    it 'should create an instance of ContentRegistriesHarborProjectsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi)
    end
  end

  # unit tests for create
  # Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
  # @param registry Identifier of the Registry.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterContentRegistriesHarborProjectsCreateResp]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
  # @param registry Identifier of the registry.
  # @param project Identifier of the Harbor project.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns detailed information about the specified Harbor project.
  # @param registry Identifier of the registry.
  # @param project Identifier of the Harbor project.
  # @param [Hash] opts the optional parameters
  # @return [VcenterContentRegistriesHarborProjectsResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns basic information of all projects in a Harbor registry.
  # @param registry Identifier of the registry.
  # @param [Hash] opts the optional parameters
  # @return [VcenterContentRegistriesHarborProjectsListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for purge
  # Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
  # @param registry Registry identifier.
  # @param project Identifier of the Harbor project.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end