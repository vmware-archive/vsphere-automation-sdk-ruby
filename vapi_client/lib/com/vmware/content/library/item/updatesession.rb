#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.content.library.item.updatesession.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Content
      module Library
        module Item
          module Updatesession
          end
        end
      end
    end
  end
end

# The Content Library Item Update Session  package  provides  classes  and  classs  for updating files in a session.
module Com::Vmware::Content::Library::Item::Updatesession
  # The  ``Com::Vmware::Content::Library::Item::Updatesession::File``   class  provides  methods  for accessing files within an update session.  
  # 
  #  After an update session is created against a library item, the  ``Com::Vmware::Content::Library::Item::Updatesession::File``   class  can be used to make changes to the underlying library item metadata as well as the content of the files. The following changes can be made:  
  # 
  #   * deleting an existing file within the library item. This deletes both the metadata and the content.
  #    * updating an existing file with new content.
  #    * adding a new file to the library item.
  #   
  #    
  # 
  #  The above changes are not applied or visible until the session is completed. See   :class:`Com::Vmware::Content::Library::Item::UpdateSession`  .
  class File < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.item.updatesession.file')

    VALIDATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('validate', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    ADD_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('add', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession'),
        'file_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::Info'),
      {
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    REMOVE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('remove', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession'),
        'file_name' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::Info')),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession'),
        'file_name' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::Info'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'validate' => VALIDATE_INFO,
      'add' => ADD_INFO,
      'remove' => REMOVE_INFO,
      'list' => LIST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this  method  will return its name in the   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.missing_files`   set. The user can add the missing files and try re-validating. For other type of errors,   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.invalid_files`   will contain the list of invalid files.
    #
    # @param update_session_id [String]
    #      Identifier of the update session to validate.
    # @return [Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult]
    #     A validation result containing missing files or invalid files and the reason why they are invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no update session with the given identifier exists.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the update session is not in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`   state, or if some of the files that will be uploaded by the client aren't received correctly.
    def validate(update_session_id)
      invoke_with_info(VALIDATE_INFO,
                       'update_session_id' => update_session_id)
    end

    # Requests file content to be changed (either created, or updated). Depending on the source type of the file, this  method  will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this  method  will be used to update the content of the existing file.  
    # 
    #  When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
    #
    # @param update_session_id [String]
    #      Identifier of the update session to be modified.
    # @param file_spec [Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec]
    #      Specification for the file that needs to be added or updated. This includes whether the client wants to push the content or have the server pull it.
    # @return [Com::Vmware::Content::Library::Item::Updatesession::File::Info]
    #     An   :class:`Com::Vmware::Content::Library::Item::Updatesession::File::Info`    class  containing upload links as well as server side state tracking the transfer of the file.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if the  ``file_spec``  is invalid.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the update session doesn't exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if the caller doesn't have ContentLibrary.ReadStorage privilege on the library item of the update session and source type   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.PULL`   is requested for a file or datastore source endpoint (that is, not HTTP or HTTPs based endpoint).
    def add(update_session_id, file_spec)
      invoke_with_info(ADD_INFO,
                       'update_session_id' => update_session_id,
                       'file_spec' => file_spec)
    end

    # Requests a file to be removed. The file will only be effectively removed when the update session is completed.
    #
    # @param update_session_id [String]
    #      Identifier of the update session.
    # @param file_name [String]
    #      Name of the file to be removed.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the update session doesn't exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if the file doesn't exist in the library item associated with the update session.
    def remove(update_session_id, file_name)
      invoke_with_info(REMOVE_INFO,
                       'update_session_id' => update_session_id,
                       'file_name' => file_name)
    end

    # Lists all files in the library item associated with the update session.
    #
    # @param update_session_id [String]
    #      Identifier of the update session.
    # @return [Array<Com::Vmware::Content::Library::Item::Updatesession::File::Info>]
    #     The  list  of the files in the library item associated with the update session. This  list  may be empty if the caller has removed all the files as part of this session (in which case completing the update session will result in an empty library item).
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the update session doesn't exist.
    def list(update_session_id)
      invoke_with_info(LIST_INFO,
                       'update_session_id' => update_session_id)
    end

    # Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
    #
    # @param update_session_id [String]
    #      Identifier of the update session.
    # @param file_name [String]
    #      Name of the file.
    # @return [Com::Vmware::Content::Library::Item::Updatesession::File::Info]
    #     Information about the file.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the update session doesn't exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if the file doesn't exist in the library item associated with the update session.
    def get(update_session_id, file_name)
      invoke_with_info(GET_INFO,
                       'update_session_id' => update_session_id,
                       'file_name' => file_name)
    end

    # The  ``Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec``   class  describes the properties of the file to be uploaded.
    # @!attribute [rw] name
    #     @return [String]
    #     The name of the file being uploaded.
    # @!attribute [rw] source_type
    #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
    #     The source type ( ``NONE``, ``PUSH``, ``PULL`` ) from which the file content will be retrieved.
    # @!attribute [rw] source_endpoint
    #     @return [Com::Vmware::Content::Library::Item::TransferEndpoint]
    #     Location from which the Content Library Service will fetch the file, rather than requiring a client to upload the file.
    #     This  field  is optional and it is only relevant when the value of  ``sourceType``  is   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.PULL`  .
    # @!attribute [rw] size
    #     @return [Fixnum, nil]
    #     The file size, in bytes.
    #     If specified the server will verify it received the correct size.
    # @!attribute [rw] checksum_info
    #     @return [Com::Vmware::Content::Library::Item::File::ChecksumInfo, nil]
    #     The checksum of the file. If specified, the server will verify the checksum once the file is received. If there is a mismatch, the upload will fail.
    #     If not specified the server does not verify the checksum.
    class AddSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.content.library.item.updatesession.file.add_spec',
            {
              'name' => VAPI::Bindings::StringType.instance,
              'source_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::SourceType'),
              'source_endpoint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::TransferEndpoint')),
              'size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
              'checksum_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::ChecksumInfo'))
            },
            AddSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :source_type,
                    :source_endpoint,
                    :size,
                    :checksum_info

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Content::Library::Item::Updatesession::File::Info``   class  defines the uploaded file.
    # @!attribute [rw] name
    #     @return [String]
    #     The name of the file.
    # @!attribute [rw] source_type
    #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
    #     The source type ( ``NONE``, ``PUSH``, ``PULL`` ) from which the file is being retrieved. This may be   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.NONE`   if the file is not being changed.
    # @!attribute [rw] size
    #     @return [Fixnum, nil]
    #     The file size, in bytes as received by the server. This  field  is guaranteed to be set when the server has completely received the file.
    #     This  field  won't be set until the file status is   :attr:`Com::Vmware::Content::Library::Item::TransferStatus.READY`  .
    # @!attribute [rw] checksum_info
    #     @return [Com::Vmware::Content::Library::Item::File::ChecksumInfo, nil]
    #     The checksum information of the file received by the server.
    #     If not specified the server does not verify the checksum.
    # @!attribute [rw] source_endpoint
    #     @return [Com::Vmware::Content::Library::Item::TransferEndpoint]
    #     A source endpoint from which to retrieve the file.
    #     This  field  is optional and it is only relevant when the value of  ``sourceType``  is   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.PULL`  .
    # @!attribute [rw] upload_endpoint
    #     @return [Com::Vmware::Content::Library::Item::TransferEndpoint]
    #     An upload endpoint to which the client can push the content.
    #     This  field  is optional and it is only relevant when the value of  ``sourceType``  is   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.PUSH`  .
    # @!attribute [rw] bytes_transferred
    #     @return [Fixnum]
    #     The number of bytes of this file that have been received by the server.
    # @!attribute [rw] status
    #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
    #     The transfer status ( ``WAITING_FOR_TRANSFER``, ``TRANSFERRING``, ``READY``, ``VALIDATING``, ``ERROR`` ) of this file.
    # @!attribute [rw] error_message
    #     @return [Com::Vmware::Vapi::Std::LocalizableMessage, nil]
    #     Details about the transfer error.
    #     An error message is set if the status is   :attr:`Com::Vmware::Content::Library::Item::TransferStatus.ERROR`  .
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.content.library.item.updatesession.file.info',
            {
              'name' => VAPI::Bindings::StringType.instance,
              'source_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::SourceType'),
              'size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
              'checksum_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::ChecksumInfo')),
              'source_endpoint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::TransferEndpoint')),
              'upload_endpoint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::TransferEndpoint')),
              'bytes_transferred' => VAPI::Bindings::IntegerType.instance,
              'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::TransferStatus'),
              'error_message' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage'))
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :source_type,
                    :size,
                    :checksum_info,
                    :source_endpoint,
                    :upload_endpoint,
                    :bytes_transferred,
                    :status,
                    :error_message

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError``   class  defines the validation error of a file in the session.
    # @!attribute [rw] name
    #     @return [String]
    #     The name of the file.
    # @!attribute [rw] error_message
    #     @return [Com::Vmware::Vapi::Std::LocalizableMessage]
    #     A message indicating why the file was considered invalid.
    class ValidationError < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.content.library.item.updatesession.file.validation_error',
            {
              'name' => VAPI::Bindings::StringType.instance,
              'error_message' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')
            },
            ValidationError,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :error_message

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult``   class  defines the result of validating the files in the session.
    # @!attribute [rw] has_errors
    #     @return [Boolean]
    #     Whether the validation was succesful or not. In case of errors, the   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.missing_files`   and   :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.invalid_files`   will contain at least one entry.
    # @!attribute [rw] missing_files
    #     @return [Set<String>]
    #     A  set  containing the names of the files that are required but the client hasn't added.
    # @!attribute [rw] invalid_files
    #     @return [Array<Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError>]
    #     A  list  containing the files that have been identified as invalid and details about the error.
    class ValidationResult < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.content.library.item.updatesession.file.validation_result',
            {
              'has_errors' => VAPI::Bindings::BooleanType.instance,
              'missing_files' => VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance),
              'invalid_files' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError'))
            },
            ValidationResult,
            false,
            nil
          )
        end
      end

      attr_accessor :has_errors,
                    :missing_files,
                    :invalid_files

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Content::Library::Item::Updatesession::File::SourceType``   enumerated type  defines how the file content is retrieved.
    # @!attribute [rw] none
    #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
    #     No source type has been requested.
    # @!attribute [rw] push
    #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
    #     The client is uploading content using HTTP(S) PUT requests.
    # @!attribute [rw] pull
    #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
    #     The server is pulling content from a URL. The URL scheme can be  ``http`` ,  ``https`` ,  ``file`` , or  ``ds`` .
    class SourceType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.content.library.item.updatesession.file.source_type',
            SourceType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [SourceType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          SourceType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] none
      #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
      #     No source type has been requested.
      NONE = SourceType.send(:new, 'NONE')

      # @!attribute [rw] push
      #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
      #     The client is uploading content using HTTP(S) PUT requests.
      PUSH = SourceType.send(:new, 'PUSH')

      # @!attribute [rw] pull
      #     @return [Com::Vmware::Content::Library::Item::Updatesession::File::SourceType]
      #     The server is pulling content from a URL. The URL scheme can be  ``http`` ,  ``https`` ,  ``file`` , or  ``ds`` .
      PULL = SourceType.send(:new, 'PULL')
    end
  end
end
