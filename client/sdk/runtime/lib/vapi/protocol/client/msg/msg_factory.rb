#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT


module VAPI::Protocol

    class MsgFactory

        MSG_PROVIDERS = {
            :json => VAPI::Protocol::JsonClientProvider
        }

        def self.create_msg_provider(protocol, rpc_provider)
            msg_provider = MSG_PROVIDERS[protocol]
            #TODO: raise ProtocolException when protocol not supported
            msg_provider.new(rpc_provider)
        end

    end

end
