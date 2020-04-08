# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterLcmUpdatePendingSummary
    # Build number of the vCenter Release
    attr_accessor :build

    attr_accessor :category

    # VAMI or ISO URL for update or upgrade execute phase redirection
    attr_accessor :execute_url

    # Identifier of the given vSphere update When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.lcm.update.pending. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.lcm.update.pending.
    attr_accessor :pending_update

    # Flag to suggest a reboot after the release is applied
    attr_accessor :reboot_required

    # Release date of the vSphere update or patch
    attr_accessor :release_date

    # List of URI pointing to patch or update release notes
    attr_accessor :release_notes

    attr_accessor :severity

    attr_accessor :update_type

    # Version of the vSphere update or patch
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'build' => :'build',
        :'category' => :'category',
        :'execute_url' => :'execute_URL',
        :'pending_update' => :'pending_update',
        :'reboot_required' => :'reboot_required',
        :'release_date' => :'release_date',
        :'release_notes' => :'release_notes',
        :'severity' => :'severity',
        :'update_type' => :'update_type',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'build' => :'String',
        :'category' => :'VcenterLcmUpdatePendingCategory',
        :'execute_url' => :'String',
        :'pending_update' => :'String',
        :'reboot_required' => :'Boolean',
        :'release_date' => :'DateTime',
        :'release_notes' => :'Array<String>',
        :'severity' => :'VcenterLcmUpdatePendingSeverityType',
        :'update_type' => :'VcenterLcmUpdatePendingUpdateType',
        :'version' => :'String'
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

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'execute_URL')
        self.execute_url = attributes[:'execute_URL']
      end

      if attributes.has_key?(:'pending_update')
        self.pending_update = attributes[:'pending_update']
      end

      if attributes.has_key?(:'reboot_required')
        self.reboot_required = attributes[:'reboot_required']
      end

      if attributes.has_key?(:'release_date')
        self.release_date = attributes[:'release_date']
      end

      if attributes.has_key?(:'release_notes')
        if (value = attributes[:'release_notes']).is_a?(Array)
          self.release_notes = value
        end
      end

      if attributes.has_key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.has_key?(:'update_type')
        self.update_type = attributes[:'update_type']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @build.nil?
        invalid_properties.push('invalid value for "build", build cannot be nil.')
      end

      if @category.nil?
        invalid_properties.push('invalid value for "category", category cannot be nil.')
      end

      if @execute_url.nil?
        invalid_properties.push('invalid value for "execute_url", execute_url cannot be nil.')
      end

      if @pending_update.nil?
        invalid_properties.push('invalid value for "pending_update", pending_update cannot be nil.')
      end

      if @reboot_required.nil?
        invalid_properties.push('invalid value for "reboot_required", reboot_required cannot be nil.')
      end

      if @release_date.nil?
        invalid_properties.push('invalid value for "release_date", release_date cannot be nil.')
      end

      if @release_notes.nil?
        invalid_properties.push('invalid value for "release_notes", release_notes cannot be nil.')
      end

      if @severity.nil?
        invalid_properties.push('invalid value for "severity", severity cannot be nil.')
      end

      if @update_type.nil?
        invalid_properties.push('invalid value for "update_type", update_type cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @build.nil?
      return false if @category.nil?
      return false if @execute_url.nil?
      return false if @pending_update.nil?
      return false if @reboot_required.nil?
      return false if @release_date.nil?
      return false if @release_notes.nil?
      return false if @severity.nil?
      return false if @update_type.nil?
      return false if @version.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          build == o.build &&
          category == o.category &&
          execute_url == o.execute_url &&
          pending_update == o.pending_update &&
          reboot_required == o.reboot_required &&
          release_date == o.release_date &&
          release_notes == o.release_notes &&
          severity == o.severity &&
          update_type == o.update_type &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [build, category, execute_url, pending_update, reboot_required, release_date, release_notes, severity, update_type, version].hash
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
