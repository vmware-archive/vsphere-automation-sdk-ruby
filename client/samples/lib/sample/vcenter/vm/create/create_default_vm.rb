# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/datastore_helper'
require 'sample/vcenter/helper/cluster_helper'
require 'sample/vcenter/helper/folder_helper'
require 'sample/vcenter/helper/vm_helper'

class CreateDefaultVM < SampleBase
  VCENTER_MODULE = Com::Vmware::Vcenter
  VCENTER_VM_CLASS = VCENTER_MODULE::VM
  VM_SPEC = VCENTER_MODULE::VM::CreateSpec
  VM_PLACEMENT_SPEC = VCENTER_MODULE::VM::PlacementSpec
  GUESTOS = VCENTER_MODULE::Vm::GuestOS
  VCENTER_VM_MODULE = Com::Vmware::Vcenter::Vm
  VM_POWER_CLASS = VCENTER_VM_MODULE::Power

  TITLE = 'Creates a Default VM'
  DESCRIPTION = <<EOL
   Demonstrates how to create a VM with system provided defaults
   Author: VMware, Inc.
   Sample Prerequisites:
    - datacenter
    - vm folder
    - datastore
    - cluster
    - vm name
EOL
  # sample attributes
  attr_reader :service_manager,:vm_name,:vm_svc,
              :datastore_name, :cluster_name, :folder_name,
              :datacenter_name,:vm_power_svc,:vm_id

  # Constructs a new instance.
  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
      option_parser.on("-ds", "--datastore-name ", "Name of the Datastore to locate the VM") do |ds|
        options[:datastore_name] =  ds
      end
      option_parser.on("-cname", "--cluster-name ", "Name of the Cluster to locate the VM") do |cn|
        options[:cluster_name] =  cn
      end
      option_parser.on("-fname", "--folder-name ", "Name of the Folder to locate the VM") do |fn|
        options[:folder_name] =  fn
      end
      option_parser.on("-dname", "--datacenter-name ", "Name of the Datacenter") do |dn|
        options[:datacenter_name] =  dn
      end
      option_parser.on("-v", "--vm-name NAME","Name of the VM to be created") do |vn|
        options[:vm_name] =  vn
      end
  end

  def check_options
    @vm_name = check_required_opt(:vm_name,'--vm-name')
    @datastore_name = check_required_opt(:datastore_name,'--datastore-name')
    @cluster_name = check_required_opt(:cluster_name,'--cluster-name')
    @folder_name = check_required_opt(:folder_name,'--folder-name')
    @datacenter_name = check_required_opt(:datacenter_name,'--datacenter-name')
  end

  def setup
    ssl_options = {}
    ssl_options[:verify] = :none if insecure
    ssl_options[:ca_file] = ca_file if ca_file
    @service_manager = get_service_manager(ssl_options)
    @vm_svc = VCENTER_VM_CLASS.new(@service_manager.vapi_config)
    @vm_power_svc = VM_POWER_CLASS.new(service_manager.vapi_config)
  end

  def execute
    log.info 'Creating Default VM'
    @ds_id = DatastoreHelper.get_datastore(service_manager.vapi_config, @datacenter_name, @datastore_name)
    @folder_id = FolderHelper.get_folder(service_manager.vapi_config, @datacenter_name, @folder_name)
    @cluster_id = ClusterHelper.get_cluster(service_manager.vapi_config, @datacenter_name, @cluster_name)
    vm_id = vm_svc.create( VM_SPEC.new(:guest_OS => GUESTOS::WINDOWS_9_64, :name => @vm_name, :placement => VM_PLACEMENT_SPEC.new(:folder => @folder_id,:datastore => @ds_id, :cluster => @cluster_id)))
    log.info "Default VM #{vm_name} created with the VM Identifier #{vm_id}"
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
  CreateDefaultVM.new.main()
end