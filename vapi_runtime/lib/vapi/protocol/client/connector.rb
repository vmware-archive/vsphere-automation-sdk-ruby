#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Protocol

    class << self
        # Creates a connector instance with the given configuration parameters.
        # @param uri [String] the URI of the vAPI endpoint
        # @param rpc [Symbol] the RPC mechanism name (default :http)
        # @param msg [Symbol] the messaging mechanism name (default :json)
        def create_connector(uri, ssl_options = {}, rpc=:http, msg=:json)
            uri = uri #|| "https://#{cloudvm_ip}/vapi"
            rpc = rpc || :http
            msg = msg || :json

            rpc_provider = VAPI::Protocol::RpcFactory.create_rpc_provider(rpc, uri, ssl_options)
            api_provider = VAPI::Protocol::MsgFactory.create_msg_provider(msg, rpc_provider)
            connector = GenericConnector.new(rpc_provider, api_provider)
        end
    end

    # @abstract Connector interface.
    # @!attribute [r] api_provider
    #     @return [VAPI::Core::ApiProvider] the API provider instance
    # @!attribute [rw] application_context
    #     @return [VAPI::Core::ApplicationContext] the application context.
    #     All the subsequent calls made using this connector will use this
    #     as the application context in the ExecutionContext.
    # @!attribute [rw] security_context
    #     @return [VAPI::Core::SecurityContext] the security context.
    #     All the subsequent calls made using this connector will use this
    #     as the security context in the ExecutionContext.
    class Connector

        attr_reader :api_provider
        attr_accessor :application_context, :security_context

        # Constructs a new instance.
        # @param api_provider [VAPI::Core::ApiProvider] the API provider instance
        def initialize(api_provider)
            @api_provider = api_provider
            self.application_context = nil
            self.security_context = nil
        end

        # rpc provider connect
        # @return [Void]
        def connect()
            raise "abstract method not implemented (Connector.connect)"
        end

        # rpc provider disconnect
        # @return [Void]
        def disconnect()
            raise "abstract method not implemented (Connector.disconnect)"
        end

        # Creates a new execution context instance.
        # @return [VAPI::Core::ExecutionContext] execution context
        def create_execution_context()
            app_ctx = self.application_context
            app_ctx ||= VAPI::Core.create_default_application_context()
            sec_ctx = self.security_context
            sec_ctx ||= VAPI::Core::SecurityContext.new
            return VAPI::Core::ExecutionContext.new(app_ctx, sec_ctx)
        end
    end

    # Generic protocol connector.
    # @!attribute [r] rpc_provider
    #     @return [VAPI::Protocol::RpcProvider] the RPC provider instance
    # @!attribute [r] api_provider
    #     @return [VAPI::Core::ApiProvider] the API provider instance
    # @!attribute [rw] session
    # @!attribute [rw] application_context
    #     @return [VAPI::Core::ApplicationContext] the application context.
    #     All the subsequent calls made using this connector will use this
    #     as the application context in the ExecutionContext.
    # @!attribute [rw] security_context
    #     @return [VAPI::Core::SecurityContext] the security context.
    #     All the subsequent calls made using this connector will use this
    #     as the security context in the ExecutionContext.
    class GenericConnector < Connector
        attr_reader :rpc_provider
        attr_accessor :session

        # Constructs a new instance.
        # @param rpc_provider [VAPI::Protocol::RpcProvider] the RPC provider instance
        # @param api_provider [VAPI::Core::ApiProvider] the API provider instance
        def initialize(rpc_provider, api_provider)
            super(api_provider)
            @rpc_provider = rpc_provider
            session = nil
        end

        # rpc provider connect
        def connect()
            rpc_provider.connect()
        end

        # rpc provider disconnect
        def disconnect()
            rpc_provider.disconnect()
        end
    end
end
