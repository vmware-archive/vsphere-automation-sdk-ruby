#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT


module VAPI::Protocol

    class RpcFactory

        RPC_PROVIDERS = {
            :http => VAPI::Protocol::HttpProvider
        }

        def self.create_rpc_provider(protocol, uri, ssl_options = {})
            rpc_provider = RPC_PROVIDERS[protocol]
            #TODO: raise ProtocolException when protocol not supported
            rpc_provider.new(uri, ssl_options)
        end
    end

end
