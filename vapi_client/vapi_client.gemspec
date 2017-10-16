$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
require 'vapi_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'vapi_client'
  spec.version       = VAPIClient::VERSION
  spec.authors       = ['J.R. Garcia']
  spec.email         = ['jrg@vmware.com']
  spec.license       = 'MIT'

  spec.summary       = 'vSphere Automation SDK for Ruby'
  spec.homepage      = 'https://github.com/vmware/vsphere-automation-sdk-ruby'

  spec.files = Dir['lib/**/*', '[A-Z]*'].reject do |f|
    File.directory?(f)
  end
  spec.require_paths = %w[lib]

  spec.required_ruby_version = '>= 2.3.1'

  spec.add_runtime_dependency('vapi_runtime', '~> 2.7')

  spec.add_development_dependency('bundler', '~> 1.14')
  spec.add_development_dependency('pry', '~> 0.10.4')
  spec.add_development_dependency('rake', '~> 12.0')
  spec.add_development_dependency('rubocop', '~> 0.49.1')
  spec.add_development_dependency('simplecov', '~> 0.14.1')
  spec.add_development_dependency('yard', '~> 0.9.9')
end
