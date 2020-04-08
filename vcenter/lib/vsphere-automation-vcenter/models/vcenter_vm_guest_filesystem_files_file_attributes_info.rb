# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmGuestFilesystemFilesFileAttributesInfo
    attr_accessor :filesystem_family

    # The date and time the file was last accessed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :last_accessed

    # The date and time the file was last modified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :last_modified

    attr_accessor :posix_attributes

    # The target for the file if it's a symbolic link. This is currently only set for Posix guest operating systems, but may be supported in the future on Windows guest operating systems that support symbolic links. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if the file is a symbolic link.
    attr_accessor :symlink_target

    attr_accessor :win_attributes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'filesystem_family' => :'filesystem_family',
        :'last_accessed' => :'last_accessed',
        :'last_modified' => :'last_modified',
        :'posix_attributes' => :'posix_attributes',
        :'symlink_target' => :'symlink_target',
        :'win_attributes' => :'win_attributes'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'filesystem_family' => :'VcenterVmGuestFilesystemFilesFilesystemFamily',
        :'last_accessed' => :'DateTime',
        :'last_modified' => :'DateTime',
        :'posix_attributes' => :'VcenterVmGuestFilesystemFilesPosixFileAttributesInfo',
        :'symlink_target' => :'String',
        :'win_attributes' => :'VcenterVmGuestFilesystemFilesWindowsFileAttributesInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'filesystem_family')
        self.filesystem_family = attributes[:'filesystem_family']
      end

      if attributes.has_key?(:'last_accessed')
        self.last_accessed = attributes[:'last_accessed']
      end

      if attributes.has_key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.has_key?(:'posix_attributes')
        self.posix_attributes = attributes[:'posix_attributes']
      end

      if attributes.has_key?(:'symlink_target')
        self.symlink_target = attributes[:'symlink_target']
      end

      if attributes.has_key?(:'win_attributes')
        self.win_attributes = attributes[:'win_attributes']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @filesystem_family.nil?
        invalid_properties.push('invalid value for "filesystem_family", filesystem_family cannot be nil.')
      end

      if @last_accessed.nil?
        invalid_properties.push('invalid value for "last_accessed", last_accessed cannot be nil.')
      end

      if @last_modified.nil?
        invalid_properties.push('invalid value for "last_modified", last_modified cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @filesystem_family.nil?
      return false if @last_accessed.nil?
      return false if @last_modified.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          filesystem_family == o.filesystem_family &&
          last_accessed == o.last_accessed &&
          last_modified == o.last_modified &&
          posix_attributes == o.posix_attributes &&
          symlink_target == o.symlink_target &&
          win_attributes == o.win_attributes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [filesystem_family, last_accessed, last_modified, posix_attributes, symlink_target, win_attributes].hash
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
