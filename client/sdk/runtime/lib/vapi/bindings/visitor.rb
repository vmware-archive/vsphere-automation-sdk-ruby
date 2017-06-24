#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

require 'vapi/util'

module VAPI::Bindings

    # @abstract Base no-op implementation of a BindingType visitor.
    class BindingTypeVisitor < VAPI::Util::VapiVisitor

        # Constructs a new instance.
        def initialize()
            super('Type')
        end

        # Visits a void value.
        # @param binding_type [VoidType] Binding type of the value
        def visit_void(binding_type)
            raise NotImplementedError
        end

        # Visits an integer value.
        # @param binding_type [IntegerType] Binding type of the value
        def visit_integer(binding_type)
            raise NotImplementedError
        end

        # Visits a double value.
        # @param binding_type [DoubleType] Binding type of the value
        def visit_double(binding_type)
            raise NotImplementedError
        end

        # Visits a string value.
        # @param binding_type [StringType] Binding type of the value
        def visit_string(binding_type)
            raise NotImplementedError
        end

        def visit_id(binding_type)
            # Visits a ID value
            # @param binding_type [X] Binding type of the value
            raise NotImplementedError
        end

        # Visits a boolean value.
        # @param binding_type [BooleanType] Binding type of the value
        def visit_boolean(binding_type)
            raise NotImplementedError
        end

        # Visits a blob value.
        # @param binding_type [BlobType] Binding type of the value
        def visit_blob(binding_type)
            raise NotImplementedError
        end

        # Visits an error value.
        # @param binding_type [AnyErrorType] Binding type of the value
        def visit_any_error(binding_type)
            raise NotImplementedError
        end

        # Visits an opaque value.
        # @param binding_type [OpaqueType] Binding type of the value
        def visit_opaque(binding_type)
            raise NotImplementedError
        end

        # Visits a secret value.
        # @param binding_type [SecretType] Binding type of the value
        def visit_secret(binding_type)
            raise NotImplementedError
        end

        # Visits a datetime value.
        # @param binding_type [DateTimeType] Binding type of the value
        def visit_date_time(binding_type)
            raise NotImplementedError
        end

        # Visits an URI value.
        # @param binding_type [URIType] Binding type of the value
        def visit_uri(binding_type)
            raise NotImplementedError
        end

        # Visits an optional value.
        # @param binding_type [OptionalType] Binding type of the value
        def visit_optional(binding_type)
            raise NotImplementedError
        end

        # Visits a list value.
        # @param binding_type [ListType] Binding type of the value
        def visit_list(binding_type)
            raise NotImplementedError
        end

        # Visits a set value.
        # @param binding_type [SetType] Binding type of the value
        def visit_set(binding_type)
            raise NotImplementedError
        end

        # Visits a map value.
        # @param binding_type [MapType] Binding type of the value
        def visit_map(binding_type)
            raise NotImplementedError
        end

        # Visits a struct value.
        # @param binding_type [StructType] Binding type of the value
        def visit_struct(binding_type)
            raise NotImplementedError
        end

        # Visits a dynamic struct value.
        # @param binding_type [DynamicStructType] Binding type of the value
        def visit_dynamic_struct(binding_type)
            raise NotImplementedError
        end

        # Visits a enum value.
        # @param binding_type [EnumType] Binding type of the value
        def visit_enum(binding_type)
            raise NotImplementedError
        end

        def visit_error(binding_type)
            # Visits an error type
            # @param binding_type [ErrorType] Binding type of the value
            raise NotImplementedError
        end

        def visit_reference(binding_type)
            # Visits a reference type
            # @param binding_type [ReferenceType] Binding type of the value
            raise NotImplementedError
        end
    end

end
