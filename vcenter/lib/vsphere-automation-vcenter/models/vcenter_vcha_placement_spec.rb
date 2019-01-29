# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVchaPlacementSpec
    # The name of the VCHA node to be used for the virtual machine name.
    attr_accessor :name

    # The identifier of the folder to deploy the VCHA node to. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Folder:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Folder:VCenter.
    attr_accessor :folder

    # The identifier of the host to deploy the VCHA node to. If unset, see vim.vm.RelocateSpec.host. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem:VCenter.
    attr_accessor :host

    # The identifier of the resource pool to deploy the VCHA node to. If unset, then the active node's resource pool will be used. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ResourcePool:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ResourcePool:VCenter.
    attr_accessor :resource_pool

    attr_accessor :ha_network_type

    # The identifier of the Network object used for the HA network.  If the PlacementSpec.ha-network field is set, then the {#link #haNetworkType} field must be set.  If the PlacementSpec.ha-network field is unset, then the PlacementSpec.ha-network-type field is ignored. If unset and the PlacementSpec.ha-network-type field is unset, then the same network present on the Active node virtual machine is used to deploy the virtual machine with an assumption that the network is present on the destination.  When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter.
    attr_accessor :ha_network

    attr_accessor :management_network_type

    # The identifier of the Network object used for the Management network. If the PlacementSpec.management-network field is set, then the PlacementSpec.management-network-type field must be set.  If the PlacementSpec.management-network field is unset, then the PlacementSpec.management-network-type field is ignored. If unset and the PlacementSpec.management-network-type field is unset, then the same network present on the Active node virtual machine is used to deploy the virtual machine with an assumption that the network is present on the destination.  When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter.
    attr_accessor :management_network

    attr_accessor :storage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'folder' => :'folder',
        :'host' => :'host',
        :'resource_pool' => :'resource_pool',
        :'ha_network_type' => :'ha_network_type',
        :'ha_network' => :'ha_network',
        :'management_network_type' => :'management_network_type',
        :'management_network' => :'management_network',
        :'storage' => :'storage'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'folder' => :'String',
        :'host' => :'String',
        :'resource_pool' => :'String',
        :'ha_network_type' => :'VcenterVchaNetworkType',
        :'ha_network' => :'String',
        :'management_network_type' => :'VcenterVchaNetworkType',
        :'management_network' => :'String',
        :'storage' => :'VcenterVchaDiskSpec'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'folder')
        self.folder = attributes[:'folder']
      end

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'resource_pool')
        self.resource_pool = attributes[:'resource_pool']
      end

      if attributes.has_key?(:'ha_network_type')
        self.ha_network_type = attributes[:'ha_network_type']
      end

      if attributes.has_key?(:'ha_network')
        self.ha_network = attributes[:'ha_network']
      end

      if attributes.has_key?(:'management_network_type')
        self.management_network_type = attributes[:'management_network_type']
      end

      if attributes.has_key?(:'management_network')
        self.management_network = attributes[:'management_network']
      end

      if attributes.has_key?(:'storage')
        self.storage = attributes[:'storage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @folder.nil?
        invalid_properties.push('invalid value for "folder", folder cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @folder.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          folder == o.folder &&
          host == o.host &&
          resource_pool == o.resource_pool &&
          ha_network_type == o.ha_network_type &&
          ha_network == o.ha_network &&
          management_network_type == o.management_network_type &&
          management_network == o.management_network &&
          storage == o.storage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, folder, host, resource_pool, ha_network_type, ha_network, management_network_type, management_network, storage].hash
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
