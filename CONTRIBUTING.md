# Contributing

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
