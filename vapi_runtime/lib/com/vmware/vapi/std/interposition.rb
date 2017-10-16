#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.std.interposition.
#---------------------------------------------------------------------------

require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Std
        module Interposition
        end
      end
    end
  end
end

# The  ``com.vmware.vapi.std.interposition``   package  provides  classs  that TODO.
module Com::Vmware::Vapi::Std::Interposition
  # Information about an interposed request for operation invocation. All interposers would receive an instance of this structure as an input parameter.
  # @!attribute [rw] service_id
  #     @return [String]
  #     Fully qualified name of the service which contains the interposed operation. In canonical format. For example org.example.hello.
  # @!attribute [rw] operation_id
  #     @return [String]
  #     Name of the interposed operation. In canonical format. For example say_hello.
  # @!attribute [rw] operation_input
  #     @return [VAPI::Data::DataValue]
  #     Input of the interposed operation.
  # @!attribute [rw] user
  #     @return [Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal, nil]
  #     User which started the interposed operation.
  #     There could be no authentication information. For example when methods are invoked anonymously.
  # @!attribute [rw] groups
  #     @return [Array<Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal>]
  #     Groups of the user who started the interposed operation. Would be empty if there is no authentication information.
  class InvocationRequest < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.std.interposition.invocation_request',
          {
            'service_id' => VAPI::Bindings::StringType.instance,
            'operation_id' => VAPI::Bindings::StringType.instance,
            'operation_input' => VAPI::Bindings::OpaqueType.instance,
            'user' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal')),
            'groups' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal'))
          },
          InvocationRequest,
          false,
          nil
        )
      end
    end

    attr_accessor :service_id,
                  :operation_id,
                  :operation_input,
                  :user,
                  :groups

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # Information about the result from an interposed operation invocation. All POST interposers will receive an instance of this structure.
  # @!attribute [rw] result_type
  #     @return [Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType]
  #     Type of the invocation result.
  # @!attribute [rw] output
  #     @return [VAPI::Data::DataValue]
  #     Normal result value.
  #     This  field  is optional and it is only relevant when the value of  ``resultType``  is   :attr:`Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType.NORMAL_RESULT`  .
  # @!attribute [rw] error
  #     @return [VAPI::Bindings::VapiStruct]
  #     Error result value.
  #     This  field  is optional and it is only relevant when the value of  ``resultType``  is   :attr:`Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType.ERROR_RESULT`  .
  class InvocationResult < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.std.interposition.invocation_result',
          {
            'result_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType'),
            'output' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::OpaqueType.instance),
            'error' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new())
          },
          InvocationResult,
          false,
          nil
        )
      end
    end

    attr_accessor :result_type,
                  :output,
                  :error

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # Type of the invocation result.
    # @!attribute [rw] normal_result
    #     @return [Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType]
    #     Normal invocation result.
    # @!attribute [rw] error_result
    #     @return [Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType]
    #     Error invocation result.
    class ResultType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vapi.std.interposition.invocation_result.result_type',
            ResultType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [ResultType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          ResultType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] normal_result
      #     @return [Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType]
      #     Normal invocation result.
      NORMAL_RESULT = ResultType.send(:new, 'NORMAL_RESULT')

      # @!attribute [rw] error_result
      #     @return [Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType]
      #     Error invocation result.
      ERROR_RESULT = ResultType.send(:new, 'ERROR_RESULT')
    end
  end
  # VMODL equivalent of com.vmware.vapi.security.PrincipalId.
  # @!attribute [rw] name
  #     @return [String]
  #     Principal name.
  # @!attribute [rw] domain
  #     @return [String, nil]
  #     Principal domain.
  #     Domain is optional in  ``com.vmware.vapi.security.PrincipalId``
  class SecurityPrincipal < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.std.interposition.security_principal',
          {
            'name' => VAPI::Bindings::StringType.instance,
            'domain' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          SecurityPrincipal,
          false,
          nil
        )
      end
    end

    attr_accessor :name,
                  :domain

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
end
