#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.ntp.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Techpreview
                module Ntp
                end
            end
        end
    end
end

module Com::Vmware::Appliance::Techpreview::Ntp

    # ``Com::Vmware::Appliance::Techpreview::Ntp::Server``   class  provides  methods  Performs NTP configuration.
    class Server < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.ntp.server')

        @@add_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('add', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@set_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('set', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'servers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'add' => @@add_info,
            'set' => @@set_info,
            'delete' => @@delete_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Add NTP servers. This command adds NTP servers to the configuration. If the time synchronization is NTP-based, then NTP daemon is restarted to reload the new NTP servers. Otherwise, this command just adds servers to the NTP configuration.
        #
        # @param servers [Array<String>]
        #     List of host names or IP addresses of NTP servers.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def add(servers)
            invoke_with_info(@@add_info, {
                'servers' => servers,
            })
        end


        # Set NTP servers. This command deletes old NTP servers from the configuration and sets the input NTP servers in the configuration. If the time synchronization is NTP-based, the NTP daemon is restarted to reload the new NTP configuration. Otherwise, this command just replaces servers in the NTP configuration.
        #
        # @param servers [Array<String>]
        #     List of host names or ip addresses of ntp servers.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def set(servers)
            invoke_with_info(@@set_info, {
                'servers' => servers,
            })
        end


        # Delete NTP servers. This command deletes NTP servers from the configuration. If the time synchronization mode is NTP-based, the NTP daemon is restarted to reload the new NTP configuration. Otherwise, this command just deletes servers from the NTP configuration.
        #
        # @param servers [Array<String>]
        #     List of host name or ip addresses of ntp servers.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def delete(servers)
            invoke_with_info(@@delete_info, {
                'servers' => servers,
            })
        end


    end


end
