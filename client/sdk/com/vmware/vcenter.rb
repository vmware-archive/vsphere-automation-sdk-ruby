#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Vcenter
        end
    end
end

# The  ``com.vmware.vcenter``   package  provides  classs  for managing VMware vSphere environments. The  package  is available starting in vSphere 6.5.
module Com::Vmware::Vcenter

    # The  ``Com::Vmware::Vcenter::Cluster``   class  provides  methods  to manage clusters in the vCenter Server.
    class Cluster < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.cluster')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Cluster::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Cluster::Summary')),
            {
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'cluster' => VAPI::Bindings::IdType.new(resource_types='ClusterComputeResource'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Cluster::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'ClusterComputeResource'


        # Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the   :class:`Com::Vmware::Vcenter::Cluster::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::Cluster::FilterSpec, nil]
        #     Specification of matching clusters for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::Cluster::FilterSpec`   with all  fields   nil  which means all clusters match the filter.
        # @return [Array<Com::Vmware::Vcenter::Cluster::Summary>]
        #     Commonly used information about the clusters matching the   :class:`Com::Vmware::Vcenter::Cluster::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 clusters match the   :class:`Com::Vmware::Vcenter::Cluster::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end


        # Retrieves information about the cluster corresponding to  ``cluster`` .
        #
        # @param cluster [String]
        #     Identifier of the cluster.
        # @return [Com::Vmware::Vcenter::Cluster::Info]
        #     The   :class:`Com::Vmware::Vcenter::Cluster::Info`   instances that corresponds to the  ``cluster`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if there is no cluster associated with  ``cluster``  in the system.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the session id is missing from the request or the corresponding session object cannot be found.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't not have the required privileges.
        def get(cluster)
            invoke_with_info(@@get_info, {
                'cluster' => cluster,
            })
        end



        # The  ``Com::Vmware::Vcenter::Cluster::FilterSpec``   class  contains  fields  used to filter the results when listing clusters (see   :func:`Com::Vmware::Vcenter::Cluster.list`  ). If multiple  fields  are specified, only clusters matching all of the  fields  match the filter.
        # @!attribute [rw] clusters
        #     @return [Set<String>, nil]
        #     Identifiers of clusters that can match the filter.
        #     If  nil  or empty, clusters with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that clusters must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Cluster::Info.name`  ).
        #     If  nil  or empty, clusters with any name match the filter.
        # @!attribute [rw] folders
        #     @return [Set<String>, nil]
        #     Folders that must contain the cluster for the cluster to match the filter.
        #     If  nil  or empty, clusters in any folder match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Datacenters that must contain the cluster for the cluster to match the filter.
        #     If  nil  or empty, clusters in any datacenter match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.cluster.filter_spec',
                        {
                            'clusters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :clusters,
                          :names,
                          :folders,
                          :datacenters

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Cluster::Summary``   class  contains commonly used information about a cluster in vCenter Server.
        # @!attribute [rw] cluster
        #     @return [String]
        #     Identifier of the cluster.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the cluster.
        # @!attribute [rw] ha_enabled
        #     @return [Boolean]
        #     Flag indicating whether the vSphere HA feature is enabled for the cluster.
        # @!attribute [rw] drs_enabled
        #     @return [Boolean]
        #     Flag indicating whether the vSphere DRS service is enabled for the cluster.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.cluster.summary',
                        {
                            'cluster' => VAPI::Bindings::IdType.new(resource_types='ClusterComputeResource'),
                            'name' => VAPI::Bindings::StringType.instance,
                            'ha_enabled' => VAPI::Bindings::BooleanType.instance,
                            'drs_enabled' => VAPI::Bindings::BooleanType.instance,
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :cluster,
                          :name,
                          :ha_enabled,
                          :drs_enabled

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Cluster::Info``   class  contains information about a cluster in vCenter Server.
        # @!attribute [rw] name
        #     @return [String]
        #     The name of the cluster
        # @!attribute [rw] resource_pool
        #     @return [String]
        #     Identifier of the root resource pool of the cluster
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.cluster.info',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'resource_pool' => VAPI::Bindings::IdType.new(resource_types='ResourcePool'),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :resource_pool

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Vcenter::Datacenter``   class  provides  methods  to manage datacenters in the vCenter Server.
    class Datacenter < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.datacenter')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datacenter::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='Datacenter'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'datacenter' => VAPI::Bindings::IdType.new(resource_types='Datacenter'),
                'force' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datacenter::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datacenter::Summary')),
            {
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'datacenter' => VAPI::Bindings::IdType.new(resource_types='Datacenter'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datacenter::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'create' => @@create_info,
            'delete' => @@delete_info,
            'list' => @@list_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'Datacenter'


        # Create a new datacenter in the vCenter inventory
        #
        # @param spec [Com::Vmware::Vcenter::Datacenter::CreateSpec]
        #     Specification for the new datacenter to be created.
        # @return [String]
        #     The identifier of the newly created datacenter
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
        #     if the datacenter with the same name is already present.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the datacenter name is empty or invalid as per the underlying implementation.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the folder is not specified and the system cannot choose a suitable one.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the datacenter folder cannot be found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def create(spec)
            invoke_with_info(@@create_info, {
                'spec' => spec,
            })
        end


        # Delete an empty datacenter from the vCenter Server
        #
        # @param datacenter [String]
        #     Identifier of the datacenter to be deleted.
        # @param force [Boolean, nil]
        #     If true, delete the datacenter even if it is not empty.
        #     If  nil  a   :class:`Com::Vmware::Vapi::Std::Errors::ResourceInUse`    error  will be reported if the datacenter is not empty. This is the equivalent of passing the value false.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if there is no datacenter associated with  ``datacenter``  in the system.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
        #     if the datacenter associated with  ``datacenter``  is not empty.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def delete(datacenter, force=nil)
            invoke_with_info(@@delete_info, {
                'datacenter' => datacenter,
                'force' => force,
            })
        end


        # Returns information about at most 1000 visible (subject to permission checks) datacenters in vCenter matching the   :class:`Com::Vmware::Vcenter::Datacenter::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::Datacenter::FilterSpec, nil]
        #     Specification of matching datacenters for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::Datacenter::FilterSpec`   with all  fields   nil  which means all datacenters match the filter.
        # @return [Array<Com::Vmware::Vcenter::Datacenter::Summary>]
        #     Commonly used information about the datacenters matching the   :class:`Com::Vmware::Vcenter::Datacenter::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 datacenters match the   :class:`Com::Vmware::Vcenter::Datacenter::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end


        # Retrieves information about the datacenter corresponding to  ``datacenter`` .
        #
        # @param datacenter [String]
        #     Identifier of the datacenter.
        # @return [Com::Vmware::Vcenter::Datacenter::Info]
        #     The   :class:`Com::Vmware::Vcenter::Datacenter::Info`   instances that corresponds to the  ``datacenter`` .
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if there is no datacenter associated with  ``datacenter``  in the system.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(datacenter)
            invoke_with_info(@@get_info, {
                'datacenter' => datacenter,
            })
        end



        # The  ``Com::Vmware::Vcenter::Datacenter::CreateSpec``   class  defines the information used to create a datacenter.
        # @!attribute [rw] name
        #     @return [String]
        #     The name of the datacenter to be created.
        # @!attribute [rw] folder
        #     @return [String, nil]
        #     Datacenter folder in which the new datacenter should be created.
        #     This  field  is currently required. In the future, if this  field  is  nil , the system will attempt to choose a suitable folder for the datacenter; if a folder cannot be chosen, the datacenter creation operation will fail.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.datacenter.create_spec',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'folder' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :folder

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Datacenter::FilterSpec``   class  contains  fields  used to filter the results when listing datacenters (see   :func:`Com::Vmware::Vcenter::Datacenter.list`  ). If multiple  fields  are specified, only datacenters matching all of the  fields  match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Identifiers of datacenters that can match the filter.
        #     If  nil  or empty, datacenters with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that datacenters must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Datacenter::Info.name`  ).
        #     If  nil  or empty, datacenters with any name match the filter.
        # @!attribute [rw] folders
        #     @return [Set<String>, nil]
        #     Folders that must contain the datacenters for the datacenter to match the filter.
        #     If  nil  or empty, datacenters in any folder match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.datacenter.filter_spec',
                        {
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :datacenters,
                          :names,
                          :folders

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Datacenter::Summary``   class  contains commonly used information about a datacenter in vCenter Server.
        # @!attribute [rw] datacenter
        #     @return [String]
        #     Identifier of the datacenter.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the datacenter.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.datacenter.summary',
                        {
                            'datacenter' => VAPI::Bindings::IdType.new(resource_types='Datacenter'),
                            'name' => VAPI::Bindings::StringType.instance,
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :datacenter,
                          :name

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Datacenter::Info``   class  contains information about a datacenter in vCenter Server.
        # @!attribute [rw] name
        #     @return [String]
        #     The name of the datacenter.
        # @!attribute [rw] datastore_folder
        #     @return [String]
        #     The root datastore folder associated with the datacenter.
        # @!attribute [rw] host_folder
        #     @return [String]
        #     The root host and cluster folder associated with the datacenter.
        # @!attribute [rw] network_folder
        #     @return [String]
        #     The root network folder associated with the datacenter.
        # @!attribute [rw] vm_folder
        #     @return [String]
        #     The root virtual machine folder associated with the datacenter.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.datacenter.info',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'datastore_folder' => VAPI::Bindings::IdType.new(resource_types='Folder'),
                            'host_folder' => VAPI::Bindings::IdType.new(resource_types='Folder'),
                            'network_folder' => VAPI::Bindings::IdType.new(resource_types='Folder'),
                            'vm_folder' => VAPI::Bindings::IdType.new(resource_types='Folder'),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :datastore_folder,
                          :host_folder,
                          :network_folder,
                          :vm_folder

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  Datastore   class  provides  methods  for manipulating a datastore.
    class Datastore < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.datastore')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'datastore' => VAPI::Bindings::IdType.new(resource_types='Datastore'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datastore::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datastore::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datastore::Summary')),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'list' => @@list_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'Datastore'


        # Retrieves information about the datastore indicated by  ``datastore`` .
        #
        # @param datastore [String]
        #     Identifier of the datastore for which information should be retrieved.
        # @return [Com::Vmware::Vcenter::Datastore::Info]
        #     information about the datastore.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the datastore indicated by  ``datastore``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(datastore)
            invoke_with_info(@@get_info, {
                'datastore' => datastore,
            })
        end


        # Returns information about at most 1000 visible (subject to permission checks) datastores in vCenter matching the   :class:`Com::Vmware::Vcenter::Datastore::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::Datastore::FilterSpec, nil]
        #     Specification of matching datastores for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::Datastore::FilterSpec`   with all  fields   nil  which means all datastores match the filter.
        # @return [Array<Com::Vmware::Vcenter::Datastore::Summary>]
        #     Commonly used information about the datastores matching the   :class:`Com::Vmware::Vcenter::Datastore::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the   :attr:`Com::Vmware::Vcenter::Datastore::FilterSpec.types`    field  contains a value that is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the   :attr:`Com::Vmware::Vcenter::Datastore::FilterSpec.types`    field  contains a value that is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 datastores match the   :class:`Com::Vmware::Vcenter::Datastore::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end



        # The  ``Com::Vmware::Vcenter::Datastore::Info``   class  contains information about a datastore.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the datastore.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     Type ( ``VMFS``, ``NFS``, ``NFS41``, ``CIFS``, ``VSAN``, ``VFFS``, ``VVOL`` ) of the datastore.
        # @!attribute [rw] accessible
        #     @return [Boolean]
        #     Whether or not this datastore is accessible.
        # @!attribute [rw] free_space
        #     @return [Fixnum, nil]
        #     Available space of this datastore, in bytes.  
        #     
        #      The server periodically updates this value.
        #     This  field  will be  nil  if the available space of this datastore is not known.
        # @!attribute [rw] multiple_host_access
        #     @return [Boolean]
        #     Whether or not ore than one host in the datacenter has been configured with access to the datastore.
        # @!attribute [rw] thin_provisioning_supported
        #     @return [Boolean]
        #     Whether or not the datastore supports thin provisioning on a per file basis. When thin provisioning is used, backing storage is lazily allocated.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.datastore.info',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datastore::Type'),
                            'accessible' => VAPI::Bindings::BooleanType.instance,
                            'free_space' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'multiple_host_access' => VAPI::Bindings::BooleanType.instance,
                            'thin_provisioning_supported' => VAPI::Bindings::BooleanType.instance,
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :type,
                          :accessible,
                          :free_space,
                          :multiple_host_access,
                          :thin_provisioning_supported

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Datastore::FilterSpec``   class  contains  fields  used to filter the results when listing datastores (see   :func:`Com::Vmware::Vcenter::Datastore.list`  ). If multiple  fields  are specified, only datastores matching all of the  fields  match the filter.
        # @!attribute [rw] datastores
        #     @return [Set<String>, nil]
        #     Identifiers of datastores that can match the filter.
        #     If  nil  or empty, datastores with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that datastores must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Datastore::Info.name`  ).
        #     If  nil  or empty, datastores with any name match the filter.
        # @!attribute [rw] types
        #     @return [Set<Com::Vmware::Vcenter::Datastore::Type>, nil]
        #     Types that datastores must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Datastore::Summary.type`  ).
        #     If  nil  or empty, datastores with any type match the filter.
        # @!attribute [rw] folders
        #     @return [Set<String>, nil]
        #     Folders that must contain the datastore for the datastore to match the filter.
        #     If  nil  or empty, datastores in any folder match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Datacenters that must contain the datastore for the datastore to match the filter.
        #     If  nil  or empty, datastores in any datacenter match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.datastore.filter_spec',
                        {
                            'datastores' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'types' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datastore::Type'))),
                            'folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :datastores,
                          :names,
                          :types,
                          :folders,
                          :datacenters

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Datastore::Summary``   class  contains commonly used information about a datastore.
        # @!attribute [rw] datastore
        #     @return [String]
        #     Identifier of the datastore.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the datastore.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     Type ( ``VMFS``, ``NFS``, ``NFS41``, ``CIFS``, ``VSAN``, ``VFFS``, ``VVOL`` ) of the datatore.
        # @!attribute [rw] free_space
        #     @return [Fixnum, nil]
        #     Available space of this datastore, in bytes.  
        #     
        #      The server periodically updates this value.
        #     This  field  will be  nil  if the available space of this datastore is not known.
        # @!attribute [rw] capacity
        #     @return [Fixnum, nil]
        #     Capacity of this datastore, in bytes.  
        #     
        #      The server periodically updates this value.
        #     This  field  will be  nil  if the capacity of this datastore is not known.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.datastore.summary',
                        {
                            'datastore' => VAPI::Bindings::IdType.new(resource_types='Datastore'),
                            'name' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Datastore::Type'),
                            'free_space' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'capacity' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :datastore,
                          :name,
                          :type,
                          :free_space,
                          :capacity

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Datastore::Type``   enumerated type  defines the supported types of vCenter datastores.
        # @!attribute [rw] vmfs
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     VMware File System (ESX Server only).
        # @!attribute [rw] nfs
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     Network file system v3 (linux & esx servers only).
        # @!attribute [rw] nf_s41
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     Network file system v4.1 (linux & esx servers only).
        # @!attribute [rw] cifs
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     Common Internet File System.
        # @!attribute [rw] vsan
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     Virtual SAN (ESX Server only).
        # @!attribute [rw] vffs
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     Flash Read Cache (ESX Server only).
        # @!attribute [rw] vvol
        #     @return [Com::Vmware::Vcenter::Datastore::Type]
        #     vSphere Virtual Volume (ESX Server only).
        class Type < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.datastore.type',
                        Type)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [Type] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        Type.new('UNKNOWN', value)
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

            # @!attribute [rw] vmfs
            #     @return [Com::Vmware::Vcenter::Datastore::Type]
            #     VMware File System (ESX Server only).
            VMFS = Type.new('VMFS')

            # @!attribute [rw] nfs
            #     @return [Com::Vmware::Vcenter::Datastore::Type]
            #     Network file system v3 (linux & esx servers only).
            NFS = Type.new('NFS')

            # @!attribute [rw] nf_s41
            #     @return [Com::Vmware::Vcenter::Datastore::Type]
            #     Network file system v4.1 (linux & esx servers only).
            NF_S41 = Type.new('NF_S41')

            # @!attribute [rw] cifs
            #     @return [Com::Vmware::Vcenter::Datastore::Type]
            #     Common Internet File System.
            CIFS = Type.new('CIFS')

            # @!attribute [rw] vsan
            #     @return [Com::Vmware::Vcenter::Datastore::Type]
            #     Virtual SAN (ESX Server only).
            VSAN = Type.new('VSAN')

            # @!attribute [rw] vffs
            #     @return [Com::Vmware::Vcenter::Datastore::Type]
            #     Flash Read Cache (ESX Server only).
            VFFS = Type.new('VFFS')

            # @!attribute [rw] vvol
            #     @return [Com::Vmware::Vcenter::Datastore::Type]
            #     vSphere Virtual Volume (ESX Server only).
            VVOL = Type.new('VVOL')

        end


    end


    # The  Folder   class  provides  methods  for manipulating a vCenter Server folder.
    class Folder < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.folder')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Folder::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Folder::Summary')),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'Folder'


        # Returns information about at most 1000 visible (subject to permission checks) folders in vCenter matching the   :class:`Com::Vmware::Vcenter::Folder::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::Folder::FilterSpec, nil]
        #     Specification of matching folders for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::Folder::FilterSpec`   with all  fields   nil  which means all folders match the filter.
        # @return [Array<Com::Vmware::Vcenter::Folder::Summary>]
        #     Commonly used information about the folders matching the   :class:`Com::Vmware::Vcenter::Folder::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the   :attr:`Com::Vmware::Vcenter::Folder::FilterSpec.type`    field  contains a value that is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 folders match the   :class:`Com::Vmware::Vcenter::Folder::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end



        # The  ``Com::Vmware::Vcenter::Folder::FilterSpec``   class  contains  fields  used to filter the results when listing folders (see   :func:`Com::Vmware::Vcenter::Folder.list`  ). If multiple  fields  are specified, only folders matching all of the  fields  match the filter.
        # @!attribute [rw] folders
        #     @return [Set<String>, nil]
        #     Identifiers of folders that can match the filter.
        #     If  nil  or empty, folders with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that folders must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Folder::Summary.name`  ).
        #     If  nil  or empty, folders with any name match the filter.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Folder::Type, nil]
        #     Type that folders must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Folder::Summary.type`  ).
        #     If  nil , folders with any type match the filter.
        # @!attribute [rw] parent_folders
        #     @return [Set<String>, nil]
        #     Folders that must contain the folder for the folder to match the filter.
        #     If  nil  or empty, folder in any folder match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Datacenters that must contain the folder for the folder to match the filter.
        #     If  nil  or empty, folder in any datacenter match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.folder.filter_spec',
                        {
                            'folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Folder::Type')),
                            'parent_folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :folders,
                          :names,
                          :type,
                          :parent_folders,
                          :datacenters

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Folder::Summary``   class  contains commonly used information about a folder.
        # @!attribute [rw] folder
        #     @return [String]
        #     Identifier of the folder.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the vCenter Server folder.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Folder::Type]
        #     Type ( ``DATACENTER``, ``DATASTORE``, ``HOST``, ``NETWORK``, ``VIRTUAL_MACHINE`` ) of the vCenter Server folder.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.folder.summary',
                        {
                            'folder' => VAPI::Bindings::IdType.new(resource_types='Folder'),
                            'name' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Folder::Type'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :folder,
                          :name,
                          :type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Folder::Type``   enumerated type  defines the type of a vCenter Server folder. The type of a folder determines what what kinds of children can be contained in the folder.
        # @!attribute [rw] datacenter
        #     @return [Com::Vmware::Vcenter::Folder::Type]
        #     A folder that can contain datacenters.
        # @!attribute [rw] datastore
        #     @return [Com::Vmware::Vcenter::Folder::Type]
        #     A folder that can contain datastores.
        # @!attribute [rw] host
        #     @return [Com::Vmware::Vcenter::Folder::Type]
        #     A folder that can contain compute resources (hosts and clusters).
        # @!attribute [rw] network
        #     @return [Com::Vmware::Vcenter::Folder::Type]
        #     A folder that can contain networkds.
        # @!attribute [rw] virtual_machine
        #     @return [Com::Vmware::Vcenter::Folder::Type]
        #     A folder that can contain virtual machines.
        class Type < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.folder.type',
                        Type)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [Type] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        Type.new('UNKNOWN', value)
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

            # @!attribute [rw] datacenter
            #     @return [Com::Vmware::Vcenter::Folder::Type]
            #     A folder that can contain datacenters.
            DATACENTER = Type.new('DATACENTER')

            # @!attribute [rw] datastore
            #     @return [Com::Vmware::Vcenter::Folder::Type]
            #     A folder that can contain datastores.
            DATASTORE = Type.new('DATASTORE')

            # @!attribute [rw] host
            #     @return [Com::Vmware::Vcenter::Folder::Type]
            #     A folder that can contain compute resources (hosts and clusters).
            HOST = Type.new('HOST')

            # @!attribute [rw] network
            #     @return [Com::Vmware::Vcenter::Folder::Type]
            #     A folder that can contain networkds.
            NETWORK = Type.new('NETWORK')

            # @!attribute [rw] virtual_machine
            #     @return [Com::Vmware::Vcenter::Folder::Type]
            #     A folder that can contain virtual machines.
            VIRTUAL_MACHINE = Type.new('VIRTUAL_MACHINE')

        end


    end


    # The  ``Com::Vmware::Vcenter::Host``   class  provides  methods  to manage hosts in the vCenter Server.
    class Host < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.host')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Host::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='HostSystem'),
            {
                'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.invalid_element_type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidElementType'),
                'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'host' => VAPI::Bindings::IdType.new(resource_types='HostSystem'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Host::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Host::Summary')),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@connect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('connect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'host' => VAPI::Bindings::IdType.new(resource_types='HostSystem'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@disconnect_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('disconnect', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'host' => VAPI::Bindings::IdType.new(resource_types='HostSystem'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.already_in_desired_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState'),
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'create' => @@create_info,
            'delete' => @@delete_info,
            'list' => @@list_info,
            'connect' => @@connect_info,
            'disconnect' => @@disconnect_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'HostSystem'


        # Add a new standalone host in the vCenter inventory. The newly connected host will be in connected state. The vCenter Server will verify the SSL certificate before adding the host to its inventory. In the case where the SSL certificate cannot be verified because the Certificate Authority is not recognized or the certificate is self signed, the vCenter Server will fall back to thumbprint verification mode as defined by   :class:`Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification`  .
        #
        # @param spec [Com::Vmware::Vcenter::Host::CreateSpec]
        #     Specification for the new host to be created.
        # @return [String]
        #     The newly created identifier of the host in vCenter.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
        #     if the host with the same name is already present.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if installation of VirtualCenter agent on a host fails.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the host name is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the host folder is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the SSL thumbprint specified is invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidElementType]
        #     if the host folder id does not support vSphere compute resource as its children type.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
        #     if the host is already being managed by another vCenter Server
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if there are not enough licenses to add the host.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user name or password for the administration account on the host are invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
        #     if the software version on the host is not supported.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def create(spec)
            invoke_with_info(@@create_info, {
                'spec' => spec,
            })
        end


        # Remove a standalone host from the vCenter Server.
        #
        # @param host [String]
        #     Identifier of the host to be deleted.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if there is no host associated with  ``host``  in the system.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
        #     if the host associated with  ``host``  is in a vCenter cluster
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def delete(host)
            invoke_with_info(@@delete_info, {
                'host' => host,
            })
        end


        # Returns information about at most 1000 visible (subject to permission checks) hosts in vCenter matching the   :class:`Com::Vmware::Vcenter::Host::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::Host::FilterSpec, nil]
        #     Specification of matching hosts for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::Host::FilterSpec`   with all  fields   nil  which means all hosts match the filter.
        # @return [Array<Com::Vmware::Vcenter::Host::Summary>]
        #     Commonly used information about the hosts matching the   :class:`Com::Vmware::Vcenter::Host::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the   :attr:`Com::Vmware::Vcenter::Host::FilterSpec.connection_states`    field  contains a value that is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 hosts match the   :class:`Com::Vmware::Vcenter::Host::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end


        # Connect to the host corresponding to  ``host``  previously added to the vCenter server.
        #
        # @param host [String]
        #     Identifier of the host to be reconnected.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the host associated with  ``host``  is already connected.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if there is no host associated with  ``host``  in the system.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def connect(host)
            invoke_with_info(@@connect_info, {
                'host' => host,
            })
        end


        # Disconnect the host corresponding to  ``host``  from the vCenter server
        #
        # @param host [String]
        #     Identifier of the host to be disconnected.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState]
        #     if the host associated with  ``host``  is already disconnected.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if there is no host associated with  ``host``  in the system.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def disconnect(host)
            invoke_with_info(@@disconnect_info, {
                'host' => host,
            })
        end



        # The  ``Com::Vmware::Vcenter::Host::CreateSpec``   class  defines the information used to create a host.
        # @!attribute [rw] hostname
        #     @return [String]
        #     The IP address or DNS resolvable name of the host.
        # @!attribute [rw] port
        #     @return [Fixnum, nil]
        #     The port of the host.
        #     If  nil , port 443 will be used.
        # @!attribute [rw] user_name
        #     @return [String]
        #     The administrator account on the host.
        # @!attribute [rw] password
        #     @return [String]
        #     The password for the administrator account on the host.
        # @!attribute [rw] folder
        #     @return [String, nil]
        #     Host and cluster folder in which the new standalone host should be created.
        #     This  field  is currently required. In the future, if this  field  is  nil , the system will attempt to choose a suitable folder for the host; if a folder cannot be chosen, the host creation operation will fail.
        # @!attribute [rw] thumbprint_verification
        #     @return [Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification]
        #     Type of host's SSL certificate verification to be done.
        # @!attribute [rw] thumbprint
        #     @return [String]
        #     The thumbprint of the SSL certificate, which the host is expected to have. The thumbprint is always computed using the SHA1 hash and is the string representation of that hash in the format: xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx where, 'x' represents a hexadecimal digit.
        #     This  field  is optional and it is only relevant when the value of  ``thumbprintVerification``  is   :attr:`Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification.THUMBPRINT`  .
        # @!attribute [rw] force_add
        #     @return [Boolean, nil]
        #     Whether host should be added to the vCenter Server even if it is being managed by another vCenter Server. The original vCenterServer loses connection to the host.
        #     If  nil , forceAdd is default to false.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.host.create_spec',
                        {
                            'hostname' => VAPI::Bindings::StringType.instance,
                            'port' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'user_name' => VAPI::Bindings::StringType.instance,
                            'password' => VAPI::Bindings::SecretType.instance,
                            'folder' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'thumbprint_verification' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification'),
                            'thumbprint' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'force_add' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :hostname,
                          :port,
                          :user_name,
                          :password,
                          :folder,
                          :thumbprint_verification,
                          :thumbprint,
                          :force_add

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end


            # The  ``Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification``   enumerated type  defines the thumbprint verification schemes for a host's SSL certificate.
            # @!attribute [rw] none
            #     @return [Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification]
            #     Accept the host's thumbprint without verifying it.
            # @!attribute [rw] thumbprint
            #     @return [Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification]
            #     Host's SSL certificate verified by checking its thumbprint against the specified thumbprint.
            class ThumbprintVerification < VAPI::Bindings::VapiEnum

                class << self
                    # Holds (gets or creates) the binding type metadata for this enumeration type.
                    # @scope class
                    # @return [VAPI::Bindings::EnumType] the binding type
                    def binding_type
                        @binding_type ||= VAPI::Bindings::EnumType.new(
                            'com.vmware.vcenter.host.create_spec.thumbprint_verification',
                            ThumbprintVerification)
                    end

                    # Converts from a string value (perhaps off the wire) to an instance
                    # of this enum type.
                    # @param value [String] the actual value of the enum instance
                    # @return [ThumbprintVerification] the instance found for the value, otherwise
                    #         an unknown instance will be built for the value
                    def from_string(value)
                        begin
                            const_get(value)
                        rescue NameError
                            ThumbprintVerification.new('UNKNOWN', value)
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

                # @!attribute [rw] none
                #     @return [Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification]
                #     Accept the host's thumbprint without verifying it.
                NONE = ThumbprintVerification.new('NONE')

                # @!attribute [rw] thumbprint
                #     @return [Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification]
                #     Host's SSL certificate verified by checking its thumbprint against the specified thumbprint.
                THUMBPRINT = ThumbprintVerification.new('THUMBPRINT')

            end


        end


        # The  ``Com::Vmware::Vcenter::Host::FilterSpec``   class  contains  fields  used to filter the results when listing hosts (see   :func:`Com::Vmware::Vcenter::Host.list`  ). If multiple  fields  are specified, only hosts matching all of the  fields  match the filter.
        # @!attribute [rw] hosts
        #     @return [Set<String>, nil]
        #     Identifiers of hosts that can match the filter.
        #     If  nil  or empty, hosts with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that hosts must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Host::Summary.name`  ).
        #     If  nil  or empty, hosts with any name match the filter.
        # @!attribute [rw] folders
        #     @return [Set<String>, nil]
        #     Folders that must contain the hosts for the hosts to match the filter.
        #     If  nil  or empty, hosts in any folder match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Datacenters that must contain the hosts for the hosts to match the filter.
        #     If  nil  or empty, hosts in any datacenter match the filter.
        # @!attribute [rw] standalone
        #     @return [Boolean, nil]
        #     If true, only hosts that are not part of a cluster can match the filter, and if false, only hosts that are are part of a cluster can match the filter.
        #     If  nil  Hosts can match filter independent of whether they are part of a cluster or not. If this field is true and   :attr:`Com::Vmware::Vcenter::Host::FilterSpec.clusters`   os not empty, no hosts will match the filter.
        # @!attribute [rw] clusters
        #     @return [Set<String>, nil]
        #     Clusters that must contain the hosts for the hosts to match the filter.
        #     If  nil  or empty, hosts in any cluster and hosts that are not in a cluster match the filter. If this  field  is not empty and   :attr:`Com::Vmware::Vcenter::Host::FilterSpec.standalone`   is true, no hosts will match the filter.
        # @!attribute [rw] connection_states
        #     @return [Set<Com::Vmware::Vcenter::Host::ConnectionState>, nil]
        #     Connection states that a host must be in to match the filter (see   :attr:`Com::Vmware::Vcenter::Host::Summary.connection_state`  .
        #     If  nil  or empty, hosts in any connection state match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.host.filter_spec',
                        {
                            'hosts' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'standalone' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
                            'clusters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'connection_states' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Host::ConnectionState'))),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :hosts,
                          :names,
                          :folders,
                          :datacenters,
                          :standalone,
                          :clusters,
                          :connection_states

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Host::Summary``   class  contains commonly used information about a host in vCenter Server.
        # @!attribute [rw] host
        #     @return [String]
        #     Identifier of the host.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the host.
        # @!attribute [rw] connection_state
        #     @return [Com::Vmware::Vcenter::Host::ConnectionState]
        #     Connection status of the host
        # @!attribute [rw] power_state
        #     @return [Com::Vmware::Vcenter::Host::PowerState]
        #     Power state of the host
        #     This  field  is optional and it is only relevant when the value of  ``connectionState``  is   :attr:`Com::Vmware::Vcenter::Host::ConnectionState.CONNECTED`  .
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.host.summary',
                        {
                            'host' => VAPI::Bindings::IdType.new(resource_types='HostSystem'),
                            'name' => VAPI::Bindings::StringType.instance,
                            'connection_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Host::ConnectionState'),
                            'power_state' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Host::PowerState')),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :host,
                          :name,
                          :connection_state,
                          :power_state

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Host::ConnectionState``   enumerated type  defines the connection status of a host.
        # @!attribute [rw] connected
        #     @return [Com::Vmware::Vcenter::Host::ConnectionState]
        #     Host is connected to the vCenter Server
        # @!attribute [rw] disconnected
        #     @return [Com::Vmware::Vcenter::Host::ConnectionState]
        #     Host is disconnected from the vCenter Server
        # @!attribute [rw] not_responding
        #     @return [Com::Vmware::Vcenter::Host::ConnectionState]
        #     VirtualCenter is not receiving heartbeats from the server. The state automatically changes to connected once heartbeats are received again.
        class ConnectionState < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.host.connection_state',
                        ConnectionState)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [ConnectionState] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        ConnectionState.new('UNKNOWN', value)
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

            # @!attribute [rw] connected
            #     @return [Com::Vmware::Vcenter::Host::ConnectionState]
            #     Host is connected to the vCenter Server
            CONNECTED = ConnectionState.new('CONNECTED')

            # @!attribute [rw] disconnected
            #     @return [Com::Vmware::Vcenter::Host::ConnectionState]
            #     Host is disconnected from the vCenter Server
            DISCONNECTED = ConnectionState.new('DISCONNECTED')

            # @!attribute [rw] not_responding
            #     @return [Com::Vmware::Vcenter::Host::ConnectionState]
            #     VirtualCenter is not receiving heartbeats from the server. The state automatically changes to connected once heartbeats are received again.
            NOT_RESPONDING = ConnectionState.new('NOT_RESPONDING')

        end


        # The  ``Com::Vmware::Vcenter::Host::PowerState``   enumerated type  defines the power states of a host.
        # @!attribute [rw] powered_on
        #     @return [Com::Vmware::Vcenter::Host::PowerState]
        #     The host is powered on. A host that is entering standby mode is also in this state.
        # @!attribute [rw] powered_off
        #     @return [Com::Vmware::Vcenter::Host::PowerState]
        #     The host was specifically powered off by the user through vCenter server. This state is not a cetain state, because after vCenter server issues the command to power off the host, the host might crash, or kill all the processes but fail to power off.
        # @!attribute [rw] standby
        #     @return [Com::Vmware::Vcenter::Host::PowerState]
        #     The host was specifically put in standby mode, either explicitly by the user, or automatically by DPM. This state is not a cetain state, because after VirtualCenter issues the command to put the host in standby state, the host might crash, or kill all the processes but fail to enter standby mode. A host that is exiting standby mode is also in this state.
        class PowerState < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.host.power_state',
                        PowerState)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [PowerState] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        PowerState.new('UNKNOWN', value)
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

            # @!attribute [rw] powered_on
            #     @return [Com::Vmware::Vcenter::Host::PowerState]
            #     The host is powered on. A host that is entering standby mode is also in this state.
            POWERED_ON = PowerState.new('POWERED_ON')

            # @!attribute [rw] powered_off
            #     @return [Com::Vmware::Vcenter::Host::PowerState]
            #     The host was specifically powered off by the user through vCenter server. This state is not a cetain state, because after vCenter server issues the command to power off the host, the host might crash, or kill all the processes but fail to power off.
            POWERED_OFF = PowerState.new('POWERED_OFF')

            # @!attribute [rw] standby
            #     @return [Com::Vmware::Vcenter::Host::PowerState]
            #     The host was specifically put in standby mode, either explicitly by the user, or automatically by DPM. This state is not a cetain state, because after VirtualCenter issues the command to put the host in standby state, the host might crash, or kill all the processes but fail to enter standby mode. A host that is exiting standby mode is also in this state.
            STANDBY = PowerState.new('STANDBY')

        end


    end


    # The  Network   class  provides  methods  for manipulating a vCenter Server network.
    class Network < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.network')

        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Network::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Network::Summary')),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'list' => @@list_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'Network'


        # Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the   :class:`Com::Vmware::Vcenter::Network::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::Network::FilterSpec, nil]
        #     Specification of matching networks for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::Network::FilterSpec`   with all  fields   nil  which means all networks match the filter.
        # @return [Array<Com::Vmware::Vcenter::Network::Summary>]
        #     Commonly used information about the networks matching the   :class:`Com::Vmware::Vcenter::Network::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the   :attr:`Com::Vmware::Vcenter::Network::FilterSpec.types`    field  contains a value that is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 networks match the   :class:`Com::Vmware::Vcenter::Network::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end



        # The  ``Com::Vmware::Vcenter::Network::FilterSpec``   class  contains  fields  used to filter the results when listing networks (see   :func:`Com::Vmware::Vcenter::Network.list`  ). If multiple  fields  are specified, only networks matching all of the  fields  match the filter.
        # @!attribute [rw] networks
        #     @return [Set<String>, nil]
        #     Identifiers of networks that can match the filter.
        #     If  nil  or empty, networks with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that networks must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Network::Summary.name`  ).
        #     If  nil  or empty, networks with any name match the filter.
        # @!attribute [rw] types
        #     @return [Set<Com::Vmware::Vcenter::Network::Type>, nil]
        #     Types that networks must have to match the filter (see   :attr:`Com::Vmware::Vcenter::Network::Summary.type`  ).
        #     If  nil , networks with any type match the filter.
        # @!attribute [rw] folders
        #     @return [Set<String>, nil]
        #     Folders that must contain the network for the network to match the filter.
        #     If  nil  or empty, networks in any folder match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Datacenters that must contain the network for the network to match the filter.
        #     If  nil  or empty, networks in any datacenter match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.network.filter_spec',
                        {
                            'networks' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'types' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Network::Type'))),
                            'folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :networks,
                          :names,
                          :types,
                          :folders,
                          :datacenters

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::Network::Summary``   class  contains commonly used information about a network.
        # @!attribute [rw] network
        #     @return [String]
        #     Identifier of the network.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the network.
        # @!attribute [rw] type
        #     @return [Com::Vmware::Vcenter::Network::Type]
        #     Type ( ``STANDARD_PORTGROUP``, ``DISTRIBUTED_PORTGROUP``, ``OPAQUE_NETWORK`` ) of the vCenter Server network.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.network.summary',
                        {
                            'network' => VAPI::Bindings::IdType.new(resource_types='Network'),
                            'name' => VAPI::Bindings::StringType.instance,
                            'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Network::Type'),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :network,
                          :name,
                          :type

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end



        # The  ``Com::Vmware::Vcenter::Network::Type``   enumerated type  defines the type of a vCenter Server network. The type of a network can be used to determine what features it supports and which APIs can be used to find more information about the network or change its configuration.
        # @!attribute [rw] standard_portgroup
        #     @return [Com::Vmware::Vcenter::Network::Type]
        #     XXX: ESX based (created and managed on ESX)
        # @!attribute [rw] distributed_portgroup
        #     @return [Com::Vmware::Vcenter::Network::Type]
        #     XXX: vCenter based (create and managed through vCenter)
        # @!attribute [rw] opaque_network
        #     @return [Com::Vmware::Vcenter::Network::Type]
        #     A network for whose configuration is managed outside of vSphere. The identifer and name of the network is made available through vSphere so that host and virtual machine virtual ethernet devices can connect to them.
        class Type < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.vcenter.network.type',
                        Type)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [Type] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        Type.new('UNKNOWN', value)
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

            # @!attribute [rw] standard_portgroup
            #     @return [Com::Vmware::Vcenter::Network::Type]
            #     XXX: ESX based (created and managed on ESX)
            STANDARD_PORTGROUP = Type.new('STANDARD_PORTGROUP')

            # @!attribute [rw] distributed_portgroup
            #     @return [Com::Vmware::Vcenter::Network::Type]
            #     XXX: vCenter based (create and managed through vCenter)
            DISTRIBUTED_PORTGROUP = Type.new('DISTRIBUTED_PORTGROUP')

            # @!attribute [rw] opaque_network
            #     @return [Com::Vmware::Vcenter::Network::Type]
            #     A network for whose configuration is managed outside of vSphere. The identifer and name of the network is made available through vSphere so that host and virtual machine virtual ethernet devices can connect to them.
            OPAQUE_NETWORK = Type.new('OPAQUE_NETWORK')

        end


    end


    # The  ResourcePool   class  provides  methods  for manipulating a vCenter Server resource pool.  
    # 
    #  This  class  does not include virtual appliances in the inventory of resource pools even though part of the behavior of a virtual appliance is to act like a resource pool.
    class ResourcePool < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.resource_pool')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'resource_pool' => VAPI::Bindings::IdType.new(resource_types='ResourcePool'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::ResourcePool::Info'),
            {
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::ResourcePool::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::ResourcePool::Summary')),
            {
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
            'list' => @@list_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end

        RESOURCE_TYPE = 'ResourcePool'


        # Retrieves information about the resource pool indicated by  ``resource_pool`` .
        #
        # @param resource_pool [String]
        #     Identifier of the resource pool for which information should be retrieved.
        # @return [Com::Vmware::Vcenter::ResourcePool::Info]
        #     information about the resource pool.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the resource pool indicated by  ``resource_pool``  does not exist.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(resource_pool)
            invoke_with_info(@@get_info, {
                'resource_pool' => resource_pool,
            })
        end


        # Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the   :class:`Com::Vmware::Vcenter::ResourcePool::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::ResourcePool::FilterSpec, nil]
        #     Specification of matching resource pools for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::ResourcePool::FilterSpec`   with all  fields   nil  which means all resource pools match the filter.
        # @return [Array<Com::Vmware::Vcenter::ResourcePool::Summary>]
        #     Commonly used information about the resource pools matching the   :class:`Com::Vmware::Vcenter::ResourcePool::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 resource pools match the   :class:`Com::Vmware::Vcenter::ResourcePool::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end



        # The  ``Com::Vmware::Vcenter::ResourcePool::Info``   class  contains information about a resource pool.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the vCenter Server resource pool.
        # @!attribute [rw] resource_pools
        #     @return [Set<String>]
        #     Identifiers of the child resource pools contained in this resource pool.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.resource_pool.info',
                        {
                            'name' => VAPI::Bindings::StringType.instance,
                            'resource_pools' => VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :name,
                          :resource_pools

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::ResourcePool::FilterSpec``   class  contains  fields  used to filter the results when listing resource pools (see   :func:`Com::Vmware::Vcenter::ResourcePool.list`  ). If multiple  fields  are specified, only resource pools matching all of the  fields  match the filter.
        # @!attribute [rw] resource_pools
        #     @return [Set<String>, nil]
        #     Identifiers of resource pools that can match the filter.
        #     If  nil  or empty, resource pools with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that resource pools must have to match the filter (see   :attr:`Com::Vmware::Vcenter::ResourcePool::Info.name`  ).
        #     If  nil  or empty, resource pools with any name match the filter.
        # @!attribute [rw] parent_resource_pools
        #     @return [Set<String>, nil]
        #     Resource pools that must contain the resource pool for the resource pool to match the filter.
        #     If  nil  or empty, resource pools in any resource pool match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Datacenters that must contain the resource pool for the resource pool to match the filter.
        #     If  nil  or empty, resource pools in any datacenter match the filter.
        # @!attribute [rw] hosts
        #     @return [Set<String>, nil]
        #     Hosts that must contain the resource pool for the resource pool to match the filter.
        #     If  nil  or empty, resource pools in any host match the filter.
        # @!attribute [rw] clusters
        #     @return [Set<String>, nil]
        #     Clusters that must contain the resource pool for the resource pool to match the filter.
        #     If  nil  or empty, resource pools in any cluster match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.resource_pool.filter_spec',
                        {
                            'resource_pools' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'parent_resource_pools' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'hosts' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'clusters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :resource_pools,
                          :names,
                          :parent_resource_pools,
                          :datacenters,
                          :hosts,
                          :clusters

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::ResourcePool::Summary``   class  contains commonly used information about a resource pool in vCenter Server.
        # @!attribute [rw] resource_pool
        #     @return [String]
        #     Identifier of the resource pool.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the resource pool.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.resource_pool.summary',
                        {
                            'resource_pool' => VAPI::Bindings::IdType.new(resource_types='ResourcePool'),
                            'name' => VAPI::Bindings::StringType.instance,
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :resource_pool,
                          :name

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


    # The  ``Com::Vmware::Vcenter::VM``   class  provides  methods  for managing the lifecycle of a virtual machine.
    class VM < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.VM')

        @@create_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('create', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::CreateSpec'),
            }),
            VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            {
                'com.vmware.vapi.std.errors.already_exists' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::AlreadyExists'),
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.resource_in_use' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInUse'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),
                'com.vmware.vapi.std.errors.unsupported' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unsupported'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Info'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@delete_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('delete', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
            }),
            VAPI::Bindings::VoidType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),
                'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
                'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy'),
                'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])
        @@list_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('list', @@service_id),
            VAPI::Bindings::OperationInputType.new({
                'filter' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::FilterSpec')),
            }),
            VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::Summary')),
            {
                'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
                'com.vmware.vapi.std.errors.unable_to_allocate_resource' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource'),
                'com.vmware.vapi.std.errors.service_unavailable' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ServiceUnavailable'),
                'com.vmware.vapi.std.errors.unauthenticated' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthenticated'),
                'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'create' => @@create_info,
            'get' => @@get_info,
            'delete' => @@delete_info,
            'list' => @@list_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Creates a virtual machine.
        #
        # @param spec [Com::Vmware::Vcenter::VM::CreateSpec]
        #     Virtual machine specification.
        # @return [String]
        #     ID of newly-created virtual machine.
        # @raise [Com::Vmware::Vapi::Std::Errors::AlreadyExists]
        #     if a virtual machine with the specified name already exists.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if any of the specified parameters are invalid.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if any of the resources specified in  spec  could not be found
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if a specified resource (eg. host) is not accessible.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInUse]
        #     if any of the specified storage addresses (eg. IDE, SATA, SCSI) result in a storage address conflict.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if any of the resources needed to create the virtual machine could not be allocated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unsupported]
        #     if  ``guestOS``  is not supported for the requested virtual hardware version and  spec  includes  nil   fields  that default to guest-specific values.
        def create(spec)
            invoke_with_info(@@create_info, {
                'spec' => spec,
            })
        end


        # Returns information about a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Com::Vmware::Vcenter::VM::Info]
        #     Information about the specified virtual machine.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def get(vm)
            invoke_with_info(@@get_info, {
                'vm' => vm,
            })
        end


        # Deletes a virtual machine.
        #
        # @param vm [String]
        #     Virtual machine identifier.
        # @return [Void]
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     if the system reports an error while responding to the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
        #     if the virtual machine is not found.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
        #     if the virtual machine is busy performing another operation.
        # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
        #     if the virtual machine's configuration state cannot be accessed.
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def delete(vm)
            invoke_with_info(@@delete_info, {
                'vm' => vm,
            })
        end


        # Returns information about at most 1000 visible (subject to permission checks) virtual machines in vCenter matching the   :class:`Com::Vmware::Vcenter::VM::FilterSpec`  .
        #
        # @param filter [Com::Vmware::Vcenter::VM::FilterSpec, nil]
        #     Specification of matching virtual machines for which information should be returned.
        #     If  nil , the behavior is equivalent to a   :class:`Com::Vmware::Vcenter::VM::FilterSpec`   with all  fields   nil  which means all virtual machines match the filter.
        # @return [Array<Com::Vmware::Vcenter::VM::Summary>]
        #     Commonly used information about the virtual machines matching the   :class:`Com::Vmware::Vcenter::VM::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
        #     if the   :attr:`Com::Vmware::Vcenter::VM::FilterSpec.power_states`    field  contains a value that is not supported by the server.
        # @raise [Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource]
        #     if more than 1000 virtual machines match the   :class:`Com::Vmware::Vcenter::VM::FilterSpec`  .
        # @raise [Com::Vmware::Vapi::Std::Errors::ServiceUnavailable]
        #     if the system is unable to communicate with a service to complete the request.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthenticated]
        #     if the user can not be authenticated.
        # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
        #     if the user doesn't have the required privileges.
        def list(filter=nil)
            invoke_with_info(@@list_info, {
                'filter' => filter,
            })
        end



        # The  ``Com::Vmware::Vcenter::VM::PlacementSpec``   class  contains information used to place a virtual machine onto resources within the vCenter inventory.
        # @!attribute [rw] folder
        #     @return [String, nil]
        #     Virtual machine folder into which the virtual machine should be placed.
        #     This  field  is currently required. In the future, if this  field  is  nil , the system will attempt to choose a suitable folder for the virtual machine; if a folder cannot be chosen, the virtual machine creation operation will fail.
        # @!attribute [rw] resource_pool
        #     @return [String, nil]
        #     Resource pool into which the virtual machine should be placed.
        #     This  field  is currently required if both  ``host``  and  ``cluster``  are  nil . In the future, if this  field  is  nil , the system will attempt to choose a suitable resource pool for the virtual machine; if a resource pool cannot be chosen, the virtual machine creation operation will fail.
        # @!attribute [rw] host
        #     @return [String, nil]
        #     Host onto which the virtual machine should be placed.  
        #     
        #      If  ``host``  and  ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` .  
        #     
        #      If  ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of  ``cluster`` .
        #     This  field  may be  nil  if  ``resourcePool``  or  ``cluster``  is specified. If  nil , the system will attempt to choose a suitable host for the virtual machine; if a host cannot be chosen, the virtual machine creation operation will fail.
        # @!attribute [rw] cluster
        #     @return [String, nil]
        #     Cluster onto which the virtual machine should be placed.  
        #     
        #      If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .  
        #     
        #      If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of  ``cluster`` .
        #     If  ``resourcePool``  or  ``host``  is specified, it is recommended that this  field  be  nil .
        # @!attribute [rw] datastore
        #     @return [String, nil]
        #     Datastore on which the virtual machine's configuration state should be stored. This datastore will also be used for any virtual disks that are created as part of the virtual machine creation operation.
        #     This  field  is currently required. In the future, if this  field  is  nil , the system will attempt to choose suitable storage for the virtual machine; if storage cannot be chosen, the virtual machine creation operation will fail.
        class PlacementSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.VM.placement_spec',
                        {
                            'folder' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'resource_pool' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'host' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'cluster' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                            'datastore' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
                        },
                        PlacementSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :folder,
                          :resource_pool,
                          :host,
                          :cluster,
                          :datastore

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # Document-based creation spec.
        # @!attribute [rw] guest_os
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Guest OS.
        # @!attribute [rw] name
        #     @return [String, nil]
        #     Virtual machine name.
        #     If  nil , a default name will be generated by the server.
        # @!attribute [rw] placement
        #     @return [Com::Vmware::Vcenter::VM::PlacementSpec, nil]
        #     Virtual machine placement information.
        #     This  field  is currently required. In the future, if this  field  is  nil , the system will attempt to choose suitable resources on which to place the virtual machine.
        # @!attribute [rw] hardware_version
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Version, nil]
        #     Virtual hardware version.
        #     If  nil , defaults to the most recent version supported by the server.
        # @!attribute [rw] boot
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec, nil]
        #     Boot configuration.
        #     If  nil , guest-specific default values will be used.
        # @!attribute [rw] boot_devices
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec>, nil]
        #     Boot device configuration.
        #     If  nil , a server-specific boot sequence will be used.
        # @!attribute [rw] cpu
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec, nil]
        #     CPU configuration.
        #     If  nil , guest-specific default values will be used.
        # @!attribute [rw] memory
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec, nil]
        #     Memory configuration.
        #     If  nil , guest-specific default values will be used.
        # @!attribute [rw] disks
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec>, nil]
        #     List of disks.
        #     If  nil , a single blank virtual disk of a guest-specific size will be created on the same storage as the virtual machine configuration, and will use a guest-specific host bus adapter type. If the guest-specific size is 0, no virtual disk will be created.
        # @!attribute [rw] nics
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec>, nil]
        #     List of Ethernet adapters.
        #     If  nil , no Ethernet adapters will be created.
        # @!attribute [rw] cdroms
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec>, nil]
        #     List of CD-ROMs.
        #     If  nil , no CD-ROM devices will be created.
        # @!attribute [rw] floppies
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec>, nil]
        #     List of floppy drives.
        #     If  nil , no floppy drives will be created.
        # @!attribute [rw] parallel_ports
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Parallel::CreateSpec>, nil]
        #     List of parallel ports.
        #     If  nil , no parallel ports will be created.
        # @!attribute [rw] serial_ports
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec>, nil]
        #     List of serial ports.
        #     If  nil , no serial ports will be created.
        # @!attribute [rw] sata_adapters
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec>, nil]
        #     List of SATA adapters.
        #     If  nil , any adapters necessary to connect the virtual machine's storage devices will be created; this includes any devices that explicitly specify a SATA host bus adapter, as well as any devices that do not specify a host bus adapter if the guest's preferred adapter type is SATA.
        # @!attribute [rw] scsi_adapters
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec>, nil]
        #     List of SCSI adapters.
        #     If  nil , any adapters necessary to connect the virtual machine's storage devices will be created; this includes any devices that explicitly specify a SCSI host bus adapter, as well as any devices that do not specify a host bus adapter if the guest's preferred adapter type is SCSI. The type of the SCSI adapter will be a guest-specific default type.
        class CreateSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.VM.create_spec',
                        {
                            'guest_OS' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::GuestOS'),
                            'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
                            'placement' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::VM::PlacementSpec')),
                            'hardware_version' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Version')),
                            'boot' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec')),
                            'boot_devices' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec'))),
                            'cpu' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec')),
                            'memory' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec')),
                            'disks' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec'))),
                            'nics' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec'))),
                            'cdroms' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec'))),
                            'floppies' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec'))),
                            'parallel_ports' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::CreateSpec'))),
                            'serial_ports' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec'))),
                            'sata_adapters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec'))),
                            'scsi_adapters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec'))),
                        },
                        CreateSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :guest_OS,
                          :name,
                          :placement,
                          :hardware_version,
                          :boot,
                          :boot_devices,
                          :cpu,
                          :memory,
                          :disks,
                          :nics,
                          :cdroms,
                          :floppies,
                          :parallel_ports,
                          :serial_ports,
                          :sata_adapters,
                          :scsi_adapters

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # Document-based info.
        # @!attribute [rw] guest_os
        #     @return [Com::Vmware::Vcenter::Vm::GuestOS]
        #     Guest OS.
        # @!attribute [rw] name
        #     @return [String]
        #     Virtual machine name.
        # @!attribute [rw] power_state
        #     @return [Com::Vmware::Vcenter::Vm::Power::State]
        #     Power state of the virtual machine.
        # @!attribute [rw] hardware
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Info]
        #     Virtual hardware version information.
        # @!attribute [rw] boot
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Boot::Info]
        #     Boot configuration.
        # @!attribute [rw] boot_devices
        #     @return [Array<Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry>]
        #     Boot device configuration. If the  list  has no entries, a server-specific default boot sequence is used.
        # @!attribute [rw] cpu
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info]
        #     CPU configuration.
        # @!attribute [rw] memory
        #     @return [Com::Vmware::Vcenter::Vm::Hardware::Memory::Info]
        #     Memory configuration.
        # @!attribute [rw] disks
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Disk::Info>]
        #     List of disks.
        # @!attribute [rw] nics
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info>]
        #     List of Ethernet adapters.
        # @!attribute [rw] cdroms
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info>]
        #     List of CD-ROMs.
        # @!attribute [rw] floppies
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info>]
        #     List of floppy drives.
        # @!attribute [rw] parallel_ports
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Parallel::Info>]
        #     List of parallel ports.
        # @!attribute [rw] serial_ports
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Serial::Info>]
        #     List of serial ports.
        # @!attribute [rw] sata_adapters
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info>]
        #     List of SATA adapters.
        # @!attribute [rw] scsi_adapters
        #     @return [Hash<String, Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info>]
        #     List of SCSI adapters.
        class Info < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.VM.info',
                        {
                            'guest_OS' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::GuestOS'),
                            'name' => VAPI::Bindings::StringType.instance,
                            'power_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Power::State'),
                            'hardware' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Info'),
                            'boot' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Info'),
                            'boot_devices' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry')),
                            'cpu' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info'),
                            'memory' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Memory::Info'),
                            'disks' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Disk::Info')),
                            'nics' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info')),
                            'cdroms' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info')),
                            'floppies' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info')),
                            'parallel_ports' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Parallel::Info')),
                            'serial_ports' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Serial::Info')),
                            'sata_adapters' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info')),
                            'scsi_adapters' => VAPI::Bindings::MapType.new(VAPI::Bindings::IdType.new, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info')),
                        },
                        Info,
                        false,
                        nil)
                end
            end

            attr_accessor :guest_OS,
                          :name,
                          :power_state,
                          :hardware,
                          :boot,
                          :boot_devices,
                          :cpu,
                          :memory,
                          :disks,
                          :nics,
                          :cdroms,
                          :floppies,
                          :parallel_ports,
                          :serial_ports,
                          :sata_adapters,
                          :scsi_adapters

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::VM::FilterSpec``   class  contains  fields  used to filter the results when listing virtual machines (see   :func:`Com::Vmware::Vcenter::VM.list`  ). If multiple  fields  are specified, only virtual machines matching all of the  fields  match the filter.
        # @!attribute [rw] vms
        #     @return [Set<String>, nil]
        #     Identifiers of virtual machines that can match the filter.
        #     If  nil  or empty, virtual machines with any identifier match the filter.
        # @!attribute [rw] names
        #     @return [Set<String>, nil]
        #     Names that virtual machines must have to match the filter (see   :attr:`Com::Vmware::Vcenter::VM::Info.name`  ).
        #     If  nil  or empty, virtual machines with any name match the filter.
        # @!attribute [rw] folders
        #     @return [Set<String>, nil]
        #     Folders that must contain the virtual machine for the virtual machine to match the filter.
        #     If  nil  or empty, virtual machines in any folder match the filter.
        # @!attribute [rw] datacenters
        #     @return [Set<String>, nil]
        #     Datacenters that must contain the virtual machine for the virtual machine to match the filter.
        #     If  nil  or empty, virtual machines in any datacenter match the filter.
        # @!attribute [rw] hosts
        #     @return [Set<String>, nil]
        #     Hosts that must contain the virtual machine for the virtual machine to match the filter.
        #     If  nil  or empty, virtual machines on any host match the filter.
        # @!attribute [rw] clusters
        #     @return [Set<String>, nil]
        #     Clusters that must contain the virtual machine for the virtual machine to match the filter.
        #     If  nil  or empty, virtual machines in any cluster match the filter.
        # @!attribute [rw] resource_pools
        #     @return [Set<String>, nil]
        #     Resource pools that must contain the virtual machine for the virtual machine to match the filter.
        #     If  nil  or empty, virtual machines in any resource pool match the filter.
        # @!attribute [rw] power_states
        #     @return [Set<Com::Vmware::Vcenter::Vm::Power::State>, nil]
        #     Power states that a virtual machine must be in to match the filter (see   :attr:`Com::Vmware::Vcenter::Vm::Power::Info.state`  .
        #     If  nil  or empty, virtual machines in any power state match the filter.
        class FilterSpec < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.VM.filter_spec',
                        {
                            'vms' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'names' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::StringType.instance)),
                            'folders' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'datacenters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'hosts' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'clusters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'resource_pools' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::IdType.new)),
                            'power_states' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::SetType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Power::State'))),
                        },
                        FilterSpec,
                        false,
                        nil)
                end
            end

            attr_accessor :vms,
                          :names,
                          :folders,
                          :datacenters,
                          :hosts,
                          :clusters,
                          :resource_pools,
                          :power_states

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


        # The  ``Com::Vmware::Vcenter::VM::Summary``   class  contains commonly used information about a virtual machine.
        # @!attribute [rw] vm
        #     @return [String]
        #     Identifier of the virtual machine.
        # @!attribute [rw] name
        #     @return [String]
        #     Name of the Virtual machine.
        # @!attribute [rw] power_state
        #     @return [Com::Vmware::Vcenter::Vm::Power::State]
        #     Power state of the virtual machine.
        # @!attribute [rw] cpu_count
        #     @return [Fixnum, nil]
        #     Number of CPU cores.
        #     This  field  will be  nil  if the virtual machine configuration is not available. For example, the configuration information would be unavailable if the server is unable to access the virtual machine files on disk, and is often also unavailable during the intial phases of virtual machine creation.
        # @!attribute [rw] memory_size_mib
        #     @return [Fixnum, nil]
        #     Memory size in mebibytes.
        #     This  field  will be  nil  if the virtual machine configuration is not available. For example, the configuration information would be unavailable if the server is unable to access the virtual machine files on disk, and is often also unavailable during the intial phases of virtual machine creation.
        class Summary < VAPI::Bindings::VapiStruct

            class << self
                # Holds (gets or creates) the binding type metadata for this structure type.
                # @scope class
                # @return [VAPI::Bindings::StructType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::StructType.new(
                        'com.vmware.vcenter.VM.summary',
                        {
                            'vm' => VAPI::Bindings::IdType.new(resource_types='VirtualMachine'),
                            'name' => VAPI::Bindings::StringType.instance,
                            'power_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Vm::Power::State'),
                            'cpu_count' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                            'memory_size_MiB' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
                        },
                        Summary,
                        false,
                        nil)
                end
            end

            attr_accessor :vm,
                          :name,
                          :power_state,
                          :cpu_count,
                          :memory_size_mib

            # Constructs a new instance.
            # @param ruby_values [Hash] a map of initial property values (optional)
            # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
            def initialize(ruby_values=nil, struct_value=nil)
                super(self.class.binding_type, ruby_values, struct_value)
            end
        end


    end


end
