# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterIdentityProvidersOauth2UpdateSpec
    # Authentication/authorization endpoint of the provider
    attr_accessor :auth_endpoint

    # key/value pairs that are to be appended to the authEndpoint request. How to append to authEndpoint request: If the map is not empty, a \"?\" is added to the endpoint URL, and combination of each k and each string in the v is added with an \"&\" delimiter. Details: If the value contains only one string, then the key is added with \"k=v\". If the value is an empty list, then the key is added without a \"=v\". If the value contains multiple strings, then the key is repeated in the query-string for each string in the value. If the map is empty, deletes all params.
    attr_accessor :auth_query_params

    attr_accessor :authentication_method

    # The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server understands. Currently only the key \"perms\" is supported. The key \"perms\" is used for mapping the \"perms\" claim of incoming JWT. The value is another map with an external group as the key and a vCenter Server group as value.
    attr_accessor :claim_map

    # Client identifier to connect to the provider
    attr_accessor :client_id

    # Shared secret between identity provider and client
    attr_accessor :client_secret

    # The identity provider namespace. It is used to validate the issuer in the acquired OAuth2 token
    attr_accessor :issuer

    # Endpoint to retrieve the provider public key for validation
    attr_accessor :public_key_uri

    # Token endpoint of the provider.
    attr_accessor :token_endpoint

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auth_endpoint' => :'auth_endpoint',
        :'auth_query_params' => :'auth_query_params',
        :'authentication_method' => :'authentication_method',
        :'claim_map' => :'claim_map',
        :'client_id' => :'client_id',
        :'client_secret' => :'client_secret',
        :'issuer' => :'issuer',
        :'public_key_uri' => :'public_key_uri',
        :'token_endpoint' => :'token_endpoint'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'auth_endpoint' => :'String',
        :'auth_query_params' => :'Array<VcenterHlmRemoteWorkerTrustCreateSpecGroupMap>',
        :'authentication_method' => :'VcenterIdentityProvidersOauth2AuthenticationMethod',
        :'claim_map' => :'Array<VcenterIdentityProvidersOauth2CreateSpecClaimMap>',
        :'client_id' => :'String',
        :'client_secret' => :'String',
        :'issuer' => :'String',
        :'public_key_uri' => :'String',
        :'token_endpoint' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'auth_endpoint')
        self.auth_endpoint = attributes[:'auth_endpoint']
      end

      if attributes.has_key?(:'auth_query_params')
        if (value = attributes[:'auth_query_params']).is_a?(Array)
          self.auth_query_params = value
        end
      end

      if attributes.has_key?(:'authentication_method')
        self.authentication_method = attributes[:'authentication_method']
      end

      if attributes.has_key?(:'claim_map')
        if (value = attributes[:'claim_map']).is_a?(Array)
          self.claim_map = value
        end
      end

      if attributes.has_key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.has_key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.has_key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end

      if attributes.has_key?(:'public_key_uri')
        self.public_key_uri = attributes[:'public_key_uri']
      end

      if attributes.has_key?(:'token_endpoint')
        self.token_endpoint = attributes[:'token_endpoint']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auth_endpoint == o.auth_endpoint &&
          auth_query_params == o.auth_query_params &&
          authentication_method == o.authentication_method &&
          claim_map == o.claim_map &&
          client_id == o.client_id &&
          client_secret == o.client_secret &&
          issuer == o.issuer &&
          public_key_uri == o.public_key_uri &&
          token_endpoint == o.token_endpoint
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auth_endpoint, auth_query_params, authentication_method, claim_map, client_id, client_secret, issuer, public_key_uri, token_endpoint].hash
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
