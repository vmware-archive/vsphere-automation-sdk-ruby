=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmTemplateLibraryItemsInfo
    attr_accessor :guest_os

    attr_accessor :cpu

    attr_accessor :memory

    attr_accessor :vm_home_storage

    # Storage information about the virtual machine template's virtual disks.
    attr_accessor :disks

    # Information about the virtual machine template's virtual ethernet adapters.
    attr_accessor :nics

    # Identifier of the virtual machine template contained in the library item. This field is used to identify the virtual machine template in legacy APIs.
    attr_accessor :vm_template

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'guest_os' => :'guest_OS',
        :'cpu' => :'cpu',
        :'memory' => :'memory',
        :'vm_home_storage' => :'vm_home_storage',
        :'disks' => :'disks',
        :'nics' => :'nics',
        :'vm_template' => :'vm_template'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'guest_os' => :'VcenterVmGuestOS',
        :'cpu' => :'VcenterVmTemplateLibraryItemsCpuInfo',
        :'memory' => :'VcenterVmTemplateLibraryItemsMemoryInfo',
        :'vm_home_storage' => :'VcenterVmTemplateLibraryItemsVmHomeStorageInfo',
        :'disks' => :'Array<Object>',
        :'nics' => :'Array<Object>',
        :'vm_template' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'guest_OS')
        self.guest_os = attributes[:'guest_OS']
      end

      if attributes.has_key?(:'cpu')
        self.cpu = attributes[:'cpu']
      end

      if attributes.has_key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.has_key?(:'vm_home_storage')
        self.vm_home_storage = attributes[:'vm_home_storage']
      end

      if attributes.has_key?(:'disks')
        if (value = attributes[:'disks']).is_a?(Array)
          self.disks = value
        end
      end

      if attributes.has_key?(:'nics')
        if (value = attributes[:'nics']).is_a?(Array)
          self.nics = value
        end
      end

      if attributes.has_key?(:'vm_template')
        self.vm_template = attributes[:'vm_template']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @guest_os.nil?
        invalid_properties.push('invalid value for "guest_os", guest_os cannot be nil.')
      end

      if @cpu.nil?
        invalid_properties.push('invalid value for "cpu", cpu cannot be nil.')
      end

      if @memory.nil?
        invalid_properties.push('invalid value for "memory", memory cannot be nil.')
      end

      if @vm_home_storage.nil?
        invalid_properties.push('invalid value for "vm_home_storage", vm_home_storage cannot be nil.')
      end

      if @disks.nil?
        invalid_properties.push('invalid value for "disks", disks cannot be nil.')
      end

      if @nics.nil?
        invalid_properties.push('invalid value for "nics", nics cannot be nil.')
      end

      if @vm_template.nil?
        invalid_properties.push('invalid value for "vm_template", vm_template cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @guest_os.nil?
      return false if @cpu.nil?
      return false if @memory.nil?
      return false if @vm_home_storage.nil?
      return false if @disks.nil?
      return false if @nics.nil?
      return false if @vm_template.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          guest_os == o.guest_os &&
          cpu == o.cpu &&
          memory == o.memory &&
          vm_home_storage == o.vm_home_storage &&
          disks == o.disks &&
          nics == o.nics &&
          vm_template == o.vm_template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [guest_os, cpu, memory, vm_home_storage, disks, nics, vm_template].hash
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
