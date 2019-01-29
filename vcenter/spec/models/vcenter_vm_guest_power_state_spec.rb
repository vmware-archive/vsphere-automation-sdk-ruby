# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::VCenter::VcenterVmGuestPowerState
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterVmGuestPowerState' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterVmGuestPowerState.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterVmGuestPowerState' do
    it 'should create an instance of VcenterVmGuestPowerState' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterVmGuestPowerState)
    end
  end
end
