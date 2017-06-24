# VMware vSphere Automation SDK for Ruby
## Table of Contents
- [Abstract](#abstract)
- [Quick Start Guide](#quick-start-guide)
  - [Installing the required Ruby Packages](#installing-the-required-ruby-packages)
  - [Installing the SDK](#installing-the-sdk)
  - [Uninstalling the SDK](#uninstalling-the-sdk)
  - [Setting up a vSphere Test Environment](#setting-up-a-vsphere-test-environment)
  - [Running a sample](#running-a-sample)
- [API Documentation](#api-documentation)
- [Submitting samples](#submitting-samples)
  - [Required Information](#required-information)
  - [Suggested Information](#suggested-information)
  - [Contribution Process](#contribution-process)
  - [Code Style](#code-style)
- [Resource Maintenance](#resource-maintenance)
  - [Maintenance Ownership](#maintenance-ownership)
  - [Filing Issues](#filing-issues)
  - [Resolving Issues](#resolving-issues)
  - [VMware Sample Exchange](#vmware-sample-exchange)
- [Repository Administrator Resources](#repository-administrator-resources)
  - [Board Members](#board-members)
  - [Approval of Additions](#approval-of-additions)
- [VMware Resources](#vmware-resources)

## Abstract
This document describes the vSphere Automation Ruby SDK samples that use the
vSphere Automation Ruby client library. You will need Ruby version 2.3.1 or
greater to run the samples.

## Supported vCenter Releases
All samples support vCenter 6.5. Tagging samples also support vCenter 6.0.

## Quick Start Guide
This document will walk you through getting up and running with the Ruby SDK
samples. Prior to running the samples you will need to set up a vCenter test
environment. The following steps will take you through this process.

Before you can run the SDK samples we'll need to walk you through the following
steps:

1. Installing the required Ruby packages
2. Installing SDK provided packages
3. Setting up a vSphere test environment

### Installing the required Ruby Packages
**Note:** The SDK requires Ruby v2.3.1+ (preferably the latest stable release)
to run the setup/samples, please make sure you have the appropriate version
installed before continuing.

If you are on macOS, OSX, or Linux, please note
that the system installed version of Ruby may not be sufficient for development
and we recommended you [install Ruby](https://www.ruby-lang.org/en/downloads/)
yourself before installing the required packages.

If you are on Windows, you will need the necessary build tools to build native
extensions. The easiest way to install everything needed is to use the
[Ruby Installer](https://rubyinstaller.org/). You will need to install the
Development Kit (DevKit) as well.

The Gem specification file (`vsphere-automation-sdk-ruby.gemspec`) lists the
required dependencies. To install them, you will need
[Bundler](http://bundler.io). You can install Bundler by running
`gem install bundler` and then the required packages by running
`bundle install`. For more details on how to install Ruby packages using
Bundler, please refer to the [Bundler documentation](http://bundler.io/).

### Installing the SDK
Install the SDK by running

```cmd
gem build vsphere-automation-sdk-ruby.gemspec
gem install vsphere-automation-sdk-2.6.0.gem
```

### Uninstalling the SDK
Uninstall the SDK by running

```
gem uninstall vsphere-automation-sdk
```

### Setting up a vSphere Test Environment
**NOTE:** We strongly recommend running the samples against a freshly installed
**non-production** vSphere setup as the scripts may make changes to the test
environment and in some cases can destroy items when needed.

The samples require a vSphere test environment with the following configuration:

* 1 vCenter Server
* 2 ESX hosts
* 1 NFS Datastore with at least 3GB of free capacity

Please have the details of these available, but do not have any configuration
pre-created on vCenter server or ESXi Hosts (i.e. there should be no
existing datacenters, clusters or attached hosts on the vCenter server).

### Running a sample
To run a sample:

```cmd
cd client/samples
bin/run_sample --help
```

To run a sample, you will use `bin/run_sample` followed by a sample name (e.g.
`connection`) and the necessary options. To see the available options for a
sample, run `bin/run_sample [sample_name] --help`.

## API Documentation
The API documentation is in the
`docs/apidocs/client/vsphereautomation-bindings` folder. Open the `index.html`
files in your browser to view the documentation.

## Submitting samples
### Required Information
The following information must be in the README.md (or in the sample comments in
case a README.md already exists in same folder).

* Author Name
  * This can include full name, email address or other identifiable piece of
  information that would allow interested parties to contact author with
  questions.
* Date
  * The date that the sample was originally written
* Minimal/High Level Description
  * What does the sample do? What is the purpose of the sample?
* Any KNOWN limitations or dependencies

### Suggested Information
Include the following information when possible. Inclusion of information
provides valuable information to consumers of the resource.

* Which vSphere version was the sample developed/tested against?
* Whic SDK version was the sample developed/tested against?
* Whic Ruby version was the sample developed/tested against?

### Contribution Process
* Follow the [GitHub process](https://help.github.com/articles/fork-a-repo)
* Please use one branch per sample or change-set
* Please use one commit and pull request per sample
* Please post the sample output along with the pull request
* If you include a license with your sample, use the project license

### Code Style
Please conform to the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide).
Check your code by running [RuboCop](http://rubocop.readthedocs.io/en/latest/)
using Bundler (`bundle exec rubocop [filename]`).

## Resource Maintenance
### Maintenance Ownership
The submitter will maintain ownership of all submitted samples.

### Filing Issues
File any bugs or other issues within GitHub by way of the repository's [Issue
Tracker](https://github.com/vmware/vsphere-automation-sdk-ruby/issues).

### Resolving Issues
Any community member can resolve issues within the repository, however only the
board member can approve the update. Once approved, assuming the resolution
involves a pull request, only a board member will be able to merge and close the
request.

### VMware Sample Exchange
It is highly recommended to add all submitted samples to the [VMware Sample
Exchange](https://code.vmware.com/samples).

The Sample Exchange can access your GitHub resources by way of a linking
process. The community can then search for those resources. There are VMware
social media accounts which will advertise resources posted to the site. There
are no additional accounts needed as the VMware Sample Exchange uses MyVMware
credentials.

## Repository Administrator Resources
### Board Members
Board members are volunteers from the SDK community and VMware staff members,
board members are not held responsible for any issues which may occur from
running of samples from this repository.

Members:

* J.R. Garcia (VMware)
* Steve Trefethen (VMware)

### Approval of Additions
All items added to the repository, including items from the Board members,
require two (2) votes from the board members for approval. The approving members
ideally will have downloaded and tested the item. A board member will merge the
pull request once two board members have given approval.

## VMware Resources
* [vSphere Automation SDK Overview](http://pubs.vmware.com/vsphere-65/index.jsp#com.vmware.vapi.progguide.doc/GUID-AF73991C-FC1C-47DF-8362-184B6544CFDE.html)
* [VMware Code](https://code.vmware.com/home)
* [VMware Developer Community](https://communities.vmware.com/community/vmtn/developer)
* VMware vSphere [REST API Reference documentation](https://code.vmware.com/web/dp/doc/preview?id=4645).
* [VMware Ruby forum](https://code.vmware.com/forums/7509/vsphere-automation-sdk-for-ruby)
