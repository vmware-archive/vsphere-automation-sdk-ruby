=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibrarySubscriptionInfo
    attr_accessor :authentication_method

    # Whether the library should participate in automatic library synchronization. In order for automatic synchronization to happen, the global {@link ConfigurationModel#automaticSyncEnabled} option must also be true. The subscription is still active even when automatic synchronization is turned off, but synchronization is only activated with an explicit call to {@link SubscribedLibrary#sync} or {@link SubscribedItem#sync}. In other words, manual synchronization is still available even when automatic synchronization is disabled.
    attr_accessor :automatic_sync_enabled

    # Indicates whether a library item's content will be synchronized only on demand. <p> If this is set to {@code true}, then the library item's metadata will be synchronized but the item's content (its files) will not be synchronized. The Content Library Service will synchronize the content upon request only. This can cause the first use of the content to have a noticeable delay. <p> Items without synchronized content can be forcefully synchronized in advance using the {@link SubscribedItem#sync} call with {@param.name forceSyncContent} set to true. Once content has been synchronized, the content can removed with the {@link SubscribedItem#evict} call. <p> If this value is set to {@code false}, all content will be synchronized in advance.
    attr_accessor :on_demand

    # The password to use when authenticating. <p> The password must be set when using a password-based authentication method; empty strings are not allowed.
    attr_accessor :password

    # An optional SHA-1 hash of the SSL certificate for the remote endpoint. <p> If this value is defined the SSL certificate will be verified by comparing it to the SSL thumbprint. The SSL certificate must verify against the thumbprint. When specified, the standard certificate chain validation behavior is not used. The certificate chain is validated normally if this value is {@term unset}.
    attr_accessor :ssl_thumbprint

    # The URL of the endpoint where the metadata for the remotely published library is being served. <p> This URL can be the {@link PublishInfo#publishUrl} of the published library (for example, https://server/path/lib.json). <p> If the source content comes from a published library with {@link PublishInfo#persistJsonEnabled}, the subscription URL can be a URL pointing to the library JSON file on a datastore or remote file system. The supported formats are: <p> vSphere 6.5 <ul> <li>ds:///vmfs/volumes/{uuid}/mylibrary/lib.json (for datastore)</li> <li>nfs://server/path/mylibrary/lib.json (for NFSv3 server on vCenter Server Appliance)</li> <li>nfs://server/path/mylibrary/lib.json?version=4 (for NFSv4 server on vCenter Server Appliance) </li> <li>smb://server/path/mylibrary/lib.json (for SMB server)</li> </ul> <p> vSphere 6.0 <ul> <li>file://server/mylibrary/lib.json (for UNC server on vCenter Server for Windows)</li> <li>file:///path/mylibrary/lib.json (for local file system)</li> </ul> <p> When you specify a DS subscription URL, the datastore must be on the same vCenter Server as the subscribed library. When you specify an NFS or SMB subscription URL, the {@link StorageBacking#storageUri} of the subscribed library must be on the same remote file server and should share a common parent path with the subscription URL.
    attr_accessor :subscription_url

    # The username to use when authenticating. <p> The username must be set when using a password-based authentication method. Empty strings are allowed for usernames.
    attr_accessor :user_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authentication_method' => :'authentication_method',
        :'automatic_sync_enabled' => :'automatic_sync_enabled',
        :'on_demand' => :'on_demand',
        :'password' => :'password',
        :'ssl_thumbprint' => :'ssl_thumbprint',
        :'subscription_url' => :'subscription_url',
        :'user_name' => :'user_name'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication_method' => :'ContentLibrarySubscriptionInfoAuthenticationMethod',
        :'automatic_sync_enabled' => :'BOOLEAN',
        :'on_demand' => :'BOOLEAN',
        :'password' => :'String',
        :'ssl_thumbprint' => :'String',
        :'subscription_url' => :'String',
        :'user_name' => :'String'
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

      if attributes.has_key?(:'automatic_sync_enabled')
        self.automatic_sync_enabled = attributes[:'automatic_sync_enabled']
      end

      if attributes.has_key?(:'on_demand')
        self.on_demand = attributes[:'on_demand']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'ssl_thumbprint')
        self.ssl_thumbprint = attributes[:'ssl_thumbprint']
      end

      if attributes.has_key?(:'subscription_url')
        self.subscription_url = attributes[:'subscription_url']
      end

      if attributes.has_key?(:'user_name')
        self.user_name = attributes[:'user_name']
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
          automatic_sync_enabled == o.automatic_sync_enabled &&
          on_demand == o.on_demand &&
          password == o.password &&
          ssl_thumbprint == o.ssl_thumbprint &&
          subscription_url == o.subscription_url &&
          user_name == o.user_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [authentication_method, automatic_sync_enabled, on_demand, password, ssl_thumbprint, subscription_url, user_name].hash
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
