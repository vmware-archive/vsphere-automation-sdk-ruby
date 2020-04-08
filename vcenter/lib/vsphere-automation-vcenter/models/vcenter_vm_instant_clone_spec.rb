# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVMInstantCloneSpec
    # 128-bit SMBIOS UUID of a virtual machine represented as a hexadecimal string in \"12345678-abcd-1234-cdef-123456789abc\" format. If unset, will be generated.
    attr_accessor :bios_uuid

    # Indicates whether all NICs on the destination virtual machine should be disconnected from the newtwork If unset, connection status of all NICs on the destination virtual machine will be the same as on the source virtual machine.
    attr_accessor :disconnect_all_nics

    # Name of the new virtual machine.
    attr_accessor :name

    # Map of NICs to update. If unset, no NICs will be updated. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    attr_accessor :nics_to_update

    # Map of parallel ports to Update. If unset, no parallel ports will be updated. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    attr_accessor :parallel_ports_to_update

    attr_accessor :placement

    # Map of serial ports to Update. If unset, no serial ports will be updated. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.SerialPort.
    attr_accessor :serial_ports_to_update

    # Virtual machine to InstantClone from. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine.
    attr_accessor :source

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bios_uuid' => :'bios_uuid',
        :'disconnect_all_nics' => :'disconnect_all_nics',
        :'name' => :'name',
        :'nics_to_update' => :'nics_to_update',
        :'parallel_ports_to_update' => :'parallel_ports_to_update',
        :'placement' => :'placement',
        :'serial_ports_to_update' => :'serial_ports_to_update',
        :'source' => :'source'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'bios_uuid' => :'String',
        :'disconnect_all_nics' => :'Boolean',
        :'name' => :'String',
        :'nics_to_update' => :'Array<VcenterVMInstantCloneSpecNicsToUpdate>',
        :'parallel_ports_to_update' => :'Array<VcenterVMInstantCloneSpecParallelPortsToUpdate>',
        :'placement' => :'VcenterVMInstantClonePlacementSpec',
        :'serial_ports_to_update' => :'Array<VcenterVMInstantCloneSpecSerialPortsToUpdate>',
        :'source' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'bios_uuid')
        self.bios_uuid = attributes[:'bios_uuid']
      end

      if attributes.has_key?(:'disconnect_all_nics')
        self.disconnect_all_nics = attributes[:'disconnect_all_nics']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'nics_to_update')
        if (value = attributes[:'nics_to_update']).is_a?(Array)
          self.nics_to_update = value
        end
      end

      if attributes.has_key?(:'parallel_ports_to_update')
        if (value = attributes[:'parallel_ports_to_update']).is_a?(Array)
          self.parallel_ports_to_update = value
        end
      end

      if attributes.has_key?(:'placement')
        self.placement = attributes[:'placement']
      end

      if attributes.has_key?(:'serial_ports_to_update')
        if (value = attributes[:'serial_ports_to_update']).is_a?(Array)
          self.serial_ports_to_update = value
        end
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @source.nil?
        invalid_properties.push('invalid value for "source", source cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @source.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bios_uuid == o.bios_uuid &&
          disconnect_all_nics == o.disconnect_all_nics &&
          name == o.name &&
          nics_to_update == o.nics_to_update &&
          parallel_ports_to_update == o.parallel_ports_to_update &&
          placement == o.placement &&
          serial_ports_to_update == o.serial_ports_to_update &&
          source == o.source
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bios_uuid, disconnect_all_nics, name, nics_to_update, parallel_ports_to_update, placement, serial_ports_to_update, source].hash
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
