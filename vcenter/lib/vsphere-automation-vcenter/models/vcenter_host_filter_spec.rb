=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterHostFilterSpec
    # Identifiers of hosts that can match the filter. If unset or empty, hosts with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    attr_accessor :hosts

    # Names that hosts must have to match the filter (see Host.Summary.name). If unset or empty, hosts with any name match the filter.
    attr_accessor :names

    # Folders that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
    attr_accessor :folders

    # Datacenters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    attr_accessor :datacenters

    # If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter. If unset Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and Host.FilterSpec.clusters os not empty, no hosts will match the filter.
    attr_accessor :standalone

    # Clusters that must contain the hosts for the hosts to match the filter. If unset or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this field is not empty and Host.FilterSpec.standalone is true, no hosts will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    attr_accessor :clusters

    # Connection states that a host must be in to match the filter (see Host.Summary.connection-state. If unset or empty, hosts in any connection state match the filter.
    attr_accessor :connection_states

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'hosts' => :'hosts',
        :'names' => :'names',
        :'folders' => :'folders',
        :'datacenters' => :'datacenters',
        :'standalone' => :'standalone',
        :'clusters' => :'clusters',
        :'connection_states' => :'connection_states'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'hosts' => :'Array<String>',
        :'names' => :'Array<String>',
        :'folders' => :'Array<String>',
        :'datacenters' => :'Array<String>',
        :'standalone' => :'BOOLEAN',
        :'clusters' => :'Array<String>',
        :'connection_states' => :'Array<VcenterHostConnectionState>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'hosts')
        if (value = attributes[:'hosts']).is_a?(Array)
          self.hosts = value
        end
      end

      if attributes.has_key?(:'names')
        if (value = attributes[:'names']).is_a?(Array)
          self.names = value
        end
      end

      if attributes.has_key?(:'folders')
        if (value = attributes[:'folders']).is_a?(Array)
          self.folders = value
        end
      end

      if attributes.has_key?(:'datacenters')
        if (value = attributes[:'datacenters']).is_a?(Array)
          self.datacenters = value
        end
      end

      if attributes.has_key?(:'standalone')
        self.standalone = attributes[:'standalone']
      end

      if attributes.has_key?(:'clusters')
        if (value = attributes[:'clusters']).is_a?(Array)
          self.clusters = value
        end
      end

      if attributes.has_key?(:'connection_states')
        if (value = attributes[:'connection_states']).is_a?(Array)
          self.connection_states = value
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
          hosts == o.hosts &&
          names == o.names &&
          folders == o.folders &&
          datacenters == o.datacenters &&
          standalone == o.standalone &&
          clusters == o.clusters &&
          connection_states == o.connection_states
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [hosts, names, folders, datacenters, standalone, clusters, connection_states].hash
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
