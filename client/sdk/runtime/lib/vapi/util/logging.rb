#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

require 'logger'
require 'stringio'

module VAPI

    #class << self
    # A mixin for enabling logging in various parts of the vAPI Ruby runtime.
    #module Logging
        #attr_accessor :log
        @@log
        @@memory

        def self.log
            @@log ||= init_logger
        end

        def self.init_logger(config={})
            log = Logger.new(STDOUT)
            log.progname = 'vAPI'
            log.level = Logger::WARN
            log
        end

        def self.init_memory_logger()
            @@memory = StringIO.new
            log = Logger.new(memory)
            log
        end

        def self.get_memory_log()
            @@memory.rewind.read
        end
    #end

    #extend VAPI::Logging
    #VAPI::Logging.init_logger({})
    #VAPI::Logging.log.info "Welcome to the vAPI Ruby client runtime ..."

end

