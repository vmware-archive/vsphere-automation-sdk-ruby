=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryItemUpdateSessionModel
    # The identifier of this update session.
    attr_accessor :id

    # The identifier of the library item to which content will be uploaded or removed.
    attr_accessor :library_item_id

    # The content version of the library item whose content is being modified. This value is the {@link ItemModel#contentVersion} at the time when the session is created for the library item.
    attr_accessor :library_item_content_version

    attr_accessor :error_message

    # The progress that has been made with the upload. This property is to be updated by the client during the upload process to indicate the progress of its work in completing the upload. The initial progress is 0 until updated by the client. The maximum value is 100, which indicates that the update is complete.
    attr_accessor :client_progress

    attr_accessor :state

    # Indicates the time after which the session will expire. The session is guaranteed not to expire earlier than this time.
    attr_accessor :expiration_time

    attr_accessor :preview_info

    # Indicates the update session behavior if warnings are raised in the session preview. Any warning which is raised by session preview but not ignored by the client will, by default, fail the update session.
    attr_accessor :warning_behavior

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'library_item_id' => :'library_item_id',
        :'library_item_content_version' => :'library_item_content_version',
        :'error_message' => :'error_message',
        :'client_progress' => :'client_progress',
        :'state' => :'state',
        :'expiration_time' => :'expiration_time',
        :'preview_info' => :'preview_info',
        :'warning_behavior' => :'warning_behavior'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'library_item_id' => :'String',
        :'library_item_content_version' => :'String',
        :'error_message' => :'VapiStdLocalizableMessage',
        :'client_progress' => :'Integer',
        :'state' => :'ContentLibraryItemUpdateSessionModelState',
        :'expiration_time' => :'DateTime',
        :'preview_info' => :'ContentLibraryItemUpdatesessionPreviewInfo',
        :'warning_behavior' => :'Array<ContentLibraryItemUpdatesessionWarningBehavior>'
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

      if attributes.has_key?(:'library_item_id')
        self.library_item_id = attributes[:'library_item_id']
      end

      if attributes.has_key?(:'library_item_content_version')
        self.library_item_content_version = attributes[:'library_item_content_version']
      end

      if attributes.has_key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.has_key?(:'client_progress')
        self.client_progress = attributes[:'client_progress']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'expiration_time')
        self.expiration_time = attributes[:'expiration_time']
      end

      if attributes.has_key?(:'preview_info')
        self.preview_info = attributes[:'preview_info']
      end

      if attributes.has_key?(:'warning_behavior')
        if (value = attributes[:'warning_behavior']).is_a?(Array)
          self.warning_behavior = value
        end
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
          library_item_id == o.library_item_id &&
          library_item_content_version == o.library_item_content_version &&
          error_message == o.error_message &&
          client_progress == o.client_progress &&
          state == o.state &&
          expiration_time == o.expiration_time &&
          preview_info == o.preview_info &&
          warning_behavior == o.warning_behavior
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, library_item_id, library_item_content_version, error_message, client_progress, state, expiration_time, preview_info, warning_behavior].hash
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
