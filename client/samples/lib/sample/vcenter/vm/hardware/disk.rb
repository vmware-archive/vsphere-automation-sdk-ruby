# Copyright 2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT
require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/vm_helper'

# A sample to demonstrate the usage of Disk Configurations of a VM
class DiskConfiguration < SampleBase
  VCENTER_HARDWARE_MODULE = Com::Vmware::Vcenter::Vm::Hardware
  VCENTER_HARDWARE_DISK_CLASS = VCENTER_HARDWARE_MODULE::Disk

  HARDWARE_ADAPTER_MODULE = VCENTER_HARDWARE_MODULE::Adapter
  HARDWARE_ADAPTER_SATA_CLASS = HARDWARE_ADAPTER_MODULE::Sata

  TITLE = 'Disk Configurations of a VM'
  DESCRIPTION = <<EOL
  Demonstrates the various Disk Operations available for a VM

  Sample Prerequisites:
  i.  An existing VM. (vm name)
  ii. Existing vmdks, residing in any of the accessible datastore (This is optional for 'Add Exisiting vmdks as disks' scenarios)
EOL

  # sample attributes
  attr_reader :service_manager, :vm_name, :vm_id, :disk_svc,
              :disks_to_delete, :sata_svc, :sata, :datastore_path,
              :existing_vmdk_location_to_default,
              :existing_vmdk_location_to_scsi, :existing_vmdk_location_to_scsi_bus

  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
    option_parser.on('-v', '--vm-name [NAME] Mandatory', 'Name of the existing VM where disks can be added/removed') do |value|
      options[:vm_name] = value
    end
    option_parser.on('-d', '--existing-vmdk-location-to-default [PATH] Optional', "Path to the existing vmdk to be added as default disk
                    eg: -d "'[Shared_NFS_Volume] Ruby_Tests/attach-default.vmdk'" ") do |value|
      options[:existing_vmdk_location_to_default] = value
    end
    option_parser.on('-s', '--existing-vmdk-location-to-scsi [PATH] Optional', "Path to the existing vmdk to be added as scsi disk
                    eg: -s "'[Shared_NFS_Volume] Ruby_Tests/attach-scsi.vmdk'" ") do |value|
      options[:existing_vmdk_location_to_scsi] = value
    end
    option_parser.on('-b', '--existing-vmdk-location-to-scsi-bus [PATH] Optional', "Path to the existing vmdk to be added to a specific bus and unit
                     eg: -s "'[Shared_NFS_Volume] Ruby_Tests/attach-scsi.vmdk'" " ) do |value|
      options[:existing_vmdk_location_to_scsi_bus] = value
    end
  end

  def check_options
    @vm_name = check_required_opt(:vm_name, '--vm-name')
    @existing_vmdk_location_to_default = options[:existing_vmdk_location_to_default]
    @existing_vmdk_location_to_scsi = options[:existing_vmdk_location_to_scsi]
    @existing_vmdk_location_to_scsi_bus = options[:existing_vmdk_location_to_scsi_bus]
  end

  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @disk_svc = VCENTER_HARDWARE_DISK_CLASS.new(service_manager.vapi_config)
    @sata_svc = HARDWARE_ADAPTER_SATA_CLASS.new(service_manager.vapi_config)
    @vm_id = VMHelper.get_vm(service_manager.vapi_config, @vm_name)
    unless vm_id
      raise "Sample requires an existing vm with name #{vm_name}. '
                        'Please create the vm first."
    end
  end

  def execute
    @GiB = 1024 * 1024 * 1024
    # Define a array to store the disk_ids. This is required as part of cleanup operation
    @disks_to_delete = []
    log.info "Using VM #{vm_name} for the Disk Configuration"
    disk_summaries = @disk_svc.list(vm_id)
    log.info "The disk summary of the VM #{vm_name} with vmid #{vm_id} is #{disk_summaries.to_yaml}"
    disk_summaries.each do |disk_summary|
      disk = disk_summary.disk
      disk_info = disk_svc.get(vm_id, disk)
      log.info "Original SATA Adapter Information for the vm #{vm_name} with the sata-id #{disk} is #{disk_info.to_yaml}"
    end
    log.info 'Example: Create a new Disk using default settings'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get #{vm_name} #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info "Example: Create a new Disk specifying the capacity in bytes
                   and that the flat format (ie. SeSparse format) should be used"
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 10 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get #{vm_name} #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a new SCSI Disk'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SCSI,
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 10 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new SCSI disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get #{vm_name} #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a new SCSI Disk on a specific bus'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SCSI,
      'scsi' => VCENTER_HARDWARE_MODULE::ScsiAddressSpec.new('bus' => 0),
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 5 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new SCSI disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a new SCSI Disk on a specific bus and unit number'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SCSI,
      'scsi' => VCENTER_HARDWARE_MODULE::ScsiAddressSpec.new('bus' => 0, 'unit' => 10),
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 5 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new SCSI disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a SATA controller'
    sata_create_spec = HARDWARE_ADAPTER_SATA_CLASS::CreateSpec.new
    @sata = sata_svc.create(vm_id, sata_create_spec)
    log.info "vm.hardware.adapter.Sata.create #{vm_name} #{sata.to_yaml}"

    log.info 'Example: Create a new SATA disk'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SATA,
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 5 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new SATA disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a new SATA disk on a specific bus'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SATA,
      'sata' => VCENTER_HARDWARE_MODULE::SataAddressSpec.new('bus' => 0),
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 5 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new SATA disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a new SATA disk on a specific bus and specific unit'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SATA,
      'sata' => VCENTER_HARDWARE_MODULE::SataAddressSpec.new('bus' => 0, 'unit' => 20),
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 5 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new SATA disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a new IDE disk'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::IDE,
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 5 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new IDE disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"

    log.info 'Example: Create a new IDE disk on a specific bus and specific unit'
    disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
      'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::IDE,
      'ide' => VCENTER_HARDWARE_MODULE::IdeAddressSpec.new(FALSE, FALSE),
      'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('capacity' => 5 * @GiB)
    )
    disk = disk_svc.create(vm_id, disk_create_spec)
    log.info "Created a new IDE disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
    disks_to_delete << disk
    disk_info = disk_svc.get(vm_id, disk)
    log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"

    unless existing_vmdk_location_to_default.nil?
      log.info 'Example: Attach an existing VMDK using the default bus and unit'
      log.info "existing_vmdk_location_to_default #{existing_vmdk_location_to_default}"
      disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
        'backing' => VCENTER_HARDWARE_DISK_CLASS::BackingSpec.new('type' => VCENTER_HARDWARE_DISK_CLASS::BackingType::VMDK_FILE,
                                                                  'vmdk_file' => existing_vmdk_location_to_default)
      )
      disk = disk_svc.create(vm_id, disk_create_spec)
      log.info "Attached an exisiting VMDK disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
      disks_to_delete << disk
      disk_info = disk_svc.get(vm_id, disk)
      log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"
    end

    unless existing_vmdk_location_to_scsi.nil?
      log.info 'Example: Attach an existing VMDK as a SCSI Disk'
      disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
        'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SCSI,
        'backing' => VCENTER_HARDWARE_DISK_CLASS::BackingSpec.new('type' => VCENTER_HARDWARE_DISK_CLASS::BackingType::VMDK_FILE,
                                                                  'vmdk_file' => existing_vmdk_location_to_scsi)
      )
      disk = disk_svc.create(vm_id, disk_create_spec)
      log.info "Attached an existing VMDK disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
      disks_to_delete << disk
      disk_info = disk_svc.get(vm_id, disk)
      log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"
    end

    unless existing_vmdk_location_to_scsi_bus.nil?
      log.info "Example: Attach an existing VMDK as a SCSI disk 
                to a specific bus and specific unit"
      disk_create_spec = VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new(
        'type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SCSI,
        'scsi' => VCENTER_HARDWARE_MODULE::ScsiAddressSpec.new('bus' => 0, 'unit' => 11),
        'backing' => VCENTER_HARDWARE_DISK_CLASS::BackingSpec.new('type' => VCENTER_HARDWARE_DISK_CLASS::BackingType::VMDK_FILE,
                                                                  'vmdk_file' => existing_vmdk_location_to_scsi_bus)
      )
      disk = disk_svc.create(vm_id, disk_create_spec)
      log.info "Attached an existing VMDK disk #{disk} with the configuration #{disk_create_spec.to_yaml}"
      disks_to_delete << disk
      disk_info = disk_svc.get(vm_id, disk)
      log.info "vm.hardware.disk.get '#{vm_name}' #{disk.to_yaml}->#{disk_info.to_yaml}"
    end
  end

  def cleanup
    log.info "Cleanup: Delete the VM Disks that were added #{disks_to_delete}"
    disks_to_delete.each do |disk|
      log.info "Deleting the disk #{disk}  of the VM name #{vm_name} with ID '#{vm_id}'"
      disk_svc.delete(vm_id, disk)
    end
    disk_summaries = disk_svc.list(vm_id)
    log.info "Disk Summary after deleting the disks added #{disk_summaries.to_yaml}"
    log.info 'Cleanup: Remove SATA controller'
    sata_svc.delete(vm_id, sata)
  end
end
# main: quick self tester
DiskConfiguration.new.main if $PROGRAM_NAME == __FILE__
