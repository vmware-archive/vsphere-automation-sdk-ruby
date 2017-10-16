#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT


module VAPI::Bindings

    # Configuration data for vAPI stub classes
    #
    # @!attribute [r] connector
    #     @return [VAPI::Protocol::Connector] Connection to be used to talk to the remote ApiProvider
    # @!attribute [r] api_provider
    #     @return [VAPI::Core::ApiProvider] the ApiProvider implementation
    class VapiConfig
        attr_reader :connector, :api_provider

        # Constructs a new instance.
        def initialize(uri, ssl_options = {}, rpc=:http, msg=:json)
            @connector = VAPI::Protocol.create_connector(uri, ssl_options, rpc, msg)
            @api_provider = @connector.api_provider
        end

        def set_security_context(sec_ctx)
            self.connector.security_context = sec_ctx
        end
    end
end

