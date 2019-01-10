=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterDeploymentReplicatedSpec
    # The IP address or DNS resolvable name of the partner PSC appliance.
    attr_accessor :partner_hostname

    # The HTTPS port of the external PSC appliance.
    attr_accessor :https_port

    # The SSO administrator account password.
    attr_accessor :sso_admin_password

    # SHA1 thumbprint of the server SSL certificate will be used for verification.
    attr_accessor :ssl_thumbprint

    # SSL verification should be enabled or disabled.
    attr_accessor :ssl_verify

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'partner_hostname' => :'partner_hostname',
        :'https_port' => :'https_port',
        :'sso_admin_password' => :'sso_admin_password',
        :'ssl_thumbprint' => :'ssl_thumbprint',
        :'ssl_verify' => :'ssl_verify'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'partner_hostname' => :'String',
        :'https_port' => :'Integer',
        :'sso_admin_password' => :'String',
        :'ssl_thumbprint' => :'String',
        :'ssl_verify' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'partner_hostname')
        self.partner_hostname = attributes[:'partner_hostname']
      end

      if attributes.has_key?(:'https_port')
        self.https_port = attributes[:'https_port']
      end

      if attributes.has_key?(:'sso_admin_password')
        self.sso_admin_password = attributes[:'sso_admin_password']
      end

      if attributes.has_key?(:'ssl_thumbprint')
        self.ssl_thumbprint = attributes[:'ssl_thumbprint']
      end

      if attributes.has_key?(:'ssl_verify')
        self.ssl_verify = attributes[:'ssl_verify']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @partner_hostname.nil?
        invalid_properties.push('invalid value for "partner_hostname", partner_hostname cannot be nil.')
      end

      if @sso_admin_password.nil?
        invalid_properties.push('invalid value for "sso_admin_password", sso_admin_password cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @partner_hostname.nil?
      return false if @sso_admin_password.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          partner_hostname == o.partner_hostname &&
          https_port == o.https_port &&
          sso_admin_password == o.sso_admin_password &&
          ssl_thumbprint == o.ssl_thumbprint &&
          ssl_verify == o.ssl_verify
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [partner_hostname, https_port, sso_admin_password, ssl_thumbprint, ssl_verify].hash
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
