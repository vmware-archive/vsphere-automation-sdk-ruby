# vSphere Automation SDK

## Installation

The vSphere Automation SDK for Ruby can be installed from [RubyGems](https://rubygems.org). It is available as a single gem containing all parts of the SDK or as individual components.

To use the entire SDK from a single gem, use:

```ruby
gem 'vsphere-automation-sdk', '~> 0.4.6'
```

The components are modular so you can choose to only install the components you need, for example:

```ruby
gem 'vsphere-automation-cis', '~> 0.4.6'
gem 'vsphere-automation-vcenter', '~> 0.4.6'
```

## Migration

_**Note: This only applies if you used a previous version of the gem that you had to manually build and install from source.**_

If you used a prior iteration of this SDK (_with a version 6.x.y_), you had to build and install the gem from source. If you don't pin to a particular version in your Gemfile (_which is highly recommended_), Bundler will resolve to the latest version of the gem. To get around this, either pin to a particular version or remove the prior version of the gem.

This version is _not_ backwards compatible with the previous versions (_version 6.x.y_).

## Documentation

The documentation for the vSphere Automation SDK for Ruby API can be viewed [here](https://vmware.github.io/vsphere-automation-sdk-ruby). The documentation for the REST APIs used by this SDK can be viewed [here](https://vmware.github.io/vsphere-automation-sdk-rest/vsphere). To try the APIs interactively, you can use the API Explorer. You can view it by going to `https://<your vCenter>/apiexplorer`.

## Examples

You can view samples of how to use this SDK within the [sample folder](samples/). If you would like to see a sample, feel free to [create an issue](https://github.com/vmware/vsphere-automation-sdk-ruby/issues) describing what you would like to see. If you would like to modify, extend, or contribute a sample, see the [contributing guidelines](CONTRIBUTING.md).

## Versioning

This project uses [semantic versioning](https://semver.org/). You can safely express a dependency on a major version and expect all minor and patch versions to be backwards compatible.

## Contributing

To contribute to the vSphere Automation SDK for Ruby, see the [contributing guidelines](CONTRIBUTING.md).

## Available Components

The available components include

| Component               | Gem Name                       | Module                         |
| ----------------------- | ------------------------------ | ------------------------------ |
| [Appliance](appliance/) | `vsphere-automation-appliance` | `VSphereAutomation::Appliance` |
| [CIS](cis/)             | `vsphere-automation-cis`       | `VSphereAutomation::CIS`       |
| [Content](content/)     | `vsphere-automation-content`   | `VSphereAutomation::Content`   |
| [VAPI](vapi/)           | `vsphere-automation-vapi`      | `VSphereAutomation::VAPI`      |
| [vCenter](vcenter/)     | `vsphere-automation-vcenter`   | `VSphereAutomation::VCenter`   |
