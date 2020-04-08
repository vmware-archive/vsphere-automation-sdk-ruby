# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNamespaceManagementClusterSizeInfoInfo
    attr_accessor :default_pod_cidr

    attr_accessor :default_service_cidr

    attr_accessor :master_vm_info

    # The maximum number of supported pods.
    attr_accessor :num_supported_pods

    # The maximum number of supported services.
    attr_accessor :num_supported_services

    attr_accessor :worker_vm_info

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'default_pod_cidr' => :'default_pod_cidr',
        :'default_service_cidr' => :'default_service_cidr',
        :'master_vm_info' => :'master_vm_info',
        :'num_supported_pods' => :'num_supported_pods',
        :'num_supported_services' => :'num_supported_services',
        :'worker_vm_info' => :'worker_vm_info'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'default_pod_cidr' => :'VcenterNamespaceManagementIpv4Cidr',
        :'default_service_cidr' => :'VcenterNamespaceManagementIpv4Cidr',
        :'master_vm_info' => :'VcenterNamespaceManagementClusterSizeInfoVmInfo',
        :'num_supported_pods' => :'Integer',
        :'num_supported_services' => :'Integer',
        :'worker_vm_info' => :'VcenterNamespaceManagementClusterSizeInfoVmInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'default_pod_cidr')
        self.default_pod_cidr = attributes[:'default_pod_cidr']
      end

      if attributes.has_key?(:'default_service_cidr')
        self.default_service_cidr = attributes[:'default_service_cidr']
      end

      if attributes.has_key?(:'master_vm_info')
        self.master_vm_info = attributes[:'master_vm_info']
      end

      if attributes.has_key?(:'num_supported_pods')
        self.num_supported_pods = attributes[:'num_supported_pods']
      end

      if attributes.has_key?(:'num_supported_services')
        self.num_supported_services = attributes[:'num_supported_services']
      end

      if attributes.has_key?(:'worker_vm_info')
        self.worker_vm_info = attributes[:'worker_vm_info']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @default_pod_cidr.nil?
        invalid_properties.push('invalid value for "default_pod_cidr", default_pod_cidr cannot be nil.')
      end

      if @default_service_cidr.nil?
        invalid_properties.push('invalid value for "default_service_cidr", default_service_cidr cannot be nil.')
      end

      if @master_vm_info.nil?
        invalid_properties.push('invalid value for "master_vm_info", master_vm_info cannot be nil.')
      end

      if @num_supported_pods.nil?
        invalid_properties.push('invalid value for "num_supported_pods", num_supported_pods cannot be nil.')
      end

      if @num_supported_services.nil?
        invalid_properties.push('invalid value for "num_supported_services", num_supported_services cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @default_pod_cidr.nil?
      return false if @default_service_cidr.nil?
      return false if @master_vm_info.nil?
      return false if @num_supported_pods.nil?
      return false if @num_supported_services.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_pod_cidr == o.default_pod_cidr &&
          default_service_cidr == o.default_service_cidr &&
          master_vm_info == o.master_vm_info &&
          num_supported_pods == o.num_supported_pods &&
          num_supported_services == o.num_supported_services &&
          worker_vm_info == o.worker_vm_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_pod_cidr, default_service_cidr, master_vm_info, num_supported_pods, num_supported_services, worker_vm_info].hash
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
