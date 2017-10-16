# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT
require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/network_helper'
require 'sample/vcenter/helper/vm_placement_helper'
require 'sample/vcenter/helper/vm_helper'

# A CreateBasic VM sample which demonstrates creating a VM with basic configurations
class CreateExhaustiveVM < SampleBase
  VCENTER_MODULE = Com::Vmware::Vcenter
  VCENTER_VM_CLASS = VCENTER_MODULE::VM

  VCENTER_HARDWARE_MODULE = Com::Vmware::Vcenter::Vm::Hardware
  VCENTER_HARDWARE_DISK_CLASS = VCENTER_HARDWARE_MODULE::Disk
  VCENTER_HARDWARE_ETHERNET_CLASS = VCENTER_HARDWARE_MODULE::Ethernet
  VCENTER_HARDWARE_CPU_CLASS = VCENTER_HARDWARE_MODULE::Cpu
  VCENTER_HARDWARE_MEMORY_CLASS = VCENTER_HARDWARE_MODULE::Memory
  VCENTER_HARDWARE_CDROM_CLASS = VCENTER_HARDWARE_MODULE::Cdrom
  VCENTER_HARDWARE_SERIAL_CLASS = VCENTER_HARDWARE_MODULE::Serial
  VCENTER_HARDWARE_PARALLEL_CLASS = VCENTER_HARDWARE_MODULE::Parallel
  VCENTER_HARDWARE_FLOPPY_CLASS = VCENTER_HARDWARE_MODULE::Floppy
  VCENTER_HARDWARE_BOOTSERVICE_CLASS = VCENTER_HARDWARE_MODULE::BootService

  VCENTER_HARDWARE_BOOT_MODULE = Com::Vmware::Vcenter::Vm::Hardware::Boot
  VCENTER_HARDWARE_BOOT_DEVICE_CLASS = VCENTER_HARDWARE_BOOT_MODULE::Device

  VCENTER_VM_MODULE = Com::Vmware::Vcenter::Vm
  VCENTER_VM_GUESTOS_CLASS = VCENTER_VM_MODULE::GuestOS
  VCENTER_VM_HARDWARESERVICE_CLASS = VCENTER_VM_MODULE::HardwareService
  VM_POWER_CLASS = VCENTER_VM_MODULE::Power

  TITLE = 'Create Exhaustive VM'
  DESCRIPTION = <<EOL
  Demonstrates how to create a Exhaustive VM with following configuration:
  * Hardware Version = VMX_11 , Guest OS : WINDOWS_8_64
  * CPU (count = 2, coresPerSocket = 2, hotAddEnabled = false,
  hotRemoveEnabled = false)
  * Memory (size_mib = 2 GB, hotAddEnabled = true)
  * 3 Disks and specify each of the HBAs and the unit numbers
    * (capacity=40 GB, name=<some value>, spaceEfficient=true)
    * (capacity=10GB, name=data1)
    * (capacity=10GB, name=data2)
  * Specify 2 ethernet adapters, one using a Standard Portgroup backing and
  the
    other using a DISTRIBUTED_PORTGROUP networking backing.
    * nic1: Specify Ethernet (macType=MANUAL, macAddress=<some value>)
    * nic2: Specify Ethernet (macType=GENERATED)
  * 1 CDROM (type=ISO_FILE, file="os.iso", startConnected=true)
  * 1 Serial Port (type=NETWORK_SERVER, file="tcp://localhost/16000",
  startConnected=true)
  * 1 Parallel Port (type=HOST_DEVICE, startConnected=false)
  * 1 Floppy Drive (type=CLIENT_DEVICE)
  * Boot, type=BIOS
  * BootDevice order: CDROM, DISK, ETHERNET

  Sample Prerequisites:
      - datacenter
      - vm folder
      - datastore
      - standard switch network
      - distributed switch network
      - iso datastore path
      - serial port network location
  Step 1: Create a VM.

  Additional steps when clearData flag (-X) option is specified
  Step 2: Delete the VM created in Step 1
