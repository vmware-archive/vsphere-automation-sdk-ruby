# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceUpdatePendingInfo
    # List of the 1. issues addressed since previous/current version 2. new features/improvements
    attr_accessor :contents

    # List of the services that will be stopped and restarted during the update installation.
    attr_accessor :services_will_be_stopped

    # List of EULAs. This list has multiple entries and can be dynamic based on what we are actually installing.
    attr_accessor :eulas

    # Is the update staged
    attr_accessor :staged

    attr_accessor :description

    attr_accessor :priority

    attr_accessor :severity

    attr_accessor :update_type

    # Update release date.
    attr_accessor :release_date

    # Flag indicating whether reboot is required after update.
    attr_accessor :reboot_required

    # Download Size of update in Megabytes.
    attr_accessor :size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'contents' => :'contents',
        :'services_will_be_stopped' => :'services_will_be_stopped',
        :'eulas' => :'eulas',
        :'staged' => :'staged',
        :'description' => :'description',
        :'priority' => :'priority',
        :'severity' => :'severity',
        :'update_type' => :'update_type',
        :'release_date' => :'release_date',
        :'reboot_required' => :'reboot_required',
        :'size' => :'size'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contents' => :'Array<VapiStdLocalizableMessage>',
        :'services_will_be_stopped' => :'Array<ApplianceUpdateServiceInfo>',
        :'eulas' => :'Array<VapiStdLocalizableMessage>',
        :'staged' => :'BOOLEAN',
        :'description' => :'VapiStdLocalizableMessage',
        :'priority' => :'ApplianceUpdateCommonInfoPriority',
        :'severity' => :'ApplianceUpdateCommonInfoSeverity',
        :'update_type' => :'ApplianceUpdateCommonInfoCategory',
        :'release_date' => :'DateTime',
        :'reboot_required' => :'BOOLEAN',
        :'size' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'contents')
        if (value = attributes[:'contents']).is_a?(Array)
          self.contents = value
        end
      end

      if attributes.has_key?(:'services_will_be_stopped')
        if (value = attributes[:'services_will_be_stopped']).is_a?(Array)
          self.services_will_be_stopped = value
        end
      end

      if attributes.has_key?(:'eulas')
        if (value = attributes[:'eulas']).is_a?(Array)
          self.eulas = value
        end
      end

      if attributes.has_key?(:'staged')
        self.staged = attributes[:'staged']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.has_key?(:'update_type')
        self.update_type = attributes[:'update_type']
      end

      if attributes.has_key?(:'release_date')
        self.release_date = attributes[:'release_date']
      end

      if attributes.has_key?(:'reboot_required')
        self.reboot_required = attributes[:'reboot_required']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @contents.nil?
        invalid_properties.push('invalid value for "contents", contents cannot be nil.')
      end

      if @services_will_be_stopped.nil?
        invalid_properties.push('invalid value for "services_will_be_stopped", services_will_be_stopped cannot be nil.')
      end

      if @eulas.nil?
        invalid_properties.push('invalid value for "eulas", eulas cannot be nil.')
      end

      if @staged.nil?
        invalid_properties.push('invalid value for "staged", staged cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @priority.nil?
        invalid_properties.push('invalid value for "priority", priority cannot be nil.')
      end

      if @severity.nil?
        invalid_properties.push('invalid value for "severity", severity cannot be nil.')
      end

      if @update_type.nil?
        invalid_properties.push('invalid value for "update_type", update_type cannot be nil.')
      end

      if @release_date.nil?
        invalid_properties.push('invalid value for "release_date", release_date cannot be nil.')
      end

      if @reboot_required.nil?
        invalid_properties.push('invalid value for "reboot_required", reboot_required cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @contents.nil?
      return false if @services_will_be_stopped.nil?
      return false if @eulas.nil?
      return false if @staged.nil?
      return false if @description.nil?
      return false if @priority.nil?
      return false if @severity.nil?
      return false if @update_type.nil?
      return false if @release_date.nil?
      return false if @reboot_required.nil?
      return false if @size.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contents == o.contents &&
          services_will_be_stopped == o.services_will_be_stopped &&
          eulas == o.eulas &&
          staged == o.staged &&
          description == o.description &&
          priority == o.priority &&
          severity == o.severity &&
          update_type == o.update_type &&
          release_date == o.release_date &&
          reboot_required == o.reboot_required &&
          size == o.size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [contents, services_will_be_stopped, eulas, staged, description, priority, severity, update_type, release_date, reboot_required, size].hash
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
