# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterTokenserviceTokenExchangeExchangeSpec
    # A security token that represents the identity of the acting party. Typically, this will be the party that is authorized to use the requested security token and act on behalf of the subject.
    attr_accessor :actor_token

    # An identifier, that indicates the type of the security token in the {@link ExchangeSpec#actor_token} parameter.
    attr_accessor :actor_token_type

    # The logical name of the target service where the client intends to use the requested security token. This serves a purpose similar to the {@link ExchangeSpec#resource} parameter, but with the client providing a logical name rather than a location.
    attr_accessor :audience

    # The value of {@link TokenExchange#TOKEN_EXCHANGE_GRANT} indicates that a token exchange is being performed.
    attr_accessor :grant_type

    # An identifier for the type of the requested security token. If the requested type is unspecified, the issued token type is at the discretion of the server and may be dictated by knowledge of the requirements of the service or resource indicated by the {@link ExchangeSpec#resource} or {@link ExchangeSpec#audience} parameter.
    attr_accessor :requested_token_type

    # Indicates the location of the target service or resource where the client intends to use the requested security token.
    attr_accessor :resource

    # A list of space-delimited, case-sensitive strings, that allow the client to specify the desired scope of the requested security token in the context of the service or resource where the token will be used.
    attr_accessor :scope

    # A security token that represents the identity of the party on behalf of whom exchange is being made. Typically, the subject of this token will be the subject of the security token issued. Token is base64-encoded.
    attr_accessor :subject_token

    # An identifier, that indicates the type of the security token in the {@link ExchangeSpec#subject_token} parameter.
    attr_accessor :subject_token_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'actor_token' => :'actor_token',
        :'actor_token_type' => :'actor_token_type',
        :'audience' => :'audience',
        :'grant_type' => :'grant_type',
        :'requested_token_type' => :'requested_token_type',
        :'resource' => :'resource',
        :'scope' => :'scope',
        :'subject_token' => :'subject_token',
        :'subject_token_type' => :'subject_token_type'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'actor_token' => :'String',
        :'actor_token_type' => :'String',
        :'audience' => :'String',
        :'grant_type' => :'String',
        :'requested_token_type' => :'String',
        :'resource' => :'String',
        :'scope' => :'String',
        :'subject_token' => :'String',
        :'subject_token_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'actor_token')
        self.actor_token = attributes[:'actor_token']
      end

      if attributes.has_key?(:'actor_token_type')
        self.actor_token_type = attributes[:'actor_token_type']
      end

      if attributes.has_key?(:'audience')
        self.audience = attributes[:'audience']
      end

      if attributes.has_key?(:'grant_type')
        self.grant_type = attributes[:'grant_type']
      end

      if attributes.has_key?(:'requested_token_type')
        self.requested_token_type = attributes[:'requested_token_type']
      end

      if attributes.has_key?(:'resource')
        self.resource = attributes[:'resource']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.has_key?(:'subject_token')
        self.subject_token = attributes[:'subject_token']
      end

      if attributes.has_key?(:'subject_token_type')
        self.subject_token_type = attributes[:'subject_token_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @grant_type.nil?
        invalid_properties.push('invalid value for "grant_type", grant_type cannot be nil.')
      end

      if @subject_token.nil?
        invalid_properties.push('invalid value for "subject_token", subject_token cannot be nil.')
      end

      if @subject_token_type.nil?
        invalid_properties.push('invalid value for "subject_token_type", subject_token_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @grant_type.nil?
      return false if @subject_token.nil?
      return false if @subject_token_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          actor_token == o.actor_token &&
          actor_token_type == o.actor_token_type &&
          audience == o.audience &&
          grant_type == o.grant_type &&
          requested_token_type == o.requested_token_type &&
          resource == o.resource &&
          scope == o.scope &&
          subject_token == o.subject_token &&
          subject_token_type == o.subject_token_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [actor_token, actor_token_type, audience, grant_type, requested_token_type, resource, scope, subject_token, subject_token_type].hash
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
