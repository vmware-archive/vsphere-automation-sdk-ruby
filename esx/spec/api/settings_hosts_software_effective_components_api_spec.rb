# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsHostsSoftwareEffectiveComponentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsHostsSoftwareEffectiveComponentsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsHostsSoftwareEffectiveComponentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsHostsSoftwareEffectiveComponentsApi' do
    it 'should create an instance of SettingsHostsSoftwareEffectiveComponentsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsHostsSoftwareEffectiveComponentsApi)
    end
  end

  # unit tests for list
  # Returns the effective components for the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param host Identifier of the host.
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, EsxSettingsEffectiveComponentInfo>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end