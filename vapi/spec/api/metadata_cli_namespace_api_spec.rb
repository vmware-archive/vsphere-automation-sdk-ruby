# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VAPI::MetadataCliNamespaceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetadataCliNamespaceApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VAPI::MetadataCliNamespaceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataCliNamespaceApi' do
    it 'should create an instance of MetadataCliNamespaceApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VAPI::MetadataCliNamespaceApi)
    end
  end

  # unit tests for fingerprint
  # Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.
  # @param action ~action&#x3D;fingerprint
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataCliNamespaceFingerprintResult]
  describe 'fingerprint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Retreives information about a namespace including information about children of that namespace.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataCliNamespaceResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns the identifiers of all namespaces registered with the infrastructure.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataCliNamespaceListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
