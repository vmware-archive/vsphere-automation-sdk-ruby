=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryPublishInfo
    attr_accessor :authentication_method

    # Whether the local library is published.
    attr_accessor :published

    # The URL to which the library metadata is published by the Content Library Service. <p> This value can be used to set the {@link SubscriptionInfo#subscriptionUrl} property when creating a subscribed library.
    attr_accessor :publish_url

    # The username to require for authentication.
    attr_accessor :user_name

    # The new password to require for authentication.
    attr_accessor :password

    # The current password to verify. This {@term field} is available starting in vSphere 6.7.
    attr_accessor :current_password

    # Whether library and library item metadata are persisted in the storage backing as JSON files. This flag only applies if the local library is published. <p> Enabling JSON persistence allows you to synchronize a subscribed library manually instead of over HTTP. You copy the local library content and metadata to another storage backing manually and then create a subscribed library referencing the location of the library JSON file in the {@link SubscriptionInfo#subscriptionUrl}. When the subscribed library's storage backing matches the subscription URL, files do not need to be copied to the subscribed library. <p> For a library backed by a datastore, the library JSON file will be stored at the path contentlib-{library_id}/lib.json on the datastore. <p> For a library backed by a remote file system, the library JSON file will be stored at {library_id}/lib.json in the remote file system path.
    attr_accessor :persist_json_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authentication_method' => :'authentication_method',
        :'published' => :'published',
        :'publish_url' => :'publish_url',
        :'user_name' => :'user_name',
        :'password' => :'password',
        :'current_password' => :'current_password',
        :'persist_json_enabled' => :'persist_json_enabled'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication_method' => :'ContentLibraryPublishInfoAuthenticationMethod',
        :'published' => :'BOOLEAN',
        :'publish_url' => :'String',
        :'user_name' => :'String',
        :'password' => :'String',
        :'current_password' => :'String',
        :'persist_json_enabled' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authentication_method')
        self.authentication_method = attributes[:'authentication_method']
      end

      if attributes.has_key?(:'published')
        self.published = attributes[:'published']
      end

      if attributes.has_key?(:'publish_url')
        self.publish_url = attributes[:'publish_url']
      end

      if attributes.has_key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'current_password')
        self.current_password = attributes[:'current_password']
      end

      if attributes.has_key?(:'persist_json_enabled')
        self.persist_json_enabled = attributes[:'persist_json_enabled']
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
          authentication_method == o.authentication_method &&
          published == o.published &&
          publish_url == o.publish_url &&
          user_name == o.user_name &&
          password == o.password &&
          current_password == o.current_password &&
          persist_json_enabled == o.persist_json_enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [authentication_method, published, publish_url, user_name, password, current_password, persist_json_enabled].hash
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
