# Contributing

## Generated Code

All of the code for the SDKs are generated from the vCenter REST APIs using the [VMware OpenAPI Generator](https://github.com/vmware/vmware-openapi-generator) and the [OpenAPI Generator](https://github.com/openapitools/openapi-generator). This means that any changes you would like to contribute to the SDK itself will need to be made through the OpenAPI generator templates. If you make contributions directly to the code, it will be overwritten on the next generation. The templates can be found [here](https://github.com/vmware/vsphere-automation-sdk-ruby/tree/master/.openapi/templates). For information on how the generation process works, see the wiki page [here](https://github.com/vmware/vsphere-automation-sdk-ruby/wiki/SDK-Generation).

The samples _are not_ generated code, so feel free to modify, extend, or contribute to the samples. If you choose to contribute to the samples, please see below for the process on how to do this.

## Required Information

Please include any information about what is required to run the samples. For example, if the sample expects a specific set of resources to be available, please list those so that others will know that the sample requires that expectation to run properly.

## Suggested Information

Include the following information when possible. Inclusion of information provides valuable information to consumers of the resource.

* Which vSphere version was the sample developed/tested against?
* Which SDK version was the sample developed/tested against?
* Which Ruby version was the sample developed/tested against?

## Contribution Process

* Follow the [GitHub process](https://help.github.com/articles/fork-a-repo)
* Please use one branch per sample or change-set
* Please use pull request per sample
* Please post the sample output along with the pull request
* If you include a license with your sample, use the project license

## Code Style

Please conform to the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide). Check your code by running [RuboCop](http://rubocop.readthedocs.io/en/latest/) using [Bundler](https://bundler.io) (`bundle exec rubocop [filename]`).
