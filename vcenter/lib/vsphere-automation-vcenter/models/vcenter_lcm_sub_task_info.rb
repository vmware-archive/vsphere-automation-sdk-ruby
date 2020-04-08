# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterLcmSubTaskInfo
    # Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses.
    attr_accessor :cancelable

    attr_accessor :description

    # Time when the operation is completed. This field is optional and it is only relevant when the value of CommonInfo.status is one of SUCCEEDED or FAILED.
    attr_accessor :end_time

    # Description of the error if the operation status is \"FAILED\". If unset the description of why the operation failed will be included in the result of the operation (see Info.result).
    attr_accessor :error

    # External tools used for the deployment. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :external_tools

    # The time that the last update is registered. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :last_updated_time

    # Identifier of the operation associated with the task. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.operation.
    attr_accessor :operation

    # Parent of the current task. This field will be unset if the task has no parent. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: cis.task. When operations return a value of this structure as a result, the field will be an identifier for the resource type: cis.task.
    attr_accessor :parent

    attr_accessor :progress

    attr_accessor :result

    # Identifier of the service containing the operation. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.service.
    attr_accessor :service

    # Time when the operation is started. This field is optional and it is only relevant when the value of CommonInfo.status is one of RUNNING, BLOCKED, SUCCEEDED, or FAILED.
    attr_accessor :start_time

    attr_accessor :status

    attr_accessor :target

    # Name of the user who performed the operation. This field will be unset if the operation is performed by the system.
    attr_accessor :user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cancelable' => :'cancelable',
        :'description' => :'description',
        :'end_time' => :'end_time',
        :'error' => :'error',
        :'external_tools' => :'external_tools',
        :'last_updated_time' => :'last_updated_time',
        :'operation' => :'operation',
        :'parent' => :'parent',
        :'progress' => :'progress',
        :'result' => :'result',
        :'service' => :'service',
        :'start_time' => :'start_time',
        :'status' => :'status',
        :'target' => :'target',
        :'user' => :'user'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cancelable' => :'Boolean',
        :'description' => :'VapiStdLocalizableMessage',
        :'end_time' => :'DateTime',
        :'error' => :'String',
        :'external_tools' => :'Array<VcenterLcmExternalTool>',
        :'last_updated_time' => :'DateTime',
        :'operation' => :'String',
        :'parent' => :'String',
        :'progress' => :'CisTaskProgress',
        :'result' => :'VcenterLcmResult',
        :'service' => :'String',
        :'start_time' => :'DateTime',
        :'status' => :'CisTaskStatus',
        :'target' => :'VapiStdDynamicID',
        :'user' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cancelable')
        self.cancelable = attributes[:'cancelable']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'end_time')
        self.end_time = attributes[:'end_time']
      end

      if attributes.has_key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.has_key?(:'external_tools')
        if (value = attributes[:'external_tools']).is_a?(Array)
          self.external_tools = value
        end
      end

      if attributes.has_key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.has_key?(:'operation')
        self.operation = attributes[:'operation']
      end

      if attributes.has_key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.has_key?(:'progress')
        self.progress = attributes[:'progress']
      end

      if attributes.has_key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.has_key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.has_key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cancelable.nil?
        invalid_properties.push('invalid value for "cancelable", cancelable cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @external_tools.nil?
        invalid_properties.push('invalid value for "external_tools", external_tools cannot be nil.')
      end

      if @last_updated_time.nil?
        invalid_properties.push('invalid value for "last_updated_time", last_updated_time cannot be nil.')
      end

      if @operation.nil?
        invalid_properties.push('invalid value for "operation", operation cannot be nil.')
      end

      if @progress.nil?
        invalid_properties.push('invalid value for "progress", progress cannot be nil.')
      end

      if @service.nil?
        invalid_properties.push('invalid value for "service", service cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cancelable.nil?
      return false if @description.nil?
      return false if @external_tools.nil?
      return false if @last_updated_time.nil?
      return false if @operation.nil?
      return false if @progress.nil?
      return false if @service.nil?
      return false if @status.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cancelable == o.cancelable &&
          description == o.description &&
          end_time == o.end_time &&
          error == o.error &&
          external_tools == o.external_tools &&
          last_updated_time == o.last_updated_time &&
          operation == o.operation &&
          parent == o.parent &&
          progress == o.progress &&
          result == o.result &&
          service == o.service &&
          start_time == o.start_time &&
          status == o.status &&
          target == o.target &&
          user == o.user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cancelable, description, end_time, error, external_tools, last_updated_time, operation, parent, progress, result, service, start_time, status, target, user].hash
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
