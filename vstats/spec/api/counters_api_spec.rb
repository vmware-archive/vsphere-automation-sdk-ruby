# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VStats::CountersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CountersApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VStats::CountersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CountersApi' do
    it 'should create an instance of CountersApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VStats::CountersApi)
    end
  end

  # unit tests for get
  # Returns information about a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param cid Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
  # @param [Hash] opts the optional parameters
  # @return [VstatsCountersInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns information about all counters matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cid Counter identifier that will be listed. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset counter filter will not be applied. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter.
  # @option opts [Array<String>] :types Resource type filter. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset resource type filter will not be applied. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType.
  # @option opts [String] :metric Metric for which counters will be listed. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset metric filter will not be applied. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Metric. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Metric.
  # @return [Array<VstatsCountersInfo>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end