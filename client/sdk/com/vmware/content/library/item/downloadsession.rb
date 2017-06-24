#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.content.library.item.downloadsession.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Content
            module Library
                module Item
                    module Downloadsession
                    end
                end
            end
        end
    end
end

# The Content Library Item Download Session  package  provides  classes  and  classs  for downloading files in a session.
module Com::Vmware::Content::Library::Item::Downloadsession

    # The  ``Com::Vmware::Content::Library::Item::Downloadsession::File``   class  provides  methods  for accessing files within a download session.  
    # 
    #  After a download session is created against a library item, the  ``Com::Vmware::Content::Library::Item::Downloadsession::File``   class  can be used to retrieve all downloadable content within the library item. Since the content may not be available immediately in a downloadable form on the server side, the client will have to prepare the file and wait for the file status to become   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.PREPARED`  .  
    # 
    #  See   :class:`Com::Vmware::Content::Library::Item::DownloadSession`  .
    class File < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.content.library.item.downloadsession.file')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'download_session_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.item.DownloadSession'),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Downloadsession::File::Info')),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),

            },
            [],
            [])
        @@prepare_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('prepare', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'download_session_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.item.DownloadSession'),
                'file_name' => VAPI::Bindings::StringType.instance,
                'endpoint_type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType')),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Downloadsession::File::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'download_session_id' => VAPI::Bindings::IdType.new(resource_types='com.vmware.content.library.item.DownloadSession'),
                'file_name' => VAPI::Bindings::StringType.instance,
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Downloadsession::File::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'prepare' => @@prepare_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Lists the information of all the files in the library item associated with the download session.
        #
        # @param download_session_id [String]
        #      Identifier of the download session.
        # @return [Array<Com::Vmware::Content::Library::Item::Downloadsession::File::Info>]
        #     The  list  of   :class:`Com::Vmware::Content::Library::Item::Downloadsession::File::Info`   instances.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the download session associated with  ``download_session_id``  doesn't exist.
        def list(download_session_id)
            invoke_with_info(@@list_info, {
                'download_session_id' => download_session_id,
            })
        end


        # Requests a file to be prepared for download.
        #
        # @param download_session_id [String]
        #      Identifier of the download session.
        # @param file_name [String]
        #      Name of the file requested for download.
        # @param endpoint_type [Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType, nil]
        #      Endpoint type request, one of  ``HTTPS``, ``DIRECT`` . This will determine the type of the   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::Info.download_endpoint`   that is generated when the file is prepared. The   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType.DIRECT`   is only available to users who have the ContentLibrary.ReadStorage privilege.
        #     If not specified the default is   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType.HTTPS`  .
        # @return [Com::Vmware::Content::Library::Item::Downloadsession::File::Info]
        #     File information containing the status of the request and the download link to the file.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the download session does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if there is no file with the specified  ``file_name`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #      if the the download session wasn't created with the ContentLibrary.ReadStorage privilege and the caller requested a   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType.DIRECT`   endpoint type.
        def prepare(download_session_id, file_name, endpoint_type=nil)
            invoke_with_info(@@prepare_info, {
                'download_session_id' => download_session_id,
                'file_name' => file_name,
                'endpoint_type' => endpoint_type,
            })
        end


        # Retrieves file download information for a specific file.
        #
        # @param download_session_id [String]
        #      Identifier of the download session.
        # @param file_name [String]
        #      Name of the file requested.
        # @return [Com::Vmware::Content::Library::Item::Downloadsession::File::Info]
        #     The   :class:`Com::Vmware::Content::Library::Item::Downloadsession::File::Info`   instance containing the status of the file and its download link if available.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #      if the download session associated with  ``download_session_id``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #      if there is no file with the specified  ``file_name`` .
        def get(download_session_id, file_name)
            invoke_with_info(@@get_info, {
                'download_session_id' => download_session_id,
                'file_name' => file_name,
            })
        end



        # The  ``Com::Vmware::Content::Library::Item::Downloadsession::File::Info``   class  defines the downloaded file.
        # @!attribute [rw] name
        #     @return [String]
        #     The name of the file.
        # @!attribute [rw] size
        #     @return [Fixnum, nil]
        #     The file size, in bytes.
        #     This  field  may not be available immediately. It is guaranteed to be set when the client finishes downloading the file.
        # @!attribute [rw] bytes_transferred
        #     @return [Fixnum]
        #     The number of bytes that have been transferred by the server so far for making this file prepared for download. This value may stay at zero till the client starts downloading the file.
        # @!attribute [rw] status
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
        #     The preparation status ( ``UNPREPARED``, ``PREPARE_REQUESTED``, ``PREPARING``, ``PREPARED``, ``ERROR`` ) of the file.
        # @!attribute [rw] download_endpoint
        #     @return [Com::Vmware::Content::Library::Item::TransferEndpoint, nil]
        #     Endpoint at which the file is available for download. The value is valid only when the   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::Info.status`   is   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.PREPARED`  .
        #     This  field  won't be set until the file status is   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.PREPARED`  .
        # @!attribute [rw] checksum_info
        #     @return [Com::Vmware::Content::Library::Item::File::ChecksumInfo, nil]
        #     The checksum information of the file. When the download is complete, you can retrieve the checksum from the   :func:`Com::Vmware::Content::Library::Item::Downloadsession::File.get`    method  to verify the checksum for the downloaded file.
        #     The checksum is always calculated for the downloaded file, but this  field  won't be set until the download is complete.
        # @!attribute [rw] error_message
        #     @return [Com::Vmware::Vapi::Std::LocalizableMessage, nil]
        #     Error message for a failed preparation when the prepare status is   :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.ERROR`  .
        #     This  field  won't be set unless there was an error with the file transfer.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.content.library.item.downloadsession.file.info',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'bytes_transferred' => VAPI::Bindings::IntegerType.instance,
                            'status' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus'),
                            'download_endpoint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::TransferEndpoint')),
                            'checksum_info' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Content::Library::Item::File::ChecksumInfo')),
                            'error_message' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :size,
                          :bytes_transferred,
                          :status,
                          :download_endpoint,
                          :checksum_info,
                          :error_message

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus``   enumerated type  defines the state of the file in preparation for download.
        # @!attribute [rw] unprepared
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
        #     The file hasn't been requested for preparation.
        # @!attribute [rw] prepare_requested
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
        #     A prepare has been requested, however the server hasn't started the preparation yet.
        # @!attribute [rw] preparing
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
        #     A prepare has been requested and the file is in the process of being prepared.
        # @!attribute [rw] prepared
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
        #     Prepare succeeded. The file is ready for download.
        # @!attribute [rw] error
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
        #     Prepare failed.
        class PrepareStatus < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.content.library.item.downloadsession.file.prepare_status',
                        PrepareStatus)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [PrepareStatus] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        PrepareStatus.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] unprepared
            #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
            #     The file hasn't been requested for preparation.
            UNPREPARED = PrepareStatus.new('UNPREPARED')

            # @!attribute [rw] prepare_requested
            #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
            #     A prepare has been requested, however the server hasn't started the preparation yet.
            PREPARE_REQUESTED = PrepareStatus.new('PREPARE_REQUESTED')

            # @!attribute [rw] preparing
            #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
            #     A prepare has been requested and the file is in the process of being prepared.
            PREPARING = PrepareStatus.new('PREPARING')

            # @!attribute [rw] prepared
            #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
            #     Prepare succeeded. The file is ready for download.
            PREPARED = PrepareStatus.new('PREPARED')

            # @!attribute [rw] error
            #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus]
            #     Prepare failed.
            ERROR = PrepareStatus.new('ERROR')

        end


        # The  ``Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType``   enumerated type  defines the types of endpoints used to download the file.
        # @!attribute [rw] https
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType]
        #     An https download endpoint.
        # @!attribute [rw] direct
        #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType]
        #     A direct download endpoint indicating the location of the file on storage. The caller is responsible for retrieving the file from the storage location directly.
        class EndpointType < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.content.library.item.downloadsession.file.endpoint_type',
                        EndpointType)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [EndpointType] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        EndpointType.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] https
            #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType]
            #     An https download endpoint.
            HTTPS = EndpointType.new('HTTPS')

            # @!attribute [rw] direct
            #     @return [Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType]
            #     A direct download endpoint indicating the location of the file on storage. The caller is responsible for retrieving the file from the storage location directly.
            DIRECT = EndpointType.new('DIRECT')

        end


    end


end
