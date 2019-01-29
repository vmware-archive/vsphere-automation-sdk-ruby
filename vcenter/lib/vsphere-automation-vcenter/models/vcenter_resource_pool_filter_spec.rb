# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterResourcePoolFilterSpec
    # Identifiers of resource pools that can match the filter. If unset or empty, resource pools with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    attr_accessor :resource_pools

    # Names that resource pools must have to match the filter (see ResourcePool.Info.name). If unset or empty, resource pools with any name match the filter.
    attr_accessor :names

    # Resource pools that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    attr_accessor :parent_resource_pools

    # Datacenters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    attr_accessor :datacenters

    # Hosts that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    attr_accessor :hosts

    # Clusters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    attr_accessor :clusters

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'resource_pools' => :'resource_pools',
        :'names' => :'names',
        :'parent_resource_pools' => :'parent_resource_pools',
        :'datacenters' => :'datacenters',
        :'hosts' => :'hosts',
        :'clusters' => :'clusters'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'resource_pools' => :'Array<String>',
        :'names' => :'Array<String>',
        :'parent_resource_pools' => :'Array<String>',
        :'datacenters' => :'Array<String>',
        :'hosts' => :'Array<String>',
        :'clusters' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'resource_pools')
        if (value = attributes[:'resource_pools']).is_a?(Array)
          self.resource_pools = value
        end
      end

      if attributes.has_key?(:'names')
        if (value = attributes[:'names']).is_a?(Array)
          self.names = value
        end
      end

      if attributes.has_key?(:'parent_resource_pools')
        if (value = attributes[:'parent_resource_pools']).is_a?(Array)
          self.parent_resource_pools = value
        end
      end

      if attributes.has_key?(:'datacenters')
        if (value = attributes[:'datacenters']).is_a?(Array)
          self.datacenters = value
        end
      end

      if attributes.has_key?(:'hosts')
        if (value = attributes[:'hosts']).is_a?(Array)
          self.hosts = value
        end
      end

      if attributes.has_key?(:'clusters')
        if (value = attributes[:'clusters']).is_a?(Array)
          self.clusters = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          resource_pools == o.resource_pools &&
          names == o.names &&
          parent_resource_pools == o.parent_resource_pools &&
          datacenters == o.datacenters &&
          hosts == o.hosts &&
          clusters == o.clusters
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [resource_pools, names, parent_resource_pools, datacenters, hosts, clusters].hash
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
