# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT
require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/network_helper'
require 'sample/vcenter/helper/vm_placement_helper'
require 'sample/vcenter/helper/vm_helper'
require 'pp'

# A CreateBasic VM sample which demonstrates creating a VM with basic configurations
class CreateBasicVM < SampleBase
  VCENTER_MODULE = Com::Vmware::Vcenter
  VCENTER_VM_CLASS= VCENTER_MODULE::VM

  VCENTER_HARDWARE_MODULE = Com::Vmware::Vcenter::Vm::Hardware
  VCENTER_HARDWARE_DISK_CLASS = VCENTER_HARDWARE_MODULE::Disk
  VCENTER_HARDWARE_ETHERNET_CLASS = VCENTER_HARDWARE_MODULE::Ethernet
  VCENTER_HARDWARE_BOOT_MODULE = Com::Vmware::Vcenter::Vm::Hardware::Boot
  VCENTER_HARDWARE_BOOT_DEVICE_CLASS = VCENTER_HARDWARE_BOOT_MODULE::Device

  VCENTER_VM_MODULE = Com::Vmware::Vcenter::Vm
  VCENTER_VM_GUESTOS_CLASS = VCENTER_VM_MODULE::GuestOS
  VM_POWER_CLASS = VCENTER_VM_MODULE::Power

  TITLE = 'Create Basic VM'
  DESCRIPTION = <<EOL
  Demonstrates how to create a basic VM with following configuration:
  2 disks, 1 nic

  Sample Prerequisites:
      - datacenter
      - vm folder
      - datastore
      - standard switch portgroup-name
      - vm name
  Step 1: Create a VM.

  Additional steps when clearData flag (-X) option is specified
  Step 2: Delete the VM created in Step 1
EOL
  #sample attributes
  attr_reader :service_manager, :datacenter_name, :folder_name,
              :datastore_name, :vm_svc, :vm_name , :vm_power_svc, :standard_portgroup_name
  # Constructs a new instance.
  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
    option_parser.on("-v", "--vm-name NAME","Name of the VM to be created") do |value|
      options[:vm_name] =  value
    end
    option_parser.on("-s", "--datastore-name ", "Name of the Datastore in which VM should be created") do |value|
      options[:datastore_name] =  value
    end
    option_parser.on("-d", "--datacenter-name ", "Name of the Datacenter") do |value|
      options[:datacenter_name] =  value
    end
    option_parser.on("-f", "--folder-name ", "Name of the VM Folder") do |value|
      options[:folder_name] =  value
    end
    option_parser.on("-g", "--standard-portgroup-name ", "Name of the Network Standard Portgroup") do |value|
      options[:standard_portgroup_name] =  value
    end
  end

  def check_options
    @vm_name = check_required_opt(:vm_name,'--vm-name')
    @datacenter_name = check_required_opt(:datacenter_name,'--datacenter-name')
    @datastore_name = check_required_opt(:datastore_name,'--datastore-name')
    @folder_name = check_required_opt(:folder_name,'--folder-name')
    @standard_portgroup_name = check_required_opt(:standard_portgroup_name,'--standard-portgroup-name')
  end

  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @vm_svc = VCENTER_VM_CLASS.new(service_manager.vapi_config)
    @vm_power_svc = VM_POWER_CLASS.new(service_manager.vapi_config)
  end

  #Create a basic VM with 2 disks, 1 NIC connected to Standard Network and Specified boot devices order
  def execute
    log.info 'Creating the Basic VM'
    placement_spec =  VMPlacementHelper.get_placementspec_vm(service_manager.vapi_config, datacenter_name, folder_name, datastore_name)
    standard_network = NetworkHelper.get_standard_network_mapping(service_manager.vapi_config, @datacenter_name, standard_portgroup_name)
    boot_disk = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new('type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SCSI,
                                                            'scsi' => VCENTER_HARDWARE_MODULE::ScsiAddressSpec.new('bus'=>0,'unit'=>0),
                                                            'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new() )
    data_disk = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new('new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new())
    ethernet_nic_0 = VCENTER_HARDWARE_ETHERNET_CLASS::CreateSpec.new('start_connected' => true,
                                                                     'backing' =>  VCENTER_HARDWARE_ETHERNET_CLASS::BackingSpec.new(
                                                                     'type' => VCENTER_HARDWARE_ETHERNET_CLASS::BackingType::STANDARD_PORTGROUP,
                                                                     'network' => standard_network))
    boot_device_order = [VCENTER_HARDWARE_BOOT_DEVICE_CLASS::EntryCreateSpec.new('type' => VCENTER_HARDWARE_BOOT_DEVICE_CLASS::Type::ETHERNET),
                         VCENTER_HARDWARE_BOOT_DEVICE_CLASS::EntryCreateSpec.new('type' => VCENTER_HARDWARE_BOOT_DEVICE_CLASS::Type::DISK)]
    vm_create_spec = VCENTER_VM_CLASS::CreateSpec.new('name' => vm_name,
                                                      'guest_OS' => VCENTER_VM_GUESTOS_CLASS::WINDOWS_8_64,
                                                      'placement' => placement_spec,
                                                      'disks' => [boot_disk, data_disk],
                                                      'nics' => [ethernet_nic_0],
                                                      'boot_devices' => boot_device_order)
    log.info 'The CreateVM Spec is '
    #Pretty print the create spec of the VM.
    pp vm_create_spec
    vm_id = vm_svc.create(vm_create_spec)
    log.info "Created vm #{vm_name} with the VM Identifier #{vm_id}"
  end

  #Delete the VM if Cleanup option is specified
  def cleanup
    vm_id = VMHelper.get_vm(service_manager.vapi_config, vm_name)
    status = vm_power_svc.get(vm_id)
    if status.state == VM_POWER_CLASS::State::POWERED_ON ||
       status.state == VM_POWER_CLASS::State::SUSPENDED
      log.info "The VM  #{vm_name} would be powered OFF"
      vm_power_svc.stop(vm_id)
    end
    log.info "Cleanup :: Deleting the VM #{vm_name}"
    vm_svc.delete(vm_id)
  end
end

# main: quick self tester
if __FILE__ == $0
  CreateBasicVM.new.main()
end
