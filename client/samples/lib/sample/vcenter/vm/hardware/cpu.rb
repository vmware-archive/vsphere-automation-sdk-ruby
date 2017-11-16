# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/vm_helper'

class CPUConfiguration < SampleBase
  VCENTER_VM_CPU_CLASS = Com::Vmware::Vcenter::Vm::Hardware::Cpu
  VCENTER_VM_CPU_UPDATE_SPEC = VCENTER_VM_CPU_CLASS::UpdateSpec
  
  TITLE = 'Demonstrates how to update a CPU for a VM'
  DESCRIPTION = <<EOL
    Description: Demonstrates how to update a CPU for a VM.
    Author: VMware, Inc.
    Sample Prerequisites: The sample needs an existing VM.
EOL
  # sample attributes
  attr_reader :service_manager,:vm_name,:vm_svc,
              :status,:vm_id,:cores_per_socket,
              :hot_remove_enabled,:count,:hot_add_enabled


  # Constructs a new instance.
  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
      option_parser.on("-v", "--vm-name ", "Name of the VM") do |vm|
        options[:vm_name] =  vm
      end
      #New number of CPU cores per socket.
      option_parser.on("-cps","--cores-per-socket", "--New number of CPU cores per socket.") do |cps|
        options[:cores_per_socket] =  cps
      end
      #New number of CPU cores.
      option_parser.on("-ct", "--count", "New number of CPU cores") do |c|
        options[:count] =  c
      end
      #Flag indicating whether adding CPUs while the virtual machine is running is enabled.
      option_parser.on("-ae", "--hot-add-enabled", "Flag indicating whether adding CPUs while the virtual machine is running is enabled") do |hae|
        options[:hot_add_enabled] =  hae
      end
      #Flag indicating whether removing CPUs while the virtual machine is running is enabled.
      option_parser.on("-re", "--hot-remove-enabled", "Flag indicating whether removing CPUs while the virtual machine is running is enabled") do |hre|
        options[:hot_remove_enabled] =  hre
    end
  end

  def check_options
    @vm_name = check_required_opt(:vm_name,'--vm-name')
    @cores_per_socket =  check_required_opt(:cores_per_socket,'--cores-per-socket')
    @count =  check_required_opt(:count,'--count')
    @hot_add_enabled =  check_required_opt(:hot_add_enabled,'--hot-add-enabled')
    @hot_remove_enabled =  check_required_opt(:hot_remove_enabled,'--hot-remove-enabled')
  end

  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @vm_svc = VCENTER_VM_CPU_CLASS.new(service_manager.vapi_config)
  end
  
  def execute
    log.info "Getting the VM Details #{vm_name}"
    @vm_id = VMHelper.get_vm(service_manager.vapi_config, @vm_name)
    @vm_cpu_info_original = @vm_svc.get(vm_id)
    log.info "Number of CPU cores #{@vm_cpu_info_original.count}"
    log.info "Number if cores per socket #{@vm_cpu_info_original.cores_per_socket}"
    log.info "Hot add enabled #{@vm_cpu_info_original.hot_add_enabled}"
    log.info "Hot remove enabled #{@vm_cpu_info_original.hot_remove_enabled}"
    @cpu_specs = VCENTER_VM_CPU_UPDATE_SPEC.new(:cores_per_socket => @cores_per_socket.to_i, :count => @count.to_i, :hot_add_enabled => (@hot_add_enabled == "true") ? true : false, :hot_remove_enabled => (@hot_remove_enabled == "true") ? true : false) 
    @vm_cpu_info = @vm_svc.get(vm_id)
    log.info "*** Updating the CPU-related settings of virtual machine #{@vm_name} ***" 
    @vm_svc.update(vm_id,@cpu_specs)
    @vm_cpu_info = @vm_svc.get(vm_id)
    log.info "Number of CPU cores #{@vm_cpu_info.count}"
    log.info "Number if cores per socket #{@vm_cpu_info.cores_per_socket}"
    log.info "Hot add enabled #{@vm_cpu_info.hot_add_enabled}"
    log.info "Hot remove enabled #{@vm_cpu_info.hot_remove_enabled}"
  end

  #Restores to previous values
  def cleanup
    log.info "Restoring ==> CPU cores #{@vm_cpu_info_original.count}"
    log.info "Restoring ==> cores per socket #{@vm_cpu_info_original.cores_per_socket}"
    log.info "Restoring ==> Hot add enabled #{@vm_cpu_info_original.hot_add_enabled}"
    log.info "Restoring ==> Hot remove enabled #{@vm_cpu_info_original.hot_remove_enabled}"
    @cpu_specs_original = VCENTER_VM_CPU_UPDATE_SPEC.new(:cores_per_socket => @vm_cpu_info_original.cores_per_socket.to_i, :count => @vm_cpu_info_original.count.to_i, :hot_add_enabled => (@vm_cpu_info_original.hot_add_enabled == "true") ? true : false, :hot_remove_enabled => (@vm_cpu_info_original.hot_remove_enabled == "true") ? true : false) 
    @vm_svc.update(vm_id,@cpu_specs_original)
  end
end

# main: quick self tester
if __FILE__ == $0
  CPUConfiguration.new.main()
end