# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterIdentityProvidersSummary
    # <p>key/value pairs that are to be appended to the authEndpoint request.</p> <p>How to append to authEndpoint request:</p> If the map is not empty, a \"?\" is added to the endpoint URL, and combination of each k and each string in the v is added with an \"&\" delimiter. Details:<ul> <li>If the value contains only one string, then the key is added with \"k=v\".</li> <li>If the value is an empty list, then the key is added without a \"=v\".</li> <li>If the value contains multiple strings, then the key is repeated in the query-string for each string in the value.</li></ul>
    attr_accessor :auth_query_params

    attr_accessor :config_tag

    # Set of fully qualified domain names to trust when federating with this identity provider. Tokens from this identity provider will only be validated if the user belongs to one of these domains, and any domain-qualified groups in the tokens will be filtered to include only those groups that belong to one of these domains. If domainNames is an empty set, domain validation behavior at login with this identity provider will be as follows: the user's domain will be parsed from the User Principal Name (UPN) value that is found in the tokens returned by the identity provider. This domain will then be implicitly trusted and used to filter any groups that are also provided in the tokens.
    attr_accessor :domain_names

    # Specifies whether the provider is the default provider.
    attr_accessor :is_default

    # The user friendly name for the provider
    attr_accessor :name

    attr_accessor :oauth2

    attr_accessor :oidc

    # The identifier of the provider
    attr_accessor :provider

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auth_query_params' => :'auth_query_params',
        :'config_tag' => :'config_tag',
        :'domain_names' => :'domain_names',
        :'is_default' => :'is_default',
        :'name' => :'name',
        :'oauth2' => :'oauth2',
        :'oidc' => :'oidc',
        :'provider' => :'provider'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'auth_query_params' => :'Array<VcenterHlmRemoteWorkerTrustCreateSpecGroupMap>',
        :'config_tag' => :'VcenterIdentityProvidersConfigType',
        :'domain_names' => :'Array<String>',
        :'is_default' => :'Boolean',
        :'name' => :'String',
        :'oauth2' => :'VcenterIdentityProvidersOauth2Summary',
        :'oidc' => :'VcenterIdentityProvidersOidcSummary',
        :'provider' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'auth_query_params')
        if (value = attributes[:'auth_query_params']).is_a?(Array)
          self.auth_query_params = value
        end
      end

      if attributes.has_key?(:'config_tag')
        self.config_tag = attributes[:'config_tag']
      end

      if attributes.has_key?(:'domain_names')
        if (value = attributes[:'domain_names']).is_a?(Array)
          self.domain_names = value
        end
      end

      if attributes.has_key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'oauth2')
        self.oauth2 = attributes[:'oauth2']
      end

      if attributes.has_key?(:'oidc')
        self.oidc = attributes[:'oidc']
      end

      if attributes.has_key?(:'provider')
        self.provider = attributes[:'provider']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @config_tag.nil?
        invalid_properties.push('invalid value for "config_tag", config_tag cannot be nil.')
      end

      if @is_default.nil?
        invalid_properties.push('invalid value for "is_default", is_default cannot be nil.')
      end

      if @provider.nil?
        invalid_properties.push('invalid value for "provider", provider cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @config_tag.nil?
      return false if @is_default.nil?
      return false if @provider.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auth_query_params == o.auth_query_params &&
          config_tag == o.config_tag &&
          domain_names == o.domain_names &&
          is_default == o.is_default &&
          name == o.name &&
          oauth2 == o.oauth2 &&
          oidc == o.oidc &&
          provider == o.provider
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auth_query_params, config_tag, domain_names, is_default, name, oauth2, oidc, provider].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN, :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = VSphereAutomation::VCenter.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
  end
end
