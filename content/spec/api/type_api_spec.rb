# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::TypeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TypeApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::TypeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TypeApi' do
    it 'should create an instance of TypeApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::TypeApi)
    end
  end

  # unit tests for list
  # Returns a {@term list} of {@link Info} instances which describe the type support plugins in this Content Library.
  # @param [Hash] opts the optional parameters
  # @return [ContentTypeListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end