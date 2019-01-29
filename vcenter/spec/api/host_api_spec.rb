# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::HostApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HostApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::HostApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HostApi' do
    it 'should create an instance of HostApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::HostApi)
    end
  end

  # unit tests for connect
  # Connect to the host corresponding to host previously added to the vCenter server.
  # @param host Identifier of the host to be reconnected. The parameter must be an identifier for the resource type: HostSystem.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'connect test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by Host.CreateSpec.ThumbprintVerification.
  # @param vcenter_host_create 
  # @param [Hash] opts the optional parameters
  # @return [VcenterHostCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Remove a standalone host from the vCenter Server.
  # @param host Identifier of the host to be deleted. The parameter must be an identifier for the resource type: HostSystem.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disconnect
  # Disconnect the host corresponding to host from the vCenter server
  # @param host Identifier of the host to be disconnected. The parameter must be an identifier for the resource type: HostSystem.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'disconnect test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the Host.FilterSpec.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter_hosts Identifiers of hosts that can match the filter. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
  # @option opts [Array<String>] :filter_names Names that hosts must have to match the filter (see Host.Summary.name). If unset or empty, hosts with any name match the filter.
  # @option opts [Array<String>] :filter_folders Folders that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
  # @option opts [BOOLEAN] :filter_standalone If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter. If unset Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and Host.FilterSpec.clusters os not empty, no hosts will match the filter.
  # @option opts [Array<String>] :filter_clusters Clusters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this field is not empty and Host.FilterSpec.standalone is true, no hosts will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
  # @option opts [Array<String>] :filter_connection_states Connection states that a host must be in to match the filter (see Host.Summary.connection-state. If unset or empty, hosts in any connection state match the filter.
  # @return [VcenterHostListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
