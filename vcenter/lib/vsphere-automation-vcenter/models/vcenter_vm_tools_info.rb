# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmToolsInfo
    # Set if the virtual machine supports auto-upgrading Tools via Tools.UpgradePolicy.
    attr_accessor :auto_update_supported

    # Error that happened, if any, during last attempt to upgrade or install Tools. Only set if a the last Tools install or upgrade attempt failed.
    attr_accessor :error

    # Number of attempts that have been made to install or upgrade the version of Tools installed on this virtual machine. Only set if there was a recent Tools install or upgrade attempt.
    attr_accessor :install_attempt_count

    attr_accessor :install_type

    attr_accessor :run_state

    attr_accessor :upgrade_policy

    # Version of VMware Tools installed on the guest operating system. This is a human-readable value that should not be parsed. Only set if Tools is installed.
    attr_accessor :version

    # Version of VMware Tools installed on the guest operating system. Only set if Tools is installed. This is an integer constructed as follows: (((MJR) << 10) + ((MNR) << 5) + (REV)) Where MJR is tha major verson, MNR is the minor version and REV is the revision. Tools version = T Tools Version Major = MJR = (T / 1024) Tools Version Minor = MNR = ((T % 1024) / 32) Tools Version Revision = BASE = ((T % 1024) % 32) Tools actual version = MJR.MNR.REV
    attr_accessor :version_number

    attr_accessor :version_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_update_supported' => :'auto_update_supported',
        :'error' => :'error',
        :'install_attempt_count' => :'install_attempt_count',
        :'install_type' => :'install_type',
        :'run_state' => :'run_state',
        :'upgrade_policy' => :'upgrade_policy',
        :'version' => :'version',
        :'version_number' => :'version_number',
        :'version_status' => :'version_status'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'auto_update_supported' => :'Boolean',
        :'error' => :'String',
        :'install_attempt_count' => :'Integer',
        :'install_type' => :'VcenterVmToolsToolsInstallType',
        :'run_state' => :'VcenterVmToolsRunState',
        :'upgrade_policy' => :'VcenterVmToolsUpgradePolicy',
        :'version' => :'String',
        :'version_number' => :'Integer',
        :'version_status' => :'VcenterVmToolsVersionStatus'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'auto_update_supported')
        self.auto_update_supported = attributes[:'auto_update_supported']
      end

      if attributes.has_key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.has_key?(:'install_attempt_count')
        self.install_attempt_count = attributes[:'install_attempt_count']
      end

      if attributes.has_key?(:'install_type')
        self.install_type = attributes[:'install_type']
      end

      if attributes.has_key?(:'run_state')
        self.run_state = attributes[:'run_state']
      end

      if attributes.has_key?(:'upgrade_policy')
        self.upgrade_policy = attributes[:'upgrade_policy']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'version_number')
        self.version_number = attributes[:'version_number']
      end

      if attributes.has_key?(:'version_status')
        self.version_status = attributes[:'version_status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_update_supported.nil?
        invalid_properties.push('invalid value for "auto_update_supported", auto_update_supported cannot be nil.')
      end

      if @run_state.nil?
        invalid_properties.push('invalid value for "run_state", run_state cannot be nil.')
      end

      if @upgrade_policy.nil?
        invalid_properties.push('invalid value for "upgrade_policy", upgrade_policy cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_update_supported.nil?
      return false if @run_state.nil?
      return false if @upgrade_policy.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_update_supported == o.auto_update_supported &&
          error == o.error &&
          install_attempt_count == o.install_attempt_count &&
          install_type == o.install_type &&
          run_state == o.run_state &&
          upgrade_policy == o.upgrade_policy &&
          version == o.version &&
          version_number == o.version_number &&
          version_status == o.version_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auto_update_supported, error, install_attempt_count, install_type, run_state, upgrade_policy, version, version_number, version_status].hash
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
