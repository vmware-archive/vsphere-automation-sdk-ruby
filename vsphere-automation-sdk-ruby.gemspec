# coding: utf-8

$LOAD_PATH.unshift(File.expand_path('../client/sdk/runtime/lib', __FILE__))
require 'vapi/version'

Gem::Specification.new do |spec|
  spec.name          = 'vsphere-automation-sdk'
  spec.version       = VAPI::VERSION
  spec.authors       = ['J.R. Garcia']
  spec.email         = ['jrg@vmware.com']
  spec.license       = 'MIT'

  spec.summary       = 'vSphere Automation SDK for Ruby'
  spec.homepage      = 'https://github.com/vmware/vsphere-automation-sdk-ruby'

  spec.files = Dir['{client,docs}/**/*', '[A-Z]*'].reject do |f|
    File.directory?(f)
  end
  spec.require_paths = %w[client/sdk client/sdk/runtime/lib]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_runtime_dependency('json', '1.7.7')
  # nokogiri requires Ruby version >= 2.1.0.
  spec.add_runtime_dependency('nokogiri', '< 1.7.0')
  spec.add_runtime_dependency('savon', '~> 2.11.2')
  # rack >= 2 requires ruby version >= 2.2.2
  spec.add_development_dependency('rack', '< 2')
  spec.add_development_dependency('bundler', '~> 1.14')
  spec.add_development_dependency('pry', '~> 0.10.4')
  spec.add_development_dependency('rake', '~> 12.0')
  # rubocop requires Ruby version >= 2.0.0.
  spec.add_development_dependency('rubocop', '< 0.40')
  spec.add_development_dependency('simplecov', '~> 0.7.1')
  spec.add_development_dependency('yard', '~> 0.9.5')


end
