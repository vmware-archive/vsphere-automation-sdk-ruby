# -*- encoding: utf-8 -*-

=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vSphere Automation

# VMware vSphere Automation does fantastic things.


=end

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

  s.add_runtime_dependency 'typhoeus', '~> 1.3'
  s.add_runtime_dependency 'json', '~> 2.1'
  s.add_runtime_dependency 'vsphere-automation-appliance', '~> 0.1'
  s.add_runtime_dependency 'vsphere-automation-cis', '~> 0.1'
  s.add_runtime_dependency 'vsphere-automation-content', '~> 0.1'
  s.add_runtime_dependency 'vsphere-automation-vapi', '~> 0.1'
  s.add_runtime_dependency 'vsphere-automation-vcenter', '~> 0.1'

  s.add_development_dependency 'bundler', '~> 1.16'
  s.add_development_dependency 'pry', '~> 0.11.3'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '~> 0.58.2'
  s.add_development_dependency 'vcr', '~> 4.0'
  s.add_development_dependency 'webmock', '~> 3.4'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
