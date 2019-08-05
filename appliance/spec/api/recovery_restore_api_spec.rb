# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::RecoveryRestoreApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RecoveryRestoreApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::RecoveryRestoreApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecoveryRestoreApi' do
    it 'should create an instance of RecoveryRestoreApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::RecoveryRestoreApi)
    end
  end

  # unit tests for validate
  # Get metadata before restore
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [ApplianceRecoveryRestoreValidateResult]
  describe 'validate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
