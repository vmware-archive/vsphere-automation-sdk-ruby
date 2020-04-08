# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmGuestDataSetsInfo
    # If set, the data set is deleted when the virtual machine is cloned. This can avoid unique data from being replicated when a virtual machine is cloned. XXX replaced by diskMode -- left for discussion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :delete_on_clone

    # If set, the data set is deleted when a vritual machine is restored from a snapshot. XXX replaced by diskMode -- left for discussion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :delete_on_snapshot

    # A description of how the data set is used by its creator. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :description

    # If set, the data set is treated like a disk on certain virtual machine operations. The data set is copied when the virtual machine is cloned or a snapshot is taken. Otherwise the data set is considered a property of the virtual machine, and is not included in a a snapshot operation or when the virtual machine is cloned. XXX field name, wording and terminology needs work. 'disk' mode (data is cloned & snapshotted) vs 'VM' mode was first suggestion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :disk_mode

    attr_accessor :guest

    attr_accessor :host

    # The name of the data set.  It is recommended that this value take the form \"com.company.project\" to avoid conflict with other uses.. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :name

    # If set, the data is persisted across virtual machine power cycles. Otherwise data is cleared when the virtual machine is powered off. XXX is there any real use case? This is basically guestVars. Is it an error if a entry is set in offline mode for a non-persistent data set?. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :persist

    # If set, the data set is controlled by the virtual machine infrastructure, not via the API, and used for virtual machine configuration, settings and statistics. Attempts to change the attributes of this namespace will fail. XXX add Unsupported (Unauthorized?) to update() and delete() if this stays. XXX name it builtin? internal ?. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :restricted

    # The total size in bytes of the Entry data that can be used by this data set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :size

    # The total size in bytes of the Entry data in use by this data set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :used

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'delete_on_clone' => :'delete_on_clone',
        :'delete_on_snapshot' => :'delete_on_snapshot',
        :'description' => :'description',
        :'disk_mode' => :'disk_mode',
        :'guest' => :'guest',
        :'host' => :'host',
        :'name' => :'name',
        :'persist' => :'persist',
        :'restricted' => :'restricted',
        :'size' => :'size',
        :'used' => :'used'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'delete_on_clone' => :'Boolean',
        :'delete_on_snapshot' => :'Boolean',
        :'description' => :'String',
        :'disk_mode' => :'Boolean',
        :'guest' => :'VcenterVmGuestDataSetsAccess',
        :'host' => :'VcenterVmGuestDataSetsAccess',
        :'name' => :'String',
        :'persist' => :'Boolean',
        :'restricted' => :'Boolean',
        :'size' => :'Integer',
        :'used' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'delete_on_clone')
        self.delete_on_clone = attributes[:'delete_on_clone']
      end

      if attributes.has_key?(:'delete_on_snapshot')
        self.delete_on_snapshot = attributes[:'delete_on_snapshot']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'disk_mode')
        self.disk_mode = attributes[:'disk_mode']
      end

      if attributes.has_key?(:'guest')
        self.guest = attributes[:'guest']
      end

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'persist')
        self.persist = attributes[:'persist']
      end

      if attributes.has_key?(:'restricted')
        self.restricted = attributes[:'restricted']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'used')
        self.used = attributes[:'used']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @delete_on_clone.nil?
        invalid_properties.push('invalid value for "delete_on_clone", delete_on_clone cannot be nil.')
      end

      if @delete_on_snapshot.nil?
        invalid_properties.push('invalid value for "delete_on_snapshot", delete_on_snapshot cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @disk_mode.nil?
        invalid_properties.push('invalid value for "disk_mode", disk_mode cannot be nil.')
      end

      if @guest.nil?
        invalid_properties.push('invalid value for "guest", guest cannot be nil.')
      end

      if @host.nil?
        invalid_properties.push('invalid value for "host", host cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @persist.nil?
        invalid_properties.push('invalid value for "persist", persist cannot be nil.')
      end

      if @restricted.nil?
        invalid_properties.push('invalid value for "restricted", restricted cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @used.nil?
        invalid_properties.push('invalid value for "used", used cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @delete_on_clone.nil?
      return false if @delete_on_snapshot.nil?
      return false if @description.nil?
      return false if @disk_mode.nil?
      return false if @guest.nil?
      return false if @host.nil?
      return false if @name.nil?
      return false if @persist.nil?
      return false if @restricted.nil?
      return false if @size.nil?
      return false if @used.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          delete_on_clone == o.delete_on_clone &&
          delete_on_snapshot == o.delete_on_snapshot &&
          description == o.description &&
          disk_mode == o.disk_mode &&
          guest == o.guest &&
          host == o.host &&
          name == o.name &&
          persist == o.persist &&
          restricted == o.restricted &&
          size == o.size &&
          used == o.used
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [delete_on_clone, delete_on_snapshot, description, disk_mode, guest, host, name, persist, restricted, size, used].hash
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
