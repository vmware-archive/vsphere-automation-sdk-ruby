#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.authentication.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vapi
            module Metadata
                module Authentication
                end
            end
        end
    end
end

# The  ``com.vmware.vapi.metadata.authentication``   package  provides  classs  that expose authentication information for operation elements across all the service elements.  
# 
#  To calculate the effective authentication information for an operation element, you should first see if there is an authentication scheme specified for the operation element. If it is not specified, then authentication scheme for the service element that contains this operation element is used. If it is not specified for the service element as well, then the authentication scheme for the package element that contains this service element is used.
module Com::Vmware::Vapi::Metadata::Authentication

    # The  ``Com::Vmware::Vapi::Metadata::Authentication::Component``   class  provides  methods  to retrieve authentication information of a component element.  
    # 
    #  A component element is said to contain authentication information if any one of package elements contained in it has authentication information.
    class Component < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.authentication.component')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {},
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'component_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.component'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::ComponentData'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@fingerprint_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('fingerprint', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'component_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.component'),
            }),
            VAPI::Bindings::StringType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
            'fingerprint' => @@fingerprint_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vapi.component'


        # Returns the identifiers for the component elements that have authentication information.
        #
        # @return [Array<String>]
        #     The list of identifiers for the component elements that have authentication information.
        def list()
            invoke_with_info(@@list_info)
        end


        # Retrieves authentication information about the component element corresponding to  ``component_id`` .  
        # 
        #  The   :class:`Com::Vmware::Vapi::Metadata::Authentication::ComponentData`   contains the authentication information about the component element and it's fingerprint. It contains information about all the package elements that belong to this component element.
        #
        # @param component_id [String]
        #     Identifier of the component element.
        # @return [Com::Vmware::Vapi::Metadata::Authentication::ComponentData]
        #     The   :class:`Com::Vmware::Vapi::Metadata::Authentication::ComponentData`   instance that corresponds to  ``component_id``
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the component element associated with  ``component_id``  does not have any authentication information.
        def get(component_id)
            invoke_with_info(@@get_info, {
                'component_id' => component_id,
            })
        end


        # Retrieves the fingerprint computed from the authentication metadata of the component element corresponding to  ``component_id`` .  
        # 
        #  The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of   :func:`Com::Vmware::Vapi::Metadata::Authentication::Component.get`  .
        #
        # @param component_id [String]
        #     Identifier of the component element.
        # @return [String]
        #     The fingerprint computed from the authentication metadata of the component.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the component element associated with  ``component_id``  does not have any authentication information.
        def fingerprint(component_id)
            invoke_with_info(@@fingerprint_info, {
                'component_id' => component_id,
            })
        end


    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::Package``   class  provides  methods  to retrieve authentication information of a package element.  
    # 
    #  A package element is said to contain authentication information if there is a default authentication assigned to all service elements contained in the package element or if one of the service element contained in this package element has authentication information.
    class Package < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.authentication.package')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {},
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'package_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.package'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::PackageInfo'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vapi.package'


        # Returns the identifiers for the package elements that have authentication information.
        #
        # @return [Array<String>]
        #     The list of identifiers for the package elements that have authentication information.
        def list()
            invoke_with_info(@@list_info)
        end


        # Retrieves authentication information about the package element corresponding to  ``package_id`` .
        #
        # @param package_id [String]
        #     Identifier of the package element.
        # @return [Com::Vmware::Vapi::Metadata::Authentication::PackageInfo]
        #     The   :class:`Com::Vmware::Vapi::Metadata::Authentication::PackageInfo`   instance that corresponds to  ``package_id``
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the package element associated with  ``package_id``  does not have any authentication information.
        def get(package_id)
            invoke_with_info(@@get_info, {
                'package_id' => package_id,
            })
        end


    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::Service``   class  provides  methods  to retrieve authentication information of a service element.  
    # 
    #  A service element is said to contain authentication information if there is a default authentication assigned to all operation elements contained in a service element or if one of the operation elements contained in this service element has authentication information.
    class ServiceService < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.authentication.service')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {},
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'service_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.service'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vapi.service'


        # Returns the identifiers for the service elements that have authentication information.
        #
        # @return [Array<String>]
        #     The list of identifiers for the service elements that have authentication information.
        def list()
            invoke_with_info(@@list_info)
        end


        # Retrieves authentication information about the service element corresponding to  ``service_id`` .
        #
        # @param service_id [String]
        #     Identifier of the service element.
        # @return [Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo]
        #     The   :class:`Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo`   instance that corresponds to  ``service_id``
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the service element associated with  ``service_id``  does not have any authentication information.
        def get(service_id)
            invoke_with_info(@@get_info, {
                'service_id' => service_id,
            })
        end


    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::Source``   class  provides  methods  to manage the sources of authentication metadata information.  
    # 
    #  The interface definition language infrastructure provides tools to generate various kinds of metadata in JSON format from the interface definition files and additional properties files. One of the generated files contains authentication information. The generated file can be registered as a source of metadata.  
    # 
    #  The authentication file contains all the data present in the interface definition files. Each authentication file contains data about one component element. When a authentication file is added as a source, each source contributes only one component element's metadata.  
    # 
    #  Authentication metadata can also be discovered from a remote server that supports the authentication metadata  classs  (see   :mod:`com.vmware.vapi.metadata.authentication`  ). Since multiple components can be registered with a single metadata server, when a remote server is registered as a source, that source can contribute more than one component.
    class Source < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.authentication.source')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'source_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.metadata.authentication.source'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::Source::CreateSpec'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'source_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.metadata.authentication.source'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'source_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.metadata.authentication.source'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::Source::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
            {},
            [],
            [])
        @@reload_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('reload', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'source_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@fingerprint_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('fingerprint', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'source_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
            }),
            VAPI::Bindings::StringType.instance,
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'create' => @@create_info,
            'delete' => @@delete_info,
            'get' => @@get_info,
            'list' => @@list_info,
            'reload' => @@reload_info,
            'fingerprint' => @@fingerprint_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'com.vmware.vapi.metadata.authentication.source'


        # Creates a new metadata source. Once the server validates the registration information of the metadata source, the authentication metadata is retrieved from the source. This populates elements in all the  classs  defined in   :mod:`com.vmware.vapi.metadata.authentication`    package .
        #
        # @param source_id [String]
        #     metadata source identifier.
        # @param spec [Com::Vmware::Vapi::Metadata::Authentication::Source::CreateSpec]
        #     create specification.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
        #     if the metadata source identifier is already registered with the infrastructure.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the type of the source specified in  null  is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the file specified in  null  is not a valid JSON file or if the format of the authentication metadata in the JSON file is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the URI specified in  null  is unreachable or if there is a transport protocol or message protocol mismatch between the client and the server or if the remote server do not have  classs  present in   :mod:`com.vmware.vapi.metadata.authentication`    package .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the file specified in  null  does not exist.
        def create(source_id, spec)
            invoke_with_info(@@create_info, {
                'source_id' => source_id,
                'spec' => spec,
            })
        end


        # Deletes an existing authentication metadata source from the infrastructure.
        #
        # @param source_id [String]
        #     Identifier of the metadata source.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the metadata source identifier is not found.
        def delete(source_id)
            invoke_with_info(@@delete_info, {
                'source_id' => source_id,
            })
        end


        # Retrieves information about the metadata source corresponding to  ``source_id`` .
        #
        # @param source_id [String]
        #     Identifier of the metadata source.
        # @return [Com::Vmware::Vapi::Metadata::Authentication::Source::Info]
        #     The   :class:`Com::Vmware::Vapi::Metadata::Authentication::Source::Info`   instance that corresponds to  ``source_id``
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the metadata source associated with  ``source_id``  is not found.
        def get(source_id)
            invoke_with_info(@@get_info, {
                'source_id' => source_id,
            })
        end


        # Returns the identifiers of the metadata sources currently registered with the infrastructure.
        #
        # @return [Array<String>]
        #     The list of identifiers for metadata sources currently registered.
        def list()
            invoke_with_info(@@list_info)
        end


        # Reloads the authentication metadata from all the metadata sources or of a particular metadata source if  ``source_id``  is specified.
        #
        # @param source_id [String, nil]
        #     Identifier of the metadata source.
        #     If unspecified, all the metadata sources are reloaded.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the metadata source associated with  ``source_id``  is not found.
        def reload(source_id=nil)
            invoke_with_info(@@reload_info, {
                'source_id' => source_id,
            })
        end


        # Returns the aggregate fingerprint of metadata from all the metadata sources or from a particular metadata source if  ``source_id``  is specified.
        #
        # @param source_id [String, nil]
        #     Identifier of the metadata source.
        #     If unspecified, the fingerprint of all the metadata sources is returned.
        # @return [String]
        #     Aggregate fingerprint of all the metadata sources or of a particular metadata source.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the metadata source associated with  ``source_id``  is not found.
        def fingerprint(source_id=nil)
            invoke_with_info(@@fingerprint_info, {
                'source_id' => source_id,
            })
        end



        # The  ``Com::Vmware::Vapi::Metadata::Authentication::Source::Info``   class  contains the metadata source information.
        # @!attribute [rw] description
        #     @return [String]
        #     English language human readable description of the source.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vapi::Metadata::SourceType]
        #     Type of the metadata source.
        # @!attribute [rw] filepath
        #     @return [String]
        #     Absolute file path of the authentication metadata file that has the authentication information about one component element. The  ``filePath``  is the path to the file in the server's filesystem.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
        # @!attribute [rw] address
        #     @return [URI]
        #     Connection information for the remote server. This must be in the format http(s)://IP:port/namespace.  
        #     
        #      The remote server must support the  classs  in the   :mod:`com.vmware.vapi.metadata.authentication`    package . It must expose authentication information of one or more components.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.authentication.source.info',
                        {
                            'description' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::SourceType'),
                            'filepath' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :description,
                          :type,
                          :filepath,
                          :address

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vapi::Metadata::Authentication::Source::CreateSpec``   class  contains the registration information of a authentication source.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.authentication.source.create_spec',
                        {
                            'description' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::SourceType'),
                            'filepath' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :description,
                          :type,
                          :filepath,
                          :address

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end



    # The  ``Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo``   class  describes the authentication information. Authentication information could be specified for a package element, service elenent or an operation element.  
    # 
    #  Using the authentication scheme information, a client invoking an API call from any  class  can figure out what kind of credentials are needed for that API call.
    # @!attribute [rw] scheme_type
    #     @return [Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType]
    #     The type of the authentication scheme.
    # @!attribute [rw] session_manager
    #     @return [String]
    #     In a session aware authentication scheme, a session manager is required that supports  ``create`` ,  ``delete``  and  ``keepAlive``   methods . The fully qualified  class  name of the session manager is provided in   :attr:`Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo.session_manager`    field . This  class  is responsible for handling sessions.
    #     This  field  is optional and it is only relevant when the value of  ``schemeType``  is   :attr:`Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType.SESSION_AWARE`  .
    # @!attribute [rw] scheme
    #     @return [String]
    #     String identifier of the authentication scheme.  
    #     
    #      Following are the supported authentication schemes by the infrastructure:  
    #     
    #       * The identifier  ``com.vmware.vapi.std.security.saml_hok_token``  for SAML holder of key token based authentication mechanism. 
    #        * The identifier  ``com.vmware.vapi.std.security.bearer_token``  for SAML bearer token based authentication mechanism. 
    #        * The identifier  ``com.vmware.vapi.std.security.session_id``  for session based authentication mechanism. 
    #        * The identifier  ``com.vmware.vapi.std.security.user_pass``  for username and password based authentication mechanism. 
    #       
    class AuthenticationInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.authentication.authentication_info',
                    {
                        'scheme_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType'),
                        'session_manager' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'scheme' => VAPI::Bindings::StringType.instance,
                    },
                    AuthenticationInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :scheme_type,
                      :session_manager,
                      :scheme

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end


        # The  ``Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType``   enumerated type  provides  enumeration values  for the set of valid authentication scheme types.
        # @!attribute [rw] sessionless
        #     @return [Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType]
        #     Indicates that the scheme is a session less authentication scheme, the user is authenticated on every  method . There is no explicit session establishment.
        # @!attribute [rw] session_aware
        #     @return [Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType]
        #     Indicates that the scheme is a session aware authentication scheme. It requires an explicit login before executing a  method  and logout when a session terminates. A  class  might choose to have a session aware scheme if it wants to associate some state corresponding to the user until the user logs out or if it wants to mitigate the cost of authenticating the user on every  method .
        class SchemeType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vapi.metadata.authentication.authentication_info.scheme_type',
                        SchemeType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [SchemeType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        SchemeType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] sessionless
            #     @return [Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType]
            #     Indicates that the scheme is a session less authentication scheme, the user is authenticated on every  method . There is no explicit session establishment.
            SESSIONLESS = SchemeType.new('SESSIONLESS')

            # @!attribute [rw] session_aware
            #     @return [Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType]
            #     Indicates that the scheme is a session aware authentication scheme. It requires an explicit login before executing a  method  and logout when a session terminates. A  class  might choose to have a session aware scheme if it wants to associate some state corresponding to the user until the user logs out or if it wants to mitigate the cost of authenticating the user on every  method .
            SESSION_AWARE = SchemeType.new('SESSION_AWARE')

        end


    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::ComponentData``   class  contains the authentication information of the component along with its fingerprint.
    # @!attribute [rw] info
    #     @return [Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo]
    #     Authentication information of the component. This includes information about all the  packages  in the component.
    # @!attribute [rw] fingerprint
    #     @return [String]
    #     Fingerprint of the metadata of the component.  
    #     
    #      Authentication information could change when there is an infrastructure update. Since the data present in   :attr:`Com::Vmware::Vapi::Metadata::Authentication::ComponentData.info`   could be quite large,  ``fingerprint``  provides a convenient way to check if the data for a particular component is updated.  
    #     
    #      You should store the fingerprint associated with a component. After an update, by invoking the   :func:`Com::Vmware::Vapi::Metadata::Authentication::Component.fingerprint`    method , you can retrieve the new fingerprint for the component. If the new fingerprint and the previously stored fingerprint do not match, clients can then use the   :func:`Com::Vmware::Vapi::Metadata::Authentication::Component.get`   to retrieve the new authentication information for the component.
    class ComponentData < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.authentication.component_data',
                    {
                        'info' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo'),
                        'fingerprint' => VAPI::Bindings::StringType.instance,
                    },
                    ComponentData,
                    false,
                    nil)
            end
        end

        attr_accessor :info,
                      :fingerprint

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo``   class  contains authentication information of a component element.  
    # 
    #  For an explanation of authentication information contained within component elements, see   :class:`Com::Vmware::Vapi::Metadata::Authentication::Component`  .
    # @!attribute [rw] packages
    #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Authentication::PackageInfo>]
    #     Authentication information of all the package elements. The key in the  map  is the identifier of the package element and the value in the  map  is the authentication information for the package element.  
    #     
    #      For an explanation of authentication information containment within package elements, see   :class:`Com::Vmware::Vapi::Metadata::Authentication::Package`  .
    class ComponentInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.authentication.component_info',
                    {
                        'packages' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::PackageInfo')),
                    },
                    ComponentInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :packages

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::OperationInfo``   class  contains authentication information of an operation element.
    # @!attribute [rw] schemes
    #     @return [Array<Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo>]
    #     List of authentication schemes used by an operation element. The authentication scheme specified on the service element corresponding to this operation element is ignored.
    class OperationInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.authentication.operation_info',
                    {
                        'schemes' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo')),
                    },
                    OperationInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :schemes

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::PackageInfo``   class  contains authentication information of a package element.  
    # 
    #  For an explanation of authentication information contained within package elements, see   :class:`Com::Vmware::Vapi::Metadata::Authentication::Package`  .
    # @!attribute [rw] schemes
    #     @return [Array<Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo>]
    #     List of authentication schemes to be used for all the operation elements contained in this package element. If a particular service or operation element has no explicit authentications defined in the authentication defintion file, these authentication schemes are used for authenticating the user.
    # @!attribute [rw] services
    #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo>]
    #     Information about all service elements contained in this package element that contain authentication information. The key in the  map  is the identifier of the service element and the value in the  map  is the authentication information for the service element.  
    #     
    #      For an explanation of authentication information containment within service elements, see   :class:`Com::Vmware::Vapi::Metadata::Authentication::Service`  .
    class PackageInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.authentication.package_info',
                    {
                        'schemes' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo')),
                        'services' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo')),
                    },
                    PackageInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :schemes,
                      :services

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo``   class  contains authentication information of a service element.  
    # 
    #  For an explanation of authentication information contained within service elements, see   :class:`Com::Vmware::Vapi::Metadata::Authentication::Service`  .
    # @!attribute [rw] schemes
    #     @return [Array<Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo>]
    #     List of authentication schemes to be used for all the operation elements contained in this service element. The authentication scheme specified on the package element corresponding to this service element is ignored.
    # @!attribute [rw] operations
    #     @return [Hash<String, Com::Vmware::Vapi::Metadata::Authentication::OperationInfo>]
    #     Information about all operation elements contained in this service element that contain authentication information. The key in the  map  is the identifier of the operation element and the value in the  map  is the authentication information for the operation element.  
    #     
    #      For an explanation of containment of authentication information within operation elements, see   :class:`Com::Vmware::Vapi::Metadata::Authentication::Service::Operation`  .
    class ServiceInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.authentication.service_info',
                    {
                        'schemes' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo')),
                        'operations' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Authentication::OperationInfo')),
                    },
                    ServiceInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :schemes,
                      :operations

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end

end
