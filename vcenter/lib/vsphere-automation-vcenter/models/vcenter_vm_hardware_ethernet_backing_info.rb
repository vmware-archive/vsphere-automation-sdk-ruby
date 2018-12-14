=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareEthernetBackingInfo
    attr_accessor :type

    # Identifier of the network backing the virtual Ethernet adapter. If unset, the identifier of the network backing could not be determined. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network.
    attr_accessor :network

    # Name of the standard portgroup backing the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is STANDARD_PORTGROUP.
    attr_accessor :network_name

    # Name of the device backing the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is HOST_DEVICE.
    attr_accessor :host_device

    # UUID of the distributed virtual switch that backs the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is DISTRIBUTED_PORTGROUP.
    attr_accessor :distributed_switch_uuid

    # Key of the distributed virtual port that backs the virtual Ethernet adapter. This field will be unset if the virtual Ethernet device is not bound to a distributed virtual port; this can happen if the virtual machine is powered off or the virtual Ethernet device is not connected.
    attr_accessor :distributed_port

    # Server-generated cookie that identifies the connection to the port. This ookie may be used to verify that the virtual machine is the rightful owner of the port. This field will be unset if the virtual Ethernet device is not bound to a distributed virtual port; this can happen if the virtual machine is powered off or the virtual Ethernet device is not connected.
    attr_accessor :connection_cookie

    # Type of the opaque network that backs the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is OPAQUE_NETWORK.
    attr_accessor :opaque_network_type

    # Identifier of the opaque network that backs the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is OPAQUE_NETWORK.
    attr_accessor :opaque_network_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'network' => :'network',
        :'network_name' => :'network_name',
        :'host_device' => :'host_device',
        :'distributed_switch_uuid' => :'distributed_switch_uuid',
        :'distributed_port' => :'distributed_port',
        :'connection_cookie' => :'connection_cookie',
        :'opaque_network_type' => :'opaque_network_type',
        :'opaque_network_id' => :'opaque_network_id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'VcenterVmHardwareEthernetBackingType',
        :'network' => :'String',
        :'network_name' => :'String',
        :'host_device' => :'String',
        :'distributed_switch_uuid' => :'String',
        :'distributed_port' => :'String',
        :'connection_cookie' => :'Integer',
        :'opaque_network_type' => :'String',
        :'opaque_network_id' => :'String'
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

      if attributes.has_key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.has_key?(:'network_name')
        self.network_name = attributes[:'network_name']
      end

      if attributes.has_key?(:'host_device')
        self.host_device = attributes[:'host_device']
      end

      if attributes.has_key?(:'distributed_switch_uuid')
        self.distributed_switch_uuid = attributes[:'distributed_switch_uuid']
      end

      if attributes.has_key?(:'distributed_port')
        self.distributed_port = attributes[:'distributed_port']
      end

      if attributes.has_key?(:'connection_cookie')
        self.connection_cookie = attributes[:'connection_cookie']
      end

      if attributes.has_key?(:'opaque_network_type')
        self.opaque_network_type = attributes[:'opaque_network_type']
      end

      if attributes.has_key?(:'opaque_network_id')
        self.opaque_network_id = attributes[:'opaque_network_id']
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
          network == o.network &&
          network_name == o.network_name &&
          host_device == o.host_device &&
          distributed_switch_uuid == o.distributed_switch_uuid &&
          distributed_port == o.distributed_port &&
          connection_cookie == o.connection_cookie &&
          opaque_network_type == o.opaque_network_type &&
          opaque_network_id == o.opaque_network_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, network, network_name, host_device, distributed_switch_uuid, distributed_port, connection_cookie, opaque_network_type, opaque_network_id].hash
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
