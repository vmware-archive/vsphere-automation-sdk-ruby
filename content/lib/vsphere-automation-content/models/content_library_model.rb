=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryModel
    # An identifier which uniquely identifies this {@name LibraryModel}.
    attr_accessor :id

    # The date and time when this library was created.
    attr_accessor :creation_time

    # A human-readable description for this library.
    attr_accessor :description

    # The date and time when this library was last updated. <p> This {@term field} is updated automatically when the library properties are changed. This {@term field} is not affected by adding, removing, or modifying a library item or its content within the library. Tagging the library or syncing the subscribed library does not alter this {@term field}.
    attr_accessor :last_modified_time

    # The date and time when this library was last synchronized. <p> This {@term field} applies only to subscribed libraries. It is updated every time a synchronization is triggered on the library. The value is {@term unset} for a local library.
    attr_accessor :last_sync_time

    # The name of the library. <p> A Library is identified by a human-readable name. Library names cannot be undefined or an empty string. Names do not have to be unique.
    attr_accessor :name

    # The list of default storage backings which are available for this library. <p> A {@link StorageBacking} defines a default storage location which can be used to store files for library items in this library. Some library items, for instance, virtual machine template items, support files that may be distributed across various storage backings. One or more item files may or may not be located on the default storage backing. <p> Multiple default storage locations are not currently supported but may become supported in future releases.
    attr_accessor :storage_backings

    attr_accessor :type

    attr_accessor :optimization_info

    # A version number which is updated on metadata changes. This value allows clients to detect concurrent updates and prevent accidental clobbering of data. <p> This value represents a number which is incremented every time library properties, such as name or description, are changed. It is not incremented by changes to a library item within the library, including adding or removing items. It is also not affected by tagging the library.
    attr_accessor :version

    attr_accessor :publish_info

    attr_accessor :subscription_info

    # The unique identifier of the vCenter server where the library exists.
    attr_accessor :server_guid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'creation_time' => :'creation_time',
        :'description' => :'description',
        :'last_modified_time' => :'last_modified_time',
        :'last_sync_time' => :'last_sync_time',
        :'name' => :'name',
        :'storage_backings' => :'storage_backings',
        :'type' => :'type',
        :'optimization_info' => :'optimization_info',
        :'version' => :'version',
        :'publish_info' => :'publish_info',
        :'subscription_info' => :'subscription_info',
        :'server_guid' => :'server_guid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'creation_time' => :'DateTime',
        :'description' => :'String',
        :'last_modified_time' => :'DateTime',
        :'last_sync_time' => :'DateTime',
        :'name' => :'String',
        :'storage_backings' => :'Array<ContentLibraryStorageBacking>',
        :'type' => :'ContentLibraryModelLibraryType',
        :'optimization_info' => :'ContentLibraryOptimizationInfo',
        :'version' => :'String',
        :'publish_info' => :'ContentLibraryPublishInfo',
        :'subscription_info' => :'ContentLibrarySubscriptionInfo',
        :'server_guid' => :'String'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'storage_backings')
        if (value = attributes[:'storage_backings']).is_a?(Array)
          self.storage_backings = value
        end
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'optimization_info')
        self.optimization_info = attributes[:'optimization_info']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'publish_info')
        self.publish_info = attributes[:'publish_info']
      end

      if attributes.has_key?(:'subscription_info')
        self.subscription_info = attributes[:'subscription_info']
      end

      if attributes.has_key?(:'server_guid')
        self.server_guid = attributes[:'server_guid']
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
          creation_time == o.creation_time &&
          description == o.description &&
          last_modified_time == o.last_modified_time &&
          last_sync_time == o.last_sync_time &&
          name == o.name &&
          storage_backings == o.storage_backings &&
          type == o.type &&
          optimization_info == o.optimization_info &&
          version == o.version &&
          publish_info == o.publish_info &&
          subscription_info == o.subscription_info &&
          server_guid == o.server_guid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, creation_time, description, last_modified_time, last_sync_time, name, storage_backings, type, optimization_info, version, publish_info, subscription_info, server_guid].hash
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
