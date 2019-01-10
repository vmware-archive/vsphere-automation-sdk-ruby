=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewMonitoringSnmpSNMPLimits
    # Set up maximum communities limit
    attr_accessor :max_communities

    # Set up max trap destinations limit
    attr_accessor :max_trap_destinations_v1

    # Set up max destinations limit
    attr_accessor :max_destinations_v3

    # Set up max notification Filters
    attr_accessor :max_notification_filters

    # Set up max community length
    attr_accessor :max_community_length

    # Set up max buffer size
    attr_accessor :max_buffer_size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'max_communities' => :'max_communities',
        :'max_trap_destinations_v1' => :'max_trap_destinations_v1',
        :'max_destinations_v3' => :'max_destinations_v3',
        :'max_notification_filters' => :'max_notification_filters',
        :'max_community_length' => :'max_community_length',
        :'max_buffer_size' => :'max_buffer_size'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'max_communities' => :'Integer',
        :'max_trap_destinations_v1' => :'Integer',
        :'max_destinations_v3' => :'Integer',
        :'max_notification_filters' => :'Integer',
        :'max_community_length' => :'Integer',
        :'max_buffer_size' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'max_communities')
        self.max_communities = attributes[:'max_communities']
      end

      if attributes.has_key?(:'max_trap_destinations_v1')
        self.max_trap_destinations_v1 = attributes[:'max_trap_destinations_v1']
      end

      if attributes.has_key?(:'max_destinations_v3')
        self.max_destinations_v3 = attributes[:'max_destinations_v3']
      end

      if attributes.has_key?(:'max_notification_filters')
        self.max_notification_filters = attributes[:'max_notification_filters']
      end

      if attributes.has_key?(:'max_community_length')
        self.max_community_length = attributes[:'max_community_length']
      end

      if attributes.has_key?(:'max_buffer_size')
        self.max_buffer_size = attributes[:'max_buffer_size']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @max_communities.nil?
        invalid_properties.push('invalid value for "max_communities", max_communities cannot be nil.')
      end

      if @max_trap_destinations_v1.nil?
        invalid_properties.push('invalid value for "max_trap_destinations_v1", max_trap_destinations_v1 cannot be nil.')
      end

      if @max_destinations_v3.nil?
        invalid_properties.push('invalid value for "max_destinations_v3", max_destinations_v3 cannot be nil.')
      end

      if @max_notification_filters.nil?
        invalid_properties.push('invalid value for "max_notification_filters", max_notification_filters cannot be nil.')
      end

      if @max_community_length.nil?
        invalid_properties.push('invalid value for "max_community_length", max_community_length cannot be nil.')
      end

      if @max_buffer_size.nil?
        invalid_properties.push('invalid value for "max_buffer_size", max_buffer_size cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @max_communities.nil?
      return false if @max_trap_destinations_v1.nil?
      return false if @max_destinations_v3.nil?
      return false if @max_notification_filters.nil?
      return false if @max_community_length.nil?
      return false if @max_buffer_size.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          max_communities == o.max_communities &&
          max_trap_destinations_v1 == o.max_trap_destinations_v1 &&
          max_destinations_v3 == o.max_destinations_v3 &&
          max_notification_filters == o.max_notification_filters &&
          max_community_length == o.max_community_length &&
          max_buffer_size == o.max_buffer_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [max_communities, max_trap_destinations_v1, max_destinations_v3, max_notification_filters, max_community_length, max_buffer_size].hash
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
