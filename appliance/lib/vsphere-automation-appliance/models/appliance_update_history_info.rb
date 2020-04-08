# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceUpdateHistoryInfo
    # The build number of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :build

    attr_accessor :description

    # Time when the EULA was accepted for the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :eula_accept_time

    # Installation date and time. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :install_date

    # URL for the knowledge base article describing this update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :knowledge_base

    # Name of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :name

    attr_accessor :priority

    # Product name of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :product

    # Flag indicating whether reboot is required after update.
    attr_accessor :reboot_required

    # Update release date.
    attr_accessor :release_date

    attr_accessor :severity

    # Download Size of update in Megabytes.
    attr_accessor :size

    # Tags associated with update (CVE Score). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :tags

    # URL of the update repository from which this update was downloaded. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :update_repo

    attr_accessor :update_type

    # Name of vendor who provided the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :vendor

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'build' => :'build',
        :'description' => :'description',
        :'eula_accept_time' => :'eula_accept_time',
        :'install_date' => :'install_date',
        :'knowledge_base' => :'knowledge_base',
        :'name' => :'name',
        :'priority' => :'priority',
        :'product' => :'product',
        :'reboot_required' => :'reboot_required',
        :'release_date' => :'release_date',
        :'severity' => :'severity',
        :'size' => :'size',
        :'tags' => :'tags',
        :'update_repo' => :'update_repo',
        :'update_type' => :'update_type',
        :'vendor' => :'vendor'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'build' => :'Integer',
        :'description' => :'VapiStdLocalizableMessage',
        :'eula_accept_time' => :'DateTime',
        :'install_date' => :'DateTime',
        :'knowledge_base' => :'String',
        :'name' => :'String',
        :'priority' => :'ApplianceUpdateCommonInfoPriority',
        :'product' => :'String',
        :'reboot_required' => :'Boolean',
        :'release_date' => :'DateTime',
        :'severity' => :'ApplianceUpdateCommonInfoSeverity',
        :'size' => :'Integer',
        :'tags' => :'String',
        :'update_repo' => :'String',
        :'update_type' => :'ApplianceUpdateCommonInfoCategory',
        :'vendor' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'build')
        self.build = attributes[:'build']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'eula_accept_time')
        self.eula_accept_time = attributes[:'eula_accept_time']
      end

      if attributes.has_key?(:'install_date')
        self.install_date = attributes[:'install_date']
      end

      if attributes.has_key?(:'knowledge_base')
        self.knowledge_base = attributes[:'knowledge_base']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'reboot_required')
        self.reboot_required = attributes[:'reboot_required']
      end

      if attributes.has_key?(:'release_date')
        self.release_date = attributes[:'release_date']
      end

      if attributes.has_key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.has_key?(:'update_repo')
        self.update_repo = attributes[:'update_repo']
      end

      if attributes.has_key?(:'update_type')
        self.update_type = attributes[:'update_type']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @build.nil?
        invalid_properties.push('invalid value for "build", build cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @eula_accept_time.nil?
        invalid_properties.push('invalid value for "eula_accept_time", eula_accept_time cannot be nil.')
      end

      if @install_date.nil?
        invalid_properties.push('invalid value for "install_date", install_date cannot be nil.')
      end

      if @knowledge_base.nil?
        invalid_properties.push('invalid value for "knowledge_base", knowledge_base cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @priority.nil?
        invalid_properties.push('invalid value for "priority", priority cannot be nil.')
      end

      if @product.nil?
        invalid_properties.push('invalid value for "product", product cannot be nil.')
      end

      if @reboot_required.nil?
        invalid_properties.push('invalid value for "reboot_required", reboot_required cannot be nil.')
      end

      if @release_date.nil?
        invalid_properties.push('invalid value for "release_date", release_date cannot be nil.')
      end

      if @severity.nil?
        invalid_properties.push('invalid value for "severity", severity cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @update_repo.nil?
        invalid_properties.push('invalid value for "update_repo", update_repo cannot be nil.')
      end

      if @update_type.nil?
        invalid_properties.push('invalid value for "update_type", update_type cannot be nil.')
      end

      if @vendor.nil?
        invalid_properties.push('invalid value for "vendor", vendor cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @build.nil?
      return false if @description.nil?
      return false if @eula_accept_time.nil?
      return false if @install_date.nil?
      return false if @knowledge_base.nil?
      return false if @name.nil?
      return false if @priority.nil?
      return false if @product.nil?
      return false if @reboot_required.nil?
      return false if @release_date.nil?
      return false if @severity.nil?
      return false if @size.nil?
      return false if @update_repo.nil?
      return false if @update_type.nil?
      return false if @vendor.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          build == o.build &&
          description == o.description &&
          eula_accept_time == o.eula_accept_time &&
          install_date == o.install_date &&
          knowledge_base == o.knowledge_base &&
          name == o.name &&
          priority == o.priority &&
          product == o.product &&
          reboot_required == o.reboot_required &&
          release_date == o.release_date &&
          severity == o.severity &&
          size == o.size &&
          tags == o.tags &&
          update_repo == o.update_repo &&
          update_type == o.update_type &&
          vendor == o.vendor
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [build, description, eula_accept_time, install_date, knowledge_base, name, priority, product, reboot_required, release_date, severity, size, tags, update_repo, update_type, vendor].hash
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
