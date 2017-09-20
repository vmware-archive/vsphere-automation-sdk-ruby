# Copyright 2014-2017 VMware, Inc.  All rights reserved.

#TODO: it would be ideal to dynamically build this list, rather than statically
# updating it when samples are added.  We will get there one day.
@samples = {
    'connection' => 'lib/sample/workflow/connection_workflow.rb',
    'tagging' => 'lib/sample/workflow/tagging_workflow.rb',
    'create_basic_vm' => 'lib/sample/vcenter/vm/create/create_basic_vm.rb',
    'list_vms' => 'lib/sample/vcenter/vm/list_vms.rb',
    'power' => 'lib/sample/vcenter/vm/power.rb',
    'create_default_vm' => 'lib/sample/vcenter/vm/create/create_default_vm.rb',
    'configure_cpu' => 'lib/sample/vcenter/vm/hardware/cpu_configuration/cpu_configuration.rb',
    'sata' => 'lib/sample/vcenter/vm/hardware/adapter/sata.rb',
    'scsi' => 'lib/sample/vcenter/vm/hardware/adapter/scsi.rb',

    # fyi: these are framework self-tests more than samples, but they can be enabled
    # with the understanding that each has its own mechanism for handling arguments.
    # Look at the end of each source file for details how to run these self-tests.
    #'ls' => 'lib/sample/framework/lookup_service_helper.rb',
    #'sso' => 'lib/sso.rb',
}

def usage(code=0)
    puts "Usage: run_sample sample-name [args]"
    puts "where sample-name values are:"
    @samples.each { |key,value| puts "\t#{key} or #{value}" }
    exit(code)
end

def run(sample)
    libs = $LOAD_PATH[0..2].collect { |lib| "-I#{lib}" }
    args = ["ruby", libs, sample, ARGV[1..-1]].flatten
    command = args.join(' ')
    puts command
    exec command
end

if ARGV.size == 0
    usage(0)
elsif @samples.keys.include? ARGV[0]
    run(@samples[ARGV[0]])
elsif @samples.values.include? ARGV[0]
    run(ARGV[0])
else
    puts "ERROR: invalid sample name: " + ARGV[0]
    usage(-1)
end
