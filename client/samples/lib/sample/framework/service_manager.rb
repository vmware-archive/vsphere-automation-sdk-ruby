# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'vapi'
require 'com/vmware/cis'
require 'sample/framework/sample_base'

# Manages all the services on a management node.
class ServiceManager

    class << self

        def get_instance(psc, node_id, ssl_options = {})
            @instances ||= {}

            Sample.log.info "Getting service manager for node id: #{node_id}"
            if @instances[node_id].nil?
                service_manager = ServiceManager.new(node_id, psc)
                Sample.log.info "Connecting service manager for node id: #{node_id}"
                service_manager.connect(ssl_options)
                @instances[node_id] = service_manager
            end
            return @instances[node_id]
        end

        def disconnect
            if @instances
                @instances.values.each { |sm|
                    Sample.log.info "Disconnecting service manager for node id: #{sm.node_id}"
                    sm.disconnect()
                }
            end
        end

        at_exit { ServiceManager.disconnect() }
    end

    attr_reader :node_id, :psc
    attr_reader :instance_name,
                :vapi_url, :vapi_config, :vapi_session, :vapi_session_id,
                :vim_url, :vim_sc, :vim_content, :vim_uuid

    # Constructs a new instance.
    def initialize(node_id, psc)
        @node_id = node_id
        @psc = psc
        raise 'Node id is required' if node_id.nil?
        raise 'Platform Service Controller is required' if psc.nil?
    end

    def connect(ssl_options = {})
        @instance_name = psc.lookup_service_helper.
            get_mgmt_node_instance_name(node_id)

        # discover the service endpoints from the lookup service on the PSC
        @vapi_url = psc.lookup_service_helper.find_vapi_url(node_id)
        @vim_url = psc.lookup_service_helper.find_vim_url(node_id)
        raise 'VAPI URL is required (could not be looked up)' if vapi_url.nil?
        raise 'VIM URL is required (could not be looked up)' if vim_url.nil?

        # login to vAPI endpoint
        Sample.log.info "Connecting to vapi url: #{vapi_url}"
        @vapi_config = VAPI::Bindings::VapiConfig.new(vapi_url, ssl_options)
        vapi_config.set_security_context(psc.bearer_token_context)
        @vapi_session = Com::Vmware::Cis::Session.new(vapi_config)
        @vapi_session_id = vapi_session.create()
        vapi_config.set_security_context(
            VAPI::Security.create_session_security_context(vapi_session_id))

=begin
        # pyvmomi
        # extract the host from the vim url
        vim_host = get_url_host(self.vim_url)
        raise 'VIM host is required (could not be looked up)' if vim_host.nil?

        @vim_sc = SmartConnect(host=vim_host,
                               user=self.psc.ssousername,
                               pwd=self.psc.ssopassword)
        #assert vim_sc is not None
        raise 'SmartConnect is required (could not be created)' if vim_sc.nil?

        # retrieve the service content
        @vim_content = vim_sc.RetrieveContent()
        assert vim_content is not None
        @vim_uuid = vim_content.about.instanceUuid
=end
    end

    def disconnect
        Sample.log.info "Disconnecting the session: #{vapi_session_id}"
        vapi_session.delete()
=begin
        Disconnect(vim_sc)
=end
    end
end


=begin
def get_url_host(url)
    from urlparse import urlparse
    import re
    # parse the URL
    _scheme, netloc, _path, _params, _query, _fragment = urlparse(url)
    if netloc is not None:
        p = '(?P<host>[^:/ ]+).?(?P<port>[0-9]*)'
        m = re.search(p, netloc)
        host = m.group('host')
        return host
    end
    return None
end
=end
