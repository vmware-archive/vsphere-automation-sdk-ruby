=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryItemModel
    # A unique identifier for this library item.
    attr_accessor :id

    # The identifier of the {@link LibraryModel} to which this item belongs.
    attr_accessor :library_id

    # The version of the file content list of this library item.
    attr_accessor :content_version

    # The date and time when this library item was created.
    attr_accessor :creation_time

    # A human-readable description for this library item.
    attr_accessor :description

    # The date and time when the metadata for this library item was last changed. <p> This {@term field} is affected by changes to the properties or file content of this item. It is not modified by changes to the tags of the item, or by changes to the library which owns this item.
    attr_accessor :last_modified_time

    # The date and time when this library item was last synchronized. <p> This {@term field} is updated every time a synchronization is triggered on the library item, including when a synchronization is triggered on the library to which this item belongs. The value is {@term unset} for a library item that belongs to a local library.
    attr_accessor :last_sync_time

    # A version number for the metadata of this library item. <p> This value is incremented with each change to the metadata of this item. Changes to name, description, and so on will increment this value. The value is not incremented by changes to the content or tags of the item or the library which owns it.
    attr_accessor :metadata_version

    # A human-readable name for this library item. <p> The name may not be {@term unset} or an empty string. The name does not have to be unique, even within the same library.
    attr_accessor :name

    # The status that indicates whether the library item is on disk or not. The library item is cached when all its files are on disk.
    attr_accessor :cached

    # The library item size, in bytes. The size is the sum of the size used on the storage backing for all the files in the item. When the library item is not cached, the size is 0.
    attr_accessor :size

    # An optional type identifier which indicates the type adapter plugin to use. <p> This {@term field} may be set to a non-empty string value that corresponds to an identifier supported by a type adapter plugin present in the Content Library Service. A type adapter plugin, if present for the specified type, can provide additional information and services around the item content. A type adapter can guide the upload process by creating file entries that are in need of being uploaded to complete an item. <p> The types and plugins supported by the Content Library Service can be queried using the {@link Type} {@term service}.
    attr_accessor :type

    # A version number that is updated on metadata changes. This value is used to validate update requests to provide optimistic concurrency of changes. <p> This value represents a number that is incremented every time library item properties, such as name or description, are changed. It is not incremented by changes to the file content of the library item, including adding or removing files. It is also not affected by tagging the library item.
    attr_accessor :version

    # The identifier of the {@link ItemModel} to which this item is synchronized to if the item belongs to a subscribed library. The value is {@term unset} for a library item that belongs to a local library.
    attr_accessor :source_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'library_id' => :'library_id',
        :'content_version' => :'content_version',
        :'creation_time' => :'creation_time',
        :'description' => :'description',
        :'last_modified_time' => :'last_modified_time',
        :'last_sync_time' => :'last_sync_time',
        :'metadata_version' => :'metadata_version',
        :'name' => :'name',
        :'cached' => :'cached',
        :'size' => :'size',
        :'type' => :'type',
        :'version' => :'version',
        :'source_id' => :'source_id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'library_id' => :'String',
        :'content_version' => :'String',
        :'creation_time' => :'DateTime',
        :'description' => :'String',
        :'last_modified_time' => :'DateTime',
        :'last_sync_time' => :'DateTime',
        :'metadata_version' => :'String',
        :'name' => :'String',
        :'cached' => :'BOOLEAN',
        :'size' => :'Integer',
        :'type' => :'String',
        :'version' => :'String',
        :'source_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'library_id')
        self.library_id = attributes[:'library_id']
      end

      if attributes.has_key?(:'content_version')
        self.content_version = attributes[:'content_version']
      end

      if attributes.has_key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
      end

      if attributes.has_key?(:'last_sync_time')
        self.last_sync_time = attributes[:'last_sync_time']
      end

      if attributes.has_key?(:'metadata_version')
        self.metadata_version = attributes[:'metadata_version']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'cached')
        self.cached = attributes[:'cached']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'source_id')
        self.source_id = attributes[:'source_id']
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
          id == o.id &&
          library_id == o.library_id &&
          content_version == o.content_version &&
          creation_time == o.creation_time &&
          description == o.description &&
          last_modified_time == o.last_modified_time &&
          last_sync_time == o.last_sync_time &&
          metadata_version == o.metadata_version &&
          name == o.name &&
          cached == o.cached &&
          size == o.size &&
          type == o.type &&
          version == o.version &&
          source_id == o.source_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, library_id, content_version, creation_time, description, last_modified_time, last_sync_time, metadata_version, name, cached, size, type, version, source_id].hash
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
