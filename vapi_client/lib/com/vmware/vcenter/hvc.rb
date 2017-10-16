#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.hvc.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vcenter
      module Hvc
      end
    end
  end
end

# The  ``com.vmware.vcenter.hvc``   package  provides  classs  to manage hybrid links between a local and remote Platform Service Controller. Copyright 2017 VMware, Inc. All rights reserved. -- VMware Confidential
module Com::Vmware::Vcenter::Hvc
  # The  ``Com::Vmware::Vcenter::Hvc::Links``   class  provides  methods  to create, delete, get information, and list hybrid links between the local and foreign Platform Service Controller (PSC).
  class Links < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.hvc.links')

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Hvc::Links::CreateSpec')
      ),
      VAPI::Bindings::IdType.new('com.vmware.vcenter.hvc.Links'),
      {
        'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'link' => VAPI::Bindings::IdType.new('com.vmware.vcenter.hvc.Links')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Hvc::Links::Summary')),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'create' => CREATE_INFO,
      'delete' => DELETE_INFO,
      'list' => LIST_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Creates a new hybrid link between the local and foreign PSC.
    #
    # @param spec [Com::Vmware::Vcenter::Hvc::Links::CreateSpec]
    #     Specification for the new link to be created.
    # @return [String]
    #     The identifier of the newly linked domain.
    # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
    #     If the link already exists.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     If the spec is not valid.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
    #     If the PSC or the VC version is not supported.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If the user is not authorized.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    def create(spec)
      invoke_with_info(CREATE_INFO,
                       'spec' => spec)
    end

    # Deletes an existing hybrid link.
    #
    # @param link [String]
    #     Identifier of the hybrid link.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     If the hybrid link associated with  ``link``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If the user is not authorized.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    def delete(link)
      invoke_with_info(DELETE_INFO,
                       'link' => link)
    end

    # Enumerates the list of registered hybrid links.
    #
    # @return [Array<Com::Vmware::Vcenter::Hvc::Links::Summary>]
    #     The  list  of hybrid link information.
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     if the system reports an error while responding to the request.
    def list
      invoke_with_info(LIST_INFO)
    end

    # The  ``Com::Vmware::Vcenter::Hvc::Links::Summary``   class  contains information about the hybrid link.
    # @!attribute [rw] link
    #     @return [String]
    #     Unique identifier for the link.
    # @!attribute [rw] display_name
    #     @return [String]
    #     The display name is set to the domain name which was set during create.
    class Summary < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.hvc.links.summary',
            {
              'link' => VAPI::Bindings::IdType.new('com.vmware.vcenter.hvc.Links'),
              'display_name' => VAPI::Bindings::StringType.instance
            },
            Summary,
            false,
            nil
          )
        end
      end

      attr_accessor :link,
                    :display_name

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Hvc::Links::CreateSpec``   class  is the specification used for the hybrid link creation.
    # @!attribute [rw] psc_hostname
    #     @return [String]
    #     The PSC hostname for the domain to be linked.
    # @!attribute [rw] port
    #     @return [String, nil]
    #     The HTTPS port of the PSC to be linked.
    #     If  nil  443 will be used as default.
    # @!attribute [rw] domain_name
    #     @return [String]
    #     The domain to which the PSC belongs.
    # @!attribute [rw] username
    #     @return [String]
    #     The administrator username of the PSC.
    # @!attribute [rw] password
    #     @return [String]
    #     The administrator password of the PSC.
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.hvc.links.create_spec',
            {
              'psc_hostname' => VAPI::Bindings::StringType.instance,
              'port' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'domain_name' => VAPI::Bindings::StringType.instance,
              'username' => VAPI::Bindings::StringType.instance,
              'password' => VAPI::Bindings::SecretType.instance
            },
            CreateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :psc_hostname,
                    :port,
                    :domain_name,
                    :username,
                    :password

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
end
