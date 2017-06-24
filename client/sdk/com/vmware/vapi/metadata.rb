#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.metadata.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vapi
            module Metadata
            end
        end
    end
end

# The   :mod:`com.vmware.vapi.metadata`    package  provides metadata  classs . These are  classs  that provide different facets of API information. Clients can use these  classs  to:  
# 
#   *  Discover APIs available in the infrastructure. 
#    *  Fetch metadata that can be used to build presentation layers like CLI, REST, etc.
#    *  Fetch authentication and authorization metadata. 
#   
module Com::Vmware::Vapi::Metadata

    # The  ``Com::Vmware::Vapi::Metadata::SourceCreateSpec``   class  contains the registration information for a metadata source.
    # @!attribute [rw] description
    #     @return [String]
    #     English language human readable description of the source.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vapi::Metadata::SourceType]
    #     Type of the metadata source.
    # @!attribute [rw] filepath
    #     @return [String]
    #     Absolute file path of the metamodel metadata file that has the metamodel information about one component element.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::SourceType.FILE`  .
    # @!attribute [rw] address
    #     @return [URI]
    #     Connection information of the remote server. This should be of the format http(s)://IP:port/namespace.  
    #     
    #      The remote server should contain the  classs  in   :mod:`com.vmware.vapi.metadata.metamodel`    package . It could expose metamodel information of one or more components.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::SourceType.REMOTE`  .
    class SourceCreateSpec < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.source_create_spec',
                    {
                        'description' => VAPI::Bindings::StringType.instance,
                        'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::SourceType'),
                        'filepath' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'address' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::URIType.instance),
                    },
                    SourceCreateSpec,
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


    # Metadata source info
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vapi::Metadata::SourceType]
    #     Type of the metadata source
    # @!attribute [rw] file_name
    #     @return [String]
    #     Name of the metadata source file
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::SourceType.FILE`  .
    # @!attribute [rw] remote_addr
    #     @return [String]
    #     Address of the remote metadata source
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::SourceType.REMOTE`  .
    # @!attribute [rw] msg_protocol
    #     @return [String]
    #     Message protocol to be used
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vapi::Metadata::SourceType.REMOTE`  .
    class SourceInfo < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.metadata.source_info',
                    {
                        'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Metadata::SourceType'),
                        'file_name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'remote_addr' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                        'msg_protocol' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                    },
                    SourceInfo,
                    false,
                    nil)
            end
        end

        attr_accessor :type,
                      :file_name,
                      :remote_addr,
                      :msg_protocol

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vapi::Metadata::SourceType``   enumerated type  defines the types of sources for API metadata. You specify the type of source when adding a metadata source to a metadata service.
    # @!attribute [rw] file
    #     @return [Com::Vmware::Vapi::Metadata::SourceType]
    #     Indicates the metadata source is a JSON file.
    # @!attribute [rw] remote
    #     @return [Com::Vmware::Vapi::Metadata::SourceType]
    #     Indicates the metadata source is a remote server.
    class SourceType < VAPI::Bindings::VapiEnum

        class << self
            # Holds (gets or creates) the binding type metadata for this enumeration type.
            # @scope class
            # @return [VAPI::Bindings::EnumType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::EnumType.new(
                    'com.vmware.vapi.metadata.source_type',
                    SourceType)
            end

            # Converts from a string value (perhaps off the wire) to an instance
            # of this enum type.
            # @param value [String] the actual value of the enum instance
            # @return [SourceType] the instance found for the value, otherwise
            #         an unknown instance will be built for the value
            def from_string(value)
                begin
                    const_get(value)
                rescue NameError
                    SourceType.new('UNKNOWN', value)
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

        # @!attribute [rw] file
        #     @return [Com::Vmware::Vapi::Metadata::SourceType]
        #     Indicates the metadata source is a JSON file.
        FILE = SourceType.new('FILE')

        # @!attribute [rw] remote
        #     @return [Com::Vmware::Vapi::Metadata::SourceType]
        #     Indicates the metadata source is a remote server.
        REMOTE = SourceType.new('REMOTE')

    end


end
