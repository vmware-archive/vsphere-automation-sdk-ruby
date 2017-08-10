#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods for the VM related operation
#---------------------------------------------------------------------------
require 'set'
class VMHelper

  VCENTER_VM_CLASS = Com::Vmware::Vcenter::VM

  class << self
  def get_vm(stub_config,vm_name)
    filter_spec = VCENTER_VM_CLASS::FilterSpec.new
    filter_spec.names = Set.new([vm_name])
    vm_svc = VCENTER_VM_CLASS.new(stub_config)
    vm_summaries = vm_svc.list(filter_spec)
    if vm_summaries.length > 0
      vm_id = vm_summaries[0].vm
      puts "VM ID for the vm name #{vm_name} is #{vm_id}"
      vm_id
    else
      puts "VM #{vm_name} not found"
    end
  end
  end

end