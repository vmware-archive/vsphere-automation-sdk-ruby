=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryItemUpdatesessionFileInfo
    # The name of the file.
    attr_accessor :name

    attr_accessor :source_type

    # The file size, in bytes as received by the server. This {@term field} is guaranteed to be set when the server has completely received the file.
    attr_accessor :size

    attr_accessor :checksum_info

    attr_accessor :source_endpoint

    attr_accessor :upload_endpoint

    # The number of bytes of this file that have been received by the server.
    attr_accessor :bytes_transferred

    attr_accessor :status

    attr_accessor :error_message

    # Whether or not the file will be kept in storage upon update session completion. The flag is true for most files, and false for metadata files such as manifest and certificate file of update session with library item type OVF. Any file with {@link Info#keepInStorage} set to false will not show up in the list of files returned from {@link content.library.item.File#list} upon update session completion.
    attr_accessor :keep_in_storage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'source_type' => :'source_type',
        :'size' => :'size',
        :'checksum_info' => :'checksum_info',
        :'source_endpoint' => :'source_endpoint',
        :'upload_endpoint' => :'upload_endpoint',
        :'bytes_transferred' => :'bytes_transferred',
        :'status' => :'status',
        :'error_message' => :'error_message',
        :'keep_in_storage' => :'keep_in_storage'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'source_type' => :'ContentLibraryItemUpdatesessionFileSourceType',
        :'size' => :'Integer',
        :'checksum_info' => :'ContentLibraryItemFileChecksumInfo',
        :'source_endpoint' => :'ContentLibraryItemTransferEndpoint',
        :'upload_endpoint' => :'ContentLibraryItemTransferEndpoint',
        :'bytes_transferred' => :'Integer',
        :'status' => :'ContentLibraryItemTransferStatus',
        :'error_message' => :'VapiStdLocalizableMessage',
        :'keep_in_storage' => :'BOOLEAN'
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

      if attributes.has_key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'checksum_info')
        self.checksum_info = attributes[:'checksum_info']
      end

      if attributes.has_key?(:'source_endpoint')
        self.source_endpoint = attributes[:'source_endpoint']
      end

      if attributes.has_key?(:'upload_endpoint')
        self.upload_endpoint = attributes[:'upload_endpoint']
      end

      if attributes.has_key?(:'bytes_transferred')
        self.bytes_transferred = attributes[:'bytes_transferred']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.has_key?(:'keep_in_storage')
        self.keep_in_storage = attributes[:'keep_in_storage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @source_type.nil?
        invalid_properties.push('invalid value for "source_type", source_type cannot be nil.')
      end

      if @bytes_transferred.nil?
        invalid_properties.push('invalid value for "bytes_transferred", bytes_transferred cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @source_type.nil?
      return false if @bytes_transferred.nil?
      return false if @status.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          source_type == o.source_type &&
          size == o.size &&
          checksum_info == o.checksum_info &&
          source_endpoint == o.source_endpoint &&
          upload_endpoint == o.upload_endpoint &&
          bytes_transferred == o.bytes_transferred &&
          status == o.status &&
          error_message == o.error_message &&
          keep_in_storage == o.keep_in_storage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, source_type, size, checksum_info, source_endpoint, upload_endpoint, bytes_transferred, status, error_message, keep_in_storage].hash
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
