# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmGuestProcessesCreateSpec
    # The arguments to the program.   Characters which must be escaped to the shell should also be escaped in Processes.CreateSpec.arguments.    In Linux and Solaris guest operating systems, stdio redirection arguments may be used.    For Windows, stdio redirection can be added to the argments if Processes.CreateSpec.path is prefixed with c:\\windows\\system32\\cmd.exe /c. . Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If this value is unset no arguments are passed to the program.
    attr_accessor :arguments

    # A map of environment variables, specified using the guest OS rules (for example PATH, c:\\bin;c:\\windows\\system32 or LD_LIBRARY_PATH,/usr/lib:/lib), to be set for the program being run. Note that these are not additions to the default environment variables; they define the complete set available to the program. If this value is empty, then the environment variables used are guest dependent defaults. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :environment_variables

    # The absolute path to the program to start.   For Linux guest operating systems, /bin/bash is used to start the program.    For Solaris guest operating systems, if /bin/bash exists, its used to start the program, otherwise /bin/sh is used. If /bin/sh is used, then the process ID returned by Processes.create will be that of the shell used to start the program, rather than the program itself, due to the differences in how /bin/sh and /bin/bash work. This PID will still be usable for watching the process with Processes.list to find its exit code and elapsed time.    For Windows, no shell is used. Using a simple batch file instead by prepending c:\\windows\\system32\\cmd.exe /c will allow stdio redirection to work if passed in the Processes.CreateSpec.arguments parameter. . Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :path

    # Makes any program window start minimized in Windows operating systems. Returns an error if set for non-Windows guests. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Defaults to false.
    attr_accessor :start_minimized

    # The absolute path of the working directory for the program to be run. VMware recommends explicitly setting the working directory for the program to be run. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.  If this value is unset or is an empty string, the behavior depends on the guest operating system. For Linux guest operating systems, if this value is unset or is an empty string, the working directory will be the home directory of the user associated with the guest authentication. For other guest operating systems, if this value is unset, the behavior is unspecified.
    attr_accessor :working_directory

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'arguments' => :'arguments',
        :'environment_variables' => :'environment_variables',
        :'path' => :'path',
        :'start_minimized' => :'start_minimized',
        :'working_directory' => :'working_directory'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'arguments' => :'String',
        :'environment_variables' => :'Array<VcenterLcmDestinationApplianceOvftoolArguments>',
        :'path' => :'String',
        :'start_minimized' => :'Boolean',
        :'working_directory' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'arguments')
        self.arguments = attributes[:'arguments']
      end

      if attributes.has_key?(:'environment_variables')
        if (value = attributes[:'environment_variables']).is_a?(Array)
          self.environment_variables = value
        end
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'start_minimized')
        self.start_minimized = attributes[:'start_minimized']
      end

      if attributes.has_key?(:'working_directory')
        self.working_directory = attributes[:'working_directory']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @environment_variables.nil?
        invalid_properties.push('invalid value for "environment_variables", environment_variables cannot be nil.')
      end

      if @path.nil?
        invalid_properties.push('invalid value for "path", path cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @environment_variables.nil?
      return false if @path.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          arguments == o.arguments &&
          environment_variables == o.environment_variables &&
          path == o.path &&
          start_minimized == o.start_minimized &&
          working_directory == o.working_directory
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [arguments, environment_variables, path, start_minimized, working_directory].hash
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
      when :BOOLEAN, :Boolean
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
