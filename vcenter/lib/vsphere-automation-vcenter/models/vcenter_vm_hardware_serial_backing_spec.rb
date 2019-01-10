=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareSerialBackingSpec
    attr_accessor :type

    # Path of the file backing the virtual serial port. This field is optional and it is only relevant when the value of Serial.BackingSpec.type is FILE.
    attr_accessor :file

    # Name of the device backing the virtual serial port.    If unset, the virtual serial port will be configured to automatically detect a suitable host device.
    attr_accessor :host_device

    # Name of the pipe backing the virtual serial port. This field is optional and it is only relevant when the value of Serial.BackingSpec.type is one of PIPE_SERVER or PIPE_CLIENT.
    attr_accessor :pipe

    # Flag that enables optimized data transfer over the pipe. When the value is true, the host buffers data to prevent data overrun. This allows the virtual machine to read all of the data transferred over the pipe with no data loss. If unset, defaults to false.
    attr_accessor :no_rx_loss

    # URI specifying the location of the network service backing the virtual serial port.     - If Serial.BackingSpec.type is NETWORK_SERVER, this field is the location used by clients to connect to this server. The hostname part of the URI should either be empty or should specify the address of the host on which the virtual machine is running.    - If Serial.BackingSpec.type is NETWORK_CLIENT, this field is the location used by the virtual machine to connect to the remote server.   This field is optional and it is only relevant when the value of Serial.BackingSpec.type is one of NETWORK_SERVER or NETWORK_CLIENT.
    attr_accessor :network_location

    # Proxy service that provides network access to the network backing. If set, the virtual machine initiates a connection with the proxy service and forwards the traffic to the proxy. If unset, no proxy service should be used.
    attr_accessor :proxy

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'file' => :'file',
        :'host_device' => :'host_device',
        :'pipe' => :'pipe',
        :'no_rx_loss' => :'no_rx_loss',
        :'network_location' => :'network_location',
        :'proxy' => :'proxy'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'VcenterVmHardwareSerialBackingType',
        :'file' => :'String',
        :'host_device' => :'String',
        :'pipe' => :'String',
        :'no_rx_loss' => :'BOOLEAN',
        :'network_location' => :'String',
        :'proxy' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.has_key?(:'host_device')
        self.host_device = attributes[:'host_device']
      end

      if attributes.has_key?(:'pipe')
        self.pipe = attributes[:'pipe']
      end

      if attributes.has_key?(:'no_rx_loss')
        self.no_rx_loss = attributes[:'no_rx_loss']
      end

      if attributes.has_key?(:'network_location')
        self.network_location = attributes[:'network_location']
      end

      if attributes.has_key?(:'proxy')
        self.proxy = attributes[:'proxy']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          file == o.file &&
          host_device == o.host_device &&
          pipe == o.pipe &&
          no_rx_loss == o.no_rx_loss &&
          network_location == o.network_location &&
          proxy == o.proxy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, file, host_device, pipe, no_rx_loss, network_location, proxy].hash
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
        temp_model = VSphereAutomation::VCenter.const_get(type).new
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
