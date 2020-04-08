# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterClusterEdrsAlgoParameterParam
    # Weight to compute CPU usage EWMA to trigger scale in. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :cpu_scale_in_ewma_weight_percent

    # CPU low threshold to trigger scale in. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :cpu_scale_in_threshold

    # Weight to compute CPU usage EWMA to trigger scale out. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :cpu_scale_out_ewma_weight_percent

    # CPU high threshold to trigger scale out. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :cpu_scale_out_threshold

    # Generate periodical EDRS recommendation event. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :generate_recommendation_event

    # Maximum number of hosts allowed in the cluster. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :max_hosts

    # Weight to compute memory usage EWMA to trigger scale in. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :memory_scale_in_ewma_weight_percent

    # Memory low threshold to trigger scale in. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :memory_scale_in_threshold

    # Weight to compute memory usage EWMA to trigger scale out. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :memory_scale_out_ewma_weight_percent

    # Memory high threshold to trigger scale out. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :memory_scale_out_threshold

    # Minimum number of hosts allowed in the cluster. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :min_hosts

    # Maximum number of hosts allowed in the cluster when scale out for storage reason. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :storage_scale_out_max_hosts

    # Only vSAN storage scale out recommendation event can be generated. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :storage_scale_out_only

    # Weight to compute vSAN storage usage EWMA to trigger scale in. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :vsan_scale_in_ewma_weight_percent

    # vSAN storage low threshold to trigger scale in. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :vsan_scale_in_threshold

    # Weight to compute vSAN storage usage EWMA to trigger scale out. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :vsan_scale_out_ewma_weight_percent

    # vSAN storage high threshold to trigger scale out. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset, parameter will not be updated.
    attr_accessor :vsan_scale_out_threshold

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cpu_scale_in_ewma_weight_percent' => :'cpu_scale_in_ewma_weight_percent',
        :'cpu_scale_in_threshold' => :'cpu_scale_in_threshold',
        :'cpu_scale_out_ewma_weight_percent' => :'cpu_scale_out_ewma_weight_percent',
        :'cpu_scale_out_threshold' => :'cpu_scale_out_threshold',
        :'generate_recommendation_event' => :'generate_recommendation_event',
        :'max_hosts' => :'max_hosts',
        :'memory_scale_in_ewma_weight_percent' => :'memory_scale_in_ewma_weight_percent',
        :'memory_scale_in_threshold' => :'memory_scale_in_threshold',
        :'memory_scale_out_ewma_weight_percent' => :'memory_scale_out_ewma_weight_percent',
        :'memory_scale_out_threshold' => :'memory_scale_out_threshold',
        :'min_hosts' => :'min_hosts',
        :'storage_scale_out_max_hosts' => :'storage_scale_out_max_hosts',
        :'storage_scale_out_only' => :'storage_scale_out_only',
        :'vsan_scale_in_ewma_weight_percent' => :'vsan_scale_in_ewma_weight_percent',
        :'vsan_scale_in_threshold' => :'vsan_scale_in_threshold',
        :'vsan_scale_out_ewma_weight_percent' => :'vsan_scale_out_ewma_weight_percent',
        :'vsan_scale_out_threshold' => :'vsan_scale_out_threshold'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cpu_scale_in_ewma_weight_percent' => :'Integer',
        :'cpu_scale_in_threshold' => :'Integer',
        :'cpu_scale_out_ewma_weight_percent' => :'Integer',
        :'cpu_scale_out_threshold' => :'Integer',
        :'generate_recommendation_event' => :'Boolean',
        :'max_hosts' => :'Integer',
        :'memory_scale_in_ewma_weight_percent' => :'Integer',
        :'memory_scale_in_threshold' => :'Integer',
        :'memory_scale_out_ewma_weight_percent' => :'Integer',
        :'memory_scale_out_threshold' => :'Integer',
        :'min_hosts' => :'Integer',
        :'storage_scale_out_max_hosts' => :'Integer',
        :'storage_scale_out_only' => :'Boolean',
        :'vsan_scale_in_ewma_weight_percent' => :'Integer',
        :'vsan_scale_in_threshold' => :'Integer',
        :'vsan_scale_out_ewma_weight_percent' => :'Integer',
        :'vsan_scale_out_threshold' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cpu_scale_in_ewma_weight_percent')
        self.cpu_scale_in_ewma_weight_percent = attributes[:'cpu_scale_in_ewma_weight_percent']
      end

      if attributes.has_key?(:'cpu_scale_in_threshold')
        self.cpu_scale_in_threshold = attributes[:'cpu_scale_in_threshold']
      end

      if attributes.has_key?(:'cpu_scale_out_ewma_weight_percent')
        self.cpu_scale_out_ewma_weight_percent = attributes[:'cpu_scale_out_ewma_weight_percent']
      end

      if attributes.has_key?(:'cpu_scale_out_threshold')
        self.cpu_scale_out_threshold = attributes[:'cpu_scale_out_threshold']
      end

      if attributes.has_key?(:'generate_recommendation_event')
        self.generate_recommendation_event = attributes[:'generate_recommendation_event']
      end

      if attributes.has_key?(:'max_hosts')
        self.max_hosts = attributes[:'max_hosts']
      end

      if attributes.has_key?(:'memory_scale_in_ewma_weight_percent')
        self.memory_scale_in_ewma_weight_percent = attributes[:'memory_scale_in_ewma_weight_percent']
      end

      if attributes.has_key?(:'memory_scale_in_threshold')
        self.memory_scale_in_threshold = attributes[:'memory_scale_in_threshold']
      end

      if attributes.has_key?(:'memory_scale_out_ewma_weight_percent')
        self.memory_scale_out_ewma_weight_percent = attributes[:'memory_scale_out_ewma_weight_percent']
      end

      if attributes.has_key?(:'memory_scale_out_threshold')
        self.memory_scale_out_threshold = attributes[:'memory_scale_out_threshold']
      end

      if attributes.has_key?(:'min_hosts')
        self.min_hosts = attributes[:'min_hosts']
      end

      if attributes.has_key?(:'storage_scale_out_max_hosts')
        self.storage_scale_out_max_hosts = attributes[:'storage_scale_out_max_hosts']
      end

      if attributes.has_key?(:'storage_scale_out_only')
        self.storage_scale_out_only = attributes[:'storage_scale_out_only']
      end

      if attributes.has_key?(:'vsan_scale_in_ewma_weight_percent')
        self.vsan_scale_in_ewma_weight_percent = attributes[:'vsan_scale_in_ewma_weight_percent']
      end

      if attributes.has_key?(:'vsan_scale_in_threshold')
        self.vsan_scale_in_threshold = attributes[:'vsan_scale_in_threshold']
      end

      if attributes.has_key?(:'vsan_scale_out_ewma_weight_percent')
        self.vsan_scale_out_ewma_weight_percent = attributes[:'vsan_scale_out_ewma_weight_percent']
      end

      if attributes.has_key?(:'vsan_scale_out_threshold')
        self.vsan_scale_out_threshold = attributes[:'vsan_scale_out_threshold']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cpu_scale_in_ewma_weight_percent == o.cpu_scale_in_ewma_weight_percent &&
          cpu_scale_in_threshold == o.cpu_scale_in_threshold &&
          cpu_scale_out_ewma_weight_percent == o.cpu_scale_out_ewma_weight_percent &&
          cpu_scale_out_threshold == o.cpu_scale_out_threshold &&
          generate_recommendation_event == o.generate_recommendation_event &&
          max_hosts == o.max_hosts &&
          memory_scale_in_ewma_weight_percent == o.memory_scale_in_ewma_weight_percent &&
          memory_scale_in_threshold == o.memory_scale_in_threshold &&
          memory_scale_out_ewma_weight_percent == o.memory_scale_out_ewma_weight_percent &&
          memory_scale_out_threshold == o.memory_scale_out_threshold &&
          min_hosts == o.min_hosts &&
          storage_scale_out_max_hosts == o.storage_scale_out_max_hosts &&
          storage_scale_out_only == o.storage_scale_out_only &&
          vsan_scale_in_ewma_weight_percent == o.vsan_scale_in_ewma_weight_percent &&
          vsan_scale_in_threshold == o.vsan_scale_in_threshold &&
          vsan_scale_out_ewma_weight_percent == o.vsan_scale_out_ewma_weight_percent &&
          vsan_scale_out_threshold == o.vsan_scale_out_threshold
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cpu_scale_in_ewma_weight_percent, cpu_scale_in_threshold, cpu_scale_out_ewma_weight_percent, cpu_scale_out_threshold, generate_recommendation_event, max_hosts, memory_scale_in_ewma_weight_percent, memory_scale_in_threshold, memory_scale_out_ewma_weight_percent, memory_scale_out_threshold, min_hosts, storage_scale_out_max_hosts, storage_scale_out_only, vsan_scale_in_ewma_weight_percent, vsan_scale_in_threshold, vsan_scale_out_ewma_weight_percent, vsan_scale_out_threshold].hash
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
