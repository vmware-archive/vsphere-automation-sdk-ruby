# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterLcmDestinationAppliance
    attr_accessor :appliance_disk_size

    # The name of the appliance to deploy. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :appliance_name

    attr_accessor :appliance_size

    attr_accessor :appliance_type

    attr_accessor :network

    # The location of the OVA file. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :ova_location

    # SSL thumbprint of ssl verification. If provided, ssl_verify can be omitted or set to true. If omitted, ssl_verify must be false. If omitted and ssl_verify is true, an error will occur. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If ova_location_ssl_verify is False, this field can be omitted
    attr_accessor :ova_location_ssl_thumbprint

    # A flag to indicate whether the ssl verification is required. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If DestinationAppliance.ova-location-ssl-thumbprint is provided, this field can be omitted If unset, defaults to True
    attr_accessor :ova_location_ssl_verify

    # The OVF Tool arguments to be included. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Not required when no OVF Tool argument to pass through
    attr_accessor :ovftool_arguments

    # The location of the OVF Tool. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :ovftool_location

    # SSL thumbprint of OVF Tool location to be verified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When ovftoolLocationSslVerify is set to False, this field can be omitted.
    attr_accessor :ovftool_location_ssl_thumbprint

    # Flag to indicate whether or not to verify the SSL thumbprint of OVF Tool location. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if unset, Default to be True.
    attr_accessor :ovftool_location_ssl_verify

    # Password must conform to the following requirements: 1. At least 8 characters. 2. No more than 20 characters. 3. At least 1 uppercase character. 4. At least 1 lowercase character. 5. At least 1 number. 6. At least 1 special character (e.g., '!', '(', '@', etc.). 7. Only visible A-Z, a-z, 0-9 and punctuation (spaces are not allowed). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :root_password

    attr_accessor :services

    # Whether to deploy the appliance with thin mode virtual disks. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :thin_disk_mode

    attr_accessor :time

    attr_accessor :vcsa_embedded

    attr_accessor :vmc

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'appliance_disk_size' => :'appliance_disk_size',
        :'appliance_name' => :'appliance_name',
        :'appliance_size' => :'appliance_size',
        :'appliance_type' => :'appliance_type',
        :'network' => :'network',
        :'ova_location' => :'ova_location',
        :'ova_location_ssl_thumbprint' => :'ova_location_ssl_thumbprint',
        :'ova_location_ssl_verify' => :'ova_location_ssl_verify',
        :'ovftool_arguments' => :'ovftool_arguments',
        :'ovftool_location' => :'ovftool_location',
        :'ovftool_location_ssl_thumbprint' => :'ovftool_location_ssl_thumbprint',
        :'ovftool_location_ssl_verify' => :'ovftool_location_ssl_verify',
        :'root_password' => :'root_password',
        :'services' => :'services',
        :'thin_disk_mode' => :'thin_disk_mode',
        :'time' => :'time',
        :'vcsa_embedded' => :'vcsa_embedded',
        :'vmc' => :'vmc'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'appliance_disk_size' => :'VcenterLcmStorageSize',
        :'appliance_name' => :'String',
        :'appliance_size' => :'VcenterLcmApplianceSize',
        :'appliance_type' => :'VcenterLcmApplianceType',
        :'network' => :'VcenterLcmNetwork',
        :'ova_location' => :'String',
        :'ova_location_ssl_thumbprint' => :'String',
        :'ova_location_ssl_verify' => :'Boolean',
        :'ovftool_arguments' => :'Array<VcenterLcmDestinationApplianceOvftoolArguments>',
        :'ovftool_location' => :'String',
        :'ovftool_location_ssl_thumbprint' => :'String',
        :'ovftool_location_ssl_verify' => :'Boolean',
        :'root_password' => :'String',
        :'services' => :'VcenterLcmDestinationApplianceService',
        :'thin_disk_mode' => :'Boolean',
        :'time' => :'VcenterLcmTime',
        :'vcsa_embedded' => :'VcenterLcmVcsaEmbedded',
        :'vmc' => :'VcenterLcmExternalVcsa'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'appliance_disk_size')
        self.appliance_disk_size = attributes[:'appliance_disk_size']
      end

      if attributes.has_key?(:'appliance_name')
        self.appliance_name = attributes[:'appliance_name']
      end

      if attributes.has_key?(:'appliance_size')
        self.appliance_size = attributes[:'appliance_size']
      end

      if attributes.has_key?(:'appliance_type')
        self.appliance_type = attributes[:'appliance_type']
      end

      if attributes.has_key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.has_key?(:'ova_location')
        self.ova_location = attributes[:'ova_location']
      end

      if attributes.has_key?(:'ova_location_ssl_thumbprint')
        self.ova_location_ssl_thumbprint = attributes[:'ova_location_ssl_thumbprint']
      end

      if attributes.has_key?(:'ova_location_ssl_verify')
        self.ova_location_ssl_verify = attributes[:'ova_location_ssl_verify']
      end

      if attributes.has_key?(:'ovftool_arguments')
        if (value = attributes[:'ovftool_arguments']).is_a?(Array)
          self.ovftool_arguments = value
        end
      end

      if attributes.has_key?(:'ovftool_location')
        self.ovftool_location = attributes[:'ovftool_location']
      end

      if attributes.has_key?(:'ovftool_location_ssl_thumbprint')
        self.ovftool_location_ssl_thumbprint = attributes[:'ovftool_location_ssl_thumbprint']
      end

      if attributes.has_key?(:'ovftool_location_ssl_verify')
        self.ovftool_location_ssl_verify = attributes[:'ovftool_location_ssl_verify']
      end

      if attributes.has_key?(:'root_password')
        self.root_password = attributes[:'root_password']
      end

      if attributes.has_key?(:'services')
        self.services = attributes[:'services']
      end

      if attributes.has_key?(:'thin_disk_mode')
        self.thin_disk_mode = attributes[:'thin_disk_mode']
      end

      if attributes.has_key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.has_key?(:'vcsa_embedded')
        self.vcsa_embedded = attributes[:'vcsa_embedded']
      end

      if attributes.has_key?(:'vmc')
        self.vmc = attributes[:'vmc']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @appliance_name.nil?
        invalid_properties.push('invalid value for "appliance_name", appliance_name cannot be nil.')
      end

      if @appliance_type.nil?
        invalid_properties.push('invalid value for "appliance_type", appliance_type cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @ova_location.nil?
        invalid_properties.push('invalid value for "ova_location", ova_location cannot be nil.')
      end

      if @ovftool_location.nil?
        invalid_properties.push('invalid value for "ovftool_location", ovftool_location cannot be nil.')
      end

      if @root_password.nil?
        invalid_properties.push('invalid value for "root_password", root_password cannot be nil.')
      end

      if @services.nil?
        invalid_properties.push('invalid value for "services", services cannot be nil.')
      end

      if @thin_disk_mode.nil?
        invalid_properties.push('invalid value for "thin_disk_mode", thin_disk_mode cannot be nil.')
      end

      if @time.nil?
        invalid_properties.push('invalid value for "time", time cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @appliance_name.nil?
      return false if @appliance_type.nil?
      return false if @network.nil?
      return false if @ova_location.nil?
      return false if @ovftool_location.nil?
      return false if @root_password.nil?
      return false if @services.nil?
      return false if @thin_disk_mode.nil?
      return false if @time.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          appliance_disk_size == o.appliance_disk_size &&
          appliance_name == o.appliance_name &&
          appliance_size == o.appliance_size &&
          appliance_type == o.appliance_type &&
          network == o.network &&
          ova_location == o.ova_location &&
          ova_location_ssl_thumbprint == o.ova_location_ssl_thumbprint &&
          ova_location_ssl_verify == o.ova_location_ssl_verify &&
          ovftool_arguments == o.ovftool_arguments &&
          ovftool_location == o.ovftool_location &&
          ovftool_location_ssl_thumbprint == o.ovftool_location_ssl_thumbprint &&
          ovftool_location_ssl_verify == o.ovftool_location_ssl_verify &&
          root_password == o.root_password &&
          services == o.services &&
          thin_disk_mode == o.thin_disk_mode &&
          time == o.time &&
          vcsa_embedded == o.vcsa_embedded &&
          vmc == o.vmc
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [appliance_disk_size, appliance_name, appliance_size, appliance_type, network, ova_location, ova_location_ssl_thumbprint, ova_location_ssl_verify, ovftool_arguments, ovftool_location, ovftool_location_ssl_thumbprint, ovftool_location_ssl_verify, root_password, services, thin_disk_mode, time, vcsa_embedded, vmc].hash
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
