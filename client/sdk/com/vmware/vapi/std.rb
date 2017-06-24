#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vapi.std.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vapi
            module Std
            end
        end
    end
end

# The  ``com.vmware.vapi.std``   package  provides standard types that can be used in the interface specification of any  class .
module Com::Vmware::Vapi::Std

    # The   :class:`Com::Vmware::Vapi::Std::AuthenticationScheme`   class defines constants for authentication scheme identifiers for authentication mechanisms present in the vAPI infrastructure shipped by VMware.  
    # 
    #  A third party extension can define and implements it's own authentication mechanism and define a constant in a different IDL file.
    class AuthenticationScheme < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.std.authentication_scheme',
                    {
                    },
                    AuthenticationScheme,
                    false,
                    nil)
            end
        end

        NO_AUTHENTICATION = 'com.vmware.vapi.std.security.no_authentication'
        SAML_BEARER_TOKEN = 'com.vmware.vapi.std.security.saml_bearer_token'
        SAML_HOK_TOKEN = 'com.vmware.vapi.std.security.saml_hok_token'
        SESSION_ID = 'com.vmware.vapi.std.security.session_id'
        USER_PASSWORD = 'com.vmware.vapi.std.security.user_pass'
        OAUTH_ACCESS_TOKEN = 'com.vmware.vapi.std.security.oauth'

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vapi::Std::DynamicID``   class  represents an identifier for a resource of an arbitrary type.
    # @!attribute [rw] type
    #     @return [String]
    #     The type of resource being identified (for example  ``com.acme.Person`` ).  
    #     
    #       Classs  that contain  methods  for creating and deleting resources typically contain a  constant  specifying the resource type for the resources being created and deleted. The API metamodel metadata  classs  include a  class  that allows retrieving all the known resource types.
    # @!attribute [rw] id
    #     @return [String]
    #     The identifier for a resource whose type is specified by   :attr:`Com::Vmware::Vapi::Std::DynamicID.type`  .
    class DynamicID < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.std.dynamic_ID',
                    {
                        'type' => VAPI::Bindings::StringType.instance,
                        'id' => VAPI::Bindings::IdType.new(resource_types=[], resource_type_field_name="type"),
                    },
                    DynamicID,
                    false,
                    nil)
            end
        end

        attr_accessor :type,
                      :id

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end


    # The  ``Com::Vmware::Vapi::Std::LocalizableMessage``   class  represents a localizable string or message template.  Classs  include one or more localizable message templates in the  errors  they report so that clients can display diagnostic messages in the native language of the user.  Classs  can include localizable strings in the data returned from  methods  to allow clients to display localized status information in the native language of the user.
    # @!attribute [rw] id
    #     @return [String]
    #     Unique identifier of the localizable string or message template.  
    #     
    #      This identifier is typically used to retrieve a locale-specific string or message template from a message catalog.
    # @!attribute [rw] default_message
    #     @return [String]
    #     The value of this localizable string or message template in the  ``en_US``  (English) locale. If   :attr:`Com::Vmware::Vapi::Std::LocalizableMessage.id`   refers to a message template, the default message will contain the substituted arguments. This value can be used by clients that do not need to display strings and messages in the native language of the user. It could also be used as a fallback if a client is unable to access the appropriate message catalog.
    # @!attribute [rw] args
    #     @return [Array<String>]
    #     Arguments to be substituted into a message template.
    class LocalizableMessage < VAPI::Bindings::VapiStruct

        class << self
            # Holds (gets or creates) the binding type metadata for this structure type.
            # @scope class
            # @return [VAPI::Bindings::StructType] the binding type
            def binding_type
                @binding_type ||= VAPI::Bindings::StructType.new(
                    'com.vmware.vapi.std.localizable_message',
                    {
                        'id' => VAPI::Bindings::StringType.instance,
                        'default_message' => VAPI::Bindings::StringType.instance,
                        'args' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
                    },
                    LocalizableMessage,
                    false,
                    nil)
            end
        end

        attr_accessor :id,
                      :default_message,
                      :args

        # Constructs a new instance.
        # @param ruby_values [Hash] a map of initial property values (optional)
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
        def initialize(ruby_values=nil, struct_value=nil)
            super(self.class.binding_type, ruby_values, struct_value)
        end
    end

end
