=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'date'

module VSphereAutomation
  module VAPI
    class VapiMetadataMetamodelPackageInfo
    # Dot separated name of the package element. The segments in the name reflect the organization of the APIs. The format of each segment is lower case with underscores. Each underscore represents a word boundary. If there are acronyms in the word, the capitalization is preserved. This format makes it easy to translate the segment into a different naming convention.
    attr_accessor :name

    # Metamodel information of all the structure elements contained in the package element. The key in the {@term map} is the identifier of the structure element and the value in the {@term map} is the metamodel information for the structure element. <p> This does not include the structure elements contained in the service elements that are contained in this package element.
    attr_accessor :structures

    # Metamodel information of all the enumeration elements contained in the package element. The key in the {@term map} is the identifier of the enumeration element and the value in the {@term map} is the metamodel information for the enumeration element. <p> This does not include the enumeration elements that are contained in the service elements of this package element or structure elements of this package element.
    attr_accessor :enumerations

    # Metamodel information of all the service elements contained in the package element. The key in the {@term map} is the identifier of the service element and the value in the {@term map} is the metamodel information for the service element.
    attr_accessor :services

    # Generic metadata elements for the package element. The key in the {@term map} is the name of the metadata element and the value is the data associated with that metadata element. <p> The {@link vapi.metadata.metamodel.MetadataIdentifier} contains possible string values for keys in the {@term map}.
    attr_accessor :metadata

    # English language documentation for a package. It can contain HTML markup and Javadoc tags. The first sentence of the package documentation is a complete sentence that identifies the package by name and summarizes the purpose of the package. <p> The primary purpose of a package documentation is to provide high-level context that will provide a framework in which the users can put the detail about the package contents.
    attr_accessor :documentation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'structures' => :'structures',
        :'enumerations' => :'enumerations',
        :'services' => :'services',
        :'metadata' => :'metadata',
        :'documentation' => :'documentation'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'structures' => :'Array<Object>',
        :'enumerations' => :'Array<Object>',
        :'services' => :'Array<Object>',
        :'metadata' => :'Array<Object>',
        :'documentation' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'structures')
        if (value = attributes[:'structures']).is_a?(Array)
          self.structures = value
        end
      end

      if attributes.has_key?(:'enumerations')
        if (value = attributes[:'enumerations']).is_a?(Array)
          self.enumerations = value
        end
      end

      if attributes.has_key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.has_key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Array)
          self.metadata = value
        end
      end

      if attributes.has_key?(:'documentation')
        self.documentation = attributes[:'documentation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @structures.nil?
        invalid_properties.push('invalid value for "structures", structures cannot be nil.')
      end

      if @enumerations.nil?
        invalid_properties.push('invalid value for "enumerations", enumerations cannot be nil.')
      end

      if @services.nil?
        invalid_properties.push('invalid value for "services", services cannot be nil.')
      end

      if @metadata.nil?
        invalid_properties.push('invalid value for "metadata", metadata cannot be nil.')
      end

      if @documentation.nil?
        invalid_properties.push('invalid value for "documentation", documentation cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @structures.nil?
      return false if @enumerations.nil?
      return false if @services.nil?
      return false if @metadata.nil?
      return false if @documentation.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          structures == o.structures &&
          enumerations == o.enumerations &&
          services == o.services &&
          metadata == o.metadata &&
          documentation == o.documentation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, structures, enumerations, services, metadata, documentation].hash
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
