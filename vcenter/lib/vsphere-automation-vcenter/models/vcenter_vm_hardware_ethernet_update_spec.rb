=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareEthernetUpdateSpec
    # Flag indicating whether Universal Pass-Through (UPT) compatibility should be enabled on this virtual Ethernet adapter.   This field may be modified at any time, and changes will be applied the next time the virtual machine is powered on.  If unset, the value is unchanged. Must be unset if the emulation type of the virtual Ethernet adapter is not VMXNET3.
    attr_accessor :upt_compatibility_enabled

    attr_accessor :mac_type

    # MAC address.   This field may be modified at any time, and changes will be applied the next time the virtual machine is powered on.  If unset, the value is unchanged. Must be specified if Ethernet.UpdateSpec.mac-type is MANUAL. Must be unset if the MAC address type is not MANUAL.
    attr_accessor :mac_address

    # Flag indicating whether wake-on-LAN shoud be enabled on this virtual Ethernet adapter.   This field may be modified at any time, and changes will be applied the next time the virtual machine is powered on.  If unset, the value is unchanged.
    attr_accessor :wake_on_lan_enabled

    attr_accessor :backing

    # Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. If unset, the value is unchanged.
    attr_accessor :start_connected

    # Flag indicating whether the guest can connect and disconnect the device. If unset, the value is unchanged.
    attr_accessor :allow_guest_control

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'upt_compatibility_enabled' => :'upt_compatibility_enabled',
        :'mac_type' => :'mac_type',
        :'mac_address' => :'mac_address',
        :'wake_on_lan_enabled' => :'wake_on_lan_enabled',
        :'backing' => :'backing',
        :'start_connected' => :'start_connected',
        :'allow_guest_control' => :'allow_guest_control'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'upt_compatibility_enabled' => :'BOOLEAN',
        :'mac_type' => :'VcenterVmHardwareEthernetMacAddressType',
        :'mac_address' => :'String',
        :'wake_on_lan_enabled' => :'BOOLEAN',
        :'backing' => :'VcenterVmHardwareEthernetBackingSpec',
        :'start_connected' => :'BOOLEAN',
        :'allow_guest_control' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'upt_compatibility_enabled')
        self.upt_compatibility_enabled = attributes[:'upt_compatibility_enabled']
      end

      if attributes.has_key?(:'mac_type')
        self.mac_type = attributes[:'mac_type']
      end

      if attributes.has_key?(:'mac_address')
        self.mac_address = attributes[:'mac_address']
      end

      if attributes.has_key?(:'wake_on_lan_enabled')
        self.wake_on_lan_enabled = attributes[:'wake_on_lan_enabled']
      end

      if attributes.has_key?(:'backing')
        self.backing = attributes[:'backing']
      end

      if attributes.has_key?(:'start_connected')
        self.start_connected = attributes[:'start_connected']
      end

      if attributes.has_key?(:'allow_guest_control')
        self.allow_guest_control = attributes[:'allow_guest_control']
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
          upt_compatibility_enabled == o.upt_compatibility_enabled &&
          mac_type == o.mac_type &&
          mac_address == o.mac_address &&
          wake_on_lan_enabled == o.wake_on_lan_enabled &&
          backing == o.backing &&
          start_connected == o.start_connected &&
          allow_guest_control == o.allow_guest_control
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [upt_compatibility_enabled, mac_type, mac_address, wake_on_lan_enabled, backing, start_connected, allow_guest_control].hash
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
