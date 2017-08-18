#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.recovery.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Appliance
      module Recovery
      end
    end
  end
end

module Com::Vmware::Appliance::Recovery
  # ``Com::Vmware::Appliance::Recovery::Backup``   class  provides  methods  Performs backup restore operations
  class BackupService < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.recovery.backup')

    VALIDATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('validate', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'piece' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Backup::BackupRequest')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Backup::ReturnResult'),
      {
        'com.vmware.vapi.std.errors.feature_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::FeatureInUse'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'validate' => VALIDATE_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Check for backup errors without starting backup.
    #
    # @param piece [Com::Vmware::Appliance::Recovery::Backup::BackupRequest]
    #     BackupRequest Structure
    # @return [Com::Vmware::Appliance::Recovery::Backup::ReturnResult]
    #     ReturnResult Structure
    # @raise [Com::Vmware::Vapi::Std::Errors::FeatureInUse]
    #     A backup or restore is already in progress
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def validate(piece)
      invoke_with_info(VALIDATE_INFO,
                       'piece' => piece)
    end

    # ``Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage``   class  Structure representing message
    # @!attribute [rw] id
    #     @return [String]
    #     id in message bundle
    # @!attribute [rw] default_message
    #     @return [String]
    #     text in english
    # @!attribute [rw] args
    #     @return [Array<String>]
    #     nested data
    class LocalizableMessage < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.backup.localizable_message',
            {
              'id' => VAPI::Bindings::StringType.instance,
              'default_message' => VAPI::Bindings::StringType.instance,
              'args' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
            },
            LocalizableMessage,
            false,
            nil
          )
        end
      end

      attr_accessor :id,
                    :default_message,
                    :args

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Recovery::Backup::ReturnResult``   class  Structure representing precheck result
    # @!attribute [rw] status
    #     @return [Com::Vmware::Appliance::Recovery::Backup::ReturnStatus]
    #     Check status
    # @!attribute [rw] messages
    #     @return [Array<Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage>]
    #     List of messages
    class ReturnResult < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.backup.return_result',
            {
              'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Backup::ReturnStatus'),
              'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage'))
            },
            ReturnResult,
            false,
            nil
          )
        end
      end

      attr_accessor :status,
                    :messages

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Recovery::Backup::BackupRequest``   class  Structure representing requested backup piece
    # @!attribute [rw] parts
    #     @return [Array<String>]
    #     a list of optional parts. Run backup parts APIs to get list of optional parts and description
    # @!attribute [rw] backup_password
    #     @return [String, nil]
    #     a password for a backup piece The backupPassword must adhere to the following password requirements: At least 8 characters, cannot be more than 20 characters in length. At least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible ASCII characters (for example, no space).
    #     backupPassword If no password then the piece will not be encrypted
    # @!attribute [rw] location_type
    #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
    #     a type of location
    # @!attribute [rw] location
    #     @return [String]
    #     path or url
    # @!attribute [rw] location_user
    #     @return [String, nil]
    #     username for location
    #     locationUser User name for this location if login is required.
    # @!attribute [rw] location_password
    #     @return [String, nil]
    #     password for location
    #     locationPassword Password for the specified user if login is required at this location.
    # @!attribute [rw] comment
    #     @return [String, nil]
    #     Custom comment
    #     comment an optional comment
    class BackupRequest < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.backup.backup_request',
            {
              'parts' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'backup_password' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SecretType.instance),
              'location_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Backup::LocationType'),
              'location' => VAPI::Bindings::StringType.instance,
              'location_user' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'location_password' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SecretType.instance),
              'comment' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
            },
            BackupRequest,
            false,
            nil
          )
        end
      end

      attr_accessor :parts,
                    :backup_password,
                    :location_type,
                    :location,
                    :location_user,
                    :location_password,
                    :comment

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Recovery::Backup::ReturnStatus``   enumerated type  Defines the state of precheck
    # @!attribute [rw] fail
    #     @return [Com::Vmware::Appliance::Recovery::Backup::ReturnStatus]
    #     Check failed
    # @!attribute [rw] warning
    #     @return [Com::Vmware::Appliance::Recovery::Backup::ReturnStatus]
    #     Passed with warnings
    # @!attribute [rw] ok
    #     @return [Com::Vmware::Appliance::Recovery::Backup::ReturnStatus]
    #     Check passed
    class ReturnStatus < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.recovery.backup.return_status',
            ReturnStatus
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [ReturnStatus] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          ReturnStatus.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] fail
      #     @return [Com::Vmware::Appliance::Recovery::Backup::ReturnStatus]
      #     Check failed
      FAIL = ReturnStatus.send(:new, 'FAIL')

      # @!attribute [rw] warning
      #     @return [Com::Vmware::Appliance::Recovery::Backup::ReturnStatus]
      #     Passed with warnings
      WARNING = ReturnStatus.send(:new, 'WARNING')

      # @!attribute [rw] ok
      #     @return [Com::Vmware::Appliance::Recovery::Backup::ReturnStatus]
      #     Check passed
      OK = ReturnStatus.send(:new, 'OK')
    end
    # ``Com::Vmware::Appliance::Recovery::Backup::LocationType``   enumerated type  Defines type of all locations for backup/restore
    # @!attribute [rw] ftps
    #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
    #     Destination is FTPS server
    # @!attribute [rw] http
    #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
    #     Destination is HTTP server
    # @!attribute [rw] scp
    #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
    #     Destination is SSH server
    # @!attribute [rw] https
    #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
    #     Destination is HTTPS server
    # @!attribute [rw] ftp
    #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
    #     Destination is FTP server
    class LocationType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.recovery.backup.location_type',
            LocationType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [LocationType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          LocationType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] ftps
      #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
      #     Destination is FTPS server
      FTPS = LocationType.send(:new, 'FTPS')

      # @!attribute [rw] http
      #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
      #     Destination is HTTP server
      HTTP = LocationType.send(:new, 'HTTP')

      # @!attribute [rw] scp
      #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
      #     Destination is SSH server
      SCP = LocationType.send(:new, 'SCP')

      # @!attribute [rw] https
      #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
      #     Destination is HTTPS server
      HTTPS = LocationType.send(:new, 'HTTPS')

      # @!attribute [rw] ftp
      #     @return [Com::Vmware::Appliance::Recovery::Backup::LocationType]
      #     Destination is FTP server
      FTP = LocationType.send(:new, 'FTP')
    end
  end
  # ``Com::Vmware::Appliance::Recovery::Restore``   class  provides  methods  Performs restore operations
  class RestoreService < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.recovery.restore')

    VALIDATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('validate', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'piece' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::RestoreRequest')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Metadata'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'validate' => VALIDATE_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Get metadata before restore
    #
    # @param piece [Com::Vmware::Appliance::Recovery::Restore::RestoreRequest]
    #     RestoreRequest Structure
    # @return [Com::Vmware::Appliance::Recovery::Restore::Metadata]
    #     Metadata Structure
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def validate(piece)
      invoke_with_info(VALIDATE_INFO,
                       'piece' => piece)
    end

    # ``Com::Vmware::Appliance::Recovery::Restore::RestoreRequest``   class  Structure representing requested restore piece
    # @!attribute [rw] backup_password
    #     @return [String, nil]
    #     a password for a backup piece
    #     backupPassword If no password then the piece will not be decrypted
    # @!attribute [rw] location_type
    #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
    #     a type of location
    # @!attribute [rw] location
    #     @return [String]
    #     path or url
    # @!attribute [rw] location_user
    #     @return [String, nil]
    #     username for location
    #     locationUser User name for this location if login is required.
    # @!attribute [rw] location_password
    #     @return [String, nil]
    #     password for location
    #     locationPassword Password for the specified user if login is required at this location.
    class RestoreRequest < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.restore.restore_request',
            {
              'backup_password' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SecretType.instance),
              'location_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::LocationType'),
              'location' => VAPI::Bindings::StringType.instance,
              'location_user' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'location_password' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SecretType.instance)
            },
            RestoreRequest,
            false,
            nil
          )
        end
      end

      attr_accessor :backup_password,
                    :location_type,
                    :location,
                    :location_user,
                    :location_password

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage``   class  Structure representing message
    # @!attribute [rw] id
    #     @return [String]
    #     id in message bundle
    # @!attribute [rw] default_message
    #     @return [String]
    #     text in english
    # @!attribute [rw] args
    #     @return [Array<String>]
    #     nested data
    class LocalizableMessage < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.restore.localizable_message',
            {
              'id' => VAPI::Bindings::StringType.instance,
              'default_message' => VAPI::Bindings::StringType.instance,
              'args' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
            },
            LocalizableMessage,
            false,
            nil
          )
        end
      end

      attr_accessor :id,
                    :default_message,
                    :args

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Recovery::Restore::Metadata``   class  Structure representing metadata
    # @!attribute [rw] timestamp
    #     @return [DateTime]
    #     Time when this backup was completed.
    # @!attribute [rw] parts
    #     @return [Array<String>]
    #     List of parts included in the backup.
    # @!attribute [rw] version
    #     @return [String]
    #     VCSA version
    # @!attribute [rw] boxname
    #     @return [String]
    #     Box name is PNID/ FQDN etc
    # @!attribute [rw] comment
    #     @return [String]
    #     Custom comment
    # @!attribute [rw] applicable
    #     @return [Boolean]
    #     Does the VCSA match the deployment type, network properties and version of backed up VC
    # @!attribute [rw] messages
    #     @return [Array<Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage>]
    #     Any messages if the backup is not aplicable
    class Metadata < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.restore.metadata',
            {
              'timestamp' => VAPI::Bindings::DateTimeType.instance,
              'parts' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'version' => VAPI::Bindings::StringType.instance,
              'boxname' => VAPI::Bindings::StringType.instance,
              'comment' => VAPI::Bindings::StringType.instance,
              'applicable' => VAPI::Bindings::BooleanType.instance,
              'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage'))
            },
            Metadata,
            false,
            nil
          )
        end
      end

      attr_accessor :timestamp,
                    :parts,
                    :version,
                    :boxname,
                    :comment,
                    :applicable,
                    :messages

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Recovery::Restore::LocationType``   enumerated type  Defines type of all locations for backup/restore
    # @!attribute [rw] ftps
    #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
    #     Destination is FTPS server
    # @!attribute [rw] http
    #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
    #     Destination is HTTP server
    # @!attribute [rw] scp
    #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
    #     Destination is SSH server
    # @!attribute [rw] https
    #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
    #     Destination is HTTPS server
    # @!attribute [rw] ftp
    #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
    #     Destination is FTP server
    class LocationType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.recovery.restore.location_type',
            LocationType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [LocationType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          LocationType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] ftps
      #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
      #     Destination is FTPS server
      FTPS = LocationType.send(:new, 'FTPS')

      # @!attribute [rw] http
      #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
      #     Destination is HTTP server
      HTTP = LocationType.send(:new, 'HTTP')

      # @!attribute [rw] scp
      #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
      #     Destination is SSH server
      SCP = LocationType.send(:new, 'SCP')

      # @!attribute [rw] https
      #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
      #     Destination is HTTPS server
      HTTPS = LocationType.send(:new, 'HTTPS')

      # @!attribute [rw] ftp
      #     @return [Com::Vmware::Appliance::Recovery::Restore::LocationType]
      #     Destination is FTP server
      FTP = LocationType.send(:new, 'FTP')
    end
  end
end
