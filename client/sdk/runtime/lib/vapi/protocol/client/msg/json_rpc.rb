#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

require 'json'

module VAPI::Protocol

    # JSON RPC to vAPI wire DataValue.
    class JsonRpcToVapi

        # Creates an operation result from a JSON RPC result hash.
        #
        # @param json_result [Hash] JSON method result
        # @return [VAPI::Core::OperationResult] method result
        def self.create_operation_result(json_result)
            if json_result.has_key?('result')
                # tollerate the passing of the whole JSON RPC hash
                json_result = json_result['result']
            end
            output = json_result.has_key?('output') ?
                create_data_value(json_result['output']) : nil
            error = json_result.has_key?('error') ?
                create_data_value(json_result['error']) : nil
            if output.nil? && error.nil?
                json_result.each { |k,v| puts "#{k} : #{v}" }
                raise 'both output and error are nil and one must be set'
            end
            return VAPI::Core::OperationResult.new(output, error)
        end

        # Creates a vAPI data value from a JSON RPC hash.
        #
        # TODO: Structure names and its fields are converted from
        # u'' format to str format. This will break if we allow non
        # ASCII characters in the IDL.
        #
        # @param value [Hash] JSON wire value
        # @return [VAPI::Data::DataValue] vAPI data value
        def self.create_data_value(value)
            result = nil
            if value.nil?
                result = VAPI::Data::VoidValue.new
            elsif value.is_a? Hash
                # Optional, Secret, Blob, Error, Structure
                # types are inside object
                if value.size > 1
                    raise 'vapi_jsonrpc_error_invalid_params()'
                end
                (type_name, json_value) = value.shift
                #NO: typ = json_to_vapi_map[type_name]
                case type_name
                when 'SECRET'
                    result = VAPI::Data::SecretValue.new(json_value)
                when 'BINARY'
                    result = VAPI::Data::BlobValue.new(json_value)
                when 'OPTIONAL'
                    opt_value = create_data_value(json_value) unless json_value.nil?
                    result = VAPI::Data::OptionalValue.new(opt_value)
                when 'STRUCTURE'
                    if json_value.size > 1
                        raise 'vapi_jsonrpc_error_invalid_params()'
                    end
                    struct_name, fields = json_value.shift
                    #TODO: resovle the struct_name and get its @@binding_type,
                    # so then we can pass field_names to this ctor here.
                    result = VAPI::Data::StructValue.new(struct_name)
                    add_fields(result, fields)
                when 'ERROR'
                    if json_value.size > 1
                        raise 'vapi_jsonrpc_error_invalid_params()'
                    end
                    error_name, fields = json_value.shift
                    result = VAPI::Data::ErrorValue.new(error_name)
                    add_fields(result, fields)
                else
                    raise "unexpected type name (#{type_name}) found in a JSON RPC response"
                end
            elsif value.is_a? Array
                list_data_values = []
                for v in value
                    list_data_values << create_data_value(v)
                end
                result = VAPI::Data::ListValue.new(list_data_values)
            elsif value.is_a? String
                result = VAPI::Data::StringValue.new(value)
            elsif value.is_a? Fixnum
                result = VAPI::Data::IntegerValue.new(value)
            elsif value.is_a? Float
                result = VAPI::Data::DoubleValue.new(value)
            else
                if value.is_a? TrueClass
                    result = VAPI::Data::BooleanValue.new(true)
                elsif value.is_a? FalseClass
                    result = VAPI::Data::BooleanValue.new(false)
                else
                    raise 'unexpected type found in a JSON RPC response'
                end
            end
            return result
        end

        def self.add_fields(result, json_fields)
            json_fields.each { |name, json_value|
                data_value = create_data_value(json_value)
                result.set_field(name, data_value)
            }
        end

        #FYI: this stuff is only deserialized on the server, so punt for Ruby for now.
        #def self.execution_context(ctx)
        #def self.security_ctx(ctx)
        #def self.app_ctx(ctx)
    end

    # @abstract JSON RPC error base class.
    class JsonRpcError < Exception

        attr_reader :error

        # Constructs a new instance.
        # @param error [Hash] JSON RPC error
        def initialize(error)
            super()
            @error = error
        end
    end

    # JSON RPC 2.0 error.
    class JsonRpc20Error < JsonRpcError

        attr_reader :code, :json_message, :data

        INVALID_REQUEST = -32600
        METHOD_NOT_FOUND = -32601
        INVALID_PARAMS = -32602
        INTERNAL_ERROR = -32603
        PARSE_ERROR = -32700

        # TRANSPORT_ERROR is defined in xmlrpc error code
        #  http://xmlrpc-epi.sourceforge.net/specs/rfc.fault_codes.php
        # but not JSON RPC 2.0
        # Need this for server connection error
        TRANSPORT_ERROR = -32300

        SERVER_ERROR_RANGE_MIN = -32768
        SERVER_ERROR_RANGE_MAX = -32000

        DEFAULT_MESSAGES = {
            INVALID_REQUEST: 'Invalid Request.',
            METHOD_NOT_FOUND: 'Method not found.',
            INVALID_PARAMS: 'Invalid params.',
            INTERNAL_ERROR: 'Internal error.',
            PARSE_ERROR: 'Parse error.',
            TRANSPORT_ERROR: 'Transport error.',
        }

        # JSON RPC 2.0 error.
        #
        # @param code [Fixnum] error type that occurred
        # @param message [String] a short description of the error
        # @param data [Hash] more info about the error
        def initialize(code, message=nil, data=nil)
            unless code.is_a? Fixnum
                VAPI.log.error('JSON RPC error code type: Expecting "int". Got "%s"',
                             str(type(code)))
                raise
            end
            if message.nil? and (code >= SERVER_ERROR_RANGE_MIN or
                                 code <= SERVER_ERROR_RANGE_MAX)
                message = DEFAULT_MESSAGES[code]
                message = 'Server error.' if message.nil?
            end
            @code = code
            @json_message = message
            @data = data

            error = {'code' => code, 'message' => message}
            error['data'] = data unless data.nil?
            super(error)
        end

        def to_s
            "#{code}: #{json_message}: #{data}"
        end
    end


    # vapi json rpc parse error
    #
    # @param data [Hash] json rpc error object
    # @return [JsonRpcError] json rpc error object
    def vapi_jsonrpc_error_parse_error(data=nil)
        return JsonRpc20Error.new(code=JsonRpc20Error.PARSE_ERROR, data=data)
    end

    # vapi json rpc invalid request error
    #
    # @param data [Hash] json rpc error object
    # @return [JsonRpcError] json rpc error object
    def vapi_jsonrpc_error_invalid_request(data=nil)
        return JsonRpc20Error.new(code=JsonRpc20Error.INVALID_REQUEST, data=data)
    end

    # vapi json rpc method not found error
    #
    # @param data [Hash] json rpc error object
    # @return [JsonRpcError] json rpc error object
    def vapi_jsonrpc_error_method_not_found(data=nil)
        return JsonRpc20Error.new(code=JsonRpc20Error.METHOD_NOT_FOUND, data=data)
    end

    # vapi json rpc invalid params error
    #
    # @param data [Hash] json rpc error object
    # @return [JsonRpcError] json rpc error object
    def vapi_jsonrpc_error_invalid_params(data=nil)
        return JsonRpc20Error.new(code=JsonRpc20Error.INVALID_PARAMS, data=data)
    end

    # vapi json rpc internal error
    #
    # @param data [Hash] json rpc error object
    # @return [JsonRpcError] json rpc error object
    def vapi_jsonrpc_error_internal_error(data=nil)
        return JsonRpc20Error.new(code=JsonRpc20Error.INTERNAL_ERROR, data=data)
    end

    # vapi json rpc transport error
    #
    # @param data [Hash] json rpc error object
    # @return [JsonRpcError] json rpc error object
    def vapi_jsonrpc_error_transport_error(data=nil)
        return JsonRpc20Error.new(code=JsonRpc20Error.TRANSPORT_ERROR, data=data)
    end

end
