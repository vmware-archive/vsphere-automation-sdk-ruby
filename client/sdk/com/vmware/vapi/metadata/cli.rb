#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.cli.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vapi
            module Metadata
                module Cli
                end
            end
        end
    end
end

# The  ``com.vmware.vapi.metadata.cli``   package  provides  classs  that expose all the information required to display namespace or command help, execute a command and display it's result.
module Com::Vmware::Vapi::Metadata::Cli

    # The  ``Com::Vmware::Vapi::Metadata::Cli::Command``   class  provides  methods  to get information about command line interface (CLI) commands.
    class Command < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.cli.command')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'path' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::Identity')),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'identity' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::Identity'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@fingerprint_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('fingerprint', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::StringType.instance,
            {},
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


        # Returns the identifiers of all commands, or commands in a specific namespace.
        #
        # @param path [String, nil]
        #     The dot-separated path of the namespace for which command identifiers should be returned.
        #     If  nil  identifiers of all commands registered with the infrastructure will be returned.
        # @return [Array<Com::Vmware::Vapi::Metadata::Cli::Command::Identity>]
        #     Identifiers of the requested commands.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if a namespace corresponding to  ``path``  doesn't exist.
        def list(path=nil)
            invoke_with_info(@@list_info, {
                'path' => path,
            })
        end


        # Retrieves information about a command including information about how to execute that command.
        #
        # @param identity [Com::Vmware::Vapi::Metadata::Cli::Command::Identity]
        #     Identifier of the command for which to retreive information.
        # @return [Com::Vmware::Vapi::Metadata::Cli::Command::Info]
        #     Information about the command including information about how to execute that command.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if a command corresponding to  ``identity``  doesn't exist.
        def get(identity)
            invoke_with_info(@@get_info, {
                'identity' => identity,
            })
        end


        # Returns the aggregate fingerprint of all the command metadata from all the metadata sources.  
        # 
        #  The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
        #
        # @return [String]
        #     Fingerprint of all the command metadata present on the server.
        def fingerprint()
            invoke_with_info(@@fingerprint_info)
        end



        # The  ``Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo``   class  describes the name used by the CLI to display a single  field  of a  class  element in the interface definition language.
        # @!attribute [rw] field_name
        #     @return [String]
        #     Name of the  field .
        # @!attribute [rw] display_name
        #     @return [String]
        #     Name used by the CLI to display the  field .
        class OutputFieldInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.command.output_field_info',
                        {
                            'field_name' => VAPI::Bindings::StringType.instance,
                            'display_name' => VAPI::Bindings::StringType.instance,
                        },
                        OutputFieldInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :field_name,
                          :display_name

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo``   class  describes the names used by the CLI to display the  fields  of a  class  element in the interface definition language as well as the order in which the  fields  will be displayed.
        # @!attribute [rw] structure_id
        #     @return [String]
        #     Name of the  class .
        # @!attribute [rw] output_fields
        #     @return [Array<Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo>]
        #     The order in which the  fields  of the  class  will be displayed by the CLI as well as the names used to display the  fields .
        class OutputInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.command.output_info',
                        {
                            'structure_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.structure'),
                            'output_fields' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo')),
                        },
                        OutputInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :structure_id,
                          :output_fields

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo``   class  describes information about a specific input option of a command.
        # @!attribute [rw] long_option
        #     @return [String]
        #     The long option name of the parameter as used by the user.
        # @!attribute [rw] short_option
        #     @return [String, nil]
        #     The single character value option name.
        #     If not present, there's no single character option for the parameter.
        # @!attribute [rw] field_name
        #     @return [String]
        #     The fully qualified name of the option referred to by the operation element in   :attr:`Com::Vmware::Vapi::Metadata::Cli::Command::Info.operation_id`  .
        # @!attribute [rw] description
        #     @return [String]
        #     The description of the option to be displayed to the user when they request usage information for a CLI command.
        # @!attribute [rw] type
        #     @return [String]
        #     The type of option. This is used to display information about what kind of data is expected (string, number, boolean, etc.) for the option when they request usage information for a CLI command. For  enumerated type  this stores the fully qualified  enumerated type  id.
        # @!attribute [rw] generic
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
        #     This is used to tell the user whether the option is required or optional, or whether they can specify the option multiple times.
        class OptionInfo < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.command.option_info',
                        {
                            'long_option' => VAPI::Bindings::StringType.instance,
                            'short_option' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'field_name' => VAPI::Bindings::StringType.instance,
                            'description' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::StringType.instance,
                            'generic' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::GenericType'),
                        },
                        OptionInfo,
                        false,
                        nil)
                end
            end

            attr_accessor :long_option,
                          :short_option,
                          :field_name,
                          :description,
                          :type,
                          :generic

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vapi::Metadata::Cli::Command::Identity``   class  uniquely identifies a command in the CLI commands tree.
        # @!attribute [rw] path
        #     @return [String]
        #     The dot-separated path of the namespace containing the command in the CLI command tree.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the command.
        class Identity < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.command.identity',
                        {
                            'path' => VAPI::Bindings::StringType.instance,
                            'name' => VAPI::Bindings::StringType.instance,
                        },
                        Identity,
                        false,
                        nil)
                end
            end

            attr_accessor :path,
                          :name

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vapi::Metadata::Cli::Command::Info``   class  contains information about a command. It includes the identity of the command, a description, information about the  class  and  method  that implement the command, and CLI-specific information for the command.
        # @!attribute [rw] identity
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::Identity]
        #     Basic command identity.
        # @!attribute [rw] description
        #     @return [String]
        #     The text description displayed to the user in help output.
        # @!attribute [rw] service_id
        #     @return [String]
        #     The service identifier that contains the operations for this CLI command.
        # @!attribute [rw] operation_id
        #     @return [String]
        #     The operation identifier corresponding to this CLI command.
        # @!attribute [rw] options
        #     @return [Array<Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo>]
        #     The input for this command.
        # @!attribute [rw] formatter
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType, nil]
        #     The formatter to use when displaying the output of this command.
        #     If not present, client can choose a default output formatter.
        # @!attribute [rw] output_field_list
        #     @return [Array<Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo>]
        #     List of output structure name and output field info.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.command.info',
                        {
                            'identity' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::Identity'),
                            'description' => VAPI::Bindings::StringType.instance,
                            'service_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.service'),
                            'operation_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.operation'),
                            'options' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo')),
                            'formatter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType')),
                            'output_field_list' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo')),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :identity,
                          :description,
                          :service_id,
                          :operation_id,
                          :options,
                          :formatter,
                          :output_field_list

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType``   enumerated type  defines supported CLI output formatter types. See   :attr:`Com::Vmware::Vapi::Metadata::Cli::Command::Info.formatter`  .
        # @!attribute [rw] simple
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
        #     Displays command output as it is.
        # @!attribute [rw] table
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
        #     Displays command output in table format.
        # @!attribute [rw] json
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
        #     Displays command output in JSON format.
        # @!attribute [rw] xml
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
        #     Displays command output in XML format.
        # @!attribute [rw] csv
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
        #     Displays command output in CSV format.
        # @!attribute [rw] html
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
        #     Displays command output in HTML format.
        class FormatterType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vapi.metadata.cli.command.formatter_type',
                        FormatterType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [FormatterType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        FormatterType.new('UNKNOWN', value)
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

            # @!attribute [rw] simple
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
            #     Displays command output as it is.
            SIMPLE = FormatterType.new('SIMPLE')

            # @!attribute [rw] table
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
            #     Displays command output in table format.
            TABLE = FormatterType.new('TABLE')

            # @!attribute [rw] json
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
            #     Displays command output in JSON format.
            JSON = FormatterType.new('JSON')

            # @!attribute [rw] xml
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
            #     Displays command output in XML format.
            XML = FormatterType.new('XML')

            # @!attribute [rw] csv
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
            #     Displays command output in CSV format.
            CSV = FormatterType.new('CSV')

            # @!attribute [rw] html
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType]
            #     Displays command output in HTML format.
            HTML = FormatterType.new('HTML')

        end


        # The  ``Com::Vmware::Vapi::Metadata::Cli::Command::GenericType``   enumerated type  defines generic types supported by  ``Com::Vmware::Vapi::Metadata::Cli::Command``   class . See   :attr:`Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo.generic`  .
        # @!attribute [rw] none
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
        #     Default case.
        # @!attribute [rw] optional
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
        #     Input parameter is an optional.
        # @!attribute [rw] list
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
        #     Input parameter is a list.
        # @!attribute [rw] optional_list
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
        #     Input parameter is an optional of type list.  
        #     
        #      New in vSphere 6.5.
        # @!attribute [rw] list_optional
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
        #     Input parameter is a list of optionals.  
        #     
        #      New in vSphere 6.5.
        class GenericType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vapi.metadata.cli.command.generic_type',
                        GenericType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [GenericType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        GenericType.new('UNKNOWN', value)
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

            # @!attribute [rw] none
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
            #     Default case.
            NONE = GenericType.new('NONE')

            # @!attribute [rw] optional
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
            #     Input parameter is an optional.
            OPTIONAL = GenericType.new('OPTIONAL')

            # @!attribute [rw] list
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
            #     Input parameter is a list.
            LIST = GenericType.new('LIST')

            # @!attribute [rw] optional_list
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
            #     Input parameter is an optional of type list.  
            #     
            #      New in vSphere 6.5.
            OPTIONAL_LIST = GenericType.new('OPTIONAL_LIST')

            # @!attribute [rw] list_optional
            #     @return [Com::Vmware::Vapi::Metadata::Cli::Command::GenericType]
            #     Input parameter is a list of optionals.  
            #     
            #      New in vSphere 6.5.
            LIST_OPTIONAL = GenericType.new('LIST_OPTIONAL')

        end


    end


    # The  ``Com::Vmware::Vapi::Metadata::Cli::Namespace``   class  provides  methods  to get information about command line interface (CLI) namespaces.
    class Namespace < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.cli.namespace')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity')),
            {},
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'identity' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Namespace::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@fingerprint_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('fingerprint', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::StringType.instance,
            {},
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


        # Returns the identifiers of all namespaces registered with the infrastructure.
        #
        # @return [Array<Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity>]
        #     Identifiers of all the namespaces.
        def list()
            invoke_with_info(@@list_info)
        end


        # Retreives information about a namespace including information about children of that namespace.
        #
        # @param identity [Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity]
        #     Identifier of the namespace for which to retreive information.
        # @return [Com::Vmware::Vapi::Metadata::Cli::Namespace::Info]
        #     Information about the namespace including information about child of that namespace.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if a namespace corresponding to  ``identity``  doesn't exist.
        def get(identity)
            invoke_with_info(@@get_info, {
                'identity' => identity,
            })
        end


        # Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources.  
        # 
        #  The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.
        #
        # @return [String]
        #     Fingerprint of all the namespace metadata present on the server.
        def fingerprint()
            invoke_with_info(@@fingerprint_info)
        end



        # The  ``Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity``   class  uniquely identifies a namespace in the CLI namespace tree.
        # @!attribute [rw] path
        #     @return [String]
        #     The dot-separated path of the namespace containing the namespace in the CLI node tree. For top-level namespace this will be empty.
        # @!attribute [rw] name
        #     @return [String]
        #     The name displayed to the user for this namespace.
        class Identity < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.namespace.identity',
                        {
                            'path' => VAPI::Bindings::StringType.instance,
                            'name' => VAPI::Bindings::StringType.instance,
                        },
                        Identity,
                        false,
                        nil)
                end
            end

            attr_accessor :path,
                          :name

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vapi::Metadata::Cli::Namespace::Info``   class  contains information about a namespace. It includes the identity of the namespace, a description, information children namespaces.
        # @!attribute [rw] identity
        #     @return [Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity]
        #     Basic namespace identity.
        # @!attribute [rw] description
        #     @return [String]
        #     The text description displayed to the user in help output.
        # @!attribute [rw] children
        #     @return [Array<Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity>]
        #     The children of this namespace in the tree of CLI namespaces.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.namespace.info',
                        {
                            'identity' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity'),
                            'description' => VAPI::Bindings::StringType.instance,
                            'children' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity')),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :identity,
                          :description,
                          :children

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Vapi::Metadata::Cli::Source``   class  provides  methods  to manage the sources of command line interface (CLI) metadata information.  
    # 
    #  The interface definition language infrastructure provides tools to generate various kinds of metadata in JSON format from the interface definition files and additional properties files. One of the generated files contains CLI information.  
    # 
    #  A CLI metadata file contains information about one component element. When a CLI metadata file is added as a source, each source contributes only one component element's metadata.  
    # 
    #  CLI metadata can also be discovered from a remote server that supports the CLI metadata services (see   :mod:`com.vmware.vapi.metadata.cli`  )  package . Since multiple components can be registered with a single metadata server, when a remote server is registered as a source, that source can contribute more than one component.
    class Source < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vapi.metadata.cli.source')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'source_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.metadata.source'),
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Source::CreateSpec'),
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
                'source_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.metadata.source'),
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
                'source_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.vapi.metadata.source'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::Cli::Source::Info'),
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


        # Creates a new metadata source. Once the server validates the registration information of the metadata source, the CLI metadata is retrieved from the source. This populates elements in all the  classs  defined in   :mod:`com.vmware.vapi.metadata.cli`    package .
        #
        # @param source_id [String]
        #     metadata source identifier.
        # @param spec [Com::Vmware::Vapi::Metadata::Cli::Source::CreateSpec]
        #     create specification.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
        #     If the metadata source identifier is already registered with the infrastructure.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     If type of the source specified in  null  is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     If the file specified in  null  is not a valid JSON file or if the format of the CLI metadata in the JSON file is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     If the URI specified in  null  is unreachable or if there is a transport protocol or message protocol mismatch between the client and the server or if the remote server do not have  classs  present in   :mod:`com.vmware.vapi.metadata.cli`    package .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     If the file specified in  null  does not exist.
        def create(source_id, spec)
            invoke_with_info(@@create_info, {
                'source_id' => source_id,
                'spec' => spec,
            })
        end


        # Deletes an existing CLI metadata source from the infrastructure.
        #
        # @param source_id [String]
        #     Identifier of the metadata source.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     If the metadata source identifier is not found.
        def delete(source_id)
            invoke_with_info(@@delete_info, {
                'source_id' => source_id,
            })
        end


        # Retrieves information about the metadata source corresponding to  ``source_id`` .
        #
        # @param source_id [String]
        #     Identifier of the metadata source.
        # @return [Com::Vmware::Vapi::Metadata::Cli::Source::Info]
        #     The   :class:`Com::Vmware::Vapi::Metadata::Cli::Source::Info`   instance that corresponds to  ``source_id``
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     If the metadata source identifier is not found.
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


        # Reloads the CLI metadata from all the metadata sources or of a particular metadata source if  ``source_id``  is specified.
        #
        # @param source_id [String, nil]
        #     Identifier of the metadata source.
        #     If unspecified, all the metadata sources are reloaded.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     If the metadata source identifier is not found.
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
        #     If the metadata source identifier is not found.
        def fingerprint(source_id=nil)
            invoke_with_info(@@fingerprint_info, {
                'source_id' => source_id,
            })
        end



        # The  ``Com::Vmware::Vapi::Metadata::Cli::Source::Info``   class  contains the metadata source information.
        # @!attribute [rw] description
        #     @return [String]
        #     English language human readable description of the source.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vapi::Metadata::SourceType]
        #     The type ( ``FILE``, ``REMOTE`` ) of the metadata source.
        # @!attribute [rw] filepath
        #     @return [String]
        #     Absolute file path of the CLI metadata file that has the CLI information about one component. The  ``filepath``  is the path to the file in the server's filesystem.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
        # @!attribute [rw] address
        #     @return [URI]
        #     Connection information for the remote server. This should be in the format http(s)://IP:port/namespace.  
        #     
        #      The remote server must contain the  classs  in the   :mod:`com.vmware.vapi.metadata.cli`    package . It must expose CLI information of one or more components.
        #     This  field  is optional and it is only relevant when the value of  ``type``  is  null .
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.source.info',
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


        # The  ``Com::Vmware::Vapi::Metadata::Cli::Source::CreateSpec``   class  contains the registration information of a CLI source.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vapi.metadata.cli.source.create_spec',
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


end
