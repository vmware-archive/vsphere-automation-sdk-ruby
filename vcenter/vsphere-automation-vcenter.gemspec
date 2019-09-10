# -*- encoding: utf-8 -*-

# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


$:.push File.expand_path("../lib", __FILE__)
require "vsphere-automation-vcenter/version"

Gem::Specification.new do |s|
  s.name        = "vsphere-automation-vcenter"
  s.version     = VSphereAutomation::VCenter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["J.R. Garcia"]
  s.email       = ["jrg@vmware.com"]
  s.homepage    = "https://github.com/vmware/vsphere-automation-sdk-ruby"
  s.summary     = "A Ruby SDK for the vSphere APIs (vCenter)"
  s.description = "A Ruby SDK for the vSphere APIs (vCenter)"
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.3"
  s.add_runtime_dependency 'vsphere-automation-runtime', '~> 0.4.1'
  s.add_runtime_dependency 'vsphere-automation-cis', '~> 0.4.1'

  s.add_development_dependency 'bundler', '~> 2.0'
  s.add_development_dependency 'pry', '~> 0.12.2'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '~> 0.73.0'
  s.add_development_dependency 'vcr', '~> 5.0'
  s.add_development_dependency 'webmock', '~> 3.6'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
