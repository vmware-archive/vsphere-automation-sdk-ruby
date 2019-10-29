# -*- encoding: utf-8 -*-

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vSphere Automation - VMware vSphere Automation does fantastic things.


$:.push File.expand_path("../lib", __FILE__)
require "vsphere-automation-sdk/version"

Gem::Specification.new do |s|
  s.name        = "vsphere-automation-sdk"
  s.version     = VSphereAutomation::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["J.R. Garcia"]
  s.email       = ["jrg@vmware.com"]
  s.homepage    = "https://github.com/vmware/vsphere-automation-sdk-ruby"
  s.summary     = "A Ruby SDK for the vSphere APIs"
  s.description = "A Ruby SDK for the vSphere APIs"
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.3"

  s.add_runtime_dependency 'vsphere-automation-appliance', '~> 0.4.5'
  s.add_runtime_dependency 'vsphere-automation-cis', '~> 0.4.5'
  s.add_runtime_dependency 'vsphere-automation-content', '~> 0.4.5'
  s.add_runtime_dependency 'vsphere-automation-runtime', '~> 0.4.5'
  s.add_runtime_dependency 'vsphere-automation-vapi', '~> 0.4.5'
  s.add_runtime_dependency 'vsphere-automation-vcenter', '~> 0.4.5'

  s.add_development_dependency 'rake', '~> 12.3'

  s.files = Dir.glob('lib/**/*') << 'LICENSE'
  s.require_paths = ['lib']
end
