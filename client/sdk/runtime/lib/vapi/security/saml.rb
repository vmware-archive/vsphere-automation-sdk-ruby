#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Security
    SAML_HOK_SCHEME_ID = 'com.vmware.vapi.std.security.saml_hok_token'
    SAML_BEARER_SCHEME_ID = 'com.vmware.vapi.std.security.saml_bearer_token'
    PRIVATE_KEY = 'privateKey'
    SAML_TOKEN = 'samlToken'
    SIGNATURE_ALGORITHM = 'signatureAlgorithm'
    DEFAULT_ALGORITHM_TYPE = 'RS256'
    TIMESTAMP = 'timestamp'
    EXPIRES = 'expires'
    CREATED = 'created'
    REQUEST_VALIDITY = 20
    SIGNATURE = 'signature'
    DIGEST = 'value'
    AUTHENTICATED = 'requestAuthenticated'
    STS_URL_PROP = 'stsurl'
    CERTIFICATE_PROP = 'certificate'
    PRIVATE_KEY_PROP = 'privatekey'

    #key_regex = re.compile(r'-----BEGIN [A-Z ]*PRIVATE KEY-----\n')
    # Algorithm Header Parameter Values for JWS based on the following link
    # https://datatracker.ietf.org/doc/draft-ietf-jose-json-web-algorithms/?include_text=1
    algorithm_map = {
        'RS256' => 'sha256',
        'RS384' => 'sha384',
        'RS512' => 'sha512',
    }

    # Create a security context for SAML bearer token based
    # authentication scheme.
    #
    # @param token [String] SAML token
    # @return [VAPI::Core::SecurityContext] Newly created security context
    def self.create_saml_bearer_security_context(token)
        return VAPI::Core::SecurityContext.new(SAML_BEARER_SCHEME_ID, {
            SAML_TOKEN => token
        })
    end

    # Create a security context for SAML "holder of key" token based
    # authentication scheme.
    #
    # @param token [String] SAML token
    # @param private_key_filename [String] Absolute file path of the private key of the user
    # @return [VAPI::Core::SecurityContext] Newly created security context
    def self.create_saml_hok_security_context(token, private_key_filename)
        private_key_data = File.read(private_key_filename)
        return VAPI::Core::SecurityContext.new(SAML_HOK_SCHEME_ID, {
            PRIVATE_KEY => private_key_data,
            SAML_TOKEN => token,
            SIGNATURE_ALGORITHM => DEFAULT_ALGORITHM_TYPE
        })
    end

end

