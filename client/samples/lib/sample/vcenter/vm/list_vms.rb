# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'

# A sample which demonstrates list of all Virtual Machines in a vCenter Server
# Sample Prerequisites:
# 1 vCenter and ESX
class ListVms < SampleBase

  VCENTER_MODULE = Com::Vmware::Vcenter
  VCENTER_VM_CLASS = VCENTER_MODULE::VM

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


  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @vm_svc = VCENTER_VM_CLASS.new(service_manager.vapi_config)

  end

  def execute
    log.info ' **** List all the VMs ***'
    log.info 'VM NAME, VM POWERSTATE, VM CPU Count, VM Memory Size(MB)'
    vm_svc.list.each do |vm|
      log.info "#{vm.name}, #{vm.power_state}, #{vm.cpu_count}, #{vm.memory_size_MiB}"
    end
 end

  # main: quick self tester
  if __FILE__ == $0
    ListVms.new.main()
  end
end
