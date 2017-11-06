# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT
require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/vm_helper'

# A sample to demonstrate the Memory Configuration of a VM
class MemoryConfiguration < SampleBase
  VCENTER_HARDWARE_MODULE = Com::Vmware::Vcenter::Vm::Hardware
  VCENTER_HARDWARE_MEMORY_CLASS = VCENTER_HARDWARE_MODULE::Memory

  TITLE = 'Memory Configurations of a VM'
  DESCRIPTION = <<EOL
  Demonstrates how to configure the memory related settings of a virtual machine.

  Sample Prerequisites:
  The sample needs an existing VM.
  -vm-name

  Additional steps when clearData flag (-X) option is specified
  Revert the Memory configuration to original state
EOL

  # sample attributes
  attr_reader :service_manager, :vm_name, :vm_id, :memory_svc,
              :memory_info, :GiB, :orig_memory_info

  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
    option_parser.on('-v', '--vm-name NAME', 'Name of the VM') do |value|
      options[:vm_name] = value
    end
  end

  def check_options
    @vm_name = check_required_opt(:vm_name, '--vm-name')
  end

  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @memory_svc = VCENTER_HARDWARE_MEMORY_CLASS.new(service_manager.vapi_config)
    @vm_id = VMHelper.get_vm(service_manager.vapi_config, @vm_name)
    unless vm_id
      raise "Sample requires an existing vm with name #{vm_name}. '
                        'Please create the vm first."
    end
  end

  def execute
    @GiB = 1024
    log.info "Using VM #{vm_name} for the Memory Configuration"
    @orig_memory_info = memory_svc.get(vm_id)
    log.info "Original Memory Information of the vm #{vm_name}  #{orig_memory_info.to_yaml}"

    log.info 'Example: Update memory size_mib field of Memory configuration'
    update_spec = VCENTER_HARDWARE_MEMORY_CLASS::UpdateSpec.new('size_MiB' => 8 * @GiB)
    memory_svc.update(vm_id, update_spec)
    # Get new Memory Configuration after updating the memory size
    @memory_info = memory_svc.get(vm_id)
    log.info "vm.hardware.Memory.get #{memory_info.to_yaml}"

    log.info 'Example: Update hot_add_enabled field of Memory configuration'
    update_spec = VCENTER_HARDWARE_MEMORY_CLASS::UpdateSpec.new('hot_add_enabled' => TRUE)
    memory_svc.update(vm_id, update_spec)
    # Get new Memory Configuration after updating the hot_add_enabled field
    memory_info = memory_svc.get(vm_id)
    log.info "vm.hardware.Memory.get #{memory_info.to_yaml}"
  end

  def cleanup
    log.info 'Cleanup :: Revert Original Memory Configuration'
    update_spec = VCENTER_HARDWARE_MEMORY_CLASS::UpdateSpec.new(
      'size_MiB' => orig_memory_info.size_MiB,
      'hot_add_enabled' => orig_memory_info.hot_add_enabled
    )
    memory_svc.update(vm_id, update_spec)
    # Get the reverted Memory Configuration(Original)
    memory_info = memory_svc.get(vm_id)
    log.info "vm.hardware.Memory.get #{memory_info.to_yaml}"
  end
end

# main: quick self tester
MemoryConfiguration.new.main if $PROGRAM_NAME == __FILE__
