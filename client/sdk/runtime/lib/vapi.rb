#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

#ORDER MATTERS HERE.
#Take care when changing.
require 'vapi/version'
require 'vapi/util'
require 'vapi/core'
require 'vapi/bindings'
require 'vapi/data'
require 'vapi/protocol'
require 'vapi/security'

begin
    # load the vAPI standard error types
    require 'com/vmware/vapi/vapi'
rescue LoadError
    # ignore for stand alone runtime
    # this should not happen for published runtime
end

if ENV['RUN_COVERAGE']
  require 'simplecov'
  SimpleCov.start
end
