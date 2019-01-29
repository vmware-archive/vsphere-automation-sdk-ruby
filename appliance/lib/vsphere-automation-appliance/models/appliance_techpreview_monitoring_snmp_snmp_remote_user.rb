# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewMonitoringSnmpSNMPRemoteUser
    # SNMP Username
    attr_accessor :username

    attr_accessor :sec_level

    attr_accessor :authentication

    # SNMP authorization key
    attr_accessor :auth_key

    attr_accessor :privacy

    # SNMP privacy key
    attr_accessor :priv_key

    # SNMP v3 engine id
    attr_accessor :engineid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'username' => :'username',
        :'sec_level' => :'sec_level',
        :'authentication' => :'authentication',
        :'auth_key' => :'auth_key',
        :'privacy' => :'privacy',
        :'priv_key' => :'priv_key',
        :'engineid' => :'engineid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'username' => :'String',
        :'sec_level' => :'ApplianceTechpreviewMonitoringSnmpSNMPSecLevel',
        :'authentication' => :'ApplianceTechpreviewMonitoringSnmpSNMPAuthProto',
        :'auth_key' => :'String',
        :'privacy' => :'ApplianceTechpreviewMonitoringSnmpSNMPPrivProto',
        :'priv_key' => :'String',
        :'engineid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'sec_level')
        self.sec_level = attributes[:'sec_level']
      end

      if attributes.has_key?(:'authentication')
        self.authentication = attributes[:'authentication']
      end

      if attributes.has_key?(:'auth_key')
        self.auth_key = attributes[:'auth_key']
      end

      if attributes.has_key?(:'privacy')
        self.privacy = attributes[:'privacy']
      end

      if attributes.has_key?(:'priv_key')
        self.priv_key = attributes[:'priv_key']
      end

      if attributes.has_key?(:'engineid')
        self.engineid = attributes[:'engineid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @username.nil?
        invalid_properties.push('invalid value for "username", username cannot be nil.')
      end

      if @sec_level.nil?
        invalid_properties.push('invalid value for "sec_level", sec_level cannot be nil.')
      end

      if @authentication.nil?
        invalid_properties.push('invalid value for "authentication", authentication cannot be nil.')
      end

      if @auth_key.nil?
        invalid_properties.push('invalid value for "auth_key", auth_key cannot be nil.')
      end

      if @privacy.nil?
        invalid_properties.push('invalid value for "privacy", privacy cannot be nil.')
      end

      if @priv_key.nil?
        invalid_properties.push('invalid value for "priv_key", priv_key cannot be nil.')
      end

      if @engineid.nil?
        invalid_properties.push('invalid value for "engineid", engineid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @username.nil?
      return false if @sec_level.nil?
      return false if @authentication.nil?
      return false if @auth_key.nil?
      return false if @privacy.nil?
      return false if @priv_key.nil?
      return false if @engineid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          username == o.username &&
          sec_level == o.sec_level &&
          authentication == o.authentication &&
          auth_key == o.auth_key &&
          privacy == o.privacy &&
          priv_key == o.priv_key &&
          engineid == o.engineid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [username, sec_level, authentication, auth_key, privacy, priv_key, engineid].hash
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
      when :BOOLEAN
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
        temp_model = VSphereAutomation::Appliance.const_get(type).new
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
