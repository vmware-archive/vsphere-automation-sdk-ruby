# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sample/framework'
require 'vapi'
require 'com/vmware/cis'
require 'sso'

class ConnectionWorkflow < SampleBase

    TITLE = 'vAPI Connection Workflow'
    DESCRIPTION = <<EOL
Demonstrates vAPI connection and service initialization callflow:
    Step 1: Setup the required URLs using the LookupServiceHelper utility.
    Step 2: Connect to the SSO URL and retrieve the SAML token.
    Step 3: Use the SAML token to login to vAPI service endpoint.
EOL

    # sample config properties
    attr_reader :sso_url, :vapi_url, :vapi_config, :session_svc, :session_id

    # Constructs a new instance.
    def initialize
        super(TITLE, DESCRIPTION, false)
    end

    def setup
        lookup_service_helper = LookupServiceHelper.new(self)
        Sample.log.info "Connecting to lookup service: #{lookup_service_helper.soap_url}"
        @sso_url = lookup_service_helper.find_sso_url()

        if mgmt_node_id
            @vapi_url = lookup_service_helper.find_vapi_url(mgmt_node_id)
            if vapi_url.nil?
                vapi_urls = lookup_service_helper.find_vapi_urls()
                report_error "management node with id (#{mgmt_node_id}) not found; try one of:\n#{vapi_urls}"
            end
        else
            vapi_urls = lookup_service_helper.find_vapi_urls()
            if mgmt_node_index < vapi_urls.values.size
                @vapi_url = vapi_urls.values[mgmt_node_index]
            else
                report_error "management node index (#{mgmt_node_index}) not valid; try an index < #{vapi_urls.size}"
            end
        end

        ssl_options = {}
        ssl_options[:verify] = :none if insecure
        ssl_options[:ca_file] = ca_file if ca_file
        @vapi_config = VAPI::Bindings::VapiConfig.new(vapi_url, ssl_options)
    end

    def execute
        log.info "Getting SSO token (#{sso_url})..."
        sso = SSO::Connection.new(sso_url).login(sso_username, sso_password)
        token = sso.request_bearer_token()
        vapi_config.set_security_context(
            VAPI::Security.create_saml_bearer_security_context(token.to_s))

        # Get the Session Service
        @session_svc = Com::Vmware::Cis::Session.new(vapi_config)

        log.info "Login to VAPI endpoint (#{vapi_url}) using token..."
        @session_id = session_svc.create()

        log.info "Got the Session Id: " + session_id
        vapi_config.set_security_context(
            VAPI::Security.create_session_security_context(session_id))
    end

    def cleanup
        unless session_id.nil?
            log.info "Disconnect vAPI session ..."
            session_svc.delete()
        end
    end
end


# main: quick self tester
if __FILE__ == $0
    ConnectionWorkflow.new.main()
end
