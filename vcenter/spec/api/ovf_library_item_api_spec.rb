# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::OvfLibraryItemApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OvfLibraryItemApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::OvfLibraryItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OvfLibraryItemApi' do
    it 'should create an instance of OvfLibraryItemApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::OvfLibraryItemApi)
    end
  end

  # unit tests for create
  # Creates a library item in content library from a virtual machine or virtual appliance. &lt;p&gt; This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. &lt;/p&gt;
  # @param vcenter_ovf_library_item_create 
  # @param [Hash] opts the optional parameters
  # @return [VcenterOvfLibraryItemCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for deploy
  # Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. &lt;p&gt; This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. &lt;/p&gt;
  # @param ovf_library_item_id Identifier of the content library item containing the OVF package to be deployed.
  # @param vcenter_ovf_library_item_deploy 
  # @param [Hash] opts the optional parameters
  # @return [VcenterOvfLibraryItemDeployResult]
  describe 'deploy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter
  # Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. &lt;p&gt; This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. &lt;/p&gt;
  # @param ovf_library_item_id Identifier of the content library item containing the OVF package to query.
  # @param vcenter_ovf_library_item_filter 
  # @param [Hash] opts the optional parameters
  # @return [VcenterOvfLibraryItemFilterResult]
  describe 'filter test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
