#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

require 'securerandom'

module VAPI::Core

    EXECUTION_CONTEXT = 'ctx'

    APPLICATION_CONTEXT = 'appCtx'

    SECURITY_CONTEXT = 'securityCtx'

    class << self
        # Create a default application context.
        # The created context will only have opId.
        #
        # @return [ApplicationContext] Newly created application context
        def create_default_application_context()
            return ApplicationContext.create_instance()
        end
    end


    # @abstract Base class for holding context properties.
    class ContextProperties
        attr_reader :props

        # Constructs a new instance.
        # @param args [Hash] an optional map of context properties
        def initialize(args={})
            @props = {}
            if args
                VAPI::Util.check_type(self, 'args', args, Hash)
                # iterate, rather than merge, to get type checking
                args.each { |name, value| set_property(name, value) }
            end
        end

        # Gets a property with the given name.
        # @param name [String] the property name
        def get_property(name)
            @props[name]
        end

        # Sets a property with the given name and value.
        # @param name [String] the property name
        # @param value [String] the property value
        def set_property(name,value)
            VAPI::Util.check_type(self, 'name', name, String)
            VAPI::Util.check_type(self, 'value', value, String)
            @props[name] = value
            self # enable method chaining
        end

        def to_s()
            return "#{self.class.name}(#{props})"
        end

        def to_json()
            props
        end
    end

    # Interface representing additional data associated with the request for
    # method execution represented by this ExecutionContext.
    # The additional data format is key-value pairs of String.
    #
    # This additional data is provided by the client initiating the
    # execution, it is then transported as is over the wire and is
    # available for the provider-side service implementations on the server.
    # This extra data is completely opaque for the infrastructure, in other
    # words it is a contract between the client and the service implementation
    # only.
    class ApplicationContext < ContextProperties

        OP_ID = 'opId'

        class << self
            # Create a default application context.
            # The created context will only have opId.
            #
            # @return [ApplicationContext] Newly created application context
            def create_instance()
                op_id = SecureRandom.uuid
                return ApplicationContext.new({OP_ID => op_id})
            end
        end

        # Constructs a new instance.
        # @param args [Hash] an optional map of context properties
        def initialize(args={})
            super(args)
        end

        def get_op_id()
            get_property(OP_ID)
        end
    end

    # Implementations of this interface will provide all needed data for
    # authentication for the given invocation.
    class SecurityContext < ContextProperties
        SCHEME_ID = 'schemeId'

        # Constructs a new instance.
        # @param scheme_id [String] the scheme id (optional, default is nil)
        # @param args [Hash] an optional map of initial context properties
        def initialize(scheme_id=nil, args={})
            super(args)
            set_property(SCHEME_ID, scheme_id) unless scheme_id.nil?
        end

        def get_scheme_id()
            get_property(SCHEME_ID)
        end
    end


    # This class provides out-of-band context information that is passed along
    # with a method invocation.
    class ExecutionContext
        attr_accessor :application_context, :security_context

        # Constructs a new instance.
        # @param application_context [ApplicationContext] the application context (optional)
        # @param security_context [SecurityContext] the security context (optional)
        # @raise [TypeError] if a parameter is given, but is not the expected type
        def initialize(application_context=nil, security_context=nil)
            if not application_context.nil?
                VAPI::Util.check_type(self, 'application_context', application_context, ApplicationContext)
            else
                application_context = ApplicationContext.create_instance()
            end

            if not security_context.nil?
                VAPI::Util.check_type(self, 'security_context', security_context, SecurityContext)
            end

            self.application_context = application_context
            self.security_context = security_context
        end

        def __hash__()
            return to_s().__hash__()
        end

        def to_s()
            app_ctx = "application_context=#{application_context}"
            sec_ctx = "security_context=#{security_context}"
            return "#{self.class.name}(#{app_ctx}, #{sec_ctx})"
        end

        def to_json()
            result = { APPLICATION_CONTEXT => application_context.to_json }
            if not security_context.nil? and security_context.props.size > 0
                result[SECURITY_CONTEXT] = security_context.to_json
            end
            result
        end
    end

end
