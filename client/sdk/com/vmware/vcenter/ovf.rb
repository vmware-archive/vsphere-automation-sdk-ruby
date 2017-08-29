#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.ovf.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vcenter
      module Ovf
      end
    end
  end
end

# The  ``com.vmware.vcenter.ovf``   package  provides services to capture and deploy Open Virtualization Format (OVF) packages to and from the content library.  
# 
#  It provides the ability to deploy OVF packages from the content library with support for advanced network topologies, network services, creating virtual appliances and virtual machines in hosts, resource pools or clusters. It also provides the ability to export virtual appliances and virtual machines from hosts, resource pools or clusters as OVF packages to the content library.
module Com::Vmware::Vcenter::Ovf
  # The  ``Com::Vmware::Vcenter::Ovf::ExportFlag``   class  provides  methods  for retrieving information about the export flags supported by the server. Export flags can be specified in a   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec`   to customize an OVF export.
  class ExportFlag < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.ovf.export_flag')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ExportFlag::Info')),
      {},
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Returns information about the supported export flags by the server.  
    # 
    #  The supported flags are:  
    #   PRESERVE_MAC
    #        Include MAC addresses for network adapters.
    #    EXTRA_CONFIG
    #        Include extra configuration in OVF export.
    #      
    # 
    #  Future server versions might support additional flags.
    #
    # @return [Array<Com::Vmware::Vcenter::Ovf::ExportFlag::Info>]
    #     A  list  of supported export flags.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If you do not have all of the privileges described in the following list:
    #
    #     System.Read
    def list
      invoke_with_info(LIST_INFO)
    end

    # The  ``Com::Vmware::Vcenter::Ovf::ExportFlag::Info``   class  describes an export flag supported by the server.
    # @!attribute [rw] option
    #     @return [String]
    #     The name of the export flag that is supported by the server.
    # @!attribute [rw] description
    #     @return [Com::Vmware::Vapi::Std::LocalizableMessage]
    #     Localizable description of the export flag.
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.export_flag.info',
            {
              'option' => VAPI::Bindings::StringType.instance,
              'description' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :option,
                    :description

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Vcenter::Ovf::ImportFlag``   class  provides  methods  for retrieving information about the import flags supported by the deployment platform. Import flags can be specified in a   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec`   to customize an OVF deployment.
  class ImportFlag < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.ovf.import_flag')

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'rp' => VAPI::Bindings::IdType.new('ResourcePool')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ImportFlag::Info')),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'list' => LIST_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Returns information about the import flags supported by the deployment platform.  
    # 
    #  The supported flags are:  
    #   LAX
    #        Lax mode parsing of the OVF descriptor.
    #      
    # 
    #  Future server versions might support additional flags.
    #
    # @param rp [String]
    #      The identifier of resource pool target for retrieving the import flag(s).
    # @return [Array<Com::Vmware::Vcenter::Ovf::ImportFlag::Info>]
    #     A  list  of supported import flags.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      If the resource pool associated with  ``rp``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If you do not have all of the privileges described in the following list:
    #
    #     System.Read
    def list(rp)
      invoke_with_info(LIST_INFO,
                       'rp' => rp)
    end

    # The  ``Com::Vmware::Vcenter::Ovf::ImportFlag::Info``   class  describes an import flag supported by the deployment platform.
    # @!attribute [rw] option
    #     @return [String]
    #     The name of the import flag that is supported by the deployment platform.
    # @!attribute [rw] description
    #     @return [Com::Vmware::Vapi::Std::LocalizableMessage]
    #     Localizable description of the import flag.
    class Info < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.import_flag.info',
            {
              'option' => VAPI::Bindings::StringType.instance,
              'description' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')
            },
            Info,
            false,
            nil
          )
        end
      end

      attr_accessor :option,
                    :description

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem``   class  provides  methods  to deploy virtual machines and virtual appliances from library items containing Open Virtualization Format (OVF) packages in content library, as well as  methods  to create library items in content library from virtual machines and virtual appliances.  
  # 
  #  To deploy a virtual machine or a virtual appliance from a library item:  
  # 
  #   #  Create a   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget`   to specify the target deployment type and target deployment designation. 
  #    #  Create a   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec`   to specify the parameters for the target deployment. 
  #    #  Use the  ``deploy``   method  with the created target and parameter specifications, along with the identifier of the specified source content library item. See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  . 
  #   
  #    
  # 
  #    
  # 
  #  To create a library item in content library from a virtual machine or virtual appliance:  
  # 
  #   #  Create a   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity`   to specify the source virtual machine or virtual appliance to be used as the OVF template source. 
  #    #  Create a   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget`   to specify the target library and library item. 
  #    #  Create a   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec`   to specify the settings for the OVF package to be created.
  #    #  Use the  ``create``   method  with the created target and parameter specifications, along with the specified source entity. See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.create`  . 
  #   
  #    
  class LibraryItem < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.ovf.library_item')

    DEPLOY_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('deploy', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
        'ovf_library_item_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.Item'),
        'target' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget'),
        'deployment_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult'),
      {
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.unauthorized' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Unauthorized')
      },
      [],
      []
    )

    FILTER_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('filter', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'ovf_library_item_id' => VAPI::Bindings::IdType.new('com.vmware.content.library.Item'),
        'target' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary'),
      {
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible')
      },
      [],
      []
    )

    CREATE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('create', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'client_token' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
        'source' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity'),
        'target' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget'),
        'create_spec' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult'),
      {
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible'),
        'com.vmware.vapi.std.errors.resource_busy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceBusy')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'deploy' => DEPLOY_INFO,
      'filter' => FILTER_INFO,
      'create' => CREATE_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    DEPLOYABLE = ['VirtualMachine', 'VirtualApp']
    # Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance.  
    # 
    #  This  method  deploys an OVF package which is stored in the library item specified by  ``ovf_library_item_id`` . It uses the deployment specification in  ``deployment_spec``  to deploy the OVF package to the location specified by  ``target`` . 
    #
    # @param client_token [String, nil]
    #      Client-generated token used to retry a request if the client fails to get a response from the server. If the original request succeeded, the result of that request will be returned, otherwise the operation will be retried.
    #     If  nil , the server will create a token.
    # @param ovf_library_item_id [String]
    #      Identifier of the content library item containing the OVF package to be deployed.
    # @param target [Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget]
    #      Specification of the deployment target.
    # @param deployment_spec [Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec]
    #      Specification of how the OVF package should be deployed to the target.
    # @return [Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult]
    #     Information about the success or failure of the  method , along with the details of the result or failure.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if  ``target``  contains invalid arguments.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if  ``deployment_spec``  contains invalid arguments or has  fields  that are inconsistent with  ``target`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the library item specified by  ``ovf_library_item_id``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if any resource specified by a  field  of the   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget`    class , specified by  ``target`` , does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #      if there was an error accessing the OVF package stored in the library item specified by  ``ovf_library_item_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #      if you do not have all of the privileges described as follows :  
    #     
    #       * Method  execution requires VirtualMachine.Config.AddNewDisk if the OVF descriptor has a disk drive (type 17) section. 
    #        * Method  execution requires VirtualMachine.Config.AdvancedConfig if the OVF descriptor has an ExtraConfig section. 
    #        * Method  execution requires Extension.Register for specified resource group if the OVF descriptor has a vServiceDependency section. 
    #        * Method  execution requires Network.Assign for target network if specified. 
    #        * Method  execution requires Datastore.AllocateSpace for target datastore if specified. 
    #       
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If you do not have all of the privileges described in the following list:
    #
    #     System.Read
    def deploy(ovf_library_item_id, target, deployment_spec, client_token = nil)
      invoke_with_info(DEPLOY_INFO,
                       'client_token' => client_token,
                       'ovf_library_item_id' => ovf_library_item_id,
                       'target' => target,
                       'deployment_spec' => deployment_spec)
    end

    # Queries an OVF package stored in content library to retrieve information to use when deploying the package. See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  .  
    # 
    #  This  method  retrieves information from the descriptor of the OVF package stored in the library item specified by  ``ovf_library_item_id`` . The information returned by the  method  can be used to populate the deployment specification (see   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec`   when deploying the OVF package to the deployment target specified by  ``target`` . 
    #
    # @param ovf_library_item_id [String]
    #      Identifier of the content library item containing the OVF package to query.
    # @param target [Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget]
    #      Specification of the deployment target.
    # @return [Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary]
    #     Information that can be used to populate the deployment specification (see   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec`  ) when deploying the OVF package to the deployment target specified by  ``target`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if  ``target``  contains invalid arguments.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the library item specified by  ``ovf_library_item_id``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if any resource specified by a  field  of the   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget`    class , specified by  ``target`` , does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #      if there was an error accessing the OVF package at the specified  ``ovf_library_item_id`` .
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If you do not have all of the privileges described in the following list:
    #
    #     System.Read
    def filter(ovf_library_item_id, target)
      invoke_with_info(FILTER_INFO,
                       'ovf_library_item_id' => ovf_library_item_id,
                       'target' => target)
    end

    # Creates a library item in content library from a virtual machine or virtual appliance.  
    # 
    #  This  method  creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this  method , the original content is overwritten. 
    #
    # @param client_token [String, nil]
    #      Client-generated token used to retry a request if the client fails to get a response from the server. If the original request succeeded, the result of that request will be returned, otherwise the operation will be retried.
    #     If  nil , the server will create a token.
    # @param source [Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity]
    #      Identifier of the virtual machine or virtual appliance to use as the source.
    # @param target [Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget]
    #      Specification of the target content library and library item.
    # @param create_spec [Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec]
    #      Information used to create the OVF package from the source virtual machine or virtual appliance.
    # @return [Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult]
    #     Information about the success or failure of the  method , along with the details of the result or failure.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if  ``create_spec``  contains invalid arguments.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #      if  ``source``  describes an unexpected resource type.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the virtual machine or virtual appliance specified by  ``source``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #      if the library or library item specified by  ``target``  does not exist.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #      if the operation cannot be performed because of the specified virtual machine or virtual appliance's current state. For example, if the virtual machine configuration information is not available, or if the virtual appliance is running.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceInaccessible]
    #      if there was an error accessing a file from the source virtual machine or virtual appliance.
    # @raise [Com::Vmware::Vapi::Std::Errors::ResourceBusy]
    #      if the specified virtual machine or virtual appliance is busy.
    # @raise [Com::Vmware::Vapi::Std::Errors::Unauthorized]
    #     If you do not have all of the privileges described in the following list:
    #
    #     System.Read
    def create(source, target, create_spec, client_token = nil)
      invoke_with_info(CREATE_INFO,
                       'client_token' => client_token,
                       'source' => source,
                       'target' => target,
                       'create_spec' => create_spec)
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity``   class  describes the resource created by a deployment, or the source resource from which library item can be created, by specifying its resource type and resource identifier.
    # @!attribute [rw] type
    #     @return [String]
    #     Type of the deployable resource.
    # @!attribute [rw] id
    #     @return [String]
    #     Identifier of the deployable resource.
    class DeployableIdentity < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.deployable_identity',
            {
              'type' => VAPI::Bindings::StringType.instance,
              'id' => VAPI::Bindings::IdType.new([], "type")
            },
            DeployableIdentity,
            false,
            nil
          )
        end
      end

      attr_accessor :type,
                    :id

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec``   class  defines the deployment parameters that can be specified for the  ``deploy``   method  where the deployment target is a resource pool. See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  .
    # @!attribute [rw] name
    #     @return [String, nil]
    #     Name assigned to the deployed target virtual machine or virtual appliance.
    #     If  nil , the server will use the name from the OVF package.
    # @!attribute [rw] annotation
    #     @return [String, nil]
    #     Annotation assigned to the deployed target virtual machine or virtual appliance.
    #     If  nil , the server will use the annotation from the OVF package.
    # @!attribute [rw] accept_all_eula
    #     @return [Boolean]
    #     Whether to accept all End User License Agreements. See   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary.eulas`  .
    # @!attribute [rw] network_mappings
    #     @return [Hash<String, String>, nil]
    #     Specification of the target network to use for sections of type ovf:NetworkSection in the OVF descriptor. The key in the  map  is the section identifier of the ovf:NetworkSection section in the OVF descriptor and the value is the target network to be used for deployment.
    #     If  nil , the server will choose a network mapping.
    # @!attribute [rw] storage_mappings
    #     @return [Hash<String, Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping>, nil]
    #     Specification of the target storage to use for sections of type vmw:StorageGroupSection in the OVF descriptor. The key in the  map  is the section identifier of the ovf:StorageGroupSection section in the OVF descriptor and the value is the target storage specification to be used for deployment. See   :class:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping`  .
    #     If  nil , the server will choose a storage mapping.
    # @!attribute [rw] storage_provisioning
    #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType, nil]
    #     Default storage provisioning type to use for all sections of type vmw:StorageSection in the OVF descriptor.
    #     If  nil , the server will choose the provisioning type.
    # @!attribute [rw] storage_profile_id
    #     @return [String, nil]
    #     Default storage profile to use for all sections of type vmw:StorageSection in the OVF descriptor.
    #     If  nil , the server will choose the default profile.
    # @!attribute [rw] locale
    #     @return [String, nil]
    #     The locale to use for parsing the OVF descriptor.
    #     If  nil , the server locale will be used.
    # @!attribute [rw] flags
    #     @return [Array<String>, nil]
    #     Flags to be use for deployment. The supported flag values can be obtained using   :func:`Com::Vmware::Vcenter::Ovf::ImportFlag.list`  .
    #     If  nil , no flags will be used.
    # @!attribute [rw] additional_parameters
    #     @return [Array<VAPI::Bindings::VapiStruct>, nil]
    #     Additional OVF parameters that may be needed for the deployment. Additional OVF parameters may be required by the OVF descriptor of the OVF package in the library item. Examples of OVF parameters that can be specified through this  field  include, but are not limited to:  
    #     
    #       *  :class:`Com::Vmware::Vcenter::Ovf::DeploymentOptionParams` 
    #        *  :class:`Com::Vmware::Vcenter::Ovf::ExtraConfigParams` 
    #        *  :class:`Com::Vmware::Vcenter::Ovf::IpAllocationParams` 
    #        *  :class:`Com::Vmware::Vcenter::Ovf::PropertyParams` 
    #        *  :class:`Com::Vmware::Vcenter::Ovf::ScaleOutParams` 
    #        *  :class:`Com::Vmware::Vcenter::Ovf::VcenterExtensionParams` 
    #       
    #     If  nil , the server will choose default settings for all parameters necessary for the  ``deploy``   method . See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  .
    # @!attribute [rw] default_datastore_id
    #     @return [String, nil]
    #     Default datastore to use for all sections of type vmw:StorageSection in the OVF descriptor.
    #     If  nil , the server will choose the default datastore.
    class ResourcePoolDeploymentSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.resource_pool_deployment_spec',
            {
              'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'annotation' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'accept_all_EULA' => VAPI::Bindings::BooleanType.instance,
              'network_mappings' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::IdType.new)),
              'storage_mappings' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::MapType.new(VAPI::Bindings::StringType.instance, VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping'))),
              'storage_provisioning' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::DiskProvisioningType')),
              'storage_profile_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
              'locale' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'flags' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)),
              'additional_parameters' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::DynamicStructType.new([VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfParams')]))),
              'default_datastore_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new)
            },
            ResourcePoolDeploymentSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :annotation,
                    :accept_all_eula,
                    :network_mappings,
                    :storage_mappings,
                    :storage_provisioning,
                    :storage_profile_id,
                    :locale,
                    :flags,
                    :additional_parameters,
                    :default_datastore_id

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping``   class  defines the storage deployment target and storage provisioning type for a section of type vmw:StorageGroupSection in the OVF descriptor.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type]
    #     Type of storage deployment target to use for the vmw:StorageGroupSection section. The specified value must be   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.DATASTORE`   or   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.STORAGE_PROFILE`  .
    # @!attribute [rw] datastore_id
    #     @return [String]
    #     Target datastore to be used for the storage group.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.DATASTORE`  .
    # @!attribute [rw] storage_profile_id
    #     @return [String]
    #     Target storage profile to be used for the storage group.
    #     This  field  is optional and it is only relevant when the value of  ``type``  is   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.STORAGE_PROFILE`  .
    # @!attribute [rw] provisioning
    #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType, nil]
    #     Target provisioning type to use for the storage group.
    #     If  nil ,   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.storage_provisioning`   will be used.
    class StorageGroupMapping < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.storage_group_mapping',
            {
              'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type'),
              'datastore_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
              'storage_profile_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
              'provisioning' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::DiskProvisioningType'))
            },
            StorageGroupMapping,
            false,
            nil
          )
        end
      end

      attr_accessor :type,
                    :datastore_id,
                    :storage_profile_id,
                    :provisioning

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end

      # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type``   enumerated type  defines the supported types of storage targets for sections of type vmw:StroageGroupSection in the OVF descriptor.
      # @!attribute [rw] datastore
      #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type]
      #     Storage deployment target is a datastore.
      # @!attribute [rw] storage_profile
      #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type]
      #     Storage deployment target is a storage profile.
      class Type < VAPI::Bindings::VapiEnum
        class << self
          # Holds (gets or creates) the binding type metadata for this enumeration type.
          # @scope class
          # @return [VAPI::Bindings::EnumType] the binding type
          def binding_type
            @binding_type ||= VAPI::Bindings::EnumType.new(
              'com.vmware.vcenter.ovf.library_item.storage_group_mapping.type',
              Type
            )
          end

          # Converts from a string value (perhaps off the wire) to an instance
          # of this enum type.
          # @param value [String] the actual value of the enum instance
          # @return [Type] the instance found for the value, otherwise
          #         an unknown instance will be built for the value
          def from_string(value)
            const_get(value)
          rescue NameError
            Type.send(:new, 'UNKNOWN', value)
          end
        end

        # Constructs a new instance.
        # @param value [String] the actual value of the enum instance
        # @param unknown [String] the unknown value when value is 'UKNOWN'
        def initialize(value, unknown = nil)
          super(self.class.binding_type, value, unknown)
        end

        private_class_method :new

        # @!attribute [rw] datastore
        #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type]
        #     Storage deployment target is a datastore.
        DATASTORE = Type.send(:new, 'DATASTORE')

        # @!attribute [rw] storage_profile
        #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type]
        #     Storage deployment target is a storage profile.
        STORAGE_PROFILE = Type.send(:new, 'STORAGE_PROFILE')
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo``   class  defines the information returned along with the result of a  ``create``  or  ``deploy``   method  to describe errors, warnings, and informational messages produced by the server.
    # @!attribute [rw] errors
    #     @return [Array<Com::Vmware::Vcenter::Ovf::OvfError>]
    #     Errors reported by the  ``create``  or  ``deploy``   method . These errors would have prevented the  ``create``  or  ``deploy``   method  from completing successfully.
    # @!attribute [rw] warnings
    #     @return [Array<Com::Vmware::Vcenter::Ovf::OvfWarning>]
    #     Warnings reported by the  ``create``  or  ``deploy``   method . These warnings would not have prevented the  ``create``  or  ``deploy``   method  from completing successfully, but there might be issues that warrant attention.
    # @!attribute [rw] information
    #     @return [Array<Com::Vmware::Vcenter::Ovf::OvfInfo>]
    #     Information messages reported by the  ``create``  or  ``deploy``   method . For example, a non-required parameter was ignored.
    class ResultInfo < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.result_info',
            {
              'errors' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfError')),
              'warnings' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfWarning')),
              'information' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfInfo'))
            },
            ResultInfo,
            false,
            nil
          )
        end
      end

      attr_accessor :errors,
                    :warnings,
                    :information

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult``   class  defines the result of the  ``deploy``   method . See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  .
    # @!attribute [rw] succeeded
    #     @return [Boolean]
    #     Whether the  ``deploy``   method  completed successfully.
    # @!attribute [rw] resource_id
    #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity, nil]
    #     Identifier of the deployed resource entity.
    #     If  nil , the  ``deploy``   method  failed and   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult.error`   will describe the error(s) that caused the failure.
    # @!attribute [rw] error
    #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo, nil]
    #     Errors, warnings, and informational messages produced by the  ``deploy``   method .
    #     If  nil , no errors, warnings, or informational messages were reported by the  ``deploy``   method .
    class DeploymentResult < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.deployment_result',
            {
              'succeeded' => VAPI::Bindings::BooleanType.instance,
              'resource_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity')),
              'error' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo'))
            },
            DeploymentResult,
            false,
            nil
          )
        end
      end

      attr_accessor :succeeded,
                    :resource_id,
                    :error

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget``   class  describes the location (target) where a virtual machine or virtual appliance should be deployed. It is used in the  ``deploy``  and  ``filter``   methods . See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
    # @!attribute [rw] resource_pool_id
    #     @return [String]
    #     Identifier of the resource pool to which the virtual machine or virtual appliance should be attached.
    # @!attribute [rw] host_id
    #     @return [String, nil]
    #     Identifier of the target host on which the virtual machine or virtual appliance will run. The target host must be a member of the cluster that contains the resource pool identified by   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.resource_pool_id`  .
    #     If  nil , the server will automatically select a target host from the resource pool if   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.resource_pool_id`   is a stand-alone host or a cluster with Distributed Resource Scheduling (DRS) enabled.
    # @!attribute [rw] folder_id
    #     @return [String, nil]
    #     Identifier of the vCenter folder that should contain the virtual machine or virtual appliance. The folder must be virtual machine folder.
    #     If  nil , the server will choose the deployment folder.
    class DeploymentTarget < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.deployment_target',
            {
              'resource_pool_id' => VAPI::Bindings::IdType.new('ResourcePool'),
              'host_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
              'folder_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new)
            },
            DeploymentTarget,
            false,
            nil
          )
        end
      end

      attr_accessor :resource_pool_id,
                    :host_id,
                    :folder_id

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary``   class  defines the result of the  ``filter``   method . See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  . The  fields  in the  class  describe parameterizable information in the OVF descriptor, with respect to a deployment target, for the  ``deploy``   method . See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  .
    # @!attribute [rw] name
    #     @return [String, nil]
    #     Default name for the virtual machine or virtual appliance.
    #     If  nil , the OVF descriptor did not specify a name.
    # @!attribute [rw] annotation
    #     @return [String, nil]
    #     Default annotation for the virtual machine or virtual appliance.
    #     If  nil , the OVF descriptor did not specify an annotation.
    # @!attribute [rw] eulas
    #     @return [Array<String>]
    #     End User License Agreements specified in the OVF descriptor. All end user license agreements must be accepted in order for the  ``deploy``   method  to succeed. See   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.accept_all_eula`  .
    # @!attribute [rw] networks
    #     @return [Array<String>, nil]
    #     Section identifiers for sections of type ovf:NetworkSection in the OVF descriptor. These identifiers can be used as keys in   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.network_mappings`  .
    #     If  nil , the OVF descriptor did not specify any networks.
    # @!attribute [rw] storage_groups
    #     @return [Array<String>, nil]
    #     Section identifiers for sections of type vmw:StorageGroupSection in the OVF descriptor. These identifiers can be used as keys in   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.storage_mappings`  .
    #     If  nil , the OVF descriptor did not specify any storage groups.
    # @!attribute [rw] additional_params
    #     @return [Array<VAPI::Bindings::VapiStruct>, nil]
    #     Additional OVF parameters which can be specified for the deployment target. These OVF parameters can be inspected, optionally modified, and used as values in   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.additional_parameters`   for the  ``deploy``   method .
    #     If  nil , the OVF descriptor does not require addtional parameters or does not have additional parameters suitable for the deployment target.
    class OvfSummary < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.ovf_summary',
            {
              'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'annotation' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'EULAs' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'networks' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)),
              'storage_groups' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)),
              'additional_params' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::DynamicStructType.new([VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfParams')])))
            },
            OvfSummary,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :annotation,
                    :eulas,
                    :networks,
                    :storage_groups,
                    :additional_params

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget``   class  specifies the target library item when capturing a virtual machine or virtual appliance as an OVF package in a library item in a content library. The target can be an existing library item, which will be updated, creating a new version, or it can be a newly created library item in a specified library. See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.create`  .
    # @!attribute [rw] library_id
    #     @return [String, nil]
    #     Identifier of the library in which a new library item should be created. This  field  is not used if the  ``libraryItemId``   field  is specified.
    #     If  nil , the  ``libraryItemId``   field  must be specified.
    # @!attribute [rw] library_item_id
    #     @return [String, nil]
    #     Identifier of the library item that should be should be updated.
    #     If  nil , a new library item will be created. The  ``libraryId``   field  must be specified if this  field  is  nil .
    class CreateTarget < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.create_target',
            {
              'library_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
              'library_item_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new)
            },
            CreateTarget,
            false,
            nil
          )
        end
      end

      attr_accessor :library_id,
                    :library_item_id

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec``   class  defines the information used to create or update a library item containing an OVF package.
    # @!attribute [rw] name
    #     @return [String, nil]
    #     Name to use in the OVF descriptor stored in the library item.
    #     If  nil , the server will use source's current name.
    # @!attribute [rw] description
    #     @return [String, nil]
    #     Description to use in the OVF descriptor stored in the library item.
    #     If  nil , the server will use source's current annotation.
    # @!attribute [rw] flags
    #     @return [Array<String>, nil]
    #     Flags to use for OVF package creation. The supported flags can be obtained using   :func:`Com::Vmware::Vcenter::Ovf::ExportFlag.list`  .
    #     If  nil , no flags will be used.
    class CreateSpec < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.create_spec',
            {
              'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
              'flags' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance))
            },
            CreateSpec,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :description,
                    :flags

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult``   class  defines the result of the  ``create``   method . See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.create`  .
    # @!attribute [rw] succeeded
    #     @return [Boolean]
    #     Whether the  ``create``   method  completed successfully.
    # @!attribute [rw] ovf_library_item_id
    #     @return [String, nil]
    #     Identifier of the created or updated library item.
    #     If  nil , the  ``create``   method  failed and   :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult.error`   will describe the error(s) that caused the failure.
    # @!attribute [rw] error
    #     @return [Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo, nil]
    #     Errors, warnings, and informational messages produced by the  ``create``   method .
    #     If  nil , no errors, warnings, or informational messages were reported by the  ``create``   method .
    class CreateResult < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.vcenter.ovf.library_item.create_result',
            {
              'succeeded' => VAPI::Bindings::BooleanType.instance,
              'ovf_library_item_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IdType.new),
              'error' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo'))
            },
            CreateResult,
            false,
            nil
          )
        end
      end

      attr_accessor :succeeded,
                    :ovf_library_item_id,
                    :error

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

  end
  # The  ``Com::Vmware::Vcenter::Ovf::CertificateParams``   class  contains information about the public key certificate used to sign the OVF package. This  class  will only be returned if the OVF package is signed.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] issuer
  #     @return [String]
  #     Certificate issuer. For example: /C=US/ST=California/L=Palo Alto/O=VMware, Inc.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] subject
  #     @return [String]
  #     Certificate subject. For example: /C=US/ST=Massachusetts/L=Hopkinton/O=EMC Corporation/OU=EMC Avamar/CN=EMC Corporation.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] is_valid
  #     @return [Boolean]
  #     Is the certificate chain validated.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] is_self_signed
  #     @return [Boolean]
  #     Is the certificate self-signed.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] x509
  #     @return [String]
  #     The X509 representation of the certificate.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  class CertificateParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.certificate_params',
          {
            'issuer' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'subject' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'is_valid' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            'is_self_signed' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            'x509' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          CertificateParams,
          false,
          nil
        )
      end
    end

    attr_accessor :issuer,
                  :subject,
                  :is_valid,
                  :is_self_signed,
                  :x509,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::DeploymentOption``   class  contains the information about a deployment option as defined in the OVF specification.  
  # 
  #  This corresponds to the ovf:Configuration element of the ovf:DeploymentOptionSection in the specification. The ovf:DeploymentOptionSection specifies a discrete set of intended resource allocation configurations. This  class  represents one item from that set.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] key
  #     @return [String]
  #     The key of the deployment option, corresponding to the ovf:id attribute in the OVF descriptor.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] label
  #     @return [String]
  #     A localizable label for the deployment option.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] description
  #     @return [String]
  #     A localizable description for the deployment option.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] default_choice
  #     @return [Boolean]
  #     A  boolean  flag indicates whether this deployment option is the default choice.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package. If  nil  or false, it is not the default.
  class DeploymentOption < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.deployment_option',
          {
            'key' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'label' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'default_choice' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance)
          },
          DeploymentOption,
          false,
          nil
        )
      end
    end

    attr_accessor :key,
                  :label,
                  :description,
                  :default_choice

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::DeploymentOptionParams``   class  describes the possible deployment options as well as the choice provided by the user.  
  # 
  #  This information based on the ovf:DeploymentOptionSection.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] deployment_options
  #     @return [Array<Com::Vmware::Vcenter::Ovf::DeploymentOption>]
  #     List  of deployment options. This  field  corresponds to the ovf:Configuration elements of the ovf:DeploymentOptionSection in the specification. It is a discrete set of intended resource allocation configurations from which one can be selected.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] selected_key
  #     @return [String]
  #     The selected deployment option. Identifies the   :class:`Com::Vmware::Vcenter::Ovf::DeploymentOption`   in the list in the  ``deploymentOptions``   field  with a matching value in the   :attr:`Com::Vmware::Vcenter::Ovf::DeploymentOption.key`    field .
  #     This  field  is optional in the input parameters when deploying an OVF package. If  nil  the server will use the default deployment configuration, usually it's the first one in   :attr:`Com::Vmware::Vcenter::Ovf::DeploymentOptionParams.deployment_options`    list . This  field  is optional in the result when retrieving information about an OVF package. The value will be set only if it is specified with the optional ovf:default attribute.
  class DeploymentOptionParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.deployment_option_params',
          {
            'deployment_options' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::DeploymentOption'))),
            'selected_key' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          DeploymentOptionParams,
          false,
          nil
        )
      end
    end

    attr_accessor :deployment_options,
                  :selected_key,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::ExtraConfig``   class  contains the information about a vmw:ExtraConfig element which can be used to specify configuration settings that are transferred directly to the  ``.vmx``  file. The behavior of the vmw:ExtraConfig element is similar to the  ``extraConfig``  property of the  ``VirtualMachineConfigSpec``  object in the VMware vSphere API. Thus, the same restrictions apply, such as you cannot set values that could otherwise be set with other properties in the  ``VirtualMachineConfigSpec``  object. See the VMware vSphere API reference for details on this.  
  # 
  #  vmw:ExtraConfig elements may occur as direct child elements of a VirtualHardwareSection, or as child elements of individual virtual hardware items.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] key
  #     @return [String]
  #     The key of the ExtraConfig element.
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] value
  #     @return [String]
  #     The value of the ExtraConfig element.
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] virtual_system_id
  #     @return [String]
  #     The identifier of the virtual system containing the vmw:ExtraConfig element.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  class ExtraConfig < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.extra_config',
          {
            'key' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'virtual_system_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          ExtraConfig,
          false,
          nil
        )
      end
    end

    attr_accessor :key,
                  :value,
                  :virtual_system_id

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::ExtraConfigParams``   class  contains the parameters with information about the vmw:ExtraConfig elements in an OVF package.  
  # 
  #  vmw:ExtraConfig elements can be used to specify configuration settings that are transferred directly to the  ``.vmx``  file.  
  # 
  #  The behavior of the vmw:ExtraConfig element is similar to the  ``extraConfig``  property of the  ``VirtualMachineConfigSpec``  object in the VMware vSphere API. Thus, the same restrictions apply, such as you cannot set values that could otherwise be set with other properties in the  ``VirtualMachineConfigSpec``  object. See the VMware vSphere API reference for details on this.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] extra_configs
  #     @return [Array<Com::Vmware::Vcenter::Ovf::ExtraConfig>]
  #     List  of vmw:ExtraConfig elements in the OVF package.
  #     This  field  is optional in the input parameters when deploying an OVF package. If  nil  there are no extra configuration elements to use for this OVF package deployment. This  field  will always be present in the result when retrieving information about an OVF package. It will be an empty  list  if there are no extra configuration elements in the OVF package.
  # @!attribute [rw] exclude_keys
  #     @return [Array<String>]
  #     Specifies which extra configuration items in the  list  in the  ``extraConfigs``   ``field``  should be ignored during deployment.  
  #     
  #      If set, the given keys for extra configurations will be ignored during deployment. The key is defined in the   :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfig.key`    field .
  #     This  field  is optional in the input parameters when deploying an OVF package. It is an error to set both this and   :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfigParams.include_keys`  . This  field  is optional in the result when retrieving information about an OVF package. It is an error to set both this and   :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfigParams.include_keys`  .
  # @!attribute [rw] include_keys
  #     @return [Array<String>]
  #     Specifies which extra configuration items in the  list  in the  ``extraConfigs``   ``field``  should be included during deployment.  
  #     
  #      If set, all but the given keys for extra configurations will be ignored during deployment. The key is defined in the   :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfig.key`    field .
  #     This  field  is optional in the input parameters when deploying an OVF package. It is an error to set both this and   :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfigParams.exclude_keys`  . This  field  is optional in the result when retrieving information about an OVF package. It is an error to set both this and   :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfigParams.exclude_keys`  .
  class ExtraConfigParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.extra_config_params',
          {
            'extra_configs' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ExtraConfig'))),
            'exclude_keys' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)),
            'include_keys' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          ExtraConfigParams,
          false,
          nil
        )
      end
    end

    attr_accessor :extra_configs,
                  :exclude_keys,
                  :include_keys,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams``   class  specifies how IP addresses are allocated to OVF properties. In particular, it informs the deployment platform whether the guest supports IPv4, IPv6, or both. It also specifies whether the IP addresses can be obtained through DHCP or through the properties provided in the OVF environment.  
  # 
  #  Ovf Property elements are exposed to the guest software through the OVF environment. Each Property element exposed in the OVF environment shall be constructed from the value of the ovf:key attribute. A Property element contains a key/value pair, it may optionally specify type qualifiers using the ovf:qualifiers attribute with multiple qualifiers separated by commas.  
  # 
  #  The settings in  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams``   class  are global to a deployment. Thus, if a virtual machine is part of a virtual appliance, then its settings are ignored and the settings for the virtual appliance is used.  
  # 
  #  This information is based on the vmw:IpAssignmentSection in OVF package.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] supported_allocation_scheme
  #     @return [Array<Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme>]
  #     Specifies the IP allocation schemes supported by the guest software. This  field  defines the valid values for the IP allocation policy. This setting is often configured by the virtual appliance template author or OVF package author to reflect what the guest software supports, and the IP allocation policy is configured at deployment time. See   :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.ip_allocation_policy`  .
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] supported_ip_allocation_policy
  #     @return [Array<Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy>]
  #     Specifies the IP allocation policies supported. The set of valid options for the policy is based on the capabilities of the virtual appliance software, as specified by the   :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.supported_allocation_scheme`    field .
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] ip_allocation_policy
  #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
  #     Specifies how IP allocation is done through an IP Pool. This is typically specified by the deployer.
  #     This  field  is optional in the input parameters when deploying an OVF package. If  nil  there is no IP allocation policy. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] supported_ip_protocol
  #     @return [Array<Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol>]
  #     Specifies the IP protocols supported by the guest.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] ip_protocol
  #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol]
  #     Specifies the chosen IP protocol for this deployment. This must be one of the IP protocols supported by the guest software. See   :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.supported_ip_protocol`  .
  #     This  field  is optional in the input parameters when deploying an OVF package. If  nil  there is no IP protocol chosen. This  field  will always be present in the result when retrieving information about an OVF package.
  class IpAllocationParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.ip_allocation_params',
          {
            'supported_allocation_scheme' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme'))),
            'supported_ip_allocation_policy' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy'))),
            'ip_allocation_policy' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy')),
            'supported_ip_protocol' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol'))),
            'ip_protocol' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol')),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          IpAllocationParams,
          false,
          nil
        )
      end
    end

    attr_accessor :supported_allocation_scheme,
                  :supported_ip_allocation_policy,
                  :ip_allocation_policy,
                  :supported_ip_protocol,
                  :ip_protocol,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy``   enumerated type  defines the possible IP allocation policy for a deployment.
    # @!attribute [rw] dhcp
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
    #     Specifies that DHCP will be used to allocate IP addresses.
    # @!attribute [rw] transient_ippool
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
    #     Specifies that IP addresses are allocated from an IP pool. The IP addresses are allocated when needed, typically at power-on, and deallocated during power-off. There is no guarantee that a property will receive same IP address when restarted.
    # @!attribute [rw] static_manual
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
    #     Specifies that IP addresses are configured manually upon deployment, and will be kept until reconfigured or the virtual appliance destroyed. This ensures that a property gets a consistent IP for its lifetime.
    # @!attribute [rw] static_ippool
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
    #     Specifies that IP addresses are allocated from the range managed by an IP pool. The IP addresses are allocated at first power-on, and remain allocated at power-off. This ensures that a virtual appliance gets a consistent IP for its life-time.
    class IpAllocationPolicy < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.ovf.ip_allocation_params.ip_allocation_policy',
            IpAllocationPolicy
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [IpAllocationPolicy] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          IpAllocationPolicy.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] dhcp
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
      #     Specifies that DHCP will be used to allocate IP addresses.
      DHCP = IpAllocationPolicy.send(:new, 'DHCP')

      # @!attribute [rw] transient_ippool
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
      #     Specifies that IP addresses are allocated from an IP pool. The IP addresses are allocated when needed, typically at power-on, and deallocated during power-off. There is no guarantee that a property will receive same IP address when restarted.
      TRANSIENT_IPPOOL = IpAllocationPolicy.send(:new, 'TRANSIENT_IPPOOL')

      # @!attribute [rw] static_manual
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
      #     Specifies that IP addresses are configured manually upon deployment, and will be kept until reconfigured or the virtual appliance destroyed. This ensures that a property gets a consistent IP for its lifetime.
      STATIC_MANUAL = IpAllocationPolicy.send(:new, 'STATIC_MANUAL')

      # @!attribute [rw] static_ippool
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy]
      #     Specifies that IP addresses are allocated from the range managed by an IP pool. The IP addresses are allocated at first power-on, and remain allocated at power-off. This ensures that a virtual appliance gets a consistent IP for its life-time.
      STATIC_IPPOOL = IpAllocationPolicy.send(:new, 'STATIC_IPPOOL')
    end

    # The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme``   enumerated type  defines the possible IP allocation schemes that can be supported by the guest software.
    # @!attribute [rw] dhcp
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme]
    #     It supports DHCP to acquire IP configuration.
    # @!attribute [rw] ovf_environment
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme]
    #     It supports setting the IP configuration through the properties provided in the OVF environment.
    class IpAllocationScheme < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.ovf.ip_allocation_params.ip_allocation_scheme',
            IpAllocationScheme
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [IpAllocationScheme] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          IpAllocationScheme.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] dhcp
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme]
      #     It supports DHCP to acquire IP configuration.
      DHCP = IpAllocationScheme.send(:new, 'DHCP')

      # @!attribute [rw] ovf_environment
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme]
      #     It supports setting the IP configuration through the properties provided in the OVF environment.
      OVF_ENVIRONMENT = IpAllocationScheme.send(:new, 'OVF_ENVIRONMENT')
    end

    # The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol``   enumerated type  defines the IP protocols supported by the guest software.
    # @!attribute [rw] ip_v4
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol]
    #     It supports the IPv4 protocol.
    # @!attribute [rw] ip_v6
    #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol]
    #     It supports the IPv6 protocol.
    class IpProtocol < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.ovf.ip_allocation_params.ip_protocol',
            IpProtocol
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [IpProtocol] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          IpProtocol.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] ip_v4
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol]
      #     It supports the IPv4 protocol.
      IP_V4 = IpProtocol.send(:new, 'IP_V4')

      # @!attribute [rw] ip_v6
      #     @return [Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol]
      #     It supports the IPv6 protocol.
      IP_V6 = IpProtocol.send(:new, 'IP_V6')
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::OvfMessage``   class  describes a base OVF handling error message related to accessing, validating, deploying, or exporting an OVF package.  
  # 
  #  These messages fall into different categories defined in   :class:`Com::Vmware::Vcenter::Ovf::OvfMessage::Category`  :
  # @!attribute [rw] category
  #     @return [Com::Vmware::Vcenter::Ovf::OvfMessage::Category]
  #     The message category.
  # @!attribute [rw] issues
  #     @return [Array<Com::Vmware::Vcenter::Ovf::ParseIssue>]
  #     List  of parse issues (see   :class:`Com::Vmware::Vcenter::Ovf::ParseIssue`  ).
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vcenter::Ovf::OvfMessage::Category.VALIDATION`  .
  # @!attribute [rw] name
  #     @return [String]
  #     The name of input parameter.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vcenter::Ovf::OvfMessage::Category.INPUT`  .
  # @!attribute [rw] value
  #     @return [String]
  #     The value of input parameter.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vcenter::Ovf::OvfMessage::Category.INPUT`  .
  # @!attribute [rw] message
  #     @return [Com::Vmware::Vapi::Std::LocalizableMessage]
  #     A localizable message.
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vcenter::Ovf::OvfMessage::Category.INPUT`  .
  # @!attribute [rw] error
  #     @return [VAPI::Bindings::VapiStruct]
  #     Represents a server   :class:`Com::Vmware::Vapi::Std::Errors::Error`  .
  #     This  field  is optional and it is only relevant when the value of  ``category``  is   :attr:`Com::Vmware::Vcenter::Ovf::OvfMessage::Category.SERVER`  .
  class OvfMessage < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.ovf_message',
          {
            'category' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfMessage::Category'),
            'issues' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ParseIssue'))),
            'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'message' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
            'error' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new([VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')]))
          },
          OvfMessage,
          false,
          nil
        )
      end
    end

    attr_accessor :category,
                  :issues,
                  :name,
                  :value,
                  :message,
                  :error

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vcenter::Ovf::OvfMessage::Category``   enumerated type  defines the categories of messages (see   :class:`Com::Vmware::Vcenter::Ovf::OvfMessage`  ).
    # @!attribute [rw] validation
    #     @return [Com::Vmware::Vcenter::Ovf::OvfMessage::Category]
    #     The OVF descriptor is invalid, for example, syntax errors or schema errors.
    # @!attribute [rw] input
    #     @return [Com::Vmware::Vcenter::Ovf::OvfMessage::Category]
    #     The user provided input parameters are invalid.
    # @!attribute [rw] server
    #     @return [Com::Vmware::Vcenter::Ovf::OvfMessage::Category]
    #     Server error.
    class Category < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.ovf.ovf_message.category',
            Category
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Category] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Category.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] validation
      #     @return [Com::Vmware::Vcenter::Ovf::OvfMessage::Category]
      #     The OVF descriptor is invalid, for example, syntax errors or schema errors.
      VALIDATION = Category.send(:new, 'VALIDATION')

      # @!attribute [rw] input
      #     @return [Com::Vmware::Vcenter::Ovf::OvfMessage::Category]
      #     The user provided input parameters are invalid.
      INPUT = Category.send(:new, 'INPUT')

      # @!attribute [rw] server
      #     @return [Com::Vmware::Vcenter::Ovf::OvfMessage::Category]
      #     Server error.
      SERVER = Category.send(:new, 'SERVER')
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::ParseIssue``   class  contains the information about the issue found when parsing an OVF package during deployment or exporting an OVF package including:  
  # 
  #   * Parsing and validation error on OVF descriptor (which is an XML document), manifest and certificate files. 
  #  * OVF descriptor generating and device error. 
  #  * Unexpected server error. 
  # @!attribute [rw] category
  #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
  #     The category of the parse issue.
  # @!attribute [rw] file
  #     @return [String]
  #     The name of the file in which the parse issue was found.
  # @!attribute [rw] line_number
  #     @return [Fixnum]
  #     The line number of the line in the file (see   :attr:`Com::Vmware::Vcenter::Ovf::ParseIssue.file`  ) where the parse issue was found (or -1 if not applicable).
  # @!attribute [rw] column_number
  #     @return [Fixnum]
  #     The position in the line (see   :attr:`Com::Vmware::Vcenter::Ovf::ParseIssue.line_number`  ) (or -1 if not applicable).
  # @!attribute [rw] message
  #     @return [Com::Vmware::Vapi::Std::LocalizableMessage]
  #     A localizable message describing the parse issue.
  class ParseIssue < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.parse_issue',
          {
            'category' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ParseIssue::Category'),
            'file' => VAPI::Bindings::StringType.instance,
            'line_number' => VAPI::Bindings::IntegerType.instance,
            'column_number' => VAPI::Bindings::IntegerType.instance,
            'message' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')
          },
          ParseIssue,
          false,
          nil
        )
      end
    end

    attr_accessor :category,
                  :file,
                  :line_number,
                  :column_number,
                  :message

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end

    # The  ``Com::Vmware::Vcenter::Ovf::ParseIssue::Category``   enumerated type  defines the categories of issues that can be found when parsing files inside an OVF package (see   :class:`Com::Vmware::Vcenter::Ovf::ParseIssue`  ) including OVF descriptor (which is an XML document), manifest and certificate files, or exporting an OVF package.
    # @!attribute [rw] value_illegal
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Illegal value error. For example, the value is malformed, not a number, or outside of the given range, and so on.
    # @!attribute [rw] attribute_required
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Required attribute error. It indicates that a required attribute is missing from an element in the OVF descriptor.
    # @!attribute [rw] attribute_illegal
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Illegal attribute error. It indicates that an illegal attribute is set for an element in the OVF descriptor. For example, empty disks do not use format, parentRef, and populatedSize attributes, if these attributes are present in an empty disk element then will get this pasrse issue.
    # @!attribute [rw] element_required
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Required element error. It indicates that a required element is missing from the OVF descriptor.
    # @!attribute [rw] element_illegal
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Illegal element error. It indicates that an element is present in a location which is not allowed, or found multiple elements but only one is allowed at the location in the OVF descriptor.
    # @!attribute [rw] element_unknown
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Unknown element error. It indicates that an element is unsupported when parsing an OVF descriptor.
    # @!attribute [rw] section_unknown
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Section unknown error. It indicates that a section is unsupported when parsing an OVF descriptor.
    # @!attribute [rw] section_restriction
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Section restriction error. It indicates that a section appears in place in the OVF descriptor where it is not allowed, a section appears fewer times than is required, or a section appears more times than is allowed.
    # @!attribute [rw] parse_error
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     OVF package parsing error, including:  
    #     
    #       * OVF descriptor parsing errors, for example, syntax errors or schema errors. 
    #      * Manifest file parsing and verification errors. 
    #      * Certificate file parsing and verification errors. 
    # @!attribute [rw] generate_error
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     OVF descriptor (which is an XML document) generating error, for example, well-formedness errors as well as unexpected processing conditions.
    # @!attribute [rw] validation_error
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     An issue with the manifest and signing.
    # @!attribute [rw] export_error
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Issue during OVF export, for example, malformed deviceId, controller not found, or file backing for a device not found.
    # @!attribute [rw] internal_error
    #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
    #     Server encountered an unexpected error which prevented it from fulfilling the request.
    class Category < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.vcenter.ovf.parse_issue.category',
            Category
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [Category] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          Category.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] value_illegal
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Illegal value error. For example, the value is malformed, not a number, or outside of the given range, and so on.
      VALUE_ILLEGAL = Category.send(:new, 'VALUE_ILLEGAL')

      # @!attribute [rw] attribute_required
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Required attribute error. It indicates that a required attribute is missing from an element in the OVF descriptor.
      ATTRIBUTE_REQUIRED = Category.send(:new, 'ATTRIBUTE_REQUIRED')

      # @!attribute [rw] attribute_illegal
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Illegal attribute error. It indicates that an illegal attribute is set for an element in the OVF descriptor. For example, empty disks do not use format, parentRef, and populatedSize attributes, if these attributes are present in an empty disk element then will get this pasrse issue.
      ATTRIBUTE_ILLEGAL = Category.send(:new, 'ATTRIBUTE_ILLEGAL')

      # @!attribute [rw] element_required
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Required element error. It indicates that a required element is missing from the OVF descriptor.
      ELEMENT_REQUIRED = Category.send(:new, 'ELEMENT_REQUIRED')

      # @!attribute [rw] element_illegal
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Illegal element error. It indicates that an element is present in a location which is not allowed, or found multiple elements but only one is allowed at the location in the OVF descriptor.
      ELEMENT_ILLEGAL = Category.send(:new, 'ELEMENT_ILLEGAL')

      # @!attribute [rw] element_unknown
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Unknown element error. It indicates that an element is unsupported when parsing an OVF descriptor.
      ELEMENT_UNKNOWN = Category.send(:new, 'ELEMENT_UNKNOWN')

      # @!attribute [rw] section_unknown
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Section unknown error. It indicates that a section is unsupported when parsing an OVF descriptor.
      SECTION_UNKNOWN = Category.send(:new, 'SECTION_UNKNOWN')

      # @!attribute [rw] section_restriction
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Section restriction error. It indicates that a section appears in place in the OVF descriptor where it is not allowed, a section appears fewer times than is required, or a section appears more times than is allowed.
      SECTION_RESTRICTION = Category.send(:new, 'SECTION_RESTRICTION')

      # @!attribute [rw] parse_error
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     OVF package parsing error, including:  
      #     
      #       * OVF descriptor parsing errors, for example, syntax errors or schema errors. 
      #      * Manifest file parsing and verification errors. 
      #      * Certificate file parsing and verification errors. 
      PARSE_ERROR = Category.send(:new, 'PARSE_ERROR')

      # @!attribute [rw] generate_error
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     OVF descriptor (which is an XML document) generating error, for example, well-formedness errors as well as unexpected processing conditions.
      GENERATE_ERROR = Category.send(:new, 'GENERATE_ERROR')

      # @!attribute [rw] validation_error
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     An issue with the manifest and signing.
      VALIDATION_ERROR = Category.send(:new, 'VALIDATION_ERROR')

      # @!attribute [rw] export_error
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Issue during OVF export, for example, malformed deviceId, controller not found, or file backing for a device not found.
      EXPORT_ERROR = Category.send(:new, 'EXPORT_ERROR')

      # @!attribute [rw] internal_error
      #     @return [Com::Vmware::Vcenter::Ovf::ParseIssue::Category]
      #     Server encountered an unexpected error which prevented it from fulfilling the request.
      INTERNAL_ERROR = Category.send(:new, 'INTERNAL_ERROR')
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::OvfError``   class  describes an error related to accessing, validating, deploying, or exporting an OVF package.
  class OvfError < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.ovf_error',
          {
            'category' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfMessage::Category'),
            'issues' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ParseIssue'))),
            'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'message' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
            'error' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new([VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')]))
          },
          OvfError,
          false,
          nil
        )
      end
    end

    attr_accessor :category,
                  :issues,
                  :name,
                  :value,
                  :message,
                  :error

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::OvfWarning``   class  describes a warning related to accessing, validating, deploying, or exporting an OVF package.
  class OvfWarning < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.ovf_warning',
          {
            'category' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::OvfMessage::Category'),
            'issues' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ParseIssue'))),
            'name' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'message' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage')),
            'error' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::DynamicStructType.new([VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')]))
          },
          OvfWarning,
          false,
          nil
        )
      end
    end

    attr_accessor :category,
                  :issues,
                  :name,
                  :value,
                  :message,
                  :error

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::OvfInfo``   class  contains informational messages related to accessing, validating, deploying, or exporting an OVF package.
  # @!attribute [rw] messages
  #     @return [Array<Com::Vmware::Vapi::Std::LocalizableMessage>]
  #     A  list  of localizable messages (see   :class:`Com::Vmware::Vapi::Std::LocalizableMessage`  ).
  class OvfInfo < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.ovf_info',
          {
            'messages' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::LocalizableMessage'))
          },
          OvfInfo,
          false,
          nil
        )
      end
    end

    attr_accessor :messages

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::OvfParams``   class  defines the common  fields  for all OVF deployment parameters. OVF parameters serve several purposes:  
  # 
  #   * Describe information about a given OVF package. 
  #  * Describe default deployment configuration. 
  #  * Describe possible deployment values based on the deployment environment. 
  #  * Provide deployment-specific configuration. 
  # 
  #   Each OVF parameters  class  specifies a particular configurable aspect of OVF deployment. An aspect has both a query-model and a deploy-model. The query-model is used when the OVF package is queried, and the deploy-model is used when deploying an OVF package.  
  # 
  #  Most OVF parameter  classes  provide both informational and deployment parameters. However, some are purely informational (for example, download size) and some are purely deployment parameters (for example, the flag to indicate whether registration as a vCenter extension is accepted).  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] type
  #     @return [String]
  #     Unique identifier describing the type of the OVF parameters. The value is the name of the OVF parameters  class .
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  class OvfParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.ovf_params',
          {
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          OvfParams,
          false,
          nil
        )
      end
    end

    attr_accessor :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::Property``   class  contains the information about a property in an OVF package.  
  # 
  #  A property is uniquely identified by its [classid.]id[.instanceid] fully-qualified name (see   :attr:`Com::Vmware::Vcenter::Ovf::Property.class_id`  ,   :attr:`Com::Vmware::Vcenter::Ovf::Property.id`  , and   :attr:`Com::Vmware::Vcenter::Ovf::Property.instance_id`  ). If multiple properties in an OVF package have the same fully-qualified name, then the property is excluded and cannot be set. We do warn about this during import.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] class_id
  #     @return [String]
  #     The classId of this OVF property.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] id
  #     @return [String]
  #     The identifier of this OVF property.
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] instance_id
  #     @return [String]
  #     The instanceId of this OVF property.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] category
  #     @return [String]
  #     If this is set to a non-empty string, this property starts a new category.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package. If  nil , the property is in the same category as the previous item, otherwise, it starts a new category.
  # @!attribute [rw] ui_optional
  #     @return [Boolean]
  #     Whether a category is UI optional. This is only used if this property starts a new category (see   :attr:`Com::Vmware::Vcenter::Ovf::Property.category`  ).  
  #     
  #      The value is stored in an optional attribute vmw:uioptional to the ovf:Category element. The default value is false. If this value is true, the properties within this category are optional. The UI renders this as a group with a check box, and the group is grayed out until the check box is selected. When the check box is selected, the input values are read and used in deployment. If properties within the same category specify conflicting values the default is used. Only implemented in vSphere Web Client 5.1 and later as of Nov 2012.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package.
  # @!attribute [rw] label
  #     @return [String]
  #     The display name of this OVF property.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] description
  #     @return [String]
  #     A description of this OVF property.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package.
  # @!attribute [rw] type
  #     @return [String]
  #     The type of this OVF property. Refer to the configuration of a virtual appliance/virtual machine for the valid values.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] value
  #     @return [String]
  #     The OVF property value. This contains the default value from ovf:defaultValue if ovf:value is not present when read.
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  class Property < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.property',
          {
            'class_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'instance_id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'category' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'ui_optional' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            'label' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'value' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          Property,
          false,
          nil
        )
      end
    end

    attr_accessor :class_id,
                  :id,
                  :instance_id,
                  :category,
                  :ui_optional,
                  :label,
                  :description,
                  :type,
                  :value

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::PropertyParams``   class  contains a  list  of OVF properties that can be configured when the OVF package is deployed.  
  # 
  #  This is based on the ovf:ProductSection.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] properties
  #     @return [Array<Com::Vmware::Vcenter::Ovf::Property>]
  #     List  of OVF properties.
  #     This  field  is optional in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  class PropertyParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.property_params',
          {
            'properties' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::Property'))),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          PropertyParams,
          false,
          nil
        )
      end
    end

    attr_accessor :properties,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::ScaleOutGroup``   class  contains information about a scale-out group.  
  # 
  #  It allows a virtual system collection to contain a set of children that are homogeneous with respect to a prototypical virtual system or virtual system collection. It shall cause the deployment function to replicate the prototype a number of times, thus allowing the number of instantiated virtual systems to be configured dynamically at deployment time.  
  # 
  #  This is based on the ovf2:ScaleOutSection.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] id
  #     @return [String]
  #     The identifier of the scale-out group.
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] description
  #     @return [String]
  #     The description of the scale-out group.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] instance_count
  #     @return [Fixnum]
  #     The scaling factor to use. It defines the number of replicas of the prototypical virtual system or virtual system collection.
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] minimum_instance_count
  #     @return [Fixnum]
  #     The minimum scaling factor.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package. This will be 1 if there is no explicit limit.
  # @!attribute [rw] maximum_instance_count
  #     @return [Fixnum]
  #     The maximum scaling factor.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package. This will be  nil  if there is no explicit limit.
  class ScaleOutGroup < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.scale_out_group',
          {
            'id' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'description' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance),
            'instance_count' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'minimum_instance_count' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'maximum_instance_count' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance)
          },
          ScaleOutGroup,
          false,
          nil
        )
      end
    end

    attr_accessor :id,
                  :description,
                  :instance_count,
                  :minimum_instance_count,
                  :maximum_instance_count

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::ScaleOutParams``   class  contains information about the scale-out groups described in the OVF package.  
  # 
  #  When deploying an OVF package, a deployment specific instance count can be specified (see   :attr:`Com::Vmware::Vcenter::Ovf::ScaleOutGroup.instance_count`  .  
  # 
  #  This is based on the ovf2:ScaleOutSection.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] groups
  #     @return [Array<Com::Vmware::Vcenter::Ovf::ScaleOutGroup>]
  #     The  list  of scale-out groups.
  #     This  field  is optional in the input parameters when deploying an OVF package. If  nil  there are no scale-out groups. This  field  will always be present in the result when retrieving information about an OVF package.
  class ScaleOutParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.scale_out_params',
          {
            'groups' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::ScaleOutGroup'))),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          ScaleOutParams,
          false,
          nil
        )
      end
    end

    attr_accessor :groups,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::SizeParams``   class  contains estimates of the download and deployment sizes.  
  # 
  #  This information is based on the file references and the ovf:DiskSection in the OVF descriptor.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] approximate_download_size
  #     @return [Fixnum]
  #     A best guess as to the total amount of data that must be transferred to download the OVF package.  
  #     
  #      This may be inaccurate due to disk compression etc.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package. It will be  nil  if there is insufficient information to provide a proper estimate.
  # @!attribute [rw] approximate_flat_deployment_size
  #     @return [Fixnum]
  #     A best guess as to the total amount of space required to deploy the OVF package if using flat disks.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package. It will be  nil  if there is insufficient information to provide a proper estimate.
  # @!attribute [rw] approximate_sparse_deployment_size
  #     @return [Fixnum]
  #     A best guess as to the total amount of space required to deploy the OVF package using sparse disks.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package. It will be  nil  if there is insufficient information to provide a proper estimate.
  # @!attribute [rw] variable_disk_size
  #     @return [Boolean]
  #     Whether the OVF uses variable disk sizes.  
  #     
  #      For empty disks, rather than specifying a fixed virtual disk capacity, the capacity may be given using a reference to a ovf:Property element in a ovf:ProductSection element in OVF package.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  is optional in the result when retrieving information about an OVF package. If  nil  or false, the OVF does not use variable disk sizes.
  class SizeParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.size_params',
          {
            'approximate_download_size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'approximate_flat_deployment_size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'approximate_sparse_deployment_size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::IntegerType.instance),
            'variable_disk_size' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          SizeParams,
          false,
          nil
        )
      end
    end

    attr_accessor :approximate_download_size,
                  :approximate_flat_deployment_size,
                  :approximate_sparse_deployment_size,
                  :variable_disk_size,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::UnknownSection``   class  contains information about an unknown section in an OVF package.
  # @!attribute [rw] tag
  #     @return [String]
  #     A namespace-qualified tag in the form  ``{ns}tag`` .
  # @!attribute [rw] info
  #     @return [String]
  #     The description of the Info element.
  class UnknownSection < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.unknown_section',
          {
            'tag' => VAPI::Bindings::StringType.instance,
            'info' => VAPI::Bindings::StringType.instance
          },
          UnknownSection,
          false,
          nil
        )
      end
    end

    attr_accessor :tag,
                  :info

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::UnknownSectionParams``   class  contains a  list  of unknown, non-required sections.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] unknown_sections
  #     @return [Array<Com::Vmware::Vcenter::Ovf::UnknownSection>]
  #     List  of unknown, non-required sections.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  class UnknownSectionParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.unknown_section_params',
          {
            'unknown_sections' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Vcenter::Ovf::UnknownSection'))),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          UnknownSectionParams,
          false,
          nil
        )
      end
    end

    attr_accessor :unknown_sections,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::VcenterExtensionParams``   class  specifies that the OVF package should be registered as a vCenter extension. The virtual machine or virtual appliance will gain unrestricted access to the vCenter Server APIs. It must be connected to a network with connectivity to the vCenter server.  
  # 
  #  See   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`   and   :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter`  .
  # @!attribute [rw] required
  #     @return [Boolean]
  #     Whether registration as a vCenter extension is required.
  #     This  field  is not used in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  # @!attribute [rw] registration_accepted
  #     @return [Boolean]
  #     Whether registration as a vCenter extension is accepted.  
  #     
  #      If registration as a vCenter extension is required (see   :attr:`Com::Vmware::Vcenter::Ovf::VcenterExtensionParams.required`  ), this must be set to true during deployment. Defaults to false when returned from server.
  #     This  field  must be provided in the input parameters when deploying an OVF package. This  field  will always be present in the result when retrieving information about an OVF package.
  class VcenterExtensionParams < VAPI::Bindings::VapiStruct
    class << self
      # Holds (gets or creates) the binding type metadata for this structure type.
      # @scope class
      # @return [VAPI::Bindings::StructType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::StructType.new(
          'com.vmware.vcenter.ovf.vcenter_extension_params',
          {
            'required' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            'registration_accepted' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::BooleanType.instance),
            'type' => VAPI::Bindings::OptionalType.new(VAPI::Bindings::StringType.instance)
          },
          VcenterExtensionParams,
          false,
          nil
        )
      end
    end

    attr_accessor :required,
                  :registration_accepted,
                  :type

    # Constructs a new instance.
    # @param ruby_values [Hash] a map of initial property values (optional)
    # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
    def initialize(ruby_values = nil, struct_value = nil)
      super(self.class.binding_type, ruby_values, struct_value)
    end
  end
  # The  ``Com::Vmware::Vcenter::Ovf::DiskProvisioningType``   enumerated type  defines the virtual disk provisioning types that can be set for a disk on the target platform.
  # @!attribute [rw] thin
  #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType]
  #     A thin provisioned virtual disk has space allocated and zeroed on demand as the space is used.
  # @!attribute [rw] thick
  #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType]
  #     A thick provisioned virtual disk has all space allocated at creation time and the space is zeroed on demand as the space is used.
  # @!attribute [rw] eager_zeroed_thick
  #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType]
  #     An eager zeroed thick provisioned virtual disk has all space allocated and wiped clean of any previous contents on the physical media at creation time.  
  #     
  #      Disks specified as eager zeroed thick may take longer time to create than disks specified with the other disk provisioning types.
  class DiskProvisioningType < VAPI::Bindings::VapiEnum
    class << self
      # Holds (gets or creates) the binding type metadata for this enumeration type.
      # @scope class
      # @return [VAPI::Bindings::EnumType] the binding type
      def binding_type
        @binding_type ||= VAPI::Bindings::EnumType.new(
          'com.vmware.vcenter.ovf.disk_provisioning_type',
          DiskProvisioningType
        )
      end

      # Converts from a string value (perhaps off the wire) to an instance
      # of this enum type.
      # @param value [String] the actual value of the enum instance
      # @return [DiskProvisioningType] the instance found for the value, otherwise
      #         an unknown instance will be built for the value
      def from_string(value)
        const_get(value)
      rescue NameError
        DiskProvisioningType.send(:new, 'UNKNOWN', value)
      end
    end

    # Constructs a new instance.
    # @param value [String] the actual value of the enum instance
    # @param unknown [String] the unknown value when value is 'UKNOWN'
    def initialize(value, unknown = nil)
      super(self.class.binding_type, value, unknown)
    end

    private_class_method :new

    # @!attribute [rw] thin
    #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType]
    #     A thin provisioned virtual disk has space allocated and zeroed on demand as the space is used.
    THIN = DiskProvisioningType.send(:new, 'THIN')

    # @!attribute [rw] thick
    #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType]
    #     A thick provisioned virtual disk has all space allocated at creation time and the space is zeroed on demand as the space is used.
    THICK = DiskProvisioningType.send(:new, 'THICK')

    # @!attribute [rw] eager_zeroed_thick
    #     @return [Com::Vmware::Vcenter::Ovf::DiskProvisioningType]
    #     An eager zeroed thick provisioned virtual disk has all space allocated and wiped clean of any previous contents on the physical media at creation time.  
    #     
    #      Disks specified as eager zeroed thick may take longer time to create than disks specified with the other disk provisioning types.
    EAGER_ZEROED_THICK = DiskProvisioningType.send(:new, 'EAGER_ZEROED_THICK')
  end
end
