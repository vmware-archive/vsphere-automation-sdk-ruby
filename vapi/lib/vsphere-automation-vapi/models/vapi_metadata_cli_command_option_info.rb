=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'date'

module VSphereAutomation
  module VAPI
    class VapiMetadataCliCommandOptionInfo
    # The long option name of the parameter as used by the user.
    attr_accessor :long_option

    # The single character value option name.
    attr_accessor :short_option

    # The fully qualified name of the option referred to by the operation element in {@link Info#operationId}.
    attr_accessor :field_name

    # The description of the option to be displayed to the user when they request usage information for a CLI command.
    attr_accessor :description

    # The type of option. This is used to display information about what kind of data is expected (string, number, boolean, etc.) for the option when they request usage information for a CLI command. For {@term enumerated type} this stores the fully qualified {@term enumerated type} id.
    attr_accessor :type

    attr_accessor :generic

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'long_option' => :'long_option',
        :'short_option' => :'short_option',
        :'field_name' => :'field_name',
        :'description' => :'description',
        :'type' => :'type',
        :'generic' => :'generic'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'long_option' => :'String',
        :'short_option' => :'String',
        :'field_name' => :'String',
        :'description' => :'String',
        :'type' => :'String',
        :'generic' => :'VapiMetadataCliCommandGenericType'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'long_option')
        self.long_option = attributes[:'long_option']
      end

      if attributes.has_key?(:'short_option')
        self.short_option = attributes[:'short_option']
      end

      if attributes.has_key?(:'field_name')
        self.field_name = attributes[:'field_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'generic')
        self.generic = attributes[:'generic']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @long_option.nil?
        invalid_properties.push('invalid value for "long_option", long_option cannot be nil.')
      end

      if @field_name.nil?
        invalid_properties.push('invalid value for "field_name", field_name cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @generic.nil?
        invalid_properties.push('invalid value for "generic", generic cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @long_option.nil?
      return false if @field_name.nil?
      return false if @description.nil?
      return false if @type.nil?
      return false if @generic.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          long_option == o.long_option &&
          short_option == o.short_option &&
          field_name == o.field_name &&
          description == o.description &&
          type == o.type &&
          generic == o.generic
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [long_option, short_option, field_name, description, type, generic].hash
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
        temp_model = VSphereAutomation::VAPI.const_get(type).new
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
