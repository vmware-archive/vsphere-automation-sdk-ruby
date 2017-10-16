# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sample/framework'
require 'vapi'
require 'com/vmware/vcenter/vapi'
require 'sample/vcenter/helper/vm_helper'

class VMPowerLifeCycle < SampleBase
  VCENTER_MODULE = Com::Vmware::Vcenter
  VM_MODULE = Com::Vmware::Vcenter::Vm

  VCENTER_VM_CLASS = VCENTER_MODULE::VM
  VM_POWER_CLASS = VM_MODULE::Power

  TITLE = 'Power LifeCycle of a VM'
  DESCRIPTION = <<EOL
  Demonstrates the virtual machine power lifecycle
  
  Sample Prerequisites:
  The sample needs an existing VM.

EOL
  # sample attributes
  attr_reader :service_manager,:vm_name,:vm_svc,:vm_power_svc,
              :status,:vm_id

  # Constructs a new instance.
  def initialize
    super(TITLE, DESCRIPTION, true)
  end

  def inject_options
    option_parser.on("-v", "--vm-name NAME",
                     "Name of the VM to perform the power cycle operation") do |value|
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
    @vm_svc = VCENTER_VM_CLASS.new(service_manager.vapi_config)
    @vm_power_svc = VM_POWER_CLASS.new(service_manager.vapi_config)
  end

  # Perform the POWER Operation 1.POWER ON 2.SUSPEND 3.RESUME (POWER ON BACK) 4.RESET 5.POWER OFF (STOP)
  def execute
    log.info "Getting the VM Details #{vm_name}"
    @vm_id = VMHelper.get_vm(service_manager.vapi_config, @vm_name)
    @status = vm_power_svc.get(vm_id)
    if status.state == VM_POWER_CLASS::State::POWERED_ON
      log.info "The VM  #{vm_name} is powered ON and it would be powered OFF"
      vm_power_svc.stop(vm_id)
    end
    log.info '1. Power ON the VM'
    vm_power_svc.start(vm_id)
    log.info"vm.Power.start(#{vm_id})"

    log.info '2. Suspend the VM'
    vm_power_svc.suspend(vm_id)
    log.info "vm.Power.suspend(#{vm_id})"
    #Sometimes the sleep needs to be enabled to handle the suspend timeout in certain GOS
    #sleep(60)

    log.info '3. Resume the VM'
    vm_power_svc.start(vm_id)
    log.info("vm.Power.resume(#{vm_id})")

    log.info('4.Reset the VM')
    vm_power_svc.reset(vm_id)
    log.info("vm.Power.reset(#{vm_id})")
  end

  def cleanup()
    log.info '5. Cleanup : Power OFF the VM'
    vm_power_svc.stop(vm_id)
    log.info "vm.Power.stop(#{vm_id})"
  end
end

# main: quick self tester
if __FILE__ == $0
  VMPowerLifeCycle.new.main()
end

