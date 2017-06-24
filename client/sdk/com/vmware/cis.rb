#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.cis.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Cis
        end
    end
end

module Com::Vmware::Cis

    # The  ``Com::Vmware::Cis::Session``   class  allows API clients to manage session tokens including creating, deleting and obtaining information about sessions.  
    # 
    #   
    # 
    #   * The   :func:`Com::Vmware::Cis::Session.create`    method  creates session token in exchange for another authentication token.
    #    * The   :func:`Com::Vmware::Cis::Session.delete`    method  invalidates a session token.
    #    * The   :func:`Com::Vmware::Cis::Session.get`   retrieves information about a session token.
    #   
    #    
    # 
    #  The call to the   :func:`Com::Vmware::Cis::Session.create`    method  is part of the overall authentication process for API clients. For example, the sequence of steps for establishing a session with SAML token is:  
    # 
    #   * Connect to lookup service.
    #    * Discover the secure token service (STS) endpoint URL.
    #    * Connect to the secure token service to obtain a SAML token.
    #    * Authenticate to the lookup service using the obtained SAML token.
    #    * Discover the API endpoint URL from lookup service.
    #    * Call the   :func:`Com::Vmware::Cis::Session.create`    method . The   :func:`Com::Vmware::Cis::Session.create`   call must include the SAML token.
    #   
    #    
    # 
    #  See the programming guide and samples for additional information about establishing API sessions.  
    # 
    #   **Execution Context and Security Context**   
    # 
    #  To use session based authentication a client should supply the session token obtained through the   :func:`Com::Vmware::Cis::Session.create`    method . The client should add the session token in the security context when using SDK classes. Clients using the REST API should supply the session token as a HTTP header.  
    # 
    #   **Session Lifetime**   
    # 
    #  A session begins with call to the   :func:`Com::Vmware::Cis::Session.create`    method  to exchange a SAML token for a API session token. A session ends under the following circumstances:  
    # 
    #   * Call to the   :func:`Com::Vmware::Cis::Session.delete`    method .
    #    * The session expires. Session expiration may be caused by one of the following situations:  
    # 
    #       * Client inactivity - For a particular session identified by client requests that specify the associated session ID, the lapsed time since the last request exceeds the maximum interval between requests.
    #        * Unconditional or absolute session expiration time: At the beginning of the session, the session logic uses the SAML token and the system configuration to calculate absolute expiration time.
    #   
    #   
    #   
    #    
    # 
    #  When a session ends, the authentication logic will reject any subsequent client requests that specify that session. Any operations in progress will continue to completion.  
    # 
    #   **Error Handling**   
    # 
    #  The   :class:`Com::Vmware::Cis::Session`   returns the following  errors :  
    # 
    #   *  :class:`Com::Vmware::Vapi::Std::Errors::Unauthenticated`    error  for any  errors  related to the request.
    #    *  :class:`Com::Vmware::Vapi::Std::Errors::ServiceUnavailable`    error  for all  errors  caused by internal service failure.
    #   
    class Session < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.cis.session')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::SecretType.instance,
            {
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Cis::Session::Info'),
            {
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'create' => @@create_info,
            'delete' => @@delete_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Creates a session with the API. This is the equivalent of login. This  method  exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.
        #
        # @return [String]
        #     Newly created session identifier to be used for authenticating further requests.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #      if the session creation fails due to request specific issues. Due to the security nature of the API the details of the error are not disclosed.  
        #     
        #      Please check the following preconditions if using a SAML token to authenticate:  
        #     
        #       * the supplied token is delegate-able.
        #        * the time of client and server system are synchronized.
        #        * the token supplied is valid.
        #        * if bearer tokens are used check that system configuration allows the API endpoint to accept such tokens.
        #       
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #      if session creation fails due to server specific issues, for example connection to a back end component is failing. Due to the security nature of this API further details will not be disclosed in the  error . Please refer to component health information, administrative logs and product specific documentation for possible causes.
        def create()
            invoke_with_info(@@create_info)
        end


        # Terminates the validity of a session token. This is the equivalent of log out.  
        # 
        #  A session identifier is expected as part of the request.  
        #
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #      if the session id is missing from the request or the corresponding session object cannot be found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #      if session deletion fails due to server specific issues, for example connection to a back end component is failing. Due to the security nature of this API further details will not be disclosed in the  error . Please refer to component health information, administrative logs and product specific documentation for possible causes.
        def delete()
            invoke_with_info(@@delete_info)
        end


        # Returns information about the current session. This  method  expects a valid session identifier to be supplied.  
        # 
        #  A side effect of invoking this  method  may be a change to the session's last accessed time to the current time if this is supported by the session implementation. Invoking any other  method  in the API will also update the session's last accessed time.  
        # 
        #  This API is meant to serve the needs of various front end projects that may want to display the name of the user. Examples of this include various web based user interfaces and logging facilities.
        #
        # @return [Com::Vmware::Cis::Session::Info]
        #     Information about the session.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #      if the session id is missing from the request or the corresponding session object cannot be found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #      if session retrieval fails due to server specific issues e.g. connection to back end component is failing. Due to the security nature of this API further details will not be disclosed in the error. Please refer to component health information, administrative logs and product specific documentation for possible causes.
        def get()
            invoke_with_info(@@get_info)
        end



        # Represents data associated with an API session.
        # @!attribute [rw] user
        #     @return [String]
        #     Fully qualified name of the end user that created the session, for example Administrator\@vsphere.local. A typical use case for this information is in Graphical User Interfaces (GUI) or logging systems to visualize the identity of the current user.
        # @!attribute [rw] created_time
        #     @return [DateTime]
        #     Time when the session was created.
        # @!attribute [rw] last_accessed_time
        #     @return [DateTime]
        #     Last time this session was used by passing the session key for invoking an API.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.cis.session.info',
                        {
                            'user' => VAPI::Bindings::StringType.instance,
                            'created_time' => VAPI::Bindings::DateTimeType.instance,
                            'last_accessed_time' => VAPI::Bindings::DateTimeType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :user,
                          :created_time,
                          :last_accessed_time

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


end
