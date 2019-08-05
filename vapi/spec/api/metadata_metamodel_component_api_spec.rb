# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VAPI::MetadataMetamodelComponentApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetadataMetamodelComponentApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VAPI::MetadataMetamodelComponentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataMetamodelComponentApi' do
    it 'should create an instance of MetadataMetamodelComponentApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VAPI::MetadataMetamodelComponentApi)
    end
  end

  # unit tests for fingerprint
  # Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to {@param.name componentId}. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.metamodel.Component#get}.
  # @param component_id Identifier of the component element.
  # @param action ~action&#x3D;fingerprint
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataMetamodelComponentFingerprintResult]
  describe 'fingerprint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Retrieves metamodel information about the component element corresponding to {@param.name componentId}. &lt;p&gt; The {@link ComponentData} contains the metamodel information about the component and it&#39;s fingerprint. It contains information about all the package elements that are contained in this component element.
  # @param component_id Identifier of the component element.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataMetamodelComponentResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns the identifiers for the component elements that are registered with the infrastructure.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataMetamodelComponentListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
