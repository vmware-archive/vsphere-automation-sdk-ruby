# Copyright 2014-2017 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

require 'sso'
require 'vapi'
require 'sample/framework/sample_base'
require 'sample/framework/lookup_service_helper'

# Manages services on the Platform Service Controller (PSC) node
# (e.g. lookup service, SSO etc.)
class PlatformServiceController

    attr_reader :sample, :lookup_service_helper
    attr_reader :sts_url, :bearer_token, :bearer_token_context

    # Constructs a new instance.
    # @param sample [SampleBase] the associated sample, which provides access
    #     to the configuration properties of the sample
    def initialize(sample)
        @sample = sample
    end

    # Finds the SSO URL from the lookup service and retrieves the SAML token from STS URL
    def login
        @lookup_service_helper = LookupServiceHelper.new(sample)
        Sample.log.info "Connecting to lookup service: #{lookup_service_helper.soap_url}"
        lookup_service_helper.connect()

        @sts_url = lookup_service_helper.find_sso_url()
        raise 'sts_url not found' if sts_url.nil?

        Sample.log.info "Retrieving a SAML bearer token from STS: #{sts_url}"
        sso = SSO::Connection.new(sts_url)
        sso.login(sample.sso_username, sample.sso_password)
        @bearer_token = sso.request_bearer_token()
        @bearer_token_context =
            VAPI::Security.create_saml_bearer_security_context(bearer_token.to_s)
    end
end

# main: quick self tester
if __FILE__ == $0
    Sample.log.level = Logger::DEBUG if ENV['DEBUG']
    sample = SelfTestSample.new(true)
    sample.main() # for arg parsing
    psc = PlatformServiceController.new(sample)
    psc.login()

    puts "\n\nSTS URL: #{psc.sts_url}"
    puts "\n\nSAML Token: #{psc.bearer_token}"
end
