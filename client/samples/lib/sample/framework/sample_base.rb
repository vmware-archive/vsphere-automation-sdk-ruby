# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'logger'
require 'optparse'
require 'securerandom'
require 'uri'
require 'yaml'

module Sample
    def self.log
        @@log ||= init_logger
    end

    def self.init_logger
        log = Logger.new(STDOUT)
        log.progname = 'vAPI Sample Framework'
        log.level = Logger::INFO
        log
    end
end

# @abstract Sample base class.
class SampleBase
    LOG_LEVELS = [:INFO, :DEBUG, :WARN]

    # ctor args
    attr_reader :title, :description, :use_supporters, :multiple_mgmt_node

    # common aspects
    attr_reader :log, :options, :option_parser

    # sample config properties
    attr_accessor :ls_ip, :ls_url, :sso_username, :sso_password, :insecure,
                  :ca_file, :mgmt_node_index, :mgmt_node_id, :mgmt_node_name

    # Constructs a new instance.
    def initialize(title, description,
                   use_supporters=true, multiple_mgmt_node=false)
        raise 'Sample title is required' if title.nil?
        raise 'Sample description is required' if description.nil?
        @title = title
        @description = description
        @use_supporters = use_supporters
        @multiple_mgmt_node = multiple_mgmt_node

        init_logging()
        init_options()

        # The following two configurations are used when the sample uses a
        # single management node, which is the case for most of our samples.
        # When a sample uses multiple management nodes, the sample has to deal
        # with the management nodes service managers at the sample level.
        @mgmt_node_id = nil
        @mgmt_node_name = nil
        @mgmt_node_index = 0
    end

    # The main entry point for samples, which executes in a conventional pattern:
    # Call parse_options(), call before(), call run(), then call after().
    # All of these methods are meant to be fixed implementations as well.
    # However, the specific samples have opportunities to customize each step
    # by implementing the following methods:
    #     inject_options()
    #     check_options()
    #     setup()
    #     execute()
    #     cleanup()
    def main
        parse_options()
        before()
        run()
        after()
    end

    protected

    # setup logging
    def init_logging
        @log = Logger.new(STDOUT)
        @log.progname = title
        @log.level = Logger::INFO
    end

    # setup the argument parser
    def init_options
        @options = {
            #TODO: setup defaults based on ENV settings
            :cleanup => ENV['CLEANUP']
        }
        # for each: ~/sample.yml, ./sample.yml
        [ENV['HOME'], '.'].each { |dir|
            conf = "#{dir}/sample.conf"
            load_conf(conf) if File.exists? conf
            yml = "#{dir}/sample.yml"
            load_conf(yml) if File.exists? yml
        }
        log.debug "Default options: #{options.inspect}"
        @option_parser = OptionParser.new do |opts|
            opts.banner = description

            opts.separator "\nCommon options:"
            opts.on("-h", "--help", "Show this message") do
                puts opts
                exit
            end
            opts.on("-f", "--config [PATH]", String, "Set config file") do |path|
                load_conf(path)
            end
            opts.on("-S", "--sample-level [LEVEL]", LOG_LEVELS,
                    "Set sample logging level") do |level|
                options[:sample_level] = Logger.const_get(level)
            end
            opts.on("-F", "--framework-level [LEVEL]", LOG_LEVELS,
                    "Set sample framework logging level") do |level|
                options[:framework_level] = Logger.const_get(level)
            end
            opts.on("-R", "--runtime-level [LEVEL]", LOG_LEVELS,
                    "Set runtime logging level") do |level|
                options[:runtime_level] = Logger.const_get(level)
            end

            opts.separator "\nGeneral sample options:"
            opts.on("-l IP", "--ls-ip IP", "Lookup service IP address (or hostname)") do |value|
                options[:ls_ip] = value
            end
            opts.on("-L URL", "--ls-url URL", "Lookup service URL") do |value|
                options[:ls_url] = value
            end
            opts.on("-u", "--sso-username VALUE", "username for SSO login") do |value|
                options[:sso_username] = value
            end
            opts.on("-p", "--sso-password VALUE", "password for SSO login user") do |value|
                options[:sso_password] = value
            end
            opts.on('-k', '--insecure', 'Skip certificate validation') do |value|
                options[:insecure] = value
            end
            opts.on('--ca-file [FILE]', String, 'CA file for certificate') do |value|
                options[:ca_file] = value
            end
            opts.on("-m [N]", "--mgmt-node-index [N]", Integer,
                    "Management node index (default 0, the first M node)") do |value|
                options[:mgmt_node_index] =  value
            end
            opts.on("-n [ID]", "--mgmt-node-id [ID]", String,
                    "Management node ID (get a list by passing an invalid value)") do |value|
                options[:mgmt_node_id] =  value
            end
            opts.on("-N [NAME]", "--mgmt-node-name [NAME]", String,
                    "Management node name (get a list by passing an invalid value)") do |value|
                options[:mgmt_node_name] =  value
            end
            opts.on("-X", "--cleanup", "cleanup data after running sample") do |flag|
                options[:cleanup] = true
            end
        end
        if respond_to? :inject_options
            option_parser.separator "\nSpecific sample options:"
            send(:inject_options)
        end
    end

    def parse_options
        option_parser.parse!

        # set various logging levels
        log.level = options[:sample_level] if options[:sample_level]
        Sample.log.level = options[:framework_level] if options[:framework_level]
        VAPI.log.level = options[:runtime_level] if options[:runtime_level]
        log.debug "Processed options: #{options.inspect}"

        # check the standard sample options
        (@ls_ip, @ls_url) = check_exclusive_opt({
            :ls_ip => '--ls-ip',
            :ls_url => '--ls-url',
        })
        @sso_username = check_required_opt(:sso_username, '--sso-username')
        @sso_password = check_required_opt(:sso_password, '--sso-password')
        @insecure = options[:insecure]
        @ca_file = options[:ca_file]

        @mgmt_node_id = options[:mgmt_node_id] if options[:mgmt_node_id]
        @mgmt_node_name = options[:mgmt_node_name] if options[:mgmt_node_name]
        @mgmt_node_index = options[:mgmt_node_index] || 0

        send(:check_options) if respond_to? :check_options
    end

    # Takes action before the sample runs.
    def before
        setup_supporters if use_supporters
        send(:setup) if respond_to? :setup
    end

    # Runs the sample.
    def run
        if respond_to? :execute
            begin
                send(:execute)
            rescue Exception => e
                log.error 'problem running sample'
                log.error e
                raise e unless options[:cleanup]
            end
        else
            report_error "#{self.class.name} must declare an execute() method"
        end
    end

    # Takes action after the sample runs.
    def after
        if respond_to? :cleanup and options[:cleanup]
            send(:cleanup)
        end
    end

    def assert(condition, msg=nil)
        msg = condition if msg.nil?
        if condition.is_a? String
            truth = eval(condition)
        elsif condition.is_a? TrueClass
            truth = true
        else
            truth = false
        end
        #log.debug "condition=#{condition}, class=#{condition.class}, truth=#{truth}"
        raise "ASSERT: #{msg}" unless truth
    end

    def report_error(msg)
        log.error msg
        #raise 'Stopping sample due to error'
        exit 2
    end

    # Loads a config file.
    def load_conf(conf)
        options.merge!(Hash[
            YAML::load(open(conf)).map { |k, v| [k.to_sym, v] }
        ])
    end

    # Checks a required option and reports an error when not given.
    def check_required_opt(key, longopt=key)
        value = options[key]
        if value.nil?
            log.error "#{longopt} option required"
            exit 1
        else
            log.debug "#{key}: #{value}"
            return value
        end
    end

    # Checks an "exclusive or" required option from a given set.
    def check_exclusive_opt(opts)
        result = []
        opts.each { |key,longopt|
            value = options[key]
            result << value
            log.debug "#{key}: #{value}" unless value.nil?
        }
        sparse = result.compact
        if sparse.empty?
            log.error "one of the following options must be given: #{opts.values}"
            exit 1
        elsif sparse.size > 1
            log.error "only one of the following options may be given: #{opts.values}"
            exit 1
        end
        return result
    end

    def generate_random_uri
        vapi_uuid_uri_prefix = "urn:uuid:"
        return vapi_uuid_uri_prefix + SecureRandom.uuid
    end

    # Gets the PlatformServiceController instance, creating it as needed.
    def psc
        if @psc.nil?
            #assert options have been processed, as they are accessed
            #by passing this sample instance to the INM
            @psc = PlatformServiceController.new(self)
            @psc.login()
        end
        @psc
    end

    def get_service_manager(ssl_options = {}, node_id = nil)
        if node_id.nil? and not multiple_mgmt_node
            node_id = mgmt_node_id
        end
        raise 'get_service_manager: node_id must be specified' if node_id.nil?
        return ServiceManager.get_instance(psc, node_id, ssl_options)
    end

    def setup_supporters
        log.debug "setup_supporters called ..."
        psc # access to initialize
        if not multiple_mgmt_node
            mgmt_nodes = psc.lookup_service_helper.find_mgmt_nodes()
            if mgmt_node_name
                @mgmt_node_id = psc.lookup_service_helper.
                    get_mgmt_node_id(mgmt_node_name)
                if mgmt_node_id.nil?
                    report_error "manage node name (#{mgmt_node_name}) not found; try one of:\n#{mgmt_nodes}"
                else
                    log.debug "setup_supporters: found by name: #{mgmt_node_name}"
                end
            elsif mgmt_node_id
                @mgmt_node_name = psc.lookup_service_helper.
                    get_mgmt_node_instance_name(mgmt_node_id)
                if mgmt_node_name.nil?
                    report_error "manage node id (#{mgmt_node_id}) not found; try one of:\n#{mgmt_nodes}"
                else
                    log.debug "setup_supporters: found by ID: #{mgmt_node_id}"
                end
            elsif mgmt_node_index
                if mgmt_node_index < mgmt_nodes.size
                    @mgmt_node_name = mgmt_nodes.keys[mgmt_node_index]
                    @mgmt_node_id = mgmt_nodes.values[mgmt_node_index]
                    log.debug "setup_supporters: found by index: #{mgmt_node_index} = #{mgmt_node_name}"
                else
                    report_error "management node index (#{mgmt_node_index}) not valid; try an index < #{mgmt_nodes.size}"
                end
            else
                instance_name, node_id = psc.lookup_service_helper.
                    get_default_mgmt_node()
                @mgmt_node_name = instance_name
                @mgmt_node_id = node_id
                log.debug "setup_supporters: found by default: #{mgmt_node_name}"
            end
            log.debug "setup_supporters: name=#{mgmt_node_name}, id=#{mgmt_node_id}"
        end
    end
end

class SelfTestSample < SampleBase

    TITLE = 'Self Test Sample'

    def initialize(use_supporters=false)
        super(TITLE, TITLE, use_supporters)
    end

    def execute
        #noop
    end
end
