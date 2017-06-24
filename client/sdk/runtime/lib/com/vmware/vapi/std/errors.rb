#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.std.errors.
#---------------------------------------------------------------------------

require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vapi
      module Std
        module Errors
        end
      end
    end
  end
end

# The  ``com.vmware.vapi.std.errors``   package  provides the standard  errors  that can be included in the list of  errors  in the specification of  methods  to indicate that the  method  might report those  errors . It also provides some  classes  intended to be used as payload to provide additional information about those  errors .
module Com::Vmware::Vapi::Std::Errors
  # The  ``Com::Vmware::Vapi::Std::Errors::ArgumentLocations``   class  describes which part(s) of the input to the  method  caused the  error .  
  # 
  #  Some types of  errors  are caused by the value of one of the inputs to the  method , possibly due to an interaction with other inputs to the  method . This  class  is intended to be used as the payload to identify those inputs when the  method  reports  errors  like   :class:`Com::Vmware::Vapi::Std::Errors::InvalidArgument`   or   :class:`Com::Vmware::Vapi::Std::Errors::NotFound`  . See   :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`  .
  # @!attribute [rw] primary
  #     @return [String]
  #     String describing the location of the input that triggered the  error .
  # @!attribute [rw] secondary
  #     @return [Array<String>]
  #     List  (possibly empty) of strings describing the locations of other inputs that caused the the primary input to trigger the  error .
  class ArgumentLocations < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.std.errors.argument_locations',
          {
            'primary' => VAPI::Bindings::StringType.instance,
            'secondary' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
          },
          ArgumentLocations,
          false,
          nil
        )
      end
    end

    attr_accessor :primary,
                  :secondary

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::FileLocations``   class  identifies the file(s) that caused the  method  to report the  error .  
  # 
  #  Some types of  errors  are caused by a problem with one or more files. This  class  is intended to be used as the payload to identify those files when the  method  reports  errors  like   :class:`Com::Vmware::Vapi::Std::Errors::NotFound`  . See   :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`  .
  # @!attribute [rw] primary
  #     @return [String]
  #     String identifying the file that triggered the  error .
  # @!attribute [rw] secondary
  #     @return [Array<String>]
  #     List  (possibly empty) of strings identifying other files that caused the primary file to trigger the  error .
  class FileLocations < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.std.errors.file_locations',
          {
            'primary' => VAPI::Bindings::StringType.instance,
            'secondary' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
          },
          FileLocations,
          false,
          nil
        )
      end
    end

    attr_accessor :primary,
                  :secondary

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::TransientIndication``   class  indicates whether or not the  error  is transient.  
  # 
  #  Some types of  errors  are transient in certain situtations and not transient in other situtations. This  error  payload can be used to indicate to clients whether a particular  error  is transient. See   :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`  .
  # @!attribute [rw] is_transient
  #     @return [Boolean]
  #     Indicates that the  error  this  class  is attached to is transient.
  class TransientIndication < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vapi.std.errors.transient_indication',
          {
            'is_transient' => VAPI::Bindings::BooleanType.instance
          },
          TransientIndication,
          false,
          nil
        )
      end
    end

    attr_accessor :is_transient

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::Error``   error  describes the fields  common to all standard  errors .  
  # 
  #  This  error  serves two purposes:  
  # 
  #   # It is the  error  that clients in many programming languages can catch to handle all standard  errors . Typically those clients will display one or more of the localizable messages from   :attr:`Com::Vmware::Vapi::Std::Errors::Error.messages`   to a human. 
  #    # It is the  error  that  methods  can report when they need to report some  error , but the  error  doesn't fit into any other standard  error , and in fact the only reasonable way for a client to react to the  error  is to display the message(s) to a human. 
  #   

  # @!attribute [rw] messages
  #     @return [Array<Com::Vmware::Vapi::Std::LocalizableMessage>]
  #     Stack of one or more localizable messages for human  error  consumers.  
  #     
  #      The message at the top of the stack (first in the list) describes the  error  from the perspective of the  method  the client invoked. Each subsequent message in the stack describes the "cause" of the prior message.
  # @!attribute [rw] data
  #     @return [VAPI::Bindings::VapiStruct, nil]
  #     Data to facilitate clients responding to the  method  reporting a standard  error  to indicating that it was unable to complete successfully.  
  #     
  #       Methods  may provide data that clients can use when responding to  errors . Since the data that clients need may be specific to the context of the  method  reporting the  error , different  methods  that report the same  error  may provide different data in the  error . The documentation for each each  method  will describe what, if any, data it provides for each  error  it reports. The   :class:`Com::Vmware::Vapi::Std::Errors::ArgumentLocations`  ,   :class:`Com::Vmware::Vapi::Std::Errors::FileLocations`  , and   :class:`Com::Vmware::Vapi::Std::Errors::TransientIndication`    classes  are intended as possible values for this  field .   :class:`Com::Vmware::Vapi::Std::DynamicID`   may also be useful as a value for this  field  (although that is not its primary purpose). Some  classs  may provide their own specific  classes  for use as the value of this  field  when reporting  errors  from their  methods .
  #     Some  methods  will not set this  field  when reporting  errors .
  class Error < VAPI::Bindings::VapiError

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.error',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  Error)
          end
      end

      attr_accessor :messages,
        :data

      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::Unsupported``   error  indicates that the  method  is not supported by the  class .  
  # 
  #  Examples:  
  # 
  #   * Trying to hot-plug a CPU when the current configuration of the VM does not support hot-plugging of CPUs. 
  #    * Trying to change the memory size to a value that is not within the acceptable guest memory bounds supported by the virtual machine's host. 
  #   

  class Unsupported < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.unsupported',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  Unsupported)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::UnexpectedInput``   error  indicates that the request contained a  parameter  or  field  whose name is not known by the server.  
  # 
  #  Every  method  expects  parameters  with known names. Some of those  parameters  may be (or contain)  classes , and the  method  expects those  classes  to contain  fields  with known names. If the  method  receives  parameters  or  fields  with names that is does not expect, this  error  may be reported.  
  # 
  #  This  error  can be reported by the API infrastructure for any  method , but it is specific to the API infrastructure, and should never be reported by the implementation of any  method .  
  # 
  #  Examples:  
  # 
  #   * A client using stubs generated from the interface specification for version2 of a  class  invokes the  method  passing one or more  parameters  that were added in version2, but they are communicating with a server that only supports version1 of the  class . 
  #    * A client provides an unexpected  parameter  or  field  name when invoking the  method  using a dynamic interface (for example REST). 
  #   

  class UnexpectedInput < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.unexpected_input',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  UnexpectedInput)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::Unauthorized``   error  indicates that the user is not authorized to perform the  method .  
  # 
  #  API requests may include a security context containing user credentials. For example, the user credentials could be a SAML token, a user name and password, or the session identifier for a previously established session. Invoking the  method  may require that the user identified by those credentials has particular privileges on the  method  or on one or more resource identifiers passed to the  method .  
  # 
  #  Examples:  
  # 
  #   * The  method  requires that the user have one or more privileges on the  method , but the user identified by the credentials in the security context does not have the required privileges. 
  #    * The  method  requires that the user have one or more privileges on a resource identifier passed to the  method , but the user identified by the credentials in the security context does not have the required privileges. 
  #   
  #    
  # 
  #   
  # 
  #  Counterexamples:  
  # 
  #   * The SAML token in the request's security context has expired. A   :class:`Com::Vmware::Vapi::Std::Errors::Unauthenticated`    error  would be used instead. 
  #    * The user name and password in the request's security context are invalid. The   :class:`Com::Vmware::Vapi::Std::Errors::Unauthenticated`    error  would be used instead. 
  #    * The session identifier in the request's security context identifies a session that has expired. The   :class:`Com::Vmware::Vapi::Std::Errors::Unauthenticated`    error  would be used instead. 
  #   
  #    
  # 
  #  For security reasons, the   :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`    field  in this  error  is  nil , and the   :attr:`Com::Vmware::Vapi::Std::Errors::Error.messages`    field  in this  error  does not disclose why the user is not authorized to perform the  method . For example the messages would not disclose which privilege the user did not have or which resource identifier the user did not have the required privilege to access. The API documentation should indicate what privileges are required.

  class Unauthorized < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.unauthorized',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  Unauthorized)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::Unauthenticated``   error  indicates that the  method  requires authentication and the user is not authenticated.  
  # 
  #  API requests may include a security context containing user credentials. For example, the user credentials could be a SAML token, a user name and password, or the session identifier for a previously established session.  
  # 
  #  Examples:  
  # 
  #   * The SAML token in the request's security context has expired. 
  #    * The user name and password in the request's security context are invalid. 
  #    * The session identifier in the request's security context identifies a session that has expired. 
  #   
  #   Counterexamples:  
  # 
  #   *  The user is authenticated but isn't authorized to perform the requested  method . The   :class:`Com::Vmware::Vapi::Std::Errors::Unauthorized`    error  would be used instead. 
  #   
  #    
  # 
  #  For security reasons, the   :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`    field  in this  error  is  nil , and the   :attr:`Com::Vmware::Vapi::Std::Errors::Error.messages`    field  in this  error  does not disclose which part of the security context is correct or incorrect. For example the messages would not disclose whether a username or a password is valid or invalid, but only that a combination of username and password is invalid.

  class Unauthenticated < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.unauthenticated',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  Unauthenticated)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource``   error  indicates that the  method  failed because it was unable to allocate or acquire a required resource.  
  # 
  #  Examples:  
  # 
  #   * Trying to power on a virtual machine when there are not enough licenses to do so. 
  #    * Trying to power on a virtual machine that would violate a resource usage policy. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * Trying to power off a virtual machine that is in the process of being powered on. A   :class:`Com::Vmware::Vapi::Std::Errors::ResourceBusy`    error  would be used instead. 
  #    * Trying to remove a VMFS datastore when the is a virtual machine registered on any host attached to the datastore. The   :class:`Com::Vmware::Vapi::Std::Errors::ResourceInUse`    error  would be used instead. 
  #    * Trying to add a virtual switch if the physical network adapter being bridged is already in use. The   :class:`Com::Vmware::Vapi::Std::Errors::ResourceInUse`    error  would be used instead. 
  #    * Attempt to invoke some  method  on a virtual machine when the virtual machine's configuration file is not accessible (for example due to a storage APD condition). The   :class:`Com::Vmware::Vapi::Std::Errors::ResourceInaccessible`    error  would be used instead. 
  #   

  class UnableToAllocateResource < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.unable_to_allocate_resource',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  UnableToAllocateResource)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::TimedOut``   error  indicates that the  method  did not complete within the allowed amount of time. The allowed amount of time might be:  
  # 
  #   * provided by the client as an input  parameter . 
  #    * a fixed limit of the  class  implementation that is a documented part of the contract of the  class . 
  #    * a configurable limit used by the implementation of the  class . 
  #    * a dynamic limit computed by the implementation of the  class . 
  #   
  #   The  method  may or may not complete after the  ``Com::Vmware::Vapi::Std::Errors::TimedOut``   error  was reported.  
  # 
  #  Examples:  
  # 
  #   * The  method  was unable to complete within the timeout duration specified by a  parameter  of the  method . 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * A server implementation that puts requests into a queue before dispatching them might delete a request from the queue if it doesn't get dispatched within  *n*  minutes. The   :class:`Com::Vmware::Vapi::Std::Errors::ServiceUnavailable`    error  would be used instead. 
  #   

  class TimedOut < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.timed_out',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  TimedOut)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::ServiceUnavailable``   error  indicates that the  class  is unavailable.  
  # 
  #  Examples:  
  # 
  #   * Attempt to invoke a  method  when the server is too busy. 
  #    * Attempt to invoke a  method  when the server is undergoing maintenance. 
  #    * An  method  fails to contact VMware Tools running inside the virtual machine. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * A client provides an invalid service or operation identifier when invoking the  method  using a dynamic interface (for example REST). The   :class:`Com::Vmware::Vapi::Std::Errors::OperationNotFound`    error  would be used instead. 
  #    * A client invokes the  method  from the  class , but that  class  has not been installed. The   :class:`Com::Vmware::Vapi::Std::Errors::OperationNotFound`    error  would be used instead. 
  #   

  class ServiceUnavailable < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.service_unavailable',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  ServiceUnavailable)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::ResourceInaccessible``   error  indicates that the  method  could not be completed because an entity is not accessible.  
  # 
  #  Examples:  
  # 
  #   * Attempt to invoke some  method  on a virtual machine when the virtual machine's configuration file is not accessible (for example due to a storage APD condition). 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * Attempt to invoke some  method  when the server is too busy. The   :class:`Com::Vmware::Vapi::Std::Errors::ServiceUnavailable`    error  would be used instead. 
  #    * Attempt to invoke some  method  when the server is undergoing maintenance. The   :class:`Com::Vmware::Vapi::Std::Errors::ServiceUnavailable`    error  would be used instead. 
  #    * Some  method  fails to contact VMware Tools running inside the virtual machine. The   :class:`Com::Vmware::Vapi::Std::Errors::ServiceUnavailable`    error  would be used instead. 
  #   

  class ResourceInaccessible < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.resource_inaccessible',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  ResourceInaccessible)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::ResourceInUse``   error  indicates that the  method  could not be completed because a resource is in use.  
  # 
  #  Examples:  
  # 
  #   * Trying to remove a VMFS datastore when the is a virtual machine registered on any host attached to the datastore. 
  #    * Trying to add a virtual switch if the physical network adapter being bridged is already in use. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * Trying to power off a virtual machine that is in the process of being powered on. The   :class:`Com::Vmware::Vapi::Std::Errors::ResourceBusy`    error  would be used instead. 
  #   

  class ResourceInUse < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.resource_in_use',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  ResourceInUse)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::ResourceBusy``   error  indicates that the  method  could not be completed because a resource it needs is busy.  
  # 
  #  Examples:  
  # 
  #   * Trying to power off a virtual machine that is in the process of being powered on. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * Trying to remove a VMFS datastore when there is a virtual machine registered on any host attached to the datastore. The   :class:`Com::Vmware::Vapi::Std::Errors::ResourceInUse`    error  would be used instead. 
  #   

  class ResourceBusy < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.resource_busy',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  ResourceBusy)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::OperationNotFound``   error  indicates that the  method  specified in the request could not be found.  
  # 
  #  Every API request specifies a service identifier and an operation identifier along with the  parameters . If the API infrastructure is unable to find the requested  class  or  method  it reports this  error .  
  # 
  #  This  error  can be reported by the API infrastructure for any  method , but it is specific to the API infrastructure, and should never be reported by the implementation of any  method .  
  # 
  #  Examples:  
  # 
  #   * A client provides an invalid service or operation identifier when invoking the  method  using a dynamic interface (for example REST). 
  #    * A client invokes the  method  from a  class , but that  class  has not been installed. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * A client invokes a task scheduling  method , but provides an invalid service identifier or operation identifier. The   :class:`Com::Vmware::Vapi::Std::Errors::NotFound`    error  would be used instead. 
  #   

  class OperationNotFound < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.operation_not_found',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  OperationNotFound)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::NotFound``   error  indicates that a specified element could not be found.  
  # 
  #  Examples:  
  # 
  #   * Invoke the  method  to retrieve information about a virtual machine, passing an id that does not identify an existing virtual machine. 
  #    * Invoke the  method  to modify the configuration of a virtual nic, passing an id that does not identify an existing virtual nic in the specified virtual machine. 
  #    * Invoke the  method  to remove a vswitch, passing an id that does not identify an existing vswitch. 
  #   

  class NotFound < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.not_found',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  NotFound)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState``   error  indicates that the requested  method  is not allowed with a resource or service in its current state. This could be because the  method  is performing a configuration change that is not allowed in the current state or because  method  itself is not allowed in the current state.  
  # 
  #  Examples:  
  # 
  #   * Trying to add a virtual device that cannot be hot plugged to a running virtual machine. 
  #    * Trying to upgrade the virtual hardware version for a suspended virtual machine. 
  #    * Trying to power off, reset, or suspend a virtual machine that is not powered on. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * Trying to power off a virtual machine that is in the process of being powered on. The   :class:`Com::Vmware::Vapi::Std::Errors::ResourceBusy`    error  would be used instead. 
  #   

  class NotAllowedInCurrentState < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.not_allowed_in_current_state',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  NotAllowedInCurrentState)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::InvalidRequest``   error  indicates that the request is malformed in such a way that the server is unable to process it.  
  # 
  #  Examples:  
  # 
  #   * The XML in a SOAP request is not well-formed so the server cannot parse the request. 
  #    * The XML in a SOAP request is well-formed but does not match the structure required by the SOAP specification. 
  #    * A JSON-RPC request is not valid JSON. 
  #    * The JSON sent in a JSON-RPC request is not a valid JSON-RPC Request object. 
  #    * The Request object from a JSON-RPC request does not match the structure required by the API infrastructure. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * The  parameter  has a value that is not with the required range. The   :class:`Com::Vmware::Vapi::Std::Errors::InvalidArgument`    error  would be used instead. 
  #    * The name of the  method  specified in the request doesn't not match any known  method . The   :class:`Com::Vmware::Vapi::Std::Errors::NotFound`    error  would be used instead. 
  #   
  #    
  # 
  #  Some transport protocols (for example JSON-RPC) include their own mechanism for reporting these kinds of errors, and the API infrastructure for a programming language may expose the errors using a language specific mechanism, so this  error  might not be used.

  class InvalidRequest < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.invalid_request',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  InvalidRequest)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::InvalidElementType``   error  indicates that the server was unable to fulfil the request because an element of a specific type cannot be a member of particular group.  
  # 
  #  This  error  could be reported, for example, if an attempt is made to put an element into the wrong type of container.  
  # 
  #  Examples:  
  # 
  #   * Attempt to put a virtual machine into a folder that can only contain hosts. 
  #    * Attempt to attach a SCSI virtual disk to an IDE port. 
  #   
  #   Counterexamples:  
  # 
  #   * A  parameter  has a value that is not of the expected type. The   :class:`Com::Vmware::Vapi::Std::Errors::InvalidArgument`    error  would be used instead. 
  #   

  class InvalidElementType < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.invalid_element_type',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  InvalidElementType)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration``   error  indicates that an attempt to modify the configuration of an element or a group containing the element failed due to the configuraton of the element. A typical case is when the  method  is am attempt to change the group membership of the element fails, in which case a configuration change on the element may allow the group membership change to succeed.  
  # 
  #  Examples:  
  # 
  #   * Attempt to move a host with a fault tolerant virtual machine out of a cluster (i.e. make the host a standalone host). 
  #    * Attempt to remove a host from a DRS cluster without putting the host into maintenance mode. 
  #   

  class InvalidElementConfiguration < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.invalid_element_configuration',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  InvalidElementConfiguration)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::InvalidArgument``   error  indicates that the values received for one or more  parameters  are not acceptable.  
  # 
  #  This  error  is reported by the API infrastructure, so it could occur in response to the invocation of any  method . It may also be reported as the result of  method -specific validation.  
  # 
  #  Examples:  
  # 
  #   * A  parameter  has a value that is not of the expected type. 
  #    * A  parameter  has a value that is not in the required range. 
  #    * A  parameter  has a value that is not one of the specifically allowed strings. 
  #    * One  field  of a  class  is the tag for a tagged union, and has a specific value but another  field  of the  class  that is required to be specified when the tag has that value is not specified, or another  field  of the  class  that is required to be unspecified when the tag has that value is specified. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * Trying to create a new tag in tag category when a tag with the specified name already exists the tag category. The   :class:`Com::Vmware::Vapi::Std::Errors::AlreadyExists`    error  would be used instead. 
  #    * Invoke the  method  to retrieve information about a virtual machine, passing an id that does not identify an existing virtual machine. The   :class:`Com::Vmware::Vapi::Std::Errors::NotFound`    error  would be used instead. 
  #    * Attempt to put a virtual machine into a folder that can only contain hosts. The   :class:`Com::Vmware::Vapi::Std::Errors::InvalidElementType`    error  would be used instead. 
  #    * Attempt to attach a SCSI virtual disk to an IDE port. The   :class:`Com::Vmware::Vapi::Std::Errors::InvalidElementType`    error  would be used instead. 
  #   

  class InvalidArgument < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.invalid_argument',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  InvalidArgument)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::InternalServerError``   error  indicates that the server encounters an unexpected condition that prevented it from fulfilling the request.  
  # 
  #  This  error  is reported by the API infrastructure, so it could occur in response to the invocation of any  method .  
  # 
  #  Examples:  
  # 
  #   * The  method  returns a value whose type doesn't match the type type the  method  says it should return.
  #    * The  method  reports an  error  that is not included in the list of  errors  the  method  says that it can report.
  #   

  class InternalServerError < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.internal_server_error',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  InternalServerError)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::FeatureInUse``   error  indicates that an action cannot be completed because a feature is in use.  
  # 
  #  Examples:  
  # 
  #   * Trying to disable snapshots on a virtual machine which has a snapshot. 
  #    * Trying to downgrade a license that has licensed features that are in use. 
  #   

  class FeatureInUse < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.feature_in_use',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  FeatureInUse)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::ConcurrentChange``   error  indicates that a data structure, entity, or resource has been modified since some earlier point in time. Typically this happens when the client is doing the  *write*  portion of a read-modify-write sequence and indicates that it wants the server to notify it if the data in the server has changed after it did the  *read* , so that it can avoid overwriting that change inadvertantly.

  class ConcurrentChange < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.concurrent_change',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  ConcurrentChange)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::Canceled``   error  indicates that the  method  canceled itself in response to an explicit request to do so.  Methods  being "canceled" for other reasons (for example the client connection was closed, a time out occured, or due to excessive resource consumption) should not report this  error .  
  # 
  #  Examples:  
  # 
  #   * A user is monitoring the progress of the  method  in a GUI and sees that it is likely to take longer than he is willing to wait and clicks the cancel button. 
  #    * A user invokes the  method  using a command-line tool and decides that she didn't really want to invoke that  method , and presses CTRL-c. 
  #   
  #    
  # 
  #  Counterexamples:  
  # 
  #   * The client's connection to the server was closed. Reporting an  error  is pointless since the client will not receive the error response because the connection has been closed. 
  #    * The request is taking longer than some amount of time. The   :class:`Com::Vmware::Vapi::Std::Errors::TimedOut`    error  would be reported if the time was specified as part of the input or is documented in the API contract. 
  #   

  class Canceled < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.canceled',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  Canceled)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState``   error  indicates that an attempt to change the state of a resource or service had no effect because the resource or service is already in the desired state.  
  # 
  #  Examples:  
  # 
  #   * Trying to power on a virtual machine that is already powered on.
  #   

  class AlreadyInDesiredState < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.already_in_desired_state',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  AlreadyInDesiredState)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
  # The  ``Com::Vmware::Vapi::Std::Errors::AlreadyExists``   error  indicates that an attempt was made to create an entity but the entity already exists. Typically the entity has a name or identifier that is required to be unique in some context, but there is already an entity with that name or identifier in that context.  
  # 
  #  Examples:  
  # 
  #   * Trying to create a new tag category when a tag category with the specified name already exists.
  #    * Trying to create a new tag in tag category when a tag with the specified name already exists the tag category.
  #    * Trying to create a LUN with a specific UUID on a node (for replication purposes) when a LUN with that UUID already exists on the node.
  #    * Trying to create a file in a directory or move or copy a file to a directory when a file with that name already exists in the directory. 
  #   

  class AlreadyExists < Com::Vmware::Vapi::Std::Errors::Error

      class << self
          # Holds (gets or creates) the binding type metadata for this error type.
          # @scope class
          # @return [VAPI::Bindings::ErrorType] the binding type
          def binding_type
              @binding_type ||= VAPI::Bindings::ErrorType.new(
                  'com.vmware.vapi.std.errors.already_exists',
                  {
                      'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                      'data' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new()),
                  },
                  AlreadyExists)
          end
      end


      # Constructs a new instance.
      # @param binding_type [VAPI::Bindings::BindingType] the specific BindingType
      #        declaration for this concrete VapiError type
      # @param error_value [VAPI::Data::ErrorValue] the error value (default nil)
      def initialize(binding_type=self.class.binding_type, error_value=nil)
          super(binding_type, error_value)
      end
  end
end
