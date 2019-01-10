=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentConfigurationModel
    # Whether automatic synchronization is enabled. <p> When automatic synchronization is enabled, the Content Library Service will automatically synchronize all subscribed libraries on a daily basis. Subscribed libraries with the {@link SubscriptionInfo#automaticSyncEnabled} flag turned on will be synchronized every hour between {@link #automaticSyncStartHour} and {@link #automaticSyncStopHour}.
    attr_accessor :automatic_sync_enabled

    # The hour at which the automatic synchronization will start. This value is between 0 (midnight) and 23 inclusive.
    attr_accessor :automatic_sync_start_hour

    # The hour at which the automatic synchronization will stop. Any active synchronization operation will continue to run, however no new synchronization operations will be triggered after the stop hour. This value is between 0 (midnight) and 23 inclusive.
    attr_accessor :automatic_sync_stop_hour

    # The maximum allowed number of library items to synchronize concurrently from remote libraries. This must be a positive number. The service may not be able to guarantee the requested concurrency if there is no available capacity. <p> This setting is global across all subscribed libraries.
    attr_accessor :maximum_concurrent_item_syncs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'automatic_sync_enabled' => :'automatic_sync_enabled',
        :'automatic_sync_start_hour' => :'automatic_sync_start_hour',
        :'automatic_sync_stop_hour' => :'automatic_sync_stop_hour',
        :'maximum_concurrent_item_syncs' => :'maximum_concurrent_item_syncs'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'automatic_sync_enabled' => :'BOOLEAN',
        :'automatic_sync_start_hour' => :'Integer',
        :'automatic_sync_stop_hour' => :'Integer',
        :'maximum_concurrent_item_syncs' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'automatic_sync_enabled')
        self.automatic_sync_enabled = attributes[:'automatic_sync_enabled']
      end

      if attributes.has_key?(:'automatic_sync_start_hour')
        self.automatic_sync_start_hour = attributes[:'automatic_sync_start_hour']
      end

      if attributes.has_key?(:'automatic_sync_stop_hour')
        self.automatic_sync_stop_hour = attributes[:'automatic_sync_stop_hour']
      end

      if attributes.has_key?(:'maximum_concurrent_item_syncs')
        self.maximum_concurrent_item_syncs = attributes[:'maximum_concurrent_item_syncs']
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
          automatic_sync_enabled == o.automatic_sync_enabled &&
          automatic_sync_start_hour == o.automatic_sync_start_hour &&
          automatic_sync_stop_hour == o.automatic_sync_stop_hour &&
          maximum_concurrent_item_syncs == o.maximum_concurrent_item_syncs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [automatic_sync_enabled, automatic_sync_start_hour, automatic_sync_stop_hour, maximum_concurrent_item_syncs].hash
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
        temp_model = VSphereAutomation::Content.const_get(type).new
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
