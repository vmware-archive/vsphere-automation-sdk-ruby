# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceRecoveryRestoreMetadata
    # Time when this backup was completed.
    attr_accessor :timestamp

    # List of parts included in the backup.
    attr_accessor :parts

    # VCSA version
    attr_accessor :version

    # Box name is PNID/ FQDN etc
    attr_accessor :boxname

    # Is SSO login required for the vCenter server.
    attr_accessor :sso_login_required

    # Custom comment
    attr_accessor :comment

    # Does the VCSA match the deployment type, network properties            and version of backed up VC
    attr_accessor :applicable

    # Any messages if the backup is not aplicable
    attr_accessor :messages

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'timestamp' => :'timestamp',
        :'parts' => :'parts',
        :'version' => :'version',
        :'boxname' => :'boxname',
        :'sso_login_required' => :'sso_login_required',
        :'comment' => :'comment',
        :'applicable' => :'applicable',
        :'messages' => :'messages'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'timestamp' => :'DateTime',
        :'parts' => :'Array<String>',
        :'version' => :'String',
        :'boxname' => :'String',
        :'sso_login_required' => :'BOOLEAN',
        :'comment' => :'String',
        :'applicable' => :'BOOLEAN',
        :'messages' => :'Array<ApplianceRecoveryRestoreLocalizableMessage>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'parts')
        if (value = attributes[:'parts']).is_a?(Array)
          self.parts = value
        end
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'boxname')
        self.boxname = attributes[:'boxname']
      end

      if attributes.has_key?(:'sso_login_required')
        self.sso_login_required = attributes[:'sso_login_required']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.has_key?(:'applicable')
        self.applicable = attributes[:'applicable']
      end

      if attributes.has_key?(:'messages')
        if (value = attributes[:'messages']).is_a?(Array)
          self.messages = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      if @parts.nil?
        invalid_properties.push('invalid value for "parts", parts cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if @boxname.nil?
        invalid_properties.push('invalid value for "boxname", boxname cannot be nil.')
      end

      if @comment.nil?
        invalid_properties.push('invalid value for "comment", comment cannot be nil.')
      end

      if @applicable.nil?
        invalid_properties.push('invalid value for "applicable", applicable cannot be nil.')
      end

      if @messages.nil?
        invalid_properties.push('invalid value for "messages", messages cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @timestamp.nil?
      return false if @parts.nil?
      return false if @version.nil?
      return false if @boxname.nil?
      return false if @comment.nil?
      return false if @applicable.nil?
      return false if @messages.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          timestamp == o.timestamp &&
          parts == o.parts &&
          version == o.version &&
          boxname == o.boxname &&
          sso_login_required == o.sso_login_required &&
          comment == o.comment &&
          applicable == o.applicable &&
          messages == o.messages
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [timestamp, parts, version, boxname, sso_login_required, comment, applicable, messages].hash
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
        temp_model = VSphereAutomation::Appliance.const_get(type).new
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
