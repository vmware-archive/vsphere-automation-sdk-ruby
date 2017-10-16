#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Protocol

    class << self
        # Get protocol connector
        #
        # @param rpc_provider [VAPI::Protocol::RpcProvider] rpc provider implementation
        # @return [VAPI::Protocol::Connector] json rpc connector object
        def get_protocol_connector(rpc_provider)
            api_provider = JsonClientProvider(rpc_provider)
            connector = GenericConnector.new(rpc_provider, api_provider)
            return connector
        end
    end

    # Json RPC Provider for the client
    class JsonClientProvider < VAPI::Core::ApiProvider

        attr_reader :rpc_provider

        # Constructs a new instance.
        # @param rpc_provider [VAPI::Protocol::RpcProvider] rpc provider implementation
        def initialize(rpc_provider)
             @rpc_provider = rpc_provider
        end

        # Invoke the operation using the execution context and input provided
        # @param operation_id [OperationIdentifier] the operation identifier
        # @param input [DataValue] the operation input
        # @param ctx [ExecutionContext] the execution context
        # @return [OperationResult] the result of the operation invocation
        def invoke(operation_id, input, ctx)
            request = serialize_request(ctx, operation_id, input)
            response = rpc_provider.do_request('application/json', request)
            json_rpc = deserialize_response(response)

            #TODO: add some validation of the JSON RPC protocol here

            # we need to call a deserializer here that converts the JSON data
            # to a vAPI DataValue.  Then, the DateValue (or wire value) can be type
            # checked and passed up the stack.  The BindingType can then convert the
            # DataValue object to its final Ruby type, as needed.
            JsonRpcToVapi.create_operation_result(json_rpc['result'])
        end

        private

        def deserialize_response(response)
            JSON.parse(response)
        end

        # Construct a Data Hash [Stage] from vapi objects
        def serialize_request(ctx, operation_id, input)
            data = {
                :jsonrpc => '2.0',
                #TODO: is this the op_id? or, is it a long sequence number?
                :id => ctx.application_context.get_op_id,
                :method => 'invoke',
                :params => {
                    :serviceId => operation_id.service_id.name,
                    :operationId => operation_id.name,
                    :input => vapi_as_json(input),
                    :ctx => ctx.to_json,
                }
            }
            data.to_json
        end

        def vapi_as_json(data_value)
            data_value.as_json unless data_value.nil?
            #TODO: this still uses the brute-force approach to convert objects, so
            # utilize the VapiToJson converter instead
        end
    end
end
