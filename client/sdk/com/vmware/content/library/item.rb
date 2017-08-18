#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.content.library.item.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Content
      module Library
        module Item
        end
      end
    end
  end
end

# The Content Library Item  package  provides  classes  and  classs  for managing files in a library item.
module Com::Vmware::Content::Library::Item
  # The  ``Com::Vmware::Content::Library::Item::DownloadSession``   class  manipulates download sessions, which are used to download content from the Content Library Service.  
  # 
  #  A download session is an object that tracks the download of content (that is, downloading content from the Content Library Service) and acts as a lease to keep the download links available.  
  # 
  #  The   :class:`Com::Vmware::Content::Library::Item::Downloadsession::File`    class  provides access to the download links.
  class DownloadSession < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.item.download_session')

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
        'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::DownloadSessionModel')
      ),
      VAPI::Bindings::IdType.new('com.vmware.content.library.item.DownloadSession'),
      {
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'download_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.DownloadSession')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::DownloadSessionModel'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'library_item_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new)
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    KEEP_ALIVE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('keep_alive', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'download_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.DownloadSession'),
        'progress' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance)
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    CANCEL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('cancel', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'download_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.DownloadSession')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'download_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.DownloadSession')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    FAIL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('fail', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'download_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.DownloadSession'),
        'client_error_message' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'create' => CREATE_INFO,
      'get' => GET_INFO,
      'list' => LIST_INFO,
      'keep_alive' => KEEP_ALIVE_INFO,
      'cancel' => CANCEL_INFO,
      'delete' => DELETE_INFO,
      'fail' => FAIL_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.content.library.item.DownloadSession'
    # Creates a new download session.
    #
    # @param client_token [String, nil]
    #      A unique token generated by the client for each creation request. The token should be a universally unique identifier (UUID), for example:  ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee idempotent creation.
    #     If not specified creation is not idempotent.
    # @param create_spec [Com::Vmware::Content::Library::Item::DownloadSessionModel]
    #      Specification for the new download session to be created.
    # @return [String]
    #     Identifier of the new download session being created.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if the session specification is not valid.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      format.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the library item targeted by the download does not exist.
    def create(create_spec, client_token = nil)
      invoke_with_info(CREATE_INFO,
                       'client_token' => client_token,
                       'create_spec' => create_spec)
    end

    # Gets the download session with the specified identifier, including the most up-to-date status information for the session.
    #
    # @param download_session_id [String]
    #      Identifier of the download session to retrieve.
    # @return [Com::Vmware::Content::Library::Item::DownloadSessionModel]
    #     The   :class:`Com::Vmware::Content::Library::Item::DownloadSessionModel`   instance with the given  ``download_session_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no download session with the given  ``download_session_id``  exists.
    def get(download_session_id)
      invoke_with_info(GET_INFO,
                       'download_session_id' => download_session_id)
    end

    # Lists the identifiers of the download sessions created by the calling user. Optionally may filter by library item.
    #
    # @param library_item_id [String, nil]
    #      Library item identifier on which to filter results.
    #     If not specified all download session identifiers are listed.
    # @return [Array<String>]
    #     The  list  of identifiers of all download sessions created by the calling user.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if a library item identifier is given for an item which does not exist.
    def list(library_item_id = nil)
      invoke_with_info(LIST_INFO,
                       'library_item_id' => library_item_id)
    end

    # Keeps a download session alive. This operation is allowed only if the session is in the   :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE`   state.  
    # 
    #  If there is no activity for a download session for a certain period of time, the download session will expire. The download session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this  method  enables a client to specifically extend the lifetime of an active download session.
    #
    # @param download_session_id [String]
    #      Identifier of the download session whose lifetime should be extended.
    # @param progress [Fixnum, nil]
    #      Optional update to the progress property of the session. If specified, the new progress should be greater then the current progress. See   :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel.client_progress`  .
    #     If not specified the progress is not updated.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no download session with the given identifier exists.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the download session is not in the   :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE`   state.
    def keep_alive(download_session_id, progress = nil)
      invoke_with_info(KEEP_ALIVE_INFO,
                       'download_session_id' => download_session_id,
                       'progress' => progress)
    end

    # Cancels the download session. This  method  will abort any ongoing transfers and invalidate transfer urls that the client may be downloading from.
    #
    # @param download_session_id [String]
    #      Identifer of the download session that should be canceled.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no download session with the given identifier exists.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the download session is not in the   :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE`   state.
    def cancel(download_session_id)
      invoke_with_info(CANCEL_INFO,
                       'download_session_id' => download_session_id)
    end

    # Deletes a download session. This removes the session and all information associated with it.  
    # 
    #  Removing a download session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the transfers will be able to complete). However there will no longer be a means of inspecting the status of those downloads except by seeing the effect on the library item.  
    # 
    #  Download sessions for which there is no download activity or which are complete will automatically be expired and then deleted after a period of time.
    #
    # @param download_session_id [String]
    #      Identifier of the download session to be deleted.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the download session does not exist.
    def delete(download_session_id)
      invoke_with_info(DELETE_INFO,
                       'download_session_id' => download_session_id)
    end

    # Terminates the download session with a client specified error message.  
    # 
    #  This is useful in transmitting client side failures (for example, not being able to download a file) to the server side.
    #
    # @param download_session_id [String]
    #      Identifier of the download session to fail.
    # @param client_error_message [String]
    #      Client side error message. This can be useful in providing some extra details about the client side failure. Note that the message won't be translated to the user's locale.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the download session does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the download session is not in the   :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ACTIVE`   state.
    def fail(download_session_id, client_error_message)
      invoke_with_info(FAIL_INFO,
                       'download_session_id' => download_session_id,
                       'client_error_message' => client_error_message)
    end

  end
  # The  ``Com::Vmware::Content::Library::Item::File``   class  can be used to query for information on the files within a library item. Files are objects which are added to a library item through the   :class:`Com::Vmware::Content::Library::Item::UpdateSession`   and   :class:`Com::Vmware::Content::Library::Item::Updatesession::File`    classs .
  class File < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.item.file')

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'library_item_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.Item'),
        'name' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::Info'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'library_item_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.Item')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::Info')),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'get' => GET_INFO,
      'list' => LIST_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Retrieves the information for a single file in a library item by its name.
    #
    # @param library_item_id [String]
    #      Identifier of the library item whose file information should be returned.
    # @param name [String]
    #      Name of the file in the library item whose information should be returned.
    # @return [Com::Vmware::Content::Library::Item::File::Info]
    #     The   :class:`Com::Vmware::Content::Library::Item::File::Info`   object with information on the specified file.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if  ``library_item_id``  refers to a library item that does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if  ``name``  refers to a file that does not exist in the library item.
    def get(library_item_id, name)
      invoke_with_info(GET_INFO,
                       'library_item_id' => library_item_id,
                       'name' => name)
    end

    # Lists all of the files that are stored within a given library item.
    #
    # @param library_item_id [String]
    #      Identifier of the library item whose files should be listed.
    # @return [Array<Com::Vmware::Content::Library::Item::File::Info>]
    #     The  list  of all of the files that are stored within the given library item.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if  ``library_item_id``  refers to a library item that does not exist.
    def list(library_item_id)
      invoke_with_info(LIST_INFO,
                       'library_item_id' => library_item_id)
    end

    # Provides checksums for a   :class:`Com::Vmware::Content::Library::Item::File::Info`   object.
    # @!attribute [rw] algorithm
    #     @return [Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm, nil]
    #     The checksum algorithm ( ``SHA1``, ``MD5`` ) used to calculate the checksum.
    #     If not specified the default checksum algorithm is   :attr:`Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm.SHA1`  .
    # @!attribute [rw] checksum
    #     @return [String]
    #     The checksum value calculated with   :attr:`Com::Vmware::Content::Library::Item::File::ChecksumInfo.algorithm`  .
    class ChecksumInfo < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.content.library.item.file.checksum_info',
            {
              'algorithm' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm')),
              'checksum' => VAPI::Bindings::StringType.instance
            },
            ChecksumInfo,
            false,
            nil
          )
        end
      end

      attr_accessor :algorithm,
                    :checksum

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Content::Library::Item::File::Info``   class  provides information about a file in Content Library Service storage.  
    # 
    #  A file is an actual stored object for a library item. An item will have zero files initially, but one or more can be uploaded to the item.
    # @!attribute [rw] checksum_info
    #     @return [Com::Vmware::Content::Library::Item::File::ChecksumInfo, nil]
    #     A checksum for validating the content of the file.  
    #     
    #      This value can be used to verify that a transfer was completed without errors.
    #     A checksum cannot always be calculated, and the value will be  nil  if the file does not have content.
    # @!attribute [rw] name
    #     @return [String]
    #     The name of the file.  
    #     
    #      This value will be unique within the library item for each file. It cannot be an empty string.
    # @!attribute [rw] size
    #     @return [Fixnum]
    #     The file size, in bytes. The file size is the storage used and not the uploaded or provisioned size. For example, when uploading a disk to a datastore, the amount of storage that the disk consumes may be different from the disk file size. When the file is not cached, the size is 0.
    # @!attribute [rw] cached
    #     @return [Boolean]
    #     Indicates whether the file is on disk or not.
    # @!attribute [rw] version
    #     @return [String]
    #     The version of this file; incremented when a new copy of the file is uploaded.
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.content.library.item.file.info',
            {
              'checksum_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::ChecksumInfo')),
              'name' => VAPI::Bindings::StringType.instance,
              'size' => VAPI::Bindings::IntegerType.instance,
              'cached' => VAPI::Bindings::BooleanType.instance,
              'version' => VAPI::Bindings::StringType.instance
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :checksum_info,
                    :name,
                    :size,
                    :cached,
                    :version

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm``   enumerated type  defines the valid checksum algorithms.
    # @!attribute [rw] sh_a1
    #     @return [Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm]
    #     Checksum algorithm: SHA-1
    # @!attribute [rw] m_d5
    #     @return [Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm]
    #     Checksum algorithm: MD5
    class ChecksumAlgorithm < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.content.library.item.file.checksum_algorithm',
            ChecksumAlgorithm
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [ChecksumAlgorithm] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          ChecksumAlgorithm.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] sh_a1
      #     @return [Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm]
      #     Checksum algorithm: SHA-1
      SH_A1 = ChecksumAlgorithm.send(:new, 'SH_A1')

      # @!attribute [rw] m_d5
      #     @return [Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm]
      #     Checksum algorithm: MD5
      M_D5 = ChecksumAlgorithm.send(:new, 'M_D5')
    end
  end
  # ``Com::Vmware::Content::Library::Item::Storage``  is a resource that represents a specific instance of a file stored on a storage backing. Unlike   :class:`Com::Vmware::Content::Library::Item::File`  , which is abstract, storage represents concrete files on the various storage backings. A file is only represented once in   :class:`Com::Vmware::Content::Library::Item::File`  , but will be represented multiple times (once for each storage backing) in  ``Com::Vmware::Content::Library::Item::Storage`` . The  ``Com::Vmware::Content::Library::Item::Storage``   class  provides information on the storage backing and the specific location of the file in that backing to privileged users who want direct access to the file on the storage medium.
  class Storage < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.item.storage')

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'library_item_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.Item'),
        'file_name' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Storage::Info')),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'library_item_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.Item')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Storage::Info')),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'get' => GET_INFO,
      'list' => LIST_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Retrieves the storage information for a specific file in a library item.
    #
    # @param library_item_id [String]
    #      Identifier of the library item whose storage information should be retrieved.
    # @param file_name [String]
    #      Name of the file for which the storage information should be listed.
    # @return [Array<Com::Vmware::Content::Library::Item::Storage::Info>]
    #     The  list  of all the storage items for the given file within the given library item.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the specified library item does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the specified file does not exist in the given library item.
    def get(library_item_id, file_name)
      invoke_with_info(GET_INFO,
                       'library_item_id' => library_item_id,
                       'file_name' => file_name)
    end

    # Lists all storage items for a given library item.
    #
    # @param library_item_id [String]
    #      Identifier of the library item whose storage information should be listed.
    # @return [Array<Com::Vmware::Content::Library::Item::Storage::Info>]
    #     The  list  of all storage items for a given library item.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the specified library item does not exist.
    def list(library_item_id)
      invoke_with_info(LIST_INFO,
                       'library_item_id' => library_item_id)
    end

    # The  ``Com::Vmware::Content::Library::Item::Storage::Info``   class  is the expanded form of   :class:`Com::Vmware::Content::Library::Item::File::Info`   that includes details about the storage backing for a file in a library item.
    # @!attribute [rw] storage_backing
    #     @return [Com::Vmware::Content::Library::StorageBacking]
    #     The storage backing on which this object resides.
    # @!attribute [rw] storage_uris
    #     @return [Array<URI>]
    #     URIs that identify the file on the storage backing.  
    #     
    #      These URIs may be specific to the backing and may need interpretation by the client. A client that understands a URI scheme in this list may use that URI to directly access the file on the storage backing. This can provide high-performance support for file manipulation.
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.content.library.item.storage.info',
            {
              'storage_backing' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::StorageBacking'),
              'storage_uris' => VAPI::Bindings::ListType.new(VAPI::Bindings::URIType.instance),
              'checksum_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::ChecksumInfo')),
              'name' => VAPI::Bindings::StringType.instance,
              'size' => VAPI::Bindings::IntegerType.instance,
              'cached' => VAPI::Bindings::BooleanType.instance,
              'version' => VAPI::Bindings::StringType.instance
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :storage_backing,
                    :storage_uris,
                    :checksum_info,
                    :name,
                    :size,
                    :cached,
                    :version

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Content::Library::Item::UpdateSession``   class  manipulates sessions that are used to upload content into the Content Library Service, and/or to remove files from a library item.  
  # 
  #  An update session is a resource which tracks changes to content. An update session is created with a set of files that are intended to be uploaded to a specific   :class:`Com::Vmware::Content::Library::ItemModel`  , or removed from an item. The session object can be used to track the uploads and inspect the changes that are being made to the item by that upload. It can also serve as a channel to check on the result of the upload, and status messages such as errors and warnings for the upload.  
  # 
  #  Modifications are not visible to other clients unless the session is completed and all necessary files have been received.  
  # 
  #  The management of the files within the session is done through the   :class:`Com::Vmware::Content::Library::Item::Updatesession::File`    class .
  class UpdateSession < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.item.update_session')

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
        'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::UpdateSessionModel')
      ),
      VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession'),
      {
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::UpdateSessionModel'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'library_item_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new)
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    COMPLETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('complete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    KEEP_ALIVE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('keep_alive', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession'),
        'client_progress' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance)
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    CANCEL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('cancel', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    FAIL_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('fail', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession'),
        'client_error_message' => VAPI::Bindings::StringType.instance
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    DELETE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('delete', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'update_session_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.item.UpdateSession')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'create' => CREATE_INFO,
      'get' => GET_INFO,
      'list' => LIST_INFO,
      'complete' => COMPLETE_INFO,
      'keep_alive' => KEEP_ALIVE_INFO,
      'cancel' => CANCEL_INFO,
      'fail' => FAIL_INFO,
      'delete' => DELETE_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    RESOURCE_TYPE = 'com.vmware.content.library.item.UpdateSession'
    # Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received.  
    # 
    #  Content Library Service allows only one single update session to be active for a specific library item.
    #
    # @param client_token [String, nil]
    #      Unique token generated by the client for each creation request. The token should be a universally unique identifier (UUID), for example:  ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee idempotent creation.
    #     If not specified creation is not idempotent.
    # @param create_spec [Com::Vmware::Content::Library::Item::UpdateSessionModel]
    #      Specification for the new update session to be created.
    # @return [String]
    #     Identifier of the new update session being created.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if the session specification is not valid.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if the  ``client_token``  does not conform to the UUID format.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
    #      if the update session is being created on a subscribed library item.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the item targeted for update does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
    #      if there is another update session on the same library item.
    def create(create_spec, client_token = nil)
      invoke_with_info(CREATE_INFO,
                       'client_token' => client_token,
                       'create_spec' => create_spec)
    end

    # Gets the update session with the specified identifier, including the most up-to-date status information for the session.
    #
    # @param update_session_id [String]
    #      Identifier of the update session to retrieve.
    # @return [Com::Vmware::Content::Library::Item::UpdateSessionModel]
    #     The   :class:`Com::Vmware::Content::Library::Item::UpdateSessionModel`   instance with the given  ``update_session_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no update session with the given identifier exists.
    def get(update_session_id)
      invoke_with_info(GET_INFO,
                       'update_session_id' => update_session_id)
    end

    # Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.
    #
    # @param library_item_id [String, nil]
    #      Optional library item identifier on which to filter results.
    #     If not specified the results are not filtered.
    # @return [Array<String>]
    #     The  list  of identifiers of all update sessions created by the calling user.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if a library item identifier is given for an item which does not exist.
    def list(library_item_id = nil)
      invoke_with_info(LIST_INFO,
                       'library_item_id' => library_item_id)
    end

    # Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done.  
    # 
    #  This  method  requires the session to be in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`   state.  
    # 
    #  Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the   :func:`Com::Vmware::Content::Library::Item::Updatesession::File.validate`    method .  
    # 
    #  Modifications are not visible to other clients unless the session is completed and all necessary files have been received.
    #
    # @param update_session_id [String]
    #      Identifier of the update session that should be completed.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no update session with the given identifier exists.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the update session is not in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`   state, or if some of the files that will be uploaded by the client aren't received correctly.
    def complete(update_session_id)
      invoke_with_info(COMPLETE_INFO,
                       'update_session_id' => update_session_id)
    end

    # Keeps an update session alive.  
    # 
    #  If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this  method  enables a client to specifically extend the lifetime of the update session.
    #
    # @param update_session_id [String]
    #      Identifier of the update session whose lifetime should be extended.
    # @param client_progress [Fixnum, nil]
    #      Optional update to the progress property of the session. If specified, the new progress should be greater then the current progress. See   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel.client_progress`  .
    #     If not specified the progress is not updated.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no update session with the given identifier exists.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the update session is not in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`   state.
    def keep_alive(update_session_id, client_progress = nil)
      invoke_with_info(KEEP_ALIVE_INFO,
                       'update_session_id' => update_session_id,
                       'client_progress' => client_progress)
    end

    # Cancels the update session and deletes it. This  method  will free up any temporary resources currently associated with the session.  
    # 
    #  This  method  is not allowed if the session has been already completed.  
    # 
    #  Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.
    #
    # @param update_session_id [String]
    #      Identifier of the update session that should be canceled.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if no update session with the given identifier exists.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the update session is not in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`   state.
    def cancel(update_session_id)
      invoke_with_info(CANCEL_INFO,
                       'update_session_id' => update_session_id)
    end

    # Terminates the update session with a client specified error message.  
    # 
    #  This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.
    #
    # @param update_session_id [String]
    #      Identifier of the update session to fail.
    # @param client_error_message [String]
    #      Client side error message. This can be useful in providing some extra details about the client side failure. Note that the message won't be translated to the user's locale.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the update session does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the update session is not in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`   state.
    def fail(update_session_id, client_error_message)
      invoke_with_info(FAIL_INFO,
                       'update_session_id' => update_session_id,
                       'client_error_message' => client_error_message)
    end

    # Deletes an update session. This removes the session and all information associated with it.  
    # 
    #  Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item.  
    # 
    #  Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.
    #
    # @param update_session_id [String]
    #      Identifer of the update session to delete.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the update session does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the update session is in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`   state.
    def delete(update_session_id)
      invoke_with_info(DELETE_INFO,
                       'update_session_id' => update_session_id)
    end

  end
  # The  ``Com::Vmware::Content::Library::Item::DownloadSessionModel``   class  provides information on an active   :class:`Com::Vmware::Content::Library::Item::DownloadSession`   resource.
  # @!attribute [rw] id
  #     @return [String]
  #     The identifier of this download session.
  #     This  field  is not used for the  ``create``   method . It will not be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] library_item_id
  #     @return [String]
  #     The identifier of the library item whose content is being downloaded.
  #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] library_item_content_version
  #     @return [String]
  #     The content version of the library item whose content is being downloaded. This value is the   :attr:`Com::Vmware::Content::Library::ItemModel.content_version`   at the time when the session is created for the library item.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] error_message
  #     @return [Com::Vmware::Vapi::Std::LocalizableMessage]
  #     If the session is in the   :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ERROR`   status this property will have more details about the error.
  #     This  field  is not used for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] client_progress
  #     @return [Fixnum]
  #     The progress that has been made with the download. This property is to be updated by the client during the download process to indicate the progress of its work in completing the download. The initial progress is 0 until updated by the client. The maximum value is 100, which indicates that the download is complete.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is optional for the  ``update``   method .
  # @!attribute [rw] state
  #     @return [Com::Vmware::Content::Library::Item::DownloadSessionModel::State]
  #     The current state ( ``ACTIVE``, ``CANCELED``, ``ERROR`` ) of the download session.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] expiration_time
  #     @return [DateTime]
  #     Indicates the time after which the session will expire. The session is guaranteed not to expire before this time.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  class DownloadSessionModel < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.content.library.item.download_session_model',
          {
            'id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
            'library_item_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
            'library_item_content_version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'error_message' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
            'client_progress' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'state' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::DownloadSessionModel::State')),
            'expiration_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance)
          },
          DownloadSessionModel,
          true,
          ["id"]
        )
      end
    end

    attr_accessor :id,
                  :library_item_id,
                  :library_item_content_version,
                  :error_message,
                  :client_progress,
                  :state,
                  :expiration_time

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The state of the download session.
    # @!attribute [rw] active
    #     @return [Com::Vmware::Content::Library::Item::DownloadSessionModel::State]
    #     The session is active. Individual files may be in the process of being transferred and may become ready for download at different times.
    # @!attribute [rw] canceled
    #     @return [Com::Vmware::Content::Library::Item::DownloadSessionModel::State]
    #     The session has been canceled. On-going downloads may fail. The session will stay in this state until it is either deleted by the user or automatically cleaned up by the Content Library Service.
    # @!attribute [rw] error
    #     @return [Com::Vmware::Content::Library::Item::DownloadSessionModel::State]
    #     Indicates there was an error during the session lifecycle.
    class State < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.content.library.item.download_session_model.state',
            State
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [State] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          State.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] active
      #     @return [Com::Vmware::Content::Library::Item::DownloadSessionModel::State]
      #     The session is active. Individual files may be in the process of being transferred and may become ready for download at different times.
      ACTIVE = State.send(:new, 'ACTIVE')

      # @!attribute [rw] canceled
      #     @return [Com::Vmware::Content::Library::Item::DownloadSessionModel::State]
      #     The session has been canceled. On-going downloads may fail. The session will stay in this state until it is either deleted by the user or automatically cleaned up by the Content Library Service.
      CANCELED = State.send(:new, 'CANCELED')

      # @!attribute [rw] error
      #     @return [Com::Vmware::Content::Library::Item::DownloadSessionModel::State]
      #     Indicates there was an error during the session lifecycle.
      ERROR = State.send(:new, 'ERROR')
    end
  end
  # The  ``Com::Vmware::Content::Library::Item::TransferEndpoint``   class  encapsulates a URI along with extra information about it.
  # @!attribute [rw] uri
  #     @return [URI]
  #     Transfer endpoint URI. The supported URI schemes are:  ``http`` ,  ``https`` ,  ``file`` , and  ``ds`` .  
  #     
  #      An endpoint URI with the  ``ds``  scheme specifies the location of the file on the datastore. The format of the datastore URI is:  
  #     
  #       * ds:///vmfs/volumes/uuid/path
  #       
  #        
  #     
  #      Some examples of valid file URI formats are:  
  #     
  #       * file:///path
  #        * file:///C:/path
  #        * file://unc-server/path
  #       
  #        
  #     
  #      When the transfer endpoint is a file or datastore location, the server can import the file directly from the storage backing without the overhead of streaming over HTTP.
  # @!attribute [rw] ssl_certificate_thumbprint
  #     @return [String, nil]
  #     Thumbprint of the expected SSL certificate for this endpoint. Only used for HTTPS connections. The thumbprint is the SHA-1 hash of the DER encoding of the remote endpoint's SSL certificate. If set, the remote endpoint's SSL certificate is only accepted if it matches this thumbprint, and no other certificate validation is performed.
  #     If not specified, standard certificate validation is performed.
  class TransferEndpoint < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.content.library.item.transfer_endpoint',
          {
            'uri' => VAPI::Bindings::URIType.instance,
            'ssl_certificate_thumbprint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          TransferEndpoint,
          false,
          nil
        )
      end
    end

    attr_accessor :uri,
                  :ssl_certificate_thumbprint

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Content::Library::Item::UpdateSessionModel``   class  provides information on an active   :class:`Com::Vmware::Content::Library::Item::UpdateSession`   resource.
  # @!attribute [rw] id
  #     @return [String]
  #     The identifier of this update session.
  #     This  field  is not used for the  ``create``   method . It will not be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] library_item_id
  #     @return [String]
  #     The identifier of the library item to which content will be uploaded or removed.
  #     This  field  must be provided for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] library_item_content_version
  #     @return [String]
  #     The content version of the library item whose content is being modified. This value is the   :attr:`Com::Vmware::Content::Library::ItemModel.content_version`   at the time when the session is created for the library item.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] error_message
  #     @return [Com::Vmware::Vapi::Std::LocalizableMessage]
  #     If the session is in the   :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ERROR`   status this property will have more details about the error.
  #     This  field  is not used for the  ``create``   method . It is optional in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] client_progress
  #     @return [Fixnum]
  #     The progress that has been made with the upload. This property is to be updated by the client during the upload process to indicate the progress of its work in completing the upload. The initial progress is 0 until updated by the client. The maximum value is 100, which indicates that the update is complete.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] state
  #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
  #     The current state ( ``ACTIVE``, ``DONE``, ``ERROR``, ``CANCELED`` ) of the update session.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  # @!attribute [rw] expiration_time
  #     @return [DateTime]
  #     Indicates the time after which the session will expire. The session is guaranteed not to expire earlier than this time.
  #     This  field  is not used for the  ``create``   method . It will always be present in the  result  of the  ``get``  or  ``list``   methods . It is not used for the  ``update``   method .
  class UpdateSessionModel < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.content.library.item.update_session_model',
          {
            'id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
            'library_item_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
            'library_item_content_version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'error_message' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
            'client_progress' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'state' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::UpdateSessionModel::State')),
            'expiration_time' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DateTimeType.instance)
          },
          UpdateSessionModel,
          true,
          ["id"]
        )
      end
    end

    attr_accessor :id,
                  :library_item_id,
                  :library_item_content_version,
                  :error_message,
                  :client_progress,
                  :state,
                  :expiration_time

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The state of an update session.
    # @!attribute [rw] active
    #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
    #     The session is currently active. This is the initial state when the session is created. Files may be uploaded by the client or pulled by the Content Library Service at this stage.
    # @!attribute [rw] done
    #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
    #     The session is done and all its effects are now visible.
    # @!attribute [rw] error
    #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
    #     There was an error during the session.
    # @!attribute [rw] canceled
    #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
    #     The session has been canceled.
    class State < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.content.library.item.update_session_model.state',
            State
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [State] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          State.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] active
      #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
      #     The session is currently active. This is the initial state when the session is created. Files may be uploaded by the client or pulled by the Content Library Service at this stage.
      ACTIVE = State.send(:new, 'ACTIVE')

      # @!attribute [rw] done
      #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
      #     The session is done and all its effects are now visible.
      DONE = State.send(:new, 'DONE')

      # @!attribute [rw] error
      #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
      #     There was an error during the session.
      ERROR = State.send(:new, 'ERROR')

      # @!attribute [rw] canceled
      #     @return [Com::Vmware::Content::Library::Item::UpdateSessionModel::State]
      #     The session has been canceled.
      CANCELED = State.send(:new, 'CANCELED')
    end
  end
  # The  ``Com::Vmware::Content::Library::Item::TransferStatus``   enumerated type  defines the transfer state of a file.
  # @!attribute [rw] waiting_for_transfer
  #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
  #     Indicates that a file has been defined for a library item and its content needs to be uploaded.
  # @!attribute [rw] transferring
  #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
  #     Indicates that data is being transferred to the file.
  # @!attribute [rw] ready
  #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
  #     Indicates that the file has been fully transferred and is ready to be used.
  # @!attribute [rw] validating
  #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
  #     Indicates that the file is being validated (checksum, type adapters).
  # @!attribute [rw] error
  #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
  #     Indicates that there was an error transferring or validating the file.
  class TransferStatus < VAPI::Bindings::VapiEnum
    class << self
      # Holds (gets or creates) the binding type metadata for this enumeration type.
      # @scope class
      # @return [VAPI::Bindings::EnumType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::EnumType.new(
          'com.vmware.content.library.item.transfer_status',
          TransferStatus
        )
      end

      # Converts from a string value (perhaps off the wire) to an instance
      # of this enum type.
      # @param value [String] the actual value of the enum instance
      # @return [TransferStatus] the instance found for the value, otherwise
      #         an unknown instance will be built for the value
      def from_string(value)
        const_get(value)
      rescue NameError
        TransferStatus.send(:new, 'UNKNOWN', value)
      end
    end

    # Constructs a new instance.
    # @param value [String] the actual value of the enum instance
    # @param unknown [String] the unknown value when value is 'UKNOWN'
    def initialize(value, unknown = nil)
      super(self.class.binding_type, value, unknown)
    end

    private_class_method :new

    # @!attribute [rw] waiting_for_transfer
    #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
    #     Indicates that a file has been defined for a library item and its content needs to be uploaded.
    WAITING_FOR_TRANSFER = TransferStatus.send(:new, 'WAITING_FOR_TRANSFER')

    # @!attribute [rw] transferring
    #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
    #     Indicates that data is being transferred to the file.
    TRANSFERRING = TransferStatus.send(:new, 'TRANSFERRING')

    # @!attribute [rw] ready
    #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
    #     Indicates that the file has been fully transferred and is ready to be used.
    READY = TransferStatus.send(:new, 'READY')

    # @!attribute [rw] validating
    #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
    #     Indicates that the file is being validated (checksum, type adapters).
    VALIDATING = TransferStatus.send(:new, 'VALIDATING')

    # @!attribute [rw] error
    #     @return [Com::Vmware::Content::Library::Item::TransferStatus]
    #     Indicates that there was an error transferring or validating the file.
    ERROR = TransferStatus.send(:new, 'ERROR')
  end
end
