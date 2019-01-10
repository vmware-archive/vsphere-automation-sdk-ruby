=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterOvfLibraryItemResourcePoolDeploymentSpec
    # Name assigned to the deployed target virtual machine or virtual appliance.
    attr_accessor :name

    # Annotation assigned to the deployed target virtual machine or virtual appliance.
    attr_accessor :annotation

    # Whether to accept all End User License Agreements. See {@link OvfSummary#eulas}.
    attr_accessor :accept_all_eula

    # Specification of the target network to use for sections of type ovf:NetworkSection in the OVF descriptor. The key in the {@term map} is the section identifier of the ovf:NetworkSection section in the OVF descriptor and the value is the target network to be used for deployment.
    attr_accessor :network_mappings

    # Specification of the target storage to use for sections of type vmw:StorageGroupSection in the OVF descriptor. The key in the {@term map} is the section identifier of the ovf:StorageGroupSection section in the OVF descriptor and the value is the target storage specification to be used for deployment. See {@link StorageGroupMapping}.
    attr_accessor :storage_mappings

    attr_accessor :storage_provisioning

    # Default storage profile to use for all sections of type vmw:StorageSection in the OVF descriptor.
    attr_accessor :storage_profile_id

    # The locale to use for parsing the OVF descriptor.
    attr_accessor :locale

    # Flags to be use for deployment. The supported flag values can be obtained using {@link ImportFlag#list}.
    attr_accessor :flags

    # Additional OVF parameters that may be needed for the deployment. Additional OVF parameters may be required by the OVF descriptor of the OVF package in the library item. Examples of OVF parameters that can be specified through this {@term field} include, but are not limited to: <ul> <li>{@link DeploymentOptionParams}</li> <li>{@link ExtraConfigParams}</li> <li>{@link IpAllocationParams}</li> <li>{@link PropertyParams}</li> <li>{@link ScaleOutParams}</li> <li>{@link VcenterExtensionParams}</li> </ul>
    attr_accessor :additional_parameters

    # Default datastore to use for all sections of type vmw:StorageSection in the OVF descriptor.
    attr_accessor :default_datastore_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'annotation' => :'annotation',
        :'accept_all_eula' => :'accept_all_EULA',
        :'network_mappings' => :'network_mappings',
        :'storage_mappings' => :'storage_mappings',
        :'storage_provisioning' => :'storage_provisioning',
        :'storage_profile_id' => :'storage_profile_id',
        :'locale' => :'locale',
        :'flags' => :'flags',
        :'additional_parameters' => :'additional_parameters',
        :'default_datastore_id' => :'default_datastore_id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'annotation' => :'String',
        :'accept_all_eula' => :'BOOLEAN',
        :'network_mappings' => :'Array<Object>',
        :'storage_mappings' => :'Array<Object>',
        :'storage_provisioning' => :'VcenterOvfDiskProvisioningType',
        :'storage_profile_id' => :'String',
        :'locale' => :'String',
        :'flags' => :'Array<String>',
        :'additional_parameters' => :'Array<Object>',
        :'default_datastore_id' => :'String'
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

      if attributes.has_key?(:'annotation')
        self.annotation = attributes[:'annotation']
      end

      if attributes.has_key?(:'accept_all_EULA')
        self.accept_all_eula = attributes[:'accept_all_EULA']
      end

      if attributes.has_key?(:'network_mappings')
        if (value = attributes[:'network_mappings']).is_a?(Array)
          self.network_mappings = value
        end
      end

      if attributes.has_key?(:'storage_mappings')
        if (value = attributes[:'storage_mappings']).is_a?(Array)
          self.storage_mappings = value
        end
      end

      if attributes.has_key?(:'storage_provisioning')
        self.storage_provisioning = attributes[:'storage_provisioning']
      end

      if attributes.has_key?(:'storage_profile_id')
        self.storage_profile_id = attributes[:'storage_profile_id']
      end

      if attributes.has_key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.has_key?(:'flags')
        if (value = attributes[:'flags']).is_a?(Array)
          self.flags = value
        end
      end

      if attributes.has_key?(:'additional_parameters')
        if (value = attributes[:'additional_parameters']).is_a?(Array)
          self.additional_parameters = value
        end
      end

      if attributes.has_key?(:'default_datastore_id')
        self.default_datastore_id = attributes[:'default_datastore_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @accept_all_eula.nil?
        invalid_properties.push('invalid value for "accept_all_eula", accept_all_eula cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @accept_all_eula.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          annotation == o.annotation &&
          accept_all_eula == o.accept_all_eula &&
          network_mappings == o.network_mappings &&
          storage_mappings == o.storage_mappings &&
          storage_provisioning == o.storage_provisioning &&
          storage_profile_id == o.storage_profile_id &&
          locale == o.locale &&
          flags == o.flags &&
          additional_parameters == o.additional_parameters &&
          default_datastore_id == o.default_datastore_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, annotation, accept_all_eula, network_mappings, storage_mappings, storage_provisioning, storage_profile_id, locale, flags, additional_parameters, default_datastore_id].hash
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
