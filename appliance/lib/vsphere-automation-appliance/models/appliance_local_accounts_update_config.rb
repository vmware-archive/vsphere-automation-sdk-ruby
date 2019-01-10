=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceLocalAccountsUpdateConfig
    # Password
    attr_accessor :password

    # Old password of the user (required in case of the password change, not required if superAdmin user changes the password of the other user)
    attr_accessor :old_password

    # Full name of the user
    attr_accessor :full_name

    # Email address of the local account
    attr_accessor :email

    # User roles
    attr_accessor :roles

    # Flag indicating if the account is enabled
    attr_accessor :enabled

    # Flag indicating if the account password expires
    attr_accessor :password_expires

    # Date when the account's password will expire
    attr_accessor :password_expires_at

    # Flag indicating if the account will be locked after password expiration
    attr_accessor :inactive_after_password_expiration

    # Number of days after password expiration before the account will be locked
    attr_accessor :days_after_password_expiration

    # Minimum number of days between password change
    attr_accessor :min_days_between_password_change

    # Maximum number of days between password change
    attr_accessor :max_days_between_password_change

    # Number of days of warning before password expires
    attr_accessor :warn_days_before_password_expiration

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'password' => :'password',
        :'old_password' => :'old_password',
        :'full_name' => :'full_name',
        :'email' => :'email',
        :'roles' => :'roles',
        :'enabled' => :'enabled',
        :'password_expires' => :'password_expires',
        :'password_expires_at' => :'password_expires_at',
        :'inactive_after_password_expiration' => :'inactive_after_password_expiration',
        :'days_after_password_expiration' => :'days_after_password_expiration',
        :'min_days_between_password_change' => :'min_days_between_password_change',
        :'max_days_between_password_change' => :'max_days_between_password_change',
        :'warn_days_before_password_expiration' => :'warn_days_before_password_expiration'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'password' => :'String',
        :'old_password' => :'String',
        :'full_name' => :'String',
        :'email' => :'String',
        :'roles' => :'Array<String>',
        :'enabled' => :'BOOLEAN',
        :'password_expires' => :'BOOLEAN',
        :'password_expires_at' => :'DateTime',
        :'inactive_after_password_expiration' => :'BOOLEAN',
        :'days_after_password_expiration' => :'Integer',
        :'min_days_between_password_change' => :'Integer',
        :'max_days_between_password_change' => :'Integer',
        :'warn_days_before_password_expiration' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'old_password')
        self.old_password = attributes[:'old_password']
      end

      if attributes.has_key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'roles')
        if (value = attributes[:'roles']).is_a?(Array)
          self.roles = value
        end
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'password_expires')
        self.password_expires = attributes[:'password_expires']
      end

      if attributes.has_key?(:'password_expires_at')
        self.password_expires_at = attributes[:'password_expires_at']
      end

      if attributes.has_key?(:'inactive_after_password_expiration')
        self.inactive_after_password_expiration = attributes[:'inactive_after_password_expiration']
      end

      if attributes.has_key?(:'days_after_password_expiration')
        self.days_after_password_expiration = attributes[:'days_after_password_expiration']
      end

      if attributes.has_key?(:'min_days_between_password_change')
        self.min_days_between_password_change = attributes[:'min_days_between_password_change']
      end

      if attributes.has_key?(:'max_days_between_password_change')
        self.max_days_between_password_change = attributes[:'max_days_between_password_change']
      end

      if attributes.has_key?(:'warn_days_before_password_expiration')
        self.warn_days_before_password_expiration = attributes[:'warn_days_before_password_expiration']
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
          password == o.password &&
          old_password == o.old_password &&
          full_name == o.full_name &&
          email == o.email &&
          roles == o.roles &&
          enabled == o.enabled &&
          password_expires == o.password_expires &&
          password_expires_at == o.password_expires_at &&
          inactive_after_password_expiration == o.inactive_after_password_expiration &&
          days_after_password_expiration == o.days_after_password_expiration &&
          min_days_between_password_change == o.min_days_between_password_change &&
          max_days_between_password_change == o.max_days_between_password_change &&
          warn_days_before_password_expiration == o.warn_days_before_password_expiration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [password, old_password, full_name, email, roles, enabled, password_expires, password_expires_at, inactive_after_password_expiration, days_after_password_expiration, min_days_between_password_change, max_days_between_password_change, warn_days_before_password_expiration].hash
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
        temp_model = VSphereAutomation::Appliance.const_get(type).new
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
