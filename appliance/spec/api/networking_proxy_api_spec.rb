# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::NetworkingProxyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkingProxyApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::NetworkingProxyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkingProxyApi' do
    it 'should create an instance of NetworkingProxyApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::NetworkingProxyApi)
    end
  end

  # unit tests for delete
  # Deletes a proxy configuration for a specific protocol.
  # @param protocol ID whose proxy is to be deleted.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the proxy configuration for a specific protocol.
  # @param protocol The protocol whose proxy configuration is requested.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceNetworkingProxyResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Gets proxy configuration for all configured protocols.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceNetworkingProxyListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Configures which proxy server to use for the specified protocol. This operation sets environment variables for using proxy. In order for this configuration to take effect a logout / service restart is required.
  # @param protocol The protocol for which proxy should be set.
  # @param appliance_networking_proxy_set 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for test
  # Tests a proxy configuration by testing the connection to the proxy server and test host.
  # @param protocol Protocol whose proxy is to be tested.
  # @param appliance_networking_proxy_test 
  # @param [Hash] opts the optional parameters
  # @return [ApplianceNetworkingProxyTestResult]
  describe 'test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
