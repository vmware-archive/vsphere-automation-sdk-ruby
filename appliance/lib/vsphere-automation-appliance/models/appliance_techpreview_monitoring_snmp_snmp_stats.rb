=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewMonitoringSnmpSNMPStats
    # System uptime
    attr_accessor :sysuptime

    # Last updated time
    attr_accessor :worstrtimelast

    # Average response time
    attr_accessor :avgresponsetime

    # Response time
    attr_accessor :worstresponsetime

    # No of input packets
    attr_accessor :inpkts

    # No of output packets
    attr_accessor :outpkts

    # No of stats not in time window
    attr_accessor :usmstatsnotintimewindows

    # No of usm stats unknown
    attr_accessor :usmstatsunknownusernames

    # No of usm stats unknown engine ids
    attr_accessor :usmstatsunknownengineids

    # No of wrogn digests
    attr_accessor :usmstatswrongdigests

    # No. of decryption errors
    attr_accessor :usmstatsdecryptionerrors

    # No of bad versions
    attr_accessor :inbadversions

    # No of bad community names
    attr_accessor :inbadcommunitynames

    # No of bad community uses
    attr_accessor :inbadcommunityuses

    # No of parse errors
    attr_accessor :inasnparseerrs

    # No of too bigs
    attr_accessor :intoobigs

    # No of no such names
    attr_accessor :innosuchnames

    # No of bad values
    attr_accessor :inbadvalues

    # No of gen errors
    attr_accessor :ingenerrs

    # No out output too bigs
    attr_accessor :outtoobigs

    # No of no such names
    attr_accessor :outnosuchnames

    # No of bad values
    attr_accessor :outbadvalues

    # No of gen errors
    attr_accessor :outgenerrs

    # No of output traps
    attr_accessor :outtraps

    # No of silent drops
    attr_accessor :silentdrops

    # No of ave:rage var binds
    attr_accessor :avgvarbinds

    # No of max var binds
    attr_accessor :maxvarbinds

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sysuptime' => :'sysuptime',
        :'worstrtimelast' => :'worstrtimelast',
        :'avgresponsetime' => :'avgresponsetime',
        :'worstresponsetime' => :'worstresponsetime',
        :'inpkts' => :'inpkts',
        :'outpkts' => :'outpkts',
        :'usmstatsnotintimewindows' => :'usmstatsnotintimewindows',
        :'usmstatsunknownusernames' => :'usmstatsunknownusernames',
        :'usmstatsunknownengineids' => :'usmstatsunknownengineids',
        :'usmstatswrongdigests' => :'usmstatswrongdigests',
        :'usmstatsdecryptionerrors' => :'usmstatsdecryptionerrors',
        :'inbadversions' => :'inbadversions',
        :'inbadcommunitynames' => :'inbadcommunitynames',
        :'inbadcommunityuses' => :'inbadcommunityuses',
        :'inasnparseerrs' => :'inasnparseerrs',
        :'intoobigs' => :'intoobigs',
        :'innosuchnames' => :'innosuchnames',
        :'inbadvalues' => :'inbadvalues',
        :'ingenerrs' => :'ingenerrs',
        :'outtoobigs' => :'outtoobigs',
        :'outnosuchnames' => :'outnosuchnames',
        :'outbadvalues' => :'outbadvalues',
        :'outgenerrs' => :'outgenerrs',
        :'outtraps' => :'outtraps',
        :'silentdrops' => :'silentdrops',
        :'avgvarbinds' => :'avgvarbinds',
        :'maxvarbinds' => :'maxvarbinds'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sysuptime' => :'String',
        :'worstrtimelast' => :'String',
        :'avgresponsetime' => :'String',
        :'worstresponsetime' => :'String',
        :'inpkts' => :'Integer',
        :'outpkts' => :'Integer',
        :'usmstatsnotintimewindows' => :'Integer',
        :'usmstatsunknownusernames' => :'Integer',
        :'usmstatsunknownengineids' => :'Integer',
        :'usmstatswrongdigests' => :'Integer',
        :'usmstatsdecryptionerrors' => :'Integer',
        :'inbadversions' => :'Integer',
        :'inbadcommunitynames' => :'Integer',
        :'inbadcommunityuses' => :'Integer',
        :'inasnparseerrs' => :'Integer',
        :'intoobigs' => :'Integer',
        :'innosuchnames' => :'Integer',
        :'inbadvalues' => :'Integer',
        :'ingenerrs' => :'Integer',
        :'outtoobigs' => :'Integer',
        :'outnosuchnames' => :'Integer',
        :'outbadvalues' => :'Integer',
        :'outgenerrs' => :'Integer',
        :'outtraps' => :'Integer',
        :'silentdrops' => :'Integer',
        :'avgvarbinds' => :'Integer',
        :'maxvarbinds' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'sysuptime')
        self.sysuptime = attributes[:'sysuptime']
      end

      if attributes.has_key?(:'worstrtimelast')
        self.worstrtimelast = attributes[:'worstrtimelast']
      end

      if attributes.has_key?(:'avgresponsetime')
        self.avgresponsetime = attributes[:'avgresponsetime']
      end

      if attributes.has_key?(:'worstresponsetime')
        self.worstresponsetime = attributes[:'worstresponsetime']
      end

      if attributes.has_key?(:'inpkts')
        self.inpkts = attributes[:'inpkts']
      end

      if attributes.has_key?(:'outpkts')
        self.outpkts = attributes[:'outpkts']
      end

      if attributes.has_key?(:'usmstatsnotintimewindows')
        self.usmstatsnotintimewindows = attributes[:'usmstatsnotintimewindows']
      end

      if attributes.has_key?(:'usmstatsunknownusernames')
        self.usmstatsunknownusernames = attributes[:'usmstatsunknownusernames']
      end

      if attributes.has_key?(:'usmstatsunknownengineids')
        self.usmstatsunknownengineids = attributes[:'usmstatsunknownengineids']
      end

      if attributes.has_key?(:'usmstatswrongdigests')
        self.usmstatswrongdigests = attributes[:'usmstatswrongdigests']
      end

      if attributes.has_key?(:'usmstatsdecryptionerrors')
        self.usmstatsdecryptionerrors = attributes[:'usmstatsdecryptionerrors']
      end

      if attributes.has_key?(:'inbadversions')
        self.inbadversions = attributes[:'inbadversions']
      end

      if attributes.has_key?(:'inbadcommunitynames')
        self.inbadcommunitynames = attributes[:'inbadcommunitynames']
      end

      if attributes.has_key?(:'inbadcommunityuses')
        self.inbadcommunityuses = attributes[:'inbadcommunityuses']
      end

      if attributes.has_key?(:'inasnparseerrs')
        self.inasnparseerrs = attributes[:'inasnparseerrs']
      end

      if attributes.has_key?(:'intoobigs')
        self.intoobigs = attributes[:'intoobigs']
      end

      if attributes.has_key?(:'innosuchnames')
        self.innosuchnames = attributes[:'innosuchnames']
      end

      if attributes.has_key?(:'inbadvalues')
        self.inbadvalues = attributes[:'inbadvalues']
      end

      if attributes.has_key?(:'ingenerrs')
        self.ingenerrs = attributes[:'ingenerrs']
      end

      if attributes.has_key?(:'outtoobigs')
        self.outtoobigs = attributes[:'outtoobigs']
      end

      if attributes.has_key?(:'outnosuchnames')
        self.outnosuchnames = attributes[:'outnosuchnames']
      end

      if attributes.has_key?(:'outbadvalues')
        self.outbadvalues = attributes[:'outbadvalues']
      end

      if attributes.has_key?(:'outgenerrs')
        self.outgenerrs = attributes[:'outgenerrs']
      end

      if attributes.has_key?(:'outtraps')
        self.outtraps = attributes[:'outtraps']
      end

      if attributes.has_key?(:'silentdrops')
        self.silentdrops = attributes[:'silentdrops']
      end

      if attributes.has_key?(:'avgvarbinds')
        self.avgvarbinds = attributes[:'avgvarbinds']
      end

      if attributes.has_key?(:'maxvarbinds')
        self.maxvarbinds = attributes[:'maxvarbinds']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sysuptime.nil?
        invalid_properties.push('invalid value for "sysuptime", sysuptime cannot be nil.')
      end

      if @worstrtimelast.nil?
        invalid_properties.push('invalid value for "worstrtimelast", worstrtimelast cannot be nil.')
      end

      if @avgresponsetime.nil?
        invalid_properties.push('invalid value for "avgresponsetime", avgresponsetime cannot be nil.')
      end

      if @worstresponsetime.nil?
        invalid_properties.push('invalid value for "worstresponsetime", worstresponsetime cannot be nil.')
      end

      if @inpkts.nil?
        invalid_properties.push('invalid value for "inpkts", inpkts cannot be nil.')
      end

      if @outpkts.nil?
        invalid_properties.push('invalid value for "outpkts", outpkts cannot be nil.')
      end

      if @usmstatsnotintimewindows.nil?
        invalid_properties.push('invalid value for "usmstatsnotintimewindows", usmstatsnotintimewindows cannot be nil.')
      end

      if @usmstatsunknownusernames.nil?
        invalid_properties.push('invalid value for "usmstatsunknownusernames", usmstatsunknownusernames cannot be nil.')
      end

      if @usmstatsunknownengineids.nil?
        invalid_properties.push('invalid value for "usmstatsunknownengineids", usmstatsunknownengineids cannot be nil.')
      end

      if @usmstatswrongdigests.nil?
        invalid_properties.push('invalid value for "usmstatswrongdigests", usmstatswrongdigests cannot be nil.')
      end

      if @usmstatsdecryptionerrors.nil?
        invalid_properties.push('invalid value for "usmstatsdecryptionerrors", usmstatsdecryptionerrors cannot be nil.')
      end

      if @inbadversions.nil?
        invalid_properties.push('invalid value for "inbadversions", inbadversions cannot be nil.')
      end

      if @inbadcommunitynames.nil?
        invalid_properties.push('invalid value for "inbadcommunitynames", inbadcommunitynames cannot be nil.')
      end

      if @inbadcommunityuses.nil?
        invalid_properties.push('invalid value for "inbadcommunityuses", inbadcommunityuses cannot be nil.')
      end

      if @inasnparseerrs.nil?
        invalid_properties.push('invalid value for "inasnparseerrs", inasnparseerrs cannot be nil.')
      end

      if @intoobigs.nil?
        invalid_properties.push('invalid value for "intoobigs", intoobigs cannot be nil.')
      end

      if @innosuchnames.nil?
        invalid_properties.push('invalid value for "innosuchnames", innosuchnames cannot be nil.')
      end

      if @inbadvalues.nil?
        invalid_properties.push('invalid value for "inbadvalues", inbadvalues cannot be nil.')
      end

      if @ingenerrs.nil?
        invalid_properties.push('invalid value for "ingenerrs", ingenerrs cannot be nil.')
      end

      if @outtoobigs.nil?
        invalid_properties.push('invalid value for "outtoobigs", outtoobigs cannot be nil.')
      end

      if @outnosuchnames.nil?
        invalid_properties.push('invalid value for "outnosuchnames", outnosuchnames cannot be nil.')
      end

      if @outbadvalues.nil?
        invalid_properties.push('invalid value for "outbadvalues", outbadvalues cannot be nil.')
      end

      if @outgenerrs.nil?
        invalid_properties.push('invalid value for "outgenerrs", outgenerrs cannot be nil.')
      end

      if @outtraps.nil?
        invalid_properties.push('invalid value for "outtraps", outtraps cannot be nil.')
      end

      if @silentdrops.nil?
        invalid_properties.push('invalid value for "silentdrops", silentdrops cannot be nil.')
      end

      if @avgvarbinds.nil?
        invalid_properties.push('invalid value for "avgvarbinds", avgvarbinds cannot be nil.')
      end

      if @maxvarbinds.nil?
        invalid_properties.push('invalid value for "maxvarbinds", maxvarbinds cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sysuptime.nil?
      return false if @worstrtimelast.nil?
      return false if @avgresponsetime.nil?
      return false if @worstresponsetime.nil?
      return false if @inpkts.nil?
      return false if @outpkts.nil?
      return false if @usmstatsnotintimewindows.nil?
      return false if @usmstatsunknownusernames.nil?
      return false if @usmstatsunknownengineids.nil?
      return false if @usmstatswrongdigests.nil?
      return false if @usmstatsdecryptionerrors.nil?
      return false if @inbadversions.nil?
      return false if @inbadcommunitynames.nil?
      return false if @inbadcommunityuses.nil?
      return false if @inasnparseerrs.nil?
      return false if @intoobigs.nil?
      return false if @innosuchnames.nil?
      return false if @inbadvalues.nil?
      return false if @ingenerrs.nil?
      return false if @outtoobigs.nil?
      return false if @outnosuchnames.nil?
      return false if @outbadvalues.nil?
      return false if @outgenerrs.nil?
      return false if @outtraps.nil?
      return false if @silentdrops.nil?
      return false if @avgvarbinds.nil?
      return false if @maxvarbinds.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sysuptime == o.sysuptime &&
          worstrtimelast == o.worstrtimelast &&
          avgresponsetime == o.avgresponsetime &&
          worstresponsetime == o.worstresponsetime &&
          inpkts == o.inpkts &&
          outpkts == o.outpkts &&
          usmstatsnotintimewindows == o.usmstatsnotintimewindows &&
          usmstatsunknownusernames == o.usmstatsunknownusernames &&
          usmstatsunknownengineids == o.usmstatsunknownengineids &&
          usmstatswrongdigests == o.usmstatswrongdigests &&
          usmstatsdecryptionerrors == o.usmstatsdecryptionerrors &&
          inbadversions == o.inbadversions &&
          inbadcommunitynames == o.inbadcommunitynames &&
          inbadcommunityuses == o.inbadcommunityuses &&
          inasnparseerrs == o.inasnparseerrs &&
          intoobigs == o.intoobigs &&
          innosuchnames == o.innosuchnames &&
          inbadvalues == o.inbadvalues &&
          ingenerrs == o.ingenerrs &&
          outtoobigs == o.outtoobigs &&
          outnosuchnames == o.outnosuchnames &&
          outbadvalues == o.outbadvalues &&
          outgenerrs == o.outgenerrs &&
          outtraps == o.outtraps &&
          silentdrops == o.silentdrops &&
          avgvarbinds == o.avgvarbinds &&
          maxvarbinds == o.maxvarbinds
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [sysuptime, worstrtimelast, avgresponsetime, worstresponsetime, inpkts, outpkts, usmstatsnotintimewindows, usmstatsunknownusernames, usmstatsunknownengineids, usmstatswrongdigests, usmstatsdecryptionerrors, inbadversions, inbadcommunitynames, inbadcommunityuses, inasnparseerrs, intoobigs, innosuchnames, inbadvalues, ingenerrs, outtoobigs, outnosuchnames, outbadvalues, outgenerrs, outtraps, silentdrops, avgvarbinds, maxvarbinds].hash
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
