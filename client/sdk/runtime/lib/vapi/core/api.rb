#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Core

    # @abstract Subclass and override {#invoke} operation, which is used for invocation of operations.
    class ApiProvider
        # Invoke the operation using the execution context and input provided
        # @param operation_id [OperationIdentifier] the operation identifier
        # @param input_value [VAPI::Data::StructValue] the operation input
        # @param ctx [ExecutionContext] the execution context
        # @return [OperationResult] the result of the operation invocation
        def invoke(operation_id, input_value, ctx)
            raise NotImplementedError.new("invoke not overridden by concrete class")
        end
    end

    # The ServiceIdentifier has the information required to uniquely
    # address a vAPI service.
    # !@attribute [r] name
    #     @return [String] the fully qualified service name in canonical form
    class ServiceIdentifier
        attr_accessor :name

        # Constructs a new instance.
        # @param name [String] the fully qualified service name in canonical form
        def initialize(name)
            VAPI::Util.check_type(self, 'name', name, String)
            self.name = name
        end


        def to_json
            {
                :name => name
            }
        end
    end

    # The OperationIdentifier has the information required to uniquely
    # address a vAPI operation.
    # !@attribute [r] name
    #     @return [String] the operation name in canonical form
    # !@attribute [r] service_id
    #     @return [ServiceIdentifier] the service id
    class OperationIdentifier
        attr_accessor :name, :service_id

        # Constructs a new instance.
        # @param name [String] the operation name in canonical form
        # @param service_id [ServiceIdentifier] the service id
        def initialize(name, service_id)
            VAPI::Util.check_type(self, 'name', name, String)
            VAPI::Util.check_type(self, 'service_id', service_id, ServiceIdentifier)
            self.name = name
            self.service_id = service_id
        end

        def to_json
            {
                :name => name,
                :serviceId => service_id.to_json
            }
        end
    end

    # The OperationResult class contains the result of a operation call.
    # It contains either the output of the operation invocation or
    # an error reported by the operation invocation. These are mutually
    # exclusive.
    #
    # !@attribute [r] output
    #     @return [VAPI::Data::DataValue, nil] the operation output when successful
    # !@attribute [r] error
    #     @return [VAPI::Data::ErrorValue, nil] the operation error when not successful
    class OperationResult
        attr_reader :output, :error

        # Constructs a new instance.
        # @param output [VAPI::Data::DataValue, nil] the operation output when successful
        # @param error [VAPI::Data::ErrorValue, nil] the operation error when not successful
        def initialize(output=nil, error=nil)
            # VAPI::Util.check_type(self, 'output', output, VAPI::Data::DataValue) unless output.nil?
            # VAPI::Util.check_type(self, 'error', error, VAPI::Data::DataValue) unless error.nil?
            @output = output
            @error = error
            #TODO: ensure mutually exclusive
        end

        # Checks if the operation completed successfully or not.
        # @return [Boolean] false if the operation reported an error, otherwise true
        def successful?
            return self.error.nil?
        end

        def __hash__
            return to_s.__hash__()
        end

        def to_s
            return "OperationResult(output=#{output}, error=#{error})"
        end
    end
end
