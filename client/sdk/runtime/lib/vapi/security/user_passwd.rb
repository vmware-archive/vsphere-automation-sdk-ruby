#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Security
    USER_PASSWORD_SCHEME_ID = 'com.vmware.vapi.std.security.user_pass'
    USER_KEY = 'userName'
    PASSWORD_KEY = 'password'

    # Create a security context for Username-Password based authentication scheme.
    #
    # @param user_name [String] Name of the user
    # @param password [String] Password of the user
    # @return [VAPI::Core::SecurityContext] Newly created security context
    def self.create_user_password_security_context(user_name, password)
        return VAPI::Core::SecurityContext.new(USER_PASSWORD_SCHEME_ID, {
            USER_KEY => user_name,
            PASSWORD_KEY => password
        })
    end

end
