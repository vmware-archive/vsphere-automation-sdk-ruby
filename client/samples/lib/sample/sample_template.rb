# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'

# A sample template file to demonstrate how to write samples programs

# Every Sample Class should extend(inherit) the 'SampleBase' Class.
# Frame and general sample options are extended from the 'SampleBase' Class
# A Sample Class should define following methods
# setup()   - All prerequisites (including connection) required to run the sample should be defined here.
# execute() - Actual Sample Workflows are defined here
# cleanup() - Revert to the original state (as in before execute()). eg: Revert Vm Memory, Revert Power State etc
# The Sample filename should be updated in bin/launcher.rb
class SampleStarterTemplate < SampleBase
  VCENTER_MODULE = Com::Vmware::Vcenter
  VCENTER_VM_CLASS = VCENTER_MODULE::VM

  ## 'TITLE' and 'DESCRIPTION' would help users to understand the sample and its usage
  TITLE = 'List VMs in the VCenter'
  DESCRIPTION = <<EOL
Demonstrates List of VMs present in the VCenter
    Step 1: List All VMs present in the vCenter Server
       (VM Name, VM power State, VM CPU , VM Memory in MB would be displayed)
EOL
  # sample attributes
  attr_reader :service_manager, :vm_svc
  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  # Sample pre-requsiities can be defined in setup
  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    # Connect to the vAPI Service and get the vAPI Stub
    @service_manager = get_service_manager(ssl_options)
    @vm_svc = VCENTER_VM_CLASS.new(service_manager.vapi_config)
  end

  # Actual Sample functionality/Implementation are defined in the execute block
  def execute
    log.info ' **** List all the VMs ***'
    log.info 'VM NAME, VM POWERSTATE, VM CPU Count, VM Memory Size(MB)'
    vm_svc.list.each do |vm|
      log.info "#{vm.name}, #{vm.power_state}, #{vm.cpu_count}, #{vm.memory_size_MiB}"
    end
 end

  # Cleanup methods if any
  def cleanup
    # Eg: Revert VM PowerState/Memory/CPU etc to the original value
  end
  # main: quick self tester
  SampleStarterTemplate.new.main if $PROGRAM_NAME == __FILE__
end
