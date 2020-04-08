# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterTrustSubscriptionsInfoDetails
    # If the optional contentType is specified, the notifcation will be sent using the data-source specific (see HEAD) content type. The default is the JSON-RPC defined \"NotificationEvent\". Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :content_type

    # The expiration datetime. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :expiration

    # The notification endpoint url. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :notification_endpoint

    # Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :query_string

    # If the sendResults is set, the actual change will be sent. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :send_results

    # Subscription Id, which is the primary key in subscription database. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :subscription

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'content_type' => :'content_type',
        :'expiration' => :'expiration',
        :'notification_endpoint' => :'notification_endpoint',
        :'query_string' => :'query_string',
        :'send_results' => :'send_results',
        :'subscription' => :'subscription'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'content_type' => :'String',
        :'expiration' => :'String',
        :'notification_endpoint' => :'String',
        :'query_string' => :'String',
        :'send_results' => :'Boolean',
        :'subscription' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'content_type')
        self.content_type = attributes[:'content_type']
      end

      if attributes.has_key?(:'expiration')
        self.expiration = attributes[:'expiration']
      end

      if attributes.has_key?(:'notification_endpoint')
        self.notification_endpoint = attributes[:'notification_endpoint']
      end

      if attributes.has_key?(:'query_string')
        self.query_string = attributes[:'query_string']
      end

      if attributes.has_key?(:'send_results')
        self.send_results = attributes[:'send_results']
      end

      if attributes.has_key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @content_type.nil?
        invalid_properties.push('invalid value for "content_type", content_type cannot be nil.')
      end

      if @expiration.nil?
        invalid_properties.push('invalid value for "expiration", expiration cannot be nil.')
      end

      if @notification_endpoint.nil?
        invalid_properties.push('invalid value for "notification_endpoint", notification_endpoint cannot be nil.')
      end

      if @query_string.nil?
        invalid_properties.push('invalid value for "query_string", query_string cannot be nil.')
      end

      if @send_results.nil?
        invalid_properties.push('invalid value for "send_results", send_results cannot be nil.')
      end

      if @subscription.nil?
        invalid_properties.push('invalid value for "subscription", subscription cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @content_type.nil?
      return false if @expiration.nil?
      return false if @notification_endpoint.nil?
      return false if @query_string.nil?
      return false if @send_results.nil?
      return false if @subscription.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          content_type == o.content_type &&
          expiration == o.expiration &&
          notification_endpoint == o.notification_endpoint &&
          query_string == o.query_string &&
          send_results == o.send_results &&
          subscription == o.subscription
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [content_type, expiration, notification_endpoint, query_string, send_results, subscription].hash
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
