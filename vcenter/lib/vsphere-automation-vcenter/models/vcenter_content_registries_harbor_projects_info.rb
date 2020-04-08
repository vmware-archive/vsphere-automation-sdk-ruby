# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterContentRegistriesHarborProjectsInfo
    # URL to access the harbor project through docker client.
    attr_accessor :access_url

    attr_accessor :config_status

    # The date and time when the harbor project creation API was triggered and project identifier generated.
    attr_accessor :creation_time

    attr_accessor :message

    # Name of the Harbor project. Should be between 1-63 characters long alphanumeric string and may contain the following characters: a-z,0-9, and '-'. Must be starting with characters or numbers, with the '-' character allowed anywhere except the first or last character.
    attr_accessor :name

    attr_accessor :scope

    # The date and time when the harbor project purge API was triggered. In case no purge was triggered, {@name #updateTime} is same as {@name #creationTime}.
    attr_accessor :update_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_url' => :'access_url',
        :'config_status' => :'config_status',
        :'creation_time' => :'creation_time',
        :'message' => :'message',
        :'name' => :'name',
        :'scope' => :'scope',
        :'update_time' => :'update_time'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'access_url' => :'String',
        :'config_status' => :'VcenterContentRegistriesHarborProjectsConfigStatus',
        :'creation_time' => :'DateTime',
        :'message' => :'VapiStdLocalizableMessage',
        :'name' => :'String',
        :'scope' => :'VcenterContentRegistriesHarborProjectsScope',
        :'update_time' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'access_url')
        self.access_url = attributes[:'access_url']
      end

      if attributes.has_key?(:'config_status')
        self.config_status = attributes[:'config_status']
      end

      if attributes.has_key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.has_key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @config_status.nil?
        invalid_properties.push('invalid value for "config_status", config_status cannot be nil.')
      end

      if @creation_time.nil?
        invalid_properties.push('invalid value for "creation_time", creation_time cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @scope.nil?
        invalid_properties.push('invalid value for "scope", scope cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @config_status.nil?
      return false if @creation_time.nil?
      return false if @name.nil?
      return false if @scope.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_url == o.access_url &&
          config_status == o.config_status &&
          creation_time == o.creation_time &&
          message == o.message &&
          name == o.name &&
          scope == o.scope &&
          update_time == o.update_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [access_url, config_status, creation_time, message, name, scope, update_time].hash
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
