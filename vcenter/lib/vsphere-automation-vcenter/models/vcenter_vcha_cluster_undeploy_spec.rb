=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVchaClusterUndeploySpec
    attr_accessor :vc_spec

    # Flag controlling in what circumstances the virtual machines will be deleted. For this flag to take effect, the VCHA cluster should have been successfully configured using automatic deployment.     -  If true, the Cluster.UndeploySpec.vms field will be ignored, the VCHA cluster specific information is removed, and the passive and witness virtual machines will be deleted.    -  If false, the Cluster.UndeploySpec.vms field contains the information identifying the passive and witness virtual machines.        =  If the Cluster.UndeploySpec.vms field is set, then it will be validated prior to deleting the passive and witness virtual machines and VCHA cluster specific information is removed.      =  If the Cluster.UndeploySpec.vms field is unset, then the passive and witness virtual machines will not be deleted. The customer should delete them in order to cleanup completely. VCHA cluster specific information is removed.    If unset, the Cluster.UndeploySpec.vms field contains the information identifying the passive and witness virtual machines.     -  If the Cluster.UndeploySpec.vms field is set, then it will be validated prior to deleting the passive and witness virtual machines. VCHA cluster specific information is removed.    -  If the Cluster.UndeploySpec.vms field is unset, then the passive and witness virtual machines will not be deleted. The customer should delete them in order to cleanup completely. VCHA cluster specific information is removed. 
    attr_accessor :force_delete

    attr_accessor :vms

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'vc_spec' => :'vc_spec',
        :'force_delete' => :'force_delete',
        :'vms' => :'vms'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'vc_spec' => :'VcenterVchaCredentialsSpec',
        :'force_delete' => :'BOOLEAN',
        :'vms' => :'VcenterVchaClusterVmInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'vc_spec')
        self.vc_spec = attributes[:'vc_spec']
      end

      if attributes.has_key?(:'force_delete')
        self.force_delete = attributes[:'force_delete']
      end

      if attributes.has_key?(:'vms')
        self.vms = attributes[:'vms']
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
          vc_spec == o.vc_spec &&
          force_delete == o.force_delete &&
          vms == o.vms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [vc_spec, force_delete, vms].hash
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
