# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterClusterEdrsRecommendationRecommendation
    attr_accessor :action

    # A set of available hosts which were seen by EDRS when the recommendation was made. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    attr_accessor :hosts

    # Hosts that should be removed from the cluster for a SCALE_IN recommendation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Recommendation.Recommendation.action is SCALE_IN. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    attr_accessor :hosts_to_remove

    # This is true if the EDRS is enabled in the cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :is_edrs_enabled

    # The reasons why NO_ACTION is recommended. The recommendation could be NO_ACTION because all resources are well utilized or because something is preventing recommending SCALE_IN even though resources utilization is low. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Recommendation.Recommendation.action is NO_ACTION.
    attr_accessor :no_action_reasons

    attr_accessor :utilization

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action' => :'action',
        :'hosts' => :'hosts',
        :'hosts_to_remove' => :'hosts_to_remove',
        :'is_edrs_enabled' => :'is_edrs_enabled',
        :'no_action_reasons' => :'no_action_reasons',
        :'utilization' => :'utilization'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action' => :'VcenterClusterEdrsRecommendationRecommendationAction',
        :'hosts' => :'Array<String>',
        :'hosts_to_remove' => :'Array<String>',
        :'is_edrs_enabled' => :'Boolean',
        :'no_action_reasons' => :'Array<VapiStdLocalizableMessage>',
        :'utilization' => :'VcenterClusterEdrsRecommendationUtilizationInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'hosts')
        if (value = attributes[:'hosts']).is_a?(Array)
          self.hosts = value
        end
      end

      if attributes.has_key?(:'hosts_to_remove')
        if (value = attributes[:'hosts_to_remove']).is_a?(Array)
          self.hosts_to_remove = value
        end
      end

      if attributes.has_key?(:'is_edrs_enabled')
        self.is_edrs_enabled = attributes[:'is_edrs_enabled']
      end

      if attributes.has_key?(:'no_action_reasons')
        if (value = attributes[:'no_action_reasons']).is_a?(Array)
          self.no_action_reasons = value
        end
      end

      if attributes.has_key?(:'utilization')
        self.utilization = attributes[:'utilization']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action.nil?
        invalid_properties.push('invalid value for "action", action cannot be nil.')
      end

      if @hosts.nil?
        invalid_properties.push('invalid value for "hosts", hosts cannot be nil.')
      end

      if @is_edrs_enabled.nil?
        invalid_properties.push('invalid value for "is_edrs_enabled", is_edrs_enabled cannot be nil.')
      end

      if @utilization.nil?
        invalid_properties.push('invalid value for "utilization", utilization cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action.nil?
      return false if @hosts.nil?
      return false if @is_edrs_enabled.nil?
      return false if @utilization.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action == o.action &&
          hosts == o.hosts &&
          hosts_to_remove == o.hosts_to_remove &&
          is_edrs_enabled == o.is_edrs_enabled &&
          no_action_reasons == o.no_action_reasons &&
          utilization == o.utilization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action, hosts, hosts_to_remove, is_edrs_enabled, no_action_reasons, utilization].hash
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
