# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterIdentityProvidersActiveDirectoryOverLdap
    attr_accessor :cert_chain

    # Base distinguished name for groups
    attr_accessor :groups_base_dn

    # Password to connect to the active directory server.
    attr_accessor :password

    # Active directory server endpoints. At least one active directory server endpoint must be set.
    attr_accessor :server_endpoints

    # User name to connect to the active directory server.
    attr_accessor :user_name

    # Base distinguished name for users
    attr_accessor :users_base_dn

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cert_chain' => :'cert_chain',
        :'groups_base_dn' => :'groups_base_dn',
        :'password' => :'password',
        :'server_endpoints' => :'server_endpoints',
        :'user_name' => :'user_name',
        :'users_base_dn' => :'users_base_dn'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cert_chain' => :'VcenterCertificateManagementX509CertChain',
        :'groups_base_dn' => :'String',
        :'password' => :'String',
        :'server_endpoints' => :'Array<String>',
        :'user_name' => :'String',
        :'users_base_dn' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cert_chain')
        self.cert_chain = attributes[:'cert_chain']
      end

      if attributes.has_key?(:'groups_base_dn')
        self.groups_base_dn = attributes[:'groups_base_dn']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'server_endpoints')
        if (value = attributes[:'server_endpoints']).is_a?(Array)
          self.server_endpoints = value
        end
      end

      if attributes.has_key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end

      if attributes.has_key?(:'users_base_dn')
        self.users_base_dn = attributes[:'users_base_dn']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @groups_base_dn.nil?
        invalid_properties.push('invalid value for "groups_base_dn", groups_base_dn cannot be nil.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @server_endpoints.nil?
        invalid_properties.push('invalid value for "server_endpoints", server_endpoints cannot be nil.')
      end

      if @user_name.nil?
        invalid_properties.push('invalid value for "user_name", user_name cannot be nil.')
      end

      if @users_base_dn.nil?
        invalid_properties.push('invalid value for "users_base_dn", users_base_dn cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @groups_base_dn.nil?
      return false if @password.nil?
      return false if @server_endpoints.nil?
      return false if @user_name.nil?
      return false if @users_base_dn.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cert_chain == o.cert_chain &&
          groups_base_dn == o.groups_base_dn &&
          password == o.password &&
          server_endpoints == o.server_endpoints &&
          user_name == o.user_name &&
          users_base_dn == o.users_base_dn
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cert_chain, groups_base_dn, password, server_endpoints, user_name, users_base_dn].hash
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
