# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT
require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/vm_helper'

class SATAConfiguration < SampleBase
  HARDWARE_ADAPTER_MODULE = Com::Vmware::Vcenter::Vm::Hardware::Adapter
  HARDWARE_ADAPTER_SATA_CLASS = HARDWARE_ADAPTER_MODULE::Sata
  TITLE = 'SATA Configurations of a VM'
  DESCRIPTION = <<EOL
  Demonstrates how to configure virtual SATA adapters of a virtual machine.

  Sample Prerequisites:
  The sample needs an existing VM.
  - vm name
EOL

  # sample attributes
  attr_reader :service_manager, :vm_name, :vm_id, :sata_svc, :satas_to_delete

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
    @sata_svc = HARDWARE_ADAPTER_SATA_CLASS.new(service_manager.vapi_config)
  end

  def execute
    @vm_id = VMHelper.get_vm(service_manager.vapi_config, @vm_name)
    unless vm_id
      raise "Sample requires an existing vm with name #{vm_name}. '
                        'Please create the vm first."
    end
    #Get Information about the Existing/Original SATA adapters of the VM
    log.info "Using VM #{vm_name} for the SATA Configuration"
    sata_summaries = sata_svc.list(vm_id)
    (sata_summaries).each do |sata_summary|
      sata = sata_summary.adapter
      sata_info = sata_svc.get(vm_id, sata)
      log.info "Original SATA Adapter Information for the vm #{vm_name} with the sata-id #{sata} is #{sata_info.to_yaml}"
    end

    #Create a SATA adapter with the Default Configuration
    log.info "# Example: Create SATA adapter with default configuration"
    sata_create_spec = HARDWARE_ADAPTER_SATA_CLASS::CreateSpec.new()
    sata = sata_svc.create(vm_id, sata_create_spec)
    log.info "The sata controller created for the vm #{vm_name} is Sata #{sata}"
    @satas_to_delete = Array.new
    satas_to_delete << sata

    #Create a SATA adapter with the Custom Configuration, specifc bus=>2
    log.info "# Example : Create SATA adapter with a specific bus id"
    sata_create_spec = HARDWARE_ADAPTER_SATA_CLASS::CreateSpec.new('bus' => 2)
    sata = sata_svc.create(vm_id, sata_create_spec)
    log.info "The sata controller created for the vm #{vm_name} is Sata #{sata}"
    satas_to_delete << sata

    sata_summaries = sata_svc.list(vm_id)
    log.info "The Updated SATA adapters in the VM are #{sata_summaries.to_yaml}"
  end

  #Delete the SATA adapter created if the cleanup option is specified
  def cleanup()
    log.info "Cleanup: Delete the VM SATA adapters that were added #{satas_to_delete}"
    (satas_to_delete).each do |sata|
      log.info "Deleting the SATA adapter #{sata} of the VM #{vm_name} , ID '#{vm_id}'"
      sata_svc.delete(vm_id, sata)
    end
    sata_summaries = sata_svc.list(vm_id)
    log.info "Sata Summary after deleting the SATA adapters is #{sata_summaries.to_yaml}"
  end
end

# main: quick self tester
if __FILE__ == $0
  SATAConfiguration.new.main()
end
