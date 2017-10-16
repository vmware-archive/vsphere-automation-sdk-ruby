#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI

    # A mixin for enabling messaging in various parts of the vAPI Ruby runtime.
    module Messaging
        attr_accessor :message_factory

        def init_messaging(config)
        end
    end

    class Message
    end

    class MessageFormatter
    end

    class MessageBundle
    end

    class MessageFactory
    end

end
