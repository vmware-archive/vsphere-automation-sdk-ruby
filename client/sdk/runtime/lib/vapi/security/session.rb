#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Security

    SESSION_SCHEME_ID = 'com.vmware.vapi.std.security.session_id'
    SESSION_ID = 'sessionId'

    # Create a security context for Session ID based authentication scheme.
    #
    # @param session_id [String] Session ID
    # @return [VAPI::Core::SecurityContext] Newly created security context
    def self.create_session_security_context(session_id)
        return VAPI::Core::SecurityContext.new(SESSION_SCHEME_ID, {
            SESSION_ID => session_id
        })
    end
end
