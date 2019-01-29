# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::Appliance::ApplianceUpdateState
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApplianceUpdateState' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::ApplianceUpdateState.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplianceUpdateState' do
    it 'should create an instance of ApplianceUpdateState' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::ApplianceUpdateState)
    end
  end
end
