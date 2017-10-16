#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT


module VAPI::Bindings

    # @abstract The base abstraction of a vAPI service.
    # This class is extended by all the generated client bindings and they provide the specific API detail.
    class VapiService

        attr_accessor :config, :service_info
        attr_reader :api_provider

        # Constructs a new instance.
        #
        # @param config [VapiConfig] Configuration data for vAPI services
        # @param service_info [ServiceInfo] service information from IDL model
        def initialize(config, service_info)
            self.config = config
            self.service_info = service_info

            @api_provider = config.api_provider
        end

        # Invoke the operation using the execution context and input provided
        # @param operation_info [OperationInfo] operation information from IDL model
        # @param input [Hash] the operation input
        # @return [Object] the result of the operation invocation
        # @raise [BindingsException] when the operation produces an error
        def invoke_with_info(operation_info, input=nil)
            raise BindingException.new('operation_info is required') if operation_info.nil?

            input_type = operation_info.input_type
            data_value = TypeConverter.convert_to_vapi(input, input_type)
            VAPI.log.debug "input = #{input.inspect}"
            #VAPI.log.debug "data_value = #{data_value}"

            operation_info.input_validators.each { |validator|
                messages = validator.validate(data_value, input_type)
                BindingException.raise_as_needed(messages)
            }

            result = api_provider.invoke(
                operation_info.id,
                data_value,
                config.connector.create_execution_context)
            VAPI.log.debug result.to_s + "\n"

            if result.successful?
                output_type = operation_info.output_type
                operation_info.output_validators.each { |validator|
                    messages = validator.validate(result.output, output_type)
                    BindingException.raise_as_needed(messages)
                }
                return TypeConverter.convert_to_ruby(result.output, output_type)
            else
                begin
                    error_name = result.error.name
                    error_class = VAPI::Util.class_from_canonical_name(error_name)
                    error_type = error_class.binding_type
                    error = TypeConverter.convert_to_ruby(result.error, error_type)
                rescue Exception => e
                    VAPI.log.error "failed to dynamically load a (standard) error type"
                    VAPI.log.error e
                    raise VAPI::Bindings::UnresolvedErrorType.new(error_type)
                end
                VAPI.log.error error
                if error.kind_of? Exception
                    raise error
                else
                    VAPI.log.error "loaded an error type (above) that is not an Exception"
                end
            end
        end
    end

    # Represents the metamodel information of a vAPI service.
    # @!attribute [r] id
    #     @return [VAPI::Core::ServiceIdentifier] the service identifier
    # @!attribute [r] operations
    #     @return [Hash<String, OperationInfo>] a map of the service operations
    class ServiceInfo
        attr_reader :id, :operations

        def initialize(id, operations)
            VAPI::Util.check_type(self, 'id', id, VAPI::Core::ServiceIdentifier)
            VAPI::Util.check_type(self, 'operations', operations, Hash)
            @id = id
            @operations = operations
        end
    end

    # Represents the metamodel information of a vAPI operation.
    # @!attribute [r] id
    #     @return [VAPI::Core::OperationIdentifier] the operation identifier
    class OperationInfo
        attr_reader :id, :input_type, :output_type, :error_types, :input_validators, :output_validators

        def initialize(id, input_type, output_type, error_types, input_validators=nil, output_validators=nil)
            VAPI::Util.check_type(self, 'id', id, VAPI::Core::OperationIdentifier)
            VAPI::Util.check_type(self, 'input_type', input_type, OperationInputType)
            VAPI::Util.check_type(self, 'output_type', output_type, BindingType)
            VAPI::Util.check_type(self, 'error_types', error_types, Hash)
            @id = id
            @input_type = input_type
            @output_type = output_type
            @error_types = error_types
            @input_validators = input_validators
            @output_validators = output_validators
        end
    end
end

