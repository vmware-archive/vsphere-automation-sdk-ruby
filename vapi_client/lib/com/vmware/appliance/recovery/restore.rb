#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.recovery.restore.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Appliance
      module Recovery
        module Restore
        end
      end
    end
  end
end

module Com::Vmware::Appliance::Recovery::Restore
  # ``Com::Vmware::Appliance::Recovery::Restore::Job``   class  provides  methods  Performs restore operations
  class Job < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.recovery.restore.job')

    CANCEL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('cancel', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'piece' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus'),
      {
        'com.vmware.vapi.std.errors.feature_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::FeatureInUse'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'cancel' => CANCEL_INFO,
      'create' => CREATE_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Cancel the backup job
    #
    # @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult]
    #     RestoreJobStatus Structure
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def cancel
      invoke_with_info(CANCEL_INFO)
    end

    # Initiate restore.
    #
    # @param piece [Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest]
    #     RestoreRequest Structure
    # @return [Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus]
    #     RestoreJobStatus Structure
    # @raise [Com::Vmware::Vapi::Std::Errors::FeatureInUse]
    #     A backup or restore is already in progress
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     Restore is allowed only after deployment and before firstboot
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def create(piece)
      invoke_with_info(CREATE_INFO,
                       'piece' => piece)
    end

    # See restore job progress/result.
    #
    # @return [Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus]
    #     RestoreJobStatus Structure
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def get
      invoke_with_info(GET_INFO)
    end

    # ``Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage``   class  Structure representing message
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
            'com.vmware.appliance.recovery.restore.job.localizable_message',
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

    # ``Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult``   class  Structure representing precheck result
    # @!attribute [rw] status
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus]
    #     Check status
    # @!attribute [rw] messages
    #     @return [Array<Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage>]
    #     List of messages
    class ReturnResult < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.restore.job.return_result',
            {
              'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus'),
              'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage'))
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

    # ``Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest``   class  Structure representing requested restore piece
    # @!attribute [rw] backup_password
    #     @return [String, nil]
    #     a password for a backup piece
    #     backupPassword If no password then the piece will not be decrypted
    # @!attribute [rw] location_type
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
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
            'com.vmware.appliance.recovery.restore.job.restore_request',
            {
              'backup_password' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SecretType.instance),
              'location_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::LocationType'),
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

    # ``Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus``   class  Structure representing backup restore status
    # @!attribute [rw] state
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
    #     process state
    # @!attribute [rw] messages
    #     @return [Array<Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage>]
    #     list of messages
    # @!attribute [rw] progress
    #     @return [Fixnum]
    #     percentage complete
    class RestoreJobStatus < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.recovery.restore.job.restore_job_status',
            {
              'state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState'),
              'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage')),
              'progress' => VAPI::Bindings::IntegerType.instance
            },
            RestoreJobStatus,
            false,
            nil
          )
        end
      end

      attr_accessor :state,
                    :messages,
                    :progress

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus``   enumerated type  Defines the state of precheck
    # @!attribute [rw] fail
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus]
    #     Check failed
    # @!attribute [rw] warning
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus]
    #     Passed with warnings
    # @!attribute [rw] ok
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus]
    #     Check passed
    class ReturnStatus < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.recovery.restore.job.return_status',
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
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus]
      #     Check failed
      FAIL = ReturnStatus.send(:new, 'FAIL')

      # @!attribute [rw] warning
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus]
      #     Passed with warnings
      WARNING = ReturnStatus.send(:new, 'WARNING')

      # @!attribute [rw] ok
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus]
      #     Check passed
      OK = ReturnStatus.send(:new, 'OK')
    end
    # ``Com::Vmware::Appliance::Recovery::Restore::Job::LocationType``   enumerated type  Defines type of all locations for backup/restore
    # @!attribute [rw] ftps
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
    #     Destination is FTPS server
    # @!attribute [rw] http
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
    #     Destination is HTTP server
    # @!attribute [rw] scp
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
    #     Destination is SSH server
    # @!attribute [rw] https
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
    #     Destination is HTTPS server
    # @!attribute [rw] ftp
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
    #     Destination is FTP server
    class LocationType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.recovery.restore.job.location_type',
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
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
      #     Destination is FTPS server
      FTPS = LocationType.send(:new, 'FTPS')

      # @!attribute [rw] http
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
      #     Destination is HTTP server
      HTTP = LocationType.send(:new, 'HTTP')

      # @!attribute [rw] scp
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
      #     Destination is SSH server
      SCP = LocationType.send(:new, 'SCP')

      # @!attribute [rw] https
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
      #     Destination is HTTPS server
      HTTPS = LocationType.send(:new, 'HTTPS')

      # @!attribute [rw] ftp
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::LocationType]
      #     Destination is FTP server
      FTP = LocationType.send(:new, 'FTP')
    end
    # ``Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState``   enumerated type  Defines state of backup/restore process
    # @!attribute [rw] failed
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
    #     Failed
    # @!attribute [rw] inprogress
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
    #     In progress
    # @!attribute [rw] none
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
    #     Not started
    # @!attribute [rw] succeeded
    #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
    #     Completed successfully
    class BackupRestoreProcessState < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.recovery.restore.job.backup_restore_process_state',
            BackupRestoreProcessState
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [BackupRestoreProcessState] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          BackupRestoreProcessState.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] failed
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
      #     Failed
      FAILED = BackupRestoreProcessState.send(:new, 'FAILED')

      # @!attribute [rw] inprogress
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
      #     In progress
      INPROGRESS = BackupRestoreProcessState.send(:new, 'INPROGRESS')

      # @!attribute [rw] none
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
      #     Not started
      NONE = BackupRestoreProcessState.send(:new, 'NONE')

      # @!attribute [rw] succeeded
      #     @return [Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState]
      #     Completed successfully
      SUCCEEDED = BackupRestoreProcessState.send(:new, 'SUCCEEDED')
    end
  end
end
