# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterCertificateManagementVcenterTlsInfo
    # Version (version number) value from the certificate.
    attr_accessor :version

    # SerialNumber value from the certificate.
    attr_accessor :serial_number

    # Signature algorithm name from the certificate.
    attr_accessor :signature_algorithm

    # Issuer (issuer distinguished name) value from the certificate.
    attr_accessor :issuer_dn

    # validFrom specify the start date of the certificate.
    attr_accessor :valid_from

    # validTo specify the end date of the certificate.
    attr_accessor :valid_to

    # Subject (subject distinguished name) value from the certificate.
    attr_accessor :subject_dn

    # Thumbprint value from the certificate.
    attr_accessor :thumbprint

    # Certificate constraints path length from the critical BasicConstraints extension, (OID = 2.5.29.19).
    attr_accessor :basic_constraints

    # Collection of keyusage contained in the certificate.
    attr_accessor :key_usage

    # Collection of extended keyusage that contains details for which the certificate can be used for.
    attr_accessor :extended_key_usage

    # Collection of subject alternative names.
    attr_accessor :subject_alternative_name

    # Collection of authority information access URI.
    attr_accessor :authority_information_access_uri

    # TLS certificate in PEM format.
    attr_accessor :cert

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'version' => :'version',
        :'serial_number' => :'serial_number',
        :'signature_algorithm' => :'signature_algorithm',
        :'issuer_dn' => :'issuer_dn',
        :'valid_from' => :'valid_from',
        :'valid_to' => :'valid_to',
        :'subject_dn' => :'subject_dn',
        :'thumbprint' => :'thumbprint',
        :'basic_constraints' => :'basic_constraints',
        :'key_usage' => :'key_usage',
        :'extended_key_usage' => :'extended_key_usage',
        :'subject_alternative_name' => :'subject_alternative_name',
        :'authority_information_access_uri' => :'authority_information_access_uri',
        :'cert' => :'cert'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'version' => :'Integer',
        :'serial_number' => :'String',
        :'signature_algorithm' => :'String',
        :'issuer_dn' => :'String',
        :'valid_from' => :'DateTime',
        :'valid_to' => :'DateTime',
        :'subject_dn' => :'String',
        :'thumbprint' => :'String',
        :'basic_constraints' => :'Integer',
        :'key_usage' => :'Array<String>',
        :'extended_key_usage' => :'Array<String>',
        :'subject_alternative_name' => :'Array<String>',
        :'authority_information_access_uri' => :'Array<String>',
        :'cert' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'serial_number')
        self.serial_number = attributes[:'serial_number']
      end

      if attributes.has_key?(:'signature_algorithm')
        self.signature_algorithm = attributes[:'signature_algorithm']
      end

      if attributes.has_key?(:'issuer_dn')
        self.issuer_dn = attributes[:'issuer_dn']
      end

      if attributes.has_key?(:'valid_from')
        self.valid_from = attributes[:'valid_from']
      end

      if attributes.has_key?(:'valid_to')
        self.valid_to = attributes[:'valid_to']
      end

      if attributes.has_key?(:'subject_dn')
        self.subject_dn = attributes[:'subject_dn']
      end

      if attributes.has_key?(:'thumbprint')
        self.thumbprint = attributes[:'thumbprint']
      end

      if attributes.has_key?(:'basic_constraints')
        self.basic_constraints = attributes[:'basic_constraints']
      end

      if attributes.has_key?(:'key_usage')
        if (value = attributes[:'key_usage']).is_a?(Array)
          self.key_usage = value
        end
      end

      if attributes.has_key?(:'extended_key_usage')
        if (value = attributes[:'extended_key_usage']).is_a?(Array)
          self.extended_key_usage = value
        end
      end

      if attributes.has_key?(:'subject_alternative_name')
        if (value = attributes[:'subject_alternative_name']).is_a?(Array)
          self.subject_alternative_name = value
        end
      end

      if attributes.has_key?(:'authority_information_access_uri')
        if (value = attributes[:'authority_information_access_uri']).is_a?(Array)
          self.authority_information_access_uri = value
        end
      end

      if attributes.has_key?(:'cert')
        self.cert = attributes[:'cert']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if @serial_number.nil?
        invalid_properties.push('invalid value for "serial_number", serial_number cannot be nil.')
      end

      if @signature_algorithm.nil?
        invalid_properties.push('invalid value for "signature_algorithm", signature_algorithm cannot be nil.')
      end

      if @issuer_dn.nil?
        invalid_properties.push('invalid value for "issuer_dn", issuer_dn cannot be nil.')
      end

      if @valid_from.nil?
        invalid_properties.push('invalid value for "valid_from", valid_from cannot be nil.')
      end

      if @valid_to.nil?
        invalid_properties.push('invalid value for "valid_to", valid_to cannot be nil.')
      end

      if @subject_dn.nil?
        invalid_properties.push('invalid value for "subject_dn", subject_dn cannot be nil.')
      end

      if @thumbprint.nil?
        invalid_properties.push('invalid value for "thumbprint", thumbprint cannot be nil.')
      end

      if @basic_constraints.nil?
        invalid_properties.push('invalid value for "basic_constraints", basic_constraints cannot be nil.')
      end

      if @key_usage.nil?
        invalid_properties.push('invalid value for "key_usage", key_usage cannot be nil.')
      end

      if @extended_key_usage.nil?
        invalid_properties.push('invalid value for "extended_key_usage", extended_key_usage cannot be nil.')
      end

      if @subject_alternative_name.nil?
        invalid_properties.push('invalid value for "subject_alternative_name", subject_alternative_name cannot be nil.')
      end

      if @authority_information_access_uri.nil?
        invalid_properties.push('invalid value for "authority_information_access_uri", authority_information_access_uri cannot be nil.')
      end

      if @cert.nil?
        invalid_properties.push('invalid value for "cert", cert cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @version.nil?
      return false if @serial_number.nil?
      return false if @signature_algorithm.nil?
      return false if @issuer_dn.nil?
      return false if @valid_from.nil?
      return false if @valid_to.nil?
      return false if @subject_dn.nil?
      return false if @thumbprint.nil?
      return false if @basic_constraints.nil?
      return false if @key_usage.nil?
      return false if @extended_key_usage.nil?
      return false if @subject_alternative_name.nil?
      return false if @authority_information_access_uri.nil?
      return false if @cert.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          version == o.version &&
          serial_number == o.serial_number &&
          signature_algorithm == o.signature_algorithm &&
          issuer_dn == o.issuer_dn &&
          valid_from == o.valid_from &&
          valid_to == o.valid_to &&
          subject_dn == o.subject_dn &&
          thumbprint == o.thumbprint &&
          basic_constraints == o.basic_constraints &&
          key_usage == o.key_usage &&
          extended_key_usage == o.extended_key_usage &&
          subject_alternative_name == o.subject_alternative_name &&
          authority_information_access_uri == o.authority_information_access_uri &&
          cert == o.cert
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [version, serial_number, signature_algorithm, issuer_dn, valid_from, valid_to, subject_dn, thumbprint, basic_constraints, key_usage, extended_key_usage, subject_alternative_name, authority_information_access_uri, cert].hash
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
