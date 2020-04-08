# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxEdgeOverlayNetworkSpec
    # Specifies if a new NSX IP pool must be used for IP address allocation for this network interface. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :create_ip_pool

    # ID(Name) of the existing NSX IP pool. If EdgeOverlayNetworkSpec.create-ip-pool is set to false, then this field contains the ID of an existing NSX IP pool to be used for the network interface. The IP address from this NSX IP pool is assigned to the tunnel endpoint on each NSX Edge node in the vSphere cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when EdgeOverlayNetworkSpec.create-ip-pool is true. If it is set when EdgeOverlayNetworkSpec.create-ip-pool is set to true, then it is ignored. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: nsx.pools.ip_pool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: nsx.pools.ip_pool.
    attr_accessor :ip_pool

    attr_accessor :ip_pool_spec

    # The VLAN identifier for this network. Possible values:     -  A value from 1 to 4094 specifies a VLAN ID for the network.    -  Any other value (including 0) is invalid.  . Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is currently required. It is optional for future development.
    attr_accessor :vlan

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'create_ip_pool' => :'create_ip_pool',
        :'ip_pool' => :'ip_pool',
        :'ip_pool_spec' => :'ip_pool_spec',
        :'vlan' => :'vlan'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'create_ip_pool' => :'Boolean',
        :'ip_pool' => :'String',
        :'ip_pool_spec' => :'VcenterNsxIpPoolCreateSpec',
        :'vlan' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'create_ip_pool')
        self.create_ip_pool = attributes[:'create_ip_pool']
      end

      if attributes.has_key?(:'ip_pool')
        self.ip_pool = attributes[:'ip_pool']
      end

      if attributes.has_key?(:'ip_pool_spec')
        self.ip_pool_spec = attributes[:'ip_pool_spec']
      end

      if attributes.has_key?(:'vlan')
        self.vlan = attributes[:'vlan']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @create_ip_pool.nil?
        invalid_properties.push('invalid value for "create_ip_pool", create_ip_pool cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @create_ip_pool.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          create_ip_pool == o.create_ip_pool &&
          ip_pool == o.ip_pool &&
          ip_pool_spec == o.ip_pool_spec &&
          vlan == o.vlan
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [create_ip_pool, ip_pool, ip_pool_spec, vlan].hash
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
