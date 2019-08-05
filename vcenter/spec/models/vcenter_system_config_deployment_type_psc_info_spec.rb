# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypePscInfo
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterSystemConfigDeploymentTypePscInfo' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypePscInfo.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterSystemConfigDeploymentTypePscInfo' do
    it 'should create an instance of VcenterSystemConfigDeploymentTypePscInfo' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypePscInfo)
    end
  end
  describe 'test attribute "sso_admin_username"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sso_admin_password"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "skip_ad_domain_join"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ad_domain"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
