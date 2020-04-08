# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxManagementNetworkCompatibilityHostVmknicInfo
    # List of violations of VMware Best Practice Guidelines for management network configuration. If list of violations is not empty, then this ManagementNetworkCompatibility.HostVmknicInfo.vmknic may be used for the management network configuration, but it might not work as expected. This field is for future use. It is not supported yet. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :best_practice_violations

    # Gateway IP address for the VMKernel NIC on the network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :gateway

    # Identifier of the Host. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem.
    attr_accessor :host

    # List of reasons for incompatibility of the ManagementNetworkCompatibility.HostVmknicInfo.vmknic for management network configuration. If list of reasons is not empty, then this ManagementNetworkCompatibility.HostVmknicInfo.vmknic cannot be used for the management network configuration. This field is for future use. It is not supported yet. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :incompatible_reasons

    # Subnet mask for the VMKernel NIC on the network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :subnet_mask

    # Name of the VMKernel NIC. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :vmknic

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'best_practice_violations' => :'best_practice_violations',
        :'gateway' => :'gateway',
        :'host' => :'host',
        :'incompatible_reasons' => :'incompatible_reasons',
        :'subnet_mask' => :'subnet_mask',
        :'vmknic' => :'vmknic'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'best_practice_violations' => :'Array<VapiStdLocalizableMessage>',
        :'gateway' => :'String',
        :'host' => :'String',
        :'incompatible_reasons' => :'Array<VapiStdLocalizableMessage>',
        :'subnet_mask' => :'String',
        :'vmknic' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'best_practice_violations')
        if (value = attributes[:'best_practice_violations']).is_a?(Array)
          self.best_practice_violations = value
        end
      end

      if attributes.has_key?(:'gateway')
        self.gateway = attributes[:'gateway']
      end

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'incompatible_reasons')
        if (value = attributes[:'incompatible_reasons']).is_a?(Array)
          self.incompatible_reasons = value
        end
      end

      if attributes.has_key?(:'subnet_mask')
        self.subnet_mask = attributes[:'subnet_mask']
      end

      if attributes.has_key?(:'vmknic')
        self.vmknic = attributes[:'vmknic']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @best_practice_violations.nil?
        invalid_properties.push('invalid value for "best_practice_violations", best_practice_violations cannot be nil.')
      end

      if @gateway.nil?
        invalid_properties.push('invalid value for "gateway", gateway cannot be nil.')
      end

      if @host.nil?
        invalid_properties.push('invalid value for "host", host cannot be nil.')
      end

      if @incompatible_reasons.nil?
        invalid_properties.push('invalid value for "incompatible_reasons", incompatible_reasons cannot be nil.')
      end

      if @subnet_mask.nil?
        invalid_properties.push('invalid value for "subnet_mask", subnet_mask cannot be nil.')
      end

      if @vmknic.nil?
        invalid_properties.push('invalid value for "vmknic", vmknic cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @best_practice_violations.nil?
      return false if @gateway.nil?
      return false if @host.nil?
      return false if @incompatible_reasons.nil?
      return false if @subnet_mask.nil?
      return false if @vmknic.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          best_practice_violations == o.best_practice_violations &&
          gateway == o.gateway &&
          host == o.host &&
          incompatible_reasons == o.incompatible_reasons &&
          subnet_mask == o.subnet_mask &&
          vmknic == o.vmknic
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [best_practice_violations, gateway, host, incompatible_reasons, subnet_mask, vmknic].hash
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
