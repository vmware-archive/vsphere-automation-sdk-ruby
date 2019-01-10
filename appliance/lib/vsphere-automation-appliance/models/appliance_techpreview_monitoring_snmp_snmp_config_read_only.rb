=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewMonitoringSnmpSNMPConfigReadOnly
    attr_accessor :authentication

    # Set up to ten communities, each of no more than 64 characters long. The format is: community1[,community2,...]. This setting overwrites any previous settings.
    attr_accessor :communities

    # Set enable to true/false
    attr_accessor :enable

    # Set SNMPv3 engine ID.
    attr_accessor :engineid

    # System Agent syslog logging level: debug|info|warning|error.
    attr_accessor :loglevel

    # Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the agent. Use 'reset' to clear the setting.
    attr_accessor :notraps

    # Set up a UDP port which the SNMP agent uses to listen on for polling requests. The default UDP port is 161.
    attr_accessor :port

    attr_accessor :privacy

    # System contact string as presented in sysContact.0. Up to 255 characters long.
    attr_accessor :syscontact

    # System location string as presented in sysLocation.0. Up to 255 characters long.
    attr_accessor :syslocation

    # Set up to three targets to which to send SNMPv1 traps.
    attr_accessor :targets

    # Set up to five local users.
    attr_accessor :users

    # Set up remote users.
    attr_accessor :remoteusers

    # Set up to three SNMPv3 notification targets. Format is: ip-or-hostname[@port]/remote-user/security-level/trap|inform[,...].
    attr_accessor :v3targets

    # Set up pid
    attr_accessor :pid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authentication' => :'authentication',
        :'communities' => :'communities',
        :'enable' => :'enable',
        :'engineid' => :'engineid',
        :'loglevel' => :'loglevel',
        :'notraps' => :'notraps',
        :'port' => :'port',
        :'privacy' => :'privacy',
        :'syscontact' => :'syscontact',
        :'syslocation' => :'syslocation',
        :'targets' => :'targets',
        :'users' => :'users',
        :'remoteusers' => :'remoteusers',
        :'v3targets' => :'v3targets',
        :'pid' => :'pid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication' => :'ApplianceTechpreviewMonitoringSnmpSNMPAuthProto',
        :'communities' => :'Array<String>',
        :'enable' => :'BOOLEAN',
        :'engineid' => :'String',
        :'loglevel' => :'String',
        :'notraps' => :'Array<String>',
        :'port' => :'Integer',
        :'privacy' => :'ApplianceTechpreviewMonitoringSnmpSNMPPrivProto',
        :'syscontact' => :'String',
        :'syslocation' => :'String',
        :'targets' => :'Array<ApplianceTechpreviewMonitoringSnmpSNMPv1TrapTarget>',
        :'users' => :'Array<ApplianceTechpreviewMonitoringSnmpSNMPUser>',
        :'remoteusers' => :'Array<ApplianceTechpreviewMonitoringSnmpSNMPRemoteUser>',
        :'v3targets' => :'Array<ApplianceTechpreviewMonitoringSnmpSNMPv3Target>',
        :'pid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authentication')
        self.authentication = attributes[:'authentication']
      end

      if attributes.has_key?(:'communities')
        if (value = attributes[:'communities']).is_a?(Array)
          self.communities = value
        end
      end

      if attributes.has_key?(:'enable')
        self.enable = attributes[:'enable']
      end

      if attributes.has_key?(:'engineid')
        self.engineid = attributes[:'engineid']
      end

      if attributes.has_key?(:'loglevel')
        self.loglevel = attributes[:'loglevel']
      end

      if attributes.has_key?(:'notraps')
        if (value = attributes[:'notraps']).is_a?(Array)
          self.notraps = value
        end
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'privacy')
        self.privacy = attributes[:'privacy']
      end

      if attributes.has_key?(:'syscontact')
        self.syscontact = attributes[:'syscontact']
      end

      if attributes.has_key?(:'syslocation')
        self.syslocation = attributes[:'syslocation']
      end

      if attributes.has_key?(:'targets')
        if (value = attributes[:'targets']).is_a?(Array)
          self.targets = value
        end
      end

      if attributes.has_key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end

      if attributes.has_key?(:'remoteusers')
        if (value = attributes[:'remoteusers']).is_a?(Array)
          self.remoteusers = value
        end
      end

      if attributes.has_key?(:'v3targets')
        if (value = attributes[:'v3targets']).is_a?(Array)
          self.v3targets = value
        end
      end

      if attributes.has_key?(:'pid')
        self.pid = attributes[:'pid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @authentication.nil?
        invalid_properties.push('invalid value for "authentication", authentication cannot be nil.')
      end

      if @communities.nil?
        invalid_properties.push('invalid value for "communities", communities cannot be nil.')
      end

      if @enable.nil?
        invalid_properties.push('invalid value for "enable", enable cannot be nil.')
      end

      if @engineid.nil?
        invalid_properties.push('invalid value for "engineid", engineid cannot be nil.')
      end

      if @loglevel.nil?
        invalid_properties.push('invalid value for "loglevel", loglevel cannot be nil.')
      end

      if @notraps.nil?
        invalid_properties.push('invalid value for "notraps", notraps cannot be nil.')
      end

      if @port.nil?
        invalid_properties.push('invalid value for "port", port cannot be nil.')
      end

      if @privacy.nil?
        invalid_properties.push('invalid value for "privacy", privacy cannot be nil.')
      end

      if @syscontact.nil?
        invalid_properties.push('invalid value for "syscontact", syscontact cannot be nil.')
      end

      if @syslocation.nil?
        invalid_properties.push('invalid value for "syslocation", syslocation cannot be nil.')
      end

      if @targets.nil?
        invalid_properties.push('invalid value for "targets", targets cannot be nil.')
      end

      if @users.nil?
        invalid_properties.push('invalid value for "users", users cannot be nil.')
      end

      if @remoteusers.nil?
        invalid_properties.push('invalid value for "remoteusers", remoteusers cannot be nil.')
      end

      if @v3targets.nil?
        invalid_properties.push('invalid value for "v3targets", v3targets cannot be nil.')
      end

      if @pid.nil?
        invalid_properties.push('invalid value for "pid", pid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @authentication.nil?
      return false if @communities.nil?
      return false if @enable.nil?
      return false if @engineid.nil?
      return false if @loglevel.nil?
      return false if @notraps.nil?
      return false if @port.nil?
      return false if @privacy.nil?
      return false if @syscontact.nil?
      return false if @syslocation.nil?
      return false if @targets.nil?
      return false if @users.nil?
      return false if @remoteusers.nil?
      return false if @v3targets.nil?
      return false if @pid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authentication == o.authentication &&
          communities == o.communities &&
          enable == o.enable &&
          engineid == o.engineid &&
          loglevel == o.loglevel &&
          notraps == o.notraps &&
          port == o.port &&
          privacy == o.privacy &&
          syscontact == o.syscontact &&
          syslocation == o.syslocation &&
          targets == o.targets &&
          users == o.users &&
          remoteusers == o.remoteusers &&
          v3targets == o.v3targets &&
          pid == o.pid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [authentication, communities, enable, engineid, loglevel, notraps, port, privacy, syscontact, syslocation, targets, users, remoteusers, v3targets, pid].hash
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
