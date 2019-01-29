# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVMCreateSpec
    attr_accessor :guest_os

    # Virtual machine name. If unset, a default name will be generated by the server.
    attr_accessor :name

    attr_accessor :placement

    attr_accessor :hardware_version

    attr_accessor :boot

    # Boot device configuration. If unset, a server-specific boot sequence will be used.
    attr_accessor :boot_devices

    attr_accessor :cpu

    attr_accessor :memory

    # List of disks. If unset, a single blank virtual disk of a guest-specific size will be created on the same storage as the virtual machine configuration, and will use a guest-specific host bus adapter type. If the guest-specific size is 0, no virtual disk will be created.
    attr_accessor :disks

    # List of Ethernet adapters. If unset, no Ethernet adapters will be created.
    attr_accessor :nics

    # List of CD-ROMs. If unset, no CD-ROM devices will be created.
    attr_accessor :cdroms

    # List of floppy drives. If unset, no floppy drives will be created.
    attr_accessor :floppies

    # List of parallel ports. If unset, no parallel ports will be created.
    attr_accessor :parallel_ports

    # List of serial ports. If unset, no serial ports will be created.
    attr_accessor :serial_ports

    # List of SATA adapters. If unset, any adapters necessary to connect the virtual machine's storage devices will be created; this includes any devices that explicitly specify a SATA host bus adapter, as well as any devices that do not specify a host bus adapter if the guest's preferred adapter type is SATA.
    attr_accessor :sata_adapters

    # List of SCSI adapters. If unset, any adapters necessary to connect the virtual machine's storage devices will be created; this includes any devices that explicitly specify a SCSI host bus adapter, as well as any devices that do not specify a host bus adapter if the guest's preferred adapter type is SCSI. The type of the SCSI adapter will be a guest-specific default type.
    attr_accessor :scsi_adapters

    attr_accessor :storage_policy

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'guest_os' => :'guest_OS',
        :'name' => :'name',
        :'placement' => :'placement',
        :'hardware_version' => :'hardware_version',
        :'boot' => :'boot',
        :'boot_devices' => :'boot_devices',
        :'cpu' => :'cpu',
        :'memory' => :'memory',
        :'disks' => :'disks',
        :'nics' => :'nics',
        :'cdroms' => :'cdroms',
        :'floppies' => :'floppies',
        :'parallel_ports' => :'parallel_ports',
        :'serial_ports' => :'serial_ports',
        :'sata_adapters' => :'sata_adapters',
        :'scsi_adapters' => :'scsi_adapters',
        :'storage_policy' => :'storage_policy'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'guest_os' => :'VcenterVmGuestOS',
        :'name' => :'String',
        :'placement' => :'VcenterVMPlacementSpec',
        :'hardware_version' => :'VcenterVmHardwareVersion',
        :'boot' => :'VcenterVmHardwareBootCreateSpec',
        :'boot_devices' => :'Array<VcenterVmHardwareBootDeviceEntryCreateSpec>',
        :'cpu' => :'VcenterVmHardwareCpuUpdateSpec',
        :'memory' => :'VcenterVmHardwareMemoryUpdateSpec',
        :'disks' => :'Array<VcenterVmHardwareDiskCreateSpec>',
        :'nics' => :'Array<VcenterVmHardwareEthernetCreateSpec>',
        :'cdroms' => :'Array<VcenterVmHardwareCdromCreateSpec>',
        :'floppies' => :'Array<VcenterVmHardwareFloppyCreateSpec>',
        :'parallel_ports' => :'Array<VcenterVmHardwareParallelCreateSpec>',
        :'serial_ports' => :'Array<VcenterVmHardwareSerialCreateSpec>',
        :'sata_adapters' => :'Array<VcenterVmHardwareAdapterSataCreateSpec>',
        :'scsi_adapters' => :'Array<VcenterVmHardwareAdapterScsiCreateSpec>',
        :'storage_policy' => :'VcenterVMStoragePolicySpec'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'guest_OS')
        self.guest_os = attributes[:'guest_OS']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'placement')
        self.placement = attributes[:'placement']
      end

      if attributes.has_key?(:'hardware_version')
        self.hardware_version = attributes[:'hardware_version']
      end

      if attributes.has_key?(:'boot')
        self.boot = attributes[:'boot']
      end

      if attributes.has_key?(:'boot_devices')
        if (value = attributes[:'boot_devices']).is_a?(Array)
          self.boot_devices = value
        end
      end

      if attributes.has_key?(:'cpu')
        self.cpu = attributes[:'cpu']
      end

      if attributes.has_key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.has_key?(:'disks')
        if (value = attributes[:'disks']).is_a?(Array)
          self.disks = value
        end
      end

      if attributes.has_key?(:'nics')
        if (value = attributes[:'nics']).is_a?(Array)
          self.nics = value
        end
      end

      if attributes.has_key?(:'cdroms')
        if (value = attributes[:'cdroms']).is_a?(Array)
          self.cdroms = value
        end
      end

      if attributes.has_key?(:'floppies')
        if (value = attributes[:'floppies']).is_a?(Array)
          self.floppies = value
        end
      end

      if attributes.has_key?(:'parallel_ports')
        if (value = attributes[:'parallel_ports']).is_a?(Array)
          self.parallel_ports = value
        end
      end

      if attributes.has_key?(:'serial_ports')
        if (value = attributes[:'serial_ports']).is_a?(Array)
          self.serial_ports = value
        end
      end

      if attributes.has_key?(:'sata_adapters')
        if (value = attributes[:'sata_adapters']).is_a?(Array)
          self.sata_adapters = value
        end
      end

      if attributes.has_key?(:'scsi_adapters')
        if (value = attributes[:'scsi_adapters']).is_a?(Array)
          self.scsi_adapters = value
        end
      end

      if attributes.has_key?(:'storage_policy')
        self.storage_policy = attributes[:'storage_policy']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @guest_os.nil?
        invalid_properties.push('invalid value for "guest_os", guest_os cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @guest_os.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          guest_os == o.guest_os &&
          name == o.name &&
          placement == o.placement &&
          hardware_version == o.hardware_version &&
          boot == o.boot &&
          boot_devices == o.boot_devices &&
          cpu == o.cpu &&
          memory == o.memory &&
          disks == o.disks &&
          nics == o.nics &&
          cdroms == o.cdroms &&
          floppies == o.floppies &&
          parallel_ports == o.parallel_ports &&
          serial_ports == o.serial_ports &&
          sata_adapters == o.sata_adapters &&
          scsi_adapters == o.scsi_adapters &&
          storage_policy == o.storage_policy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [guest_os, name, placement, hardware_version, boot, boot_devices, cpu, memory, disks, nics, cdroms, floppies, parallel_ports, serial_ports, sata_adapters, scsi_adapters, storage_policy].hash
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
