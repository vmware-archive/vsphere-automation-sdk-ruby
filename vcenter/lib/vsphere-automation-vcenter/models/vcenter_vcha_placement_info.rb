=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVchaPlacementInfo
    # The name of the Management vCenter server of the VCHA node.
    attr_accessor :management_vcenter_name

    # The virtual machine name of the VCHA node.
    attr_accessor :vm_name

    # The identifier of the datacenter of the VCHA node. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datacenter:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datacenter:VCenter.
    attr_accessor :datacenter

    # The name of the datacenter of the VCHA node.
    attr_accessor :datacenter_name

    # The identifier of the host of the VCHA node. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem:VCenter.
    attr_accessor :host

    # The name of the host of the VCHA node.
    attr_accessor :host_name

    # The identifier of the cluster of which PlacementInfo.host is member. If unset, PlacementInfo.host is a standalone host. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource:VCenter.
    attr_accessor :cluster

    # The name of the cluster of which PlacementInfo.host is member. If unset, PlacementInfo.host is a standalone host.
    attr_accessor :cluster_name

    # The identifier of the Network object used for the HA network. If unset, the information is currently unavailable or the haNetwork is not configured. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter.
    attr_accessor :ha_network

    # The name of the Network object used for the HA network. If unset, the information is currently unavailable or the haNetwork is not configured.
    attr_accessor :ha_network_name

    attr_accessor :ha_network_type

    # The identifier of the Network object used for the Management network. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter.
    attr_accessor :management_network

    # The name of the Network object used for the Management network.
    attr_accessor :management_network_name

    attr_accessor :management_network_type

    attr_accessor :storage

    # BIOS UUID for the node. If unset, the information is currently unavailable.
    attr_accessor :bios_uuid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'management_vcenter_name' => :'management_vcenter_name',
        :'vm_name' => :'vm_name',
        :'datacenter' => :'datacenter',
        :'datacenter_name' => :'datacenter_name',
        :'host' => :'host',
        :'host_name' => :'host_name',
        :'cluster' => :'cluster',
        :'cluster_name' => :'cluster_name',
        :'ha_network' => :'ha_network',
        :'ha_network_name' => :'ha_network_name',
        :'ha_network_type' => :'ha_network_type',
        :'management_network' => :'management_network',
        :'management_network_name' => :'management_network_name',
        :'management_network_type' => :'management_network_type',
        :'storage' => :'storage',
        :'bios_uuid' => :'bios_uuid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'management_vcenter_name' => :'String',
        :'vm_name' => :'String',
        :'datacenter' => :'String',
        :'datacenter_name' => :'String',
        :'host' => :'String',
        :'host_name' => :'String',
        :'cluster' => :'String',
        :'cluster_name' => :'String',
        :'ha_network' => :'String',
        :'ha_network_name' => :'String',
        :'ha_network_type' => :'VcenterVchaNetworkType',
        :'management_network' => :'String',
        :'management_network_name' => :'String',
        :'management_network_type' => :'VcenterVchaNetworkType',
        :'storage' => :'VcenterVchaDiskInfo',
        :'bios_uuid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'management_vcenter_name')
        self.management_vcenter_name = attributes[:'management_vcenter_name']
      end

      if attributes.has_key?(:'vm_name')
        self.vm_name = attributes[:'vm_name']
      end

      if attributes.has_key?(:'datacenter')
        self.datacenter = attributes[:'datacenter']
      end

      if attributes.has_key?(:'datacenter_name')
        self.datacenter_name = attributes[:'datacenter_name']
      end

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'host_name')
        self.host_name = attributes[:'host_name']
      end

      if attributes.has_key?(:'cluster')
        self.cluster = attributes[:'cluster']
      end

      if attributes.has_key?(:'cluster_name')
        self.cluster_name = attributes[:'cluster_name']
      end

      if attributes.has_key?(:'ha_network')
        self.ha_network = attributes[:'ha_network']
      end

      if attributes.has_key?(:'ha_network_name')
        self.ha_network_name = attributes[:'ha_network_name']
      end

      if attributes.has_key?(:'ha_network_type')
        self.ha_network_type = attributes[:'ha_network_type']
      end

      if attributes.has_key?(:'management_network')
        self.management_network = attributes[:'management_network']
      end

      if attributes.has_key?(:'management_network_name')
        self.management_network_name = attributes[:'management_network_name']
      end

      if attributes.has_key?(:'management_network_type')
        self.management_network_type = attributes[:'management_network_type']
      end

      if attributes.has_key?(:'storage')
        self.storage = attributes[:'storage']
      end

      if attributes.has_key?(:'bios_uuid')
        self.bios_uuid = attributes[:'bios_uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @management_vcenter_name.nil?
        invalid_properties.push('invalid value for "management_vcenter_name", management_vcenter_name cannot be nil.')
      end

      if @vm_name.nil?
        invalid_properties.push('invalid value for "vm_name", vm_name cannot be nil.')
      end

      if @datacenter.nil?
        invalid_properties.push('invalid value for "datacenter", datacenter cannot be nil.')
      end

      if @datacenter_name.nil?
        invalid_properties.push('invalid value for "datacenter_name", datacenter_name cannot be nil.')
      end

      if @host.nil?
        invalid_properties.push('invalid value for "host", host cannot be nil.')
      end

      if @host_name.nil?
        invalid_properties.push('invalid value for "host_name", host_name cannot be nil.')
      end

      if @management_network.nil?
        invalid_properties.push('invalid value for "management_network", management_network cannot be nil.')
      end

      if @management_network_name.nil?
        invalid_properties.push('invalid value for "management_network_name", management_network_name cannot be nil.')
      end

      if @management_network_type.nil?
        invalid_properties.push('invalid value for "management_network_type", management_network_type cannot be nil.')
      end

      if @storage.nil?
        invalid_properties.push('invalid value for "storage", storage cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @management_vcenter_name.nil?
      return false if @vm_name.nil?
      return false if @datacenter.nil?
      return false if @datacenter_name.nil?
      return false if @host.nil?
      return false if @host_name.nil?
      return false if @management_network.nil?
      return false if @management_network_name.nil?
      return false if @management_network_type.nil?
      return false if @storage.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          management_vcenter_name == o.management_vcenter_name &&
          vm_name == o.vm_name &&
          datacenter == o.datacenter &&
          datacenter_name == o.datacenter_name &&
          host == o.host &&
          host_name == o.host_name &&
          cluster == o.cluster &&
          cluster_name == o.cluster_name &&
          ha_network == o.ha_network &&
          ha_network_name == o.ha_network_name &&
          ha_network_type == o.ha_network_type &&
          management_network == o.management_network &&
          management_network_name == o.management_network_name &&
          management_network_type == o.management_network_type &&
          storage == o.storage &&
          bios_uuid == o.bios_uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [management_vcenter_name, vm_name, datacenter, datacenter_name, host, host_name, cluster, cluster_name, ha_network, ha_network_name, ha_network_type, management_network, management_network_name, management_network_type, storage, bios_uuid].hash
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
