=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryItemStorageInfo
    attr_accessor :storage_backing

    # URIs that identify the file on the storage backing. <p> These URIs may be specific to the backing and may need interpretation by the client. A client that understands a URI scheme in this list may use that URI to directly access the file on the storage backing. This can provide high-performance support for file manipulation.
    attr_accessor :storage_uris

    attr_accessor :checksum_info

    # The name of the file. <p> This value will be unique within the library item for each file. It cannot be an empty string.
    attr_accessor :name

    # The file size, in bytes. The file size is the storage used and not the uploaded or provisioned size. For example, when uploading a disk to a datastore, the amount of storage that the disk consumes may be different from the disk file size. When the file is not cached, the size is 0.
    attr_accessor :size

    # Indicates whether the file is on disk or not.
    attr_accessor :cached

    # The version of this file; incremented when a new copy of the file is uploaded.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'storage_backing' => :'storage_backing',
        :'storage_uris' => :'storage_uris',
        :'checksum_info' => :'checksum_info',
        :'name' => :'name',
        :'size' => :'size',
        :'cached' => :'cached',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'storage_backing' => :'ContentLibraryStorageBacking',
        :'storage_uris' => :'Array<String>',
        :'checksum_info' => :'ContentLibraryItemFileChecksumInfo',
        :'name' => :'String',
        :'size' => :'Integer',
        :'cached' => :'BOOLEAN',
        :'version' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'storage_backing')
        self.storage_backing = attributes[:'storage_backing']
      end

      if attributes.has_key?(:'storage_uris')
        if (value = attributes[:'storage_uris']).is_a?(Array)
          self.storage_uris = value
        end
      end

      if attributes.has_key?(:'checksum_info')
        self.checksum_info = attributes[:'checksum_info']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'cached')
        self.cached = attributes[:'cached']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @storage_backing.nil?
        invalid_properties.push('invalid value for "storage_backing", storage_backing cannot be nil.')
      end

      if @storage_uris.nil?
        invalid_properties.push('invalid value for "storage_uris", storage_uris cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @cached.nil?
        invalid_properties.push('invalid value for "cached", cached cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @storage_backing.nil?
      return false if @storage_uris.nil?
      return false if @name.nil?
      return false if @size.nil?
      return false if @cached.nil?
      return false if @version.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          storage_backing == o.storage_backing &&
          storage_uris == o.storage_uris &&
          checksum_info == o.checksum_info &&
          name == o.name &&
          size == o.size &&
          cached == o.cached &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [storage_backing, storage_uris, checksum_info, name, size, cached, version].hash
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
