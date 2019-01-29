# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetadataMetamodelEnumerationApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataMetamodelEnumerationApi' do
    it 'should create an instance of MetadataMetamodelEnumerationApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi)
    end
  end

  # unit tests for get
  # Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. &lt;p&gt; The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
  # @param enumeration_id Identifier of the enumeration element.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataMetamodelEnumerationResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataMetamodelEnumerationListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