EOL
  # sample attributes
  attr_reader :service_manager, :datacenter_name, :folder_name,
              :datastore_name, :vm_svc, :vm_name, :vm_power_svc, :standard_portgroup_name, :dv_portgroup_name, :GiB, :iso_datastore_path,
              :serial_port_network_location, :GiBMemory
  # Constructs a new instance.
  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
    option_parser.on('-v', '--vm-name NAME', 'Name of the VM to be created') do |value|
      options[:vm_name] = value
    end
    option_parser.on('-s', '--datastore-name ', 'Name of the Datastore in which VM should be created') do |value|
      options[:datastore_name] = value
    end
    option_parser.on('-d', '--datacenter-name ', 'Name of the Datacenter') do |value|
      options[:datacenter_name] = value
    end
    option_parser.on('-f', '--folder-name ', 'Name of the VM Folder') do |value|
      options[:folder_name] = value
    end
    option_parser.on('-a', '--standard-portgroup-name ', 'Name of the Network Standard Portgroup') do |value|
      options[:standard_portgroup_name] = value
    end
    option_parser.on('-z', '--dv-portgroup-name ', 'Name of the Network Distributed Portgroup') do |value|
      options[:dv_portgroup_name] = value
    end
    option_parser.on('-i', '--iso-datastore-path ', "Path to the ISO file in a datastore
                      eg:"'[Shared_NFS_Volume] Sample_Backends/iso/photonOS.iso'"") do |value|
      options[:iso_datastore_path] = value
    end
    option_parser.on('-t', '--serial-port-network-location ', "Path to the Serial Port Location
                                eg :'tcp://localhost:16000' ") do |value|
      options[:serial_port_network_location] = value
    end
  end

  def check_options
    @vm_name = check_required_opt(:vm_name, '--vm-name')
    @datacenter_name = check_required_opt(:datacenter_name, '--datacenter-name')
    @datastore_name = check_required_opt(:datastore_name, '--datastore-name')
    @folder_name = check_required_opt(:folder_name, '--folder-name')
    @standard_portgroup_name = check_required_opt(:standard_portgroup_name, '--standard-portgroup-name')
    @dv_portgroup_name = check_required_opt(:dv_portgroup_name, '--dv-portgroup-name')
    @iso_datastore_path = check_required_opt(:iso_datastore_path, '--iso-datastore-path')
    @serial_port_network_location = check_required_opt(:serial_port_network_location, '--serial-port-network-location')
  end

  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @vm_svc = VCENTER_VM_CLASS.new(service_manager.vapi_config)
    @vm_power_svc = VM_POWER_CLASS.new(service_manager.vapi_config)
  end

  def execute
    @GiB = 1024 * 1024 * 1024
    @GiBMemory = 1024
    log.info 'Creating the Exhaustive VM'
    placement_spec = VMPlacementHelper.get_placementspec_vm(service_manager.vapi_config, datacenter_name, folder_name, datastore_name)
    log.info "The placement spec for the vm is #{placement_spec.to_yaml}"
    standard_network = NetworkHelper.get_standard_network_mapping(service_manager.vapi_config, datacenter_name, standard_portgroup_name)
    log.info "standard_network Network ID #{standard_network}"
    distributed_network = NetworkHelper.get_distributed_network_mapping(service_manager.vapi_config, datacenter_name, dv_portgroup_name)
    log.info "Distributed Network ID #{distributed_network}"
    cpu_spec = VCENTER_HARDWARE_CPU_CLASS::UpdateSpec.new(
      'count' => 2,
      'cores_per_socket' => 1,
      'hot_add_enabled' => FALSE,
      'hot_remove_enabled' => FALSE
    )
    mem_spec = VCENTER_HARDWARE_MEMORY_CLASS::UpdateSpec.new(
      'size_MiB' => 2 * @GiBMemory,
      'hot_add_enabled' => TRUE
    )
    disks_spec = [
      VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new('type' => VCENTER_HARDWARE_DISK_CLASS::HostBusAdapterType::SCSI,
                                                  'scsi' => VCENTER_HARDWARE_MODULE::ScsiAddressSpec.new('bus' => 0, 'unit' => 0),
                                                  'new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('name' => 'boot',
                                                                                                                'capacity' => 40 * @GiB)),
      VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new('new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('name' => 'data1',
                                                                                                                'capacity' => 10 * @GiB)),
      VCENTER_HARDWARE_DISK_CLASS::CreateSpec.new('new_vmdk' => VCENTER_HARDWARE_DISK_CLASS::VmdkCreateSpec.new('name' => 'data2',
                                                                                                                'capacity' => 10 * @GiB))
    ]
    ethernets_spec = [
      VCENTER_HARDWARE_ETHERNET_CLASS::CreateSpec.new('start_connected' => true,
                                                      'mac_type' => VCENTER_HARDWARE_ETHERNET_CLASS::MacAddressType::MANUAL,
                                                      'mac_address' => '11:23:88:13:28:34',
                                                      'backing' =>  VCENTER_HARDWARE_ETHERNET_CLASS::BackingSpec.new(
                                                        'type' => VCENTER_HARDWARE_ETHERNET_CLASS::BackingType::STANDARD_PORTGROUP,
                                                        'network' => standard_network
                                                      )),
      VCENTER_HARDWARE_ETHERNET_CLASS::CreateSpec.new('start_connected' => true,
                                                      'mac_type' => VCENTER_HARDWARE_ETHERNET_CLASS::MacAddressType::GENERATED,
                                                      'backing' =>  VCENTER_HARDWARE_ETHERNET_CLASS::BackingSpec.new(
                                                        'type' => VCENTER_HARDWARE_ETHERNET_CLASS::BackingType::DISTRIBUTED_PORTGROUP,
                                                        'network' => distributed_network
                                                      ))
    ]
    cdrom_spec = [
      VCENTER_HARDWARE_CDROM_CLASS::CreateSpec.new(
        'start_connected' => TRUE,
        'backing' => VCENTER_HARDWARE_CDROM_CLASS::BackingSpec.new(
          'type' => VCENTER_HARDWARE_CDROM_CLASS::BackingType::ISO_FILE,
          'iso_file' => iso_datastore_path
        )
      )
    ]
    serial_ports_spec = [
      VCENTER_HARDWARE_SERIAL_CLASS::CreateSpec.new(
        'start_connected' => FALSE,
        'backing' => VCENTER_HARDWARE_SERIAL_CLASS::BackingSpec.new(
          'type' => VCENTER_HARDWARE_SERIAL_CLASS::BackingType::NETWORK_SERVER,
          'network_location' => serial_port_network_location
        )
      )
    ]
    parallel_ports_spec = [
      VCENTER_HARDWARE_PARALLEL_CLASS::CreateSpec.new(
        'start_connected' => FALSE,
        'backing' => VCENTER_HARDWARE_PARALLEL_CLASS::BackingSpec.new(
          'type' => VCENTER_HARDWARE_PARALLEL_CLASS::BackingType::HOST_DEVICE
        )
      )
    ]
    floppies_spec = [
      VCENTER_HARDWARE_FLOPPY_CLASS::CreateSpec.new(
        'backing' => VCENTER_HARDWARE_FLOPPY_CLASS::BackingSpec.new(
          'type' => VCENTER_HARDWARE_FLOPPY_CLASS::BackingType::CLIENT_DEVICE
        )
      )
    ]
    boot_spec = VCENTER_HARDWARE_BOOTSERVICE_CLASS::CreateSpec.new('type' => VCENTER_HARDWARE_BOOTSERVICE_CLASS::Type::BIOS,
                                                                   'delay' => 0,
                                                                   'enter_setup_mode' => FALSE)
    boot_devices_spec = [
      VCENTER_HARDWARE_BOOT_DEVICE_CLASS::EntryCreateSpec.new('type' => VCENTER_HARDWARE_BOOT_DEVICE_CLASS::Type::DISK),
      VCENTER_HARDWARE_BOOT_DEVICE_CLASS::EntryCreateSpec.new('type' => VCENTER_HARDWARE_BOOT_DEVICE_CLASS::Type::CDROM),
      VCENTER_HARDWARE_BOOT_DEVICE_CLASS::EntryCreateSpec.new('type' => VCENTER_HARDWARE_BOOT_DEVICE_CLASS::Type::ETHERNET)
    ]
    vm_create_spec = VCENTER_VM_CLASS::CreateSpec.new('name' => vm_name,
                                                      'guest_OS' =>  VCENTER_VM_GUESTOS_CLASS::WINDOWS_8_64,
                                                      'placement' => placement_spec,
                                                      'hardware_version' => VCENTER_VM_HARDWARESERVICE_CLASS::Version::VMX_11,
                                                      'cpu' => cpu_spec,
                                                      'memory' => mem_spec,
                                                      'disks' => disks_spec,
                                                      'nics' => ethernets_spec,
                                                      'cdroms' => cdrom_spec,
                                                      'serial_ports' => serial_ports_spec,
                                                      'parallel_ports' => parallel_ports_spec,
                                                      'floppies' => floppies_spec,
                                                      'boot' => boot_spec,
                                                      'boot_devices' => boot_devices_spec)
    vm_id = vm_svc.create(vm_create_spec)
    log.info "Created vm #{vm_name} with the VM Identifier #{vm_id}"
  end

  # Delete the VM if Cleanup option (-X) is specified
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
CreateExhaustiveVM.new.main if $PROGRAM_NAME == __FILE__