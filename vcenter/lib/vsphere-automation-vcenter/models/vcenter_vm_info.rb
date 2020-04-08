# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVMInfo
    attr_accessor :boot

    # Boot device configuration. If the list has no entries, a server-specific default boot sequence is used.
    attr_accessor :boot_devices

    # List of CD-ROMs. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    attr_accessor :cdroms

    attr_accessor :cpu

    # List of disks. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk.
    attr_accessor :disks

    # List of floppy drives. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Floppy. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    attr_accessor :floppies

    attr_accessor :guest_os

    attr_accessor :hardware

    attr_accessor :identity

    # Indicates whether the virtual machine is frozen for instant clone, or not. This field is optional because it was added in a newer version than its parent node.
    attr_accessor :instant_clone_frozen

    attr_accessor :memory

    # Virtual machine name.
    attr_accessor :name

    # List of Ethernet adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    attr_accessor :nics

    # List of NVMe adapters. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional because it was added in a newer version than its parent node. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.NvmeAdapter. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.NvmeAdapter.
    attr_accessor :nvme_adapters

    # List of parallel ports. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    attr_accessor :parallel_ports

    attr_accessor :power_state

    # List of SATA adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.
    attr_accessor :sata_adapters

    # List of SCSI adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.
    attr_accessor :scsi_adapters

    # List of serial ports. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.SerialPort.
    attr_accessor :serial_ports

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'boot' => :'boot',
        :'boot_devices' => :'boot_devices',
        :'cdroms' => :'cdroms',
        :'cpu' => :'cpu',
        :'disks' => :'disks',
        :'floppies' => :'floppies',
        :'guest_os' => :'guest_OS',
        :'hardware' => :'hardware',
        :'identity' => :'identity',
        :'instant_clone_frozen' => :'instant_clone_frozen',
        :'memory' => :'memory',
        :'name' => :'name',
        :'nics' => :'nics',
        :'nvme_adapters' => :'nvme_adapters',
        :'parallel_ports' => :'parallel_ports',
        :'power_state' => :'power_state',
        :'sata_adapters' => :'sata_adapters',
        :'scsi_adapters' => :'scsi_adapters',
        :'serial_ports' => :'serial_ports'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'boot' => :'VcenterVmHardwareBootInfo',
        :'boot_devices' => :'Array<VcenterVmHardwareBootDeviceEntry>',
        :'cdroms' => :'Array<VcenterVMInfoCdroms>',
        :'cpu' => :'VcenterVmHardwareCpuInfo',
        :'disks' => :'Array<VcenterVMInfoDisks>',
        :'floppies' => :'Array<VcenterVMInfoFloppies>',
        :'guest_os' => :'VcenterVmGuestOS',
        :'hardware' => :'VcenterVmHardwareInfo',
        :'identity' => :'VcenterVmIdentityInfo',
        :'instant_clone_frozen' => :'Boolean',
        :'memory' => :'VcenterVmHardwareMemoryInfo',
        :'name' => :'String',
        :'nics' => :'Array<VcenterVMInfoNics>',
        :'nvme_adapters' => :'Array<VcenterVMInfoNvmeAdapters>',
        :'parallel_ports' => :'Array<VcenterVMInfoParallelPorts>',
        :'power_state' => :'VcenterVmPowerState',
        :'sata_adapters' => :'Array<VcenterVMInfoSataAdapters>',
        :'scsi_adapters' => :'Array<VcenterVMInfoScsiAdapters>',
        :'serial_ports' => :'Array<VcenterVMInfoSerialPorts>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'boot')
        self.boot = attributes[:'boot']
      end

      if attributes.has_key?(:'boot_devices')
        if (value = attributes[:'boot_devices']).is_a?(Array)
          self.boot_devices = value
        end
      end

      if attributes.has_key?(:'cdroms')
        if (value = attributes[:'cdroms']).is_a?(Array)
          self.cdroms = value
        end
      end

      if attributes.has_key?(:'cpu')
        self.cpu = attributes[:'cpu']
      end

      if attributes.has_key?(:'disks')
        if (value = attributes[:'disks']).is_a?(Array)
          self.disks = value
        end
      end

      if attributes.has_key?(:'floppies')
        if (value = attributes[:'floppies']).is_a?(Array)
          self.floppies = value
        end
      end

      if attributes.has_key?(:'guest_OS')
        self.guest_os = attributes[:'guest_OS']
      end

      if attributes.has_key?(:'hardware')
        self.hardware = attributes[:'hardware']
      end

      if attributes.has_key?(:'identity')
        self.identity = attributes[:'identity']
      end

      if attributes.has_key?(:'instant_clone_frozen')
        self.instant_clone_frozen = attributes[:'instant_clone_frozen']
      end

      if attributes.has_key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'nics')
        if (value = attributes[:'nics']).is_a?(Array)
          self.nics = value
        end
      end

      if attributes.has_key?(:'nvme_adapters')
        if (value = attributes[:'nvme_adapters']).is_a?(Array)
          self.nvme_adapters = value
        end
      end

      if attributes.has_key?(:'parallel_ports')
        if (value = attributes[:'parallel_ports']).is_a?(Array)
          self.parallel_ports = value
        end
      end

      if attributes.has_key?(:'power_state')
        self.power_state = attributes[:'power_state']
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

      if attributes.has_key?(:'serial_ports')
        if (value = attributes[:'serial_ports']).is_a?(Array)
          self.serial_ports = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @boot.nil?
        invalid_properties.push('invalid value for "boot", boot cannot be nil.')
      end

      if @boot_devices.nil?
        invalid_properties.push('invalid value for "boot_devices", boot_devices cannot be nil.')
      end

      if @cdroms.nil?
        invalid_properties.push('invalid value for "cdroms", cdroms cannot be nil.')
      end

      if @cpu.nil?
        invalid_properties.push('invalid value for "cpu", cpu cannot be nil.')
      end

      if @disks.nil?
        invalid_properties.push('invalid value for "disks", disks cannot be nil.')
      end

      if @floppies.nil?
        invalid_properties.push('invalid value for "floppies", floppies cannot be nil.')
      end

      if @guest_os.nil?
        invalid_properties.push('invalid value for "guest_os", guest_os cannot be nil.')
      end

      if @hardware.nil?
        invalid_properties.push('invalid value for "hardware", hardware cannot be nil.')
      end

      if @memory.nil?
        invalid_properties.push('invalid value for "memory", memory cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @nics.nil?
        invalid_properties.push('invalid value for "nics", nics cannot be nil.')
      end

      if @parallel_ports.nil?
        invalid_properties.push('invalid value for "parallel_ports", parallel_ports cannot be nil.')
      end

      if @power_state.nil?
        invalid_properties.push('invalid value for "power_state", power_state cannot be nil.')
      end

      if @sata_adapters.nil?
        invalid_properties.push('invalid value for "sata_adapters", sata_adapters cannot be nil.')
      end

      if @scsi_adapters.nil?
        invalid_properties.push('invalid value for "scsi_adapters", scsi_adapters cannot be nil.')
      end

      if @serial_ports.nil?
        invalid_properties.push('invalid value for "serial_ports", serial_ports cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @boot.nil?
      return false if @boot_devices.nil?
      return false if @cdroms.nil?
      return false if @cpu.nil?
      return false if @disks.nil?
      return false if @floppies.nil?
      return false if @guest_os.nil?
      return false if @hardware.nil?
      return false if @memory.nil?
      return false if @name.nil?
      return false if @nics.nil?
      return false if @parallel_ports.nil?
      return false if @power_state.nil?
      return false if @sata_adapters.nil?
      return false if @scsi_adapters.nil?
      return false if @serial_ports.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          boot == o.boot &&
          boot_devices == o.boot_devices &&
          cdroms == o.cdroms &&
          cpu == o.cpu &&
          disks == o.disks &&
          floppies == o.floppies &&
          guest_os == o.guest_os &&
          hardware == o.hardware &&
          identity == o.identity &&
          instant_clone_frozen == o.instant_clone_frozen &&
          memory == o.memory &&
          name == o.name &&
          nics == o.nics &&
          nvme_adapters == o.nvme_adapters &&
          parallel_ports == o.parallel_ports &&
          power_state == o.power_state &&
          sata_adapters == o.sata_adapters &&
          scsi_adapters == o.scsi_adapters &&
          serial_ports == o.serial_ports
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [boot, boot_devices, cdroms, cpu, disks, floppies, guest_os, hardware, identity, instant_clone_frozen, memory, name, nics, nvme_adapters, parallel_ports, power_state, sata_adapters, scsi_adapters, serial_ports].hash
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
