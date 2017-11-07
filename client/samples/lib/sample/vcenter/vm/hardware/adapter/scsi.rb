# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT
require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/vm_helper'

class SCSIConfiguration < SampleBase
  HARDWARE_ADAPTER_MODULE = Com::Vmware::Vcenter::Vm::Hardware::Adapter
  HARDWARE_ADAPTER_SCSI_CLASS = HARDWARE_ADAPTER_MODULE::Scsi
  TITLE = 'SCSI Configurations of a VM'
  DESCRIPTION = <<EOL
  Demonstrates how to configure virtual SCI adapters of a virtual machine.

  Sample Prerequisites:
  The sample needs an existing VM.
  - vm name
EOL

  # sample attributes
  attr_reader :service_manager, :vm_name,:vm_id, :scsi_svc, :scsi_to_delete

  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
    option_parser.on("-v", "--vm-name NAME","Name of the VM") do |value|
    options[:vm_name] =  value
    end 
  end
  
  def check_options
    @vm_name = check_required_opt(:vm_name,'--vm-name')
  end

  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @scsi_svc = HARDWARE_ADAPTER_SCSI_CLASS.new(service_manager.vapi_config)
  end

  def execute
    @vm_id = VMHelper.get_vm(service_manager.vapi_config, @vm_name)
    unless vm_id
      raise "Sample requires an existing vm with name #{vm_name}. '
                        'Please create the vm first."
    end
    #Get Information about the Existing/Original SCSI adapters of the VM
    log.info "Using VM #{vm_name} for the SCSI Configuration"
    scsi_summaries = scsi_svc.list(vm_id)
    (scsi_summaries).each do |scsi_summary|
      scsi = scsi_summary.adapter
      scsi_info = scsi_svc.get(vm_id, scsi)
      log.info "Original SCSI Adapter Information for the vm #{vm_name} , scsi-id #{scsi} is #{scsi_info.to_yaml}"
    end

    #Create a SCSI adapter with the Default Configuration
    log.info "# Example: Create SCSI adapter with default configuration"
    scsi_create_spec = HARDWARE_ADAPTER_SCSI_CLASS::CreateSpec.new()
    scsi = scsi_svc.create(vm_id, scsi_create_spec)
    log.info "The scsi controller created for the vm #{vm_name} is Scsi #{scsi}"
    @scsi_to_delete = Array.new
    scsi_to_delete << scsi
    scsi_info = scsi_svc.get(vm_id, scsi)
    log.info "vm.hardware.adapter.Scsi.get #{scsi_info.to_yaml}"

    #Create a SCSI Adapter with custom configuration
    log.info "Example : Create SCSI adapter with a specific bus id and bus sharing as VIRTUAL"
    scsi_create_spec = HARDWARE_ADAPTER_SCSI_CLASS::CreateSpec.new('bus' => 2,
                                                                   'sharing' => HARDWARE_ADAPTER_SCSI_CLASS::Sharing::VIRTUAL)
    scsi = scsi_svc.create(vm_id, scsi_create_spec)
    log.info "The scsi controller created for the vm #{vm_name} is Scsi #{scsi}"
    scsi_to_delete << scsi
    scsi_info = scsi_svc.get(vm_id, scsi)
    log.info "vm.hardware.adapter.Scsi.get #{scsi_info.to_yaml}"
    
    #Update the SCSI Adpater::Sharing Configuration created above
    log.info "Example: Update SCSI adapter by setting sharing=False"
    scsi_update_spec = HARDWARE_ADAPTER_SCSI_CLASS::UpdateSpec.new('sharing' => HARDWARE_ADAPTER_SCSI_CLASS::Sharing::NONE)
    scsi_svc.update(vm_id, scsi, scsi_update_spec)
    scsi_info = scsi_svc.get(vm_id, scsi)
    log.info "vm.hardware.adapter.Scsi.get #{scsi_info.to_yaml}"

    #List all SCSI Adapters of a VM
    scsi_summaries = scsi_svc.list(vm_id)
    log.info "The current SCSI adapters in the VM are #{scsi_summaries.to_yaml}"
  end

  #Delete the SCSI adapter if the cleanup option is specified
  def cleanup()
    log.info "Cleanup: Delete the VM SCSI adapters that were added #{scsi_to_delete}"
    (scsi_to_delete).each do |scsi|
      log.info "Deleting the SCSI adapter #{scsi} of the VM #{vm_name} , ID '#{vm_id}' "
      scsi_svc.delete(vm_id, scsi)
    end
    scsi_summaries = scsi_svc.list(vm_id)
    log.info "Scsi Summary after deleting the sample created SCSI adapters is #{scsi_summaries.to_yaml}"
  end
end

# main: quick self tester
if __FILE__ == $0
  SCSIConfiguration.new.main()
end
