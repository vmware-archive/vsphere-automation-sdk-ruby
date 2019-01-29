# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RecoveryBackupSystemNameArchiveApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecoveryBackupSystemNameArchiveApi' do
    it 'should create an instance of RecoveryBackupSystemNameArchiveApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::RecoveryBackupSystemNameArchiveApi)
    end
  end

  # unit tests for get
  # Returns the information for backup corresponding to given backup location and system name.
  # @param system_name System name identifier.
  # @param spec_location Backup location URL.
  # @param archive Archive identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :spec_location_user Username for the given location.
  # @option opts [String] :spec_location_password Password for the given location.
  # @return [ApplianceRecoveryBackupSystemNameArchiveResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
  # @param system_name System name identifier.
  # @param loc_spec_location Backup location URL.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_spec_start_timestamp Backup must have been taken on or after this time to match the filter.
  # @option opts [String] :filter_spec_end_timestamp Backup must have been taken on or before this time to match the filter.
  # @option opts [String] :filter_spec_comment_substring Backup comment must contain this {@term string} to match the filter.
  # @option opts [Integer] :filter_spec_max_results Limit result to a max count of most recent backups.
  # @option opts [String] :loc_spec_location_user Username for the given location.
  # @option opts [String] :loc_spec_location_password Password for the given location.
  # @return [ApplianceRecoveryBackupSystemNameArchiveListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
