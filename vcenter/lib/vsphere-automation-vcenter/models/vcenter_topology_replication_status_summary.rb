# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterTopologyReplicationStatusSummary
    # Number of replication changes node is behind the replication partner. This field will be unset if the partner host or replication status is not available, i.e, if ReplicationStatus.Summary.partner-available or ReplicationStatus.Summary.status-available is false.
    attr_accessor :change_lag

    # Identifier for the vCenter or Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the node. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.VCenter.name.
    attr_accessor :node

    # Indicates if the VMware Directory Service on partner is reachable or not.
    attr_accessor :partner_available

    # Indicates if node is processing replication changes from the replication partner. This field will be unset if the partner host or replication status is not available, i.e, if ReplicationStatus.Summary.partner-available or ReplicationStatus.Summary.status-available is false.
    attr_accessor :replicating

    # Identifier for the vCenter or Platform Services Controller replication partner. Identifier can be either IP address or DNS resolvable name of the replication partner. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.VCenter.name.
    attr_accessor :replication_partner

    # Indicates if the replication status for the node with respect to replication partner can be retrieved or not.
    attr_accessor :status_available

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'change_lag' => :'change_lag',
        :'node' => :'node',
        :'partner_available' => :'partner_available',
        :'replicating' => :'replicating',
        :'replication_partner' => :'replication_partner',
        :'status_available' => :'status_available'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'change_lag' => :'Integer',
        :'node' => :'String',
        :'partner_available' => :'Boolean',
        :'replicating' => :'Boolean',
        :'replication_partner' => :'String',
        :'status_available' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'change_lag')
        self.change_lag = attributes[:'change_lag']
      end

      if attributes.has_key?(:'node')
        self.node = attributes[:'node']
      end

      if attributes.has_key?(:'partner_available')
        self.partner_available = attributes[:'partner_available']
      end

      if attributes.has_key?(:'replicating')
        self.replicating = attributes[:'replicating']
      end

      if attributes.has_key?(:'replication_partner')
        self.replication_partner = attributes[:'replication_partner']
      end

      if attributes.has_key?(:'status_available')
        self.status_available = attributes[:'status_available']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @node.nil?
        invalid_properties.push('invalid value for "node", node cannot be nil.')
      end

      if @partner_available.nil?
        invalid_properties.push('invalid value for "partner_available", partner_available cannot be nil.')
      end

      if @replication_partner.nil?
        invalid_properties.push('invalid value for "replication_partner", replication_partner cannot be nil.')
      end

      if @status_available.nil?
        invalid_properties.push('invalid value for "status_available", status_available cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @node.nil?
      return false if @partner_available.nil?
      return false if @replication_partner.nil?
      return false if @status_available.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          change_lag == o.change_lag &&
          node == o.node &&
          partner_available == o.partner_available &&
          replicating == o.replicating &&
          replication_partner == o.replication_partner &&
          status_available == o.status_available
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [change_lag, node, partner_available, replicating, replication_partner, status_available].hash
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
