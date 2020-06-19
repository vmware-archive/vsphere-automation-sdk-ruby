# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NamespaceManagementSoftwareClustersApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NamespaceManagementSoftwareClustersApi' do
    it 'should create an instance of NamespaceManagementSoftwareClustersApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::NamespaceManagementSoftwareClustersApi)
    end
  end

  # unit tests for get
  # Returns upgrade related information of a specific cluster.
  # @param cluster Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @return [VcenterNamespaceManagementSoftwareClustersInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns upgrade related information about all WCP enabled clusters.
  # @param [Hash] opts the optional parameters
  # @return [Array<VcenterNamespaceManagementSoftwareClustersSummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upgrade
  # Upgrade the cluster to a specific version. This operation upgrades the components on control plane VMs and worker plane hosts based on the selected version. Before upgrading, this operation performs pre-checks and sets the evaluation response in Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the severity, the upgrade may or may not proceed beyond prechecks. Here is a list of severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck operation - WARNING: Upgrade proceeds beyond precheck operation only if UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck operation uninterrupted
  # @param cluster Identifier for the cluster which will be upgraded. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterNamespaceManagementSoftwareClustersUpgradeSpec] :request_body 
  # @return [nil]
  describe 'upgrade test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upgrade_multiple
  # Upgrade a set of clusters to its corresponding specific version.
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, VcenterNamespaceManagementSoftwareClustersUpgradeSpec>] :request_body 
  # @return [Hash<String, VcenterNamespaceManagementSoftwareClustersResult>]
  describe 'upgrade_multiple test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end